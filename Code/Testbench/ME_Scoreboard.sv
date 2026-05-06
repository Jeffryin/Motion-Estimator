class ME_Scoreboard;
	// mailbox from generator and monitor classes 
	mailbox gen2sb;
	mailbox mon2chk;

	int num_passed = 0;
	int num_failed = 0;

	logic [7:0] cov_BestDist;
	integer covX, covY;

	covergroup cg_motion;
		cp_dist: coverpoint cov_BestDist {
			bins perfect = {8'h00};
			bins quarter = {[8'h01 : 8'h3F]};
			bins half = {[8'h40 : 8:7F]};
			bins three_quarter {[8'h80 : 8'hBF]};
			bins full = {[8'hC0 : 8'hFE]};
			bins no_match = {8'hFF};
		}

		cpX: coverpoint covX {
			bins left = {[-8:-1]};
			bins center = {0};
			bins right = {[1:7]};
		}

		cpY: coverpoint covY {
			bins down = {[-8:-1]};
			bins center = {0};
			bins up = {[1:7]};
		}

		cross_xy: cross cpX, cpY;
	endgroup

	function new(mailbox gen2sb, mailbox mon2chk);
		this.gen2sb = gen2sb;
		this.mon2chk = mon2chk;
		this.num_passed = num_passed;
		this.num_failed = num_failed;
	endfunction

	task run();
		ME_transaction actual_tr;
		ME_transaction expected_tr;

		integer x,y;

		forever begin
			gen2sb.get(expected_tr);
			mon2chk.get(actual_tr);

			// Convert 4-bit 2's complement to integer
	        if (actual_tr.mX >= 8) x = actual_tr.mX - 16; 
	        else x = actual_tr.mX;

	        if (actual_tr.mY >= 8) y = actual_tr.mY - 16; 
	        else y = actual_tr.mY;

	        if (actual_tr.BestDist == 8'hFF) begin
	            $display("Reference Memory Not Found in the Search Window!");
	        end else if (actual_tr.BestDist == 8'h00) begin
	            $display("Perfect Match Found! BestDist = %d, motionX = %d, motionY = %d", actual_tr.BestDist, x, y);
	        end else begin
	            $display("Non-perfect Match Found: BestDist = %d, motionX = %d, motionY = %d", actual_tr.BestDist, x, y);
	        end

	        if (x == expected_tr.expected_mX && y == expected_tr.expected_mY) begin
	            $display("SUCCESS: DUT motions match expected! ExpectedX = %d, ExpectedY = %d", expected_tr.expected_mX, expected_tr.expected_mY);
	        end else begin
	            $display("FAIL: DUT motions DO NOT match! ExpectedX = %d, ExpectedY = %d", expected_tr.expected_mX, expected_tr.expected_mY);
	        end

	        $display("All tests completed\n");

	        //Coverage 
	        cov_BestDist = actual_tr.BestDist;
	        covX = x;
	        covY = y;

	        cg_motion.sample();
   		end
	endtask
endclass