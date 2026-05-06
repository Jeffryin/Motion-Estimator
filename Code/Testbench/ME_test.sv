`default_nettype none
`timescale 1ns/1ps

// `include "ME_pkg1.sv"
program automatic ME_test(ME_Interface vif);
    ME_Environment env;

    initial begin
        $display("============================");
        $display("===Starting Testbench=======");
        $display("============================");
        env = new(vif);
        env.run();

        $display("============================");
        $display("====Testbench completed=====");
        $display("============================");
    end    
endprogram