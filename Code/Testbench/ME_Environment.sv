class ME_Environment;
	ME_Generator gen;
	me_driver drv;
	ME_Scoreboard sb;
	ME_Monitor mon;

	//declare mailboxes
	mailbox gen2drv;
	mailbox gen2sb;
	mailbox mon2chk;

	//constructor new()
	function new(virtual ME_Interface vif);
		gen2drv = new();
		gen2sb = new();
		mon2chk = new();

		gen = new(gen2drv, gen2sb, 100);
		drv = new(vif, gen2drv);
		mon = new(vif, mon2chk);
		sb = new(gen2sb, mon2chk); //supposed to have num_passed and num_failed
	endfunction

	//run task
	task run();
		fork 
			gen.run();
			drv.run();
			mon.run();
			sb.run();
		join_none

		wait((sb.num_passed + sb.num_failed) == gen.num_tests);
		#100ns;
		$display("[Environemnt] All tests generated and processed. Finished Simulation.");
	endtask
endclass