class ME_Monitor;
	virtual ME_Interface vif; //requires a clock signal inside the parameter
	mailbox mon2chk;
	
	function new(virtual ME_Interface vif, mailbox mon2chk);
		this.vif = vif;
		this.mon2chk = mon2chk;
	endfunction

	task run();
		ME_transaction tr;

		forever begin;
			wait(vif.mon_cb.completed == 1'b1);

			tr = new();

			tr.BestDist = vif.mon_cb.BestDist;
			tr.mX = vif.mon_cb.motionX;
			tr.mY = vif.mon_cb.motionY;

			mon2chk.put(tr);

			$display("[Monitor] Captured Best Distortion: %h, MV: (%d, %d)", tr.BestDist, tr.mX, tr.mY);

			wait(vif.mon_cb.completed == 1'b0);
			repeat(3) @(vif.mon_cb);
		end
	endtask 
endclass