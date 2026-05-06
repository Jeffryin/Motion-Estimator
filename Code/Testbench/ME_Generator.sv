class ME_Generator;
	mailbox gen2drv;
	mailbox gen2sb;

	int num_tests;

	//new function
	function new(mailbox gen2drv, mailbox gen2sb, int num_tests);
		this.gen2drv = gen2drv;
		this.gen2sb = gen2sb;
		this.num_tests = num_tests;
	endfunction

	//task run
	task run();
		//create object 
		ME_transaction tr;
		for(int i = 0; i < num_tests; i++) begin
			tr = new();
			//randomize or check if it was randomized 
			if(!tr.randomize()) begin
				$error("[Generator] Randomization Failed");
			end

			$display("[Generator] Created Test %0d | Expected MV: (%0d, %0d)", 
	                     i, tr.expected_mX, tr.expected_mY);
			
			//send the object to the driver 
			gen2drv.put(tr);
			//send the object to the scoreboard
			gen2sb.put(tr);
		end
	endtask 
endclass