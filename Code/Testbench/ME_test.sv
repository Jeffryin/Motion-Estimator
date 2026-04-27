`default_nettype none
`timescale 1ns/1ps

program automatic ME_test(ME_Interface vif);
    me_driver drv;
    
    // Testbench Variables
    integer Expected_motionX, Expected_motionY;
    integer x, y;
    logic [7:0] temp_Smem [0:1023];
    logic [7:0] temp_Rmem [0:255];

    initial begin
        // ---------------------------------------------------------
        // 1. DATA GENERATION (Randomize and Embed)
        // ---------------------------------------------------------
        Expected_motionX = $urandom_range(0,15)-8;    
        Expected_motionY = $urandom_range(0,15)-8;

        // Randomize Smem
        for(int i=0; i<1024; i++) begin
            temp_Smem[i] = $urandom_range(0,255);
        end

        // Extract Rmem from Smem so we guarantee a match!
        for(int i=0; i<256; i++) begin
            temp_Rmem[i] = temp_Smem[32*8+8+(((i/16)+Expected_motionY)*32)+((i%16)+Expected_motionX)];
        end    

        // Load data into the Hardware ROMs
        for(int i=0; i<1024; i++) ME_tb_top.search.Smem[i] = temp_Smem[i];
        for(int i=0; i<256; i++)  ME_tb_top.read.Rmem[i]   = temp_Rmem[i];

        // ---------------------------------------------------------
        // 2. DRIVE THE STIMULUS
        // ---------------------------------------------------------
        drv = new(vif);
        drv.drive(); // This triggers start and waits for completed

        // ---------------------------------------------------------
        // 3. SCOREBOARD (Check the results)
        // ---------------------------------------------------------
        // Convert 4-bit 2's complement to integer
        if (vif.motionX >= 8) x = vif.motionX - 16; else x = vif.motionX;
        if (vif.motionY >= 8) y = vif.motionY - 16; else y = vif.motionY;

        if (vif.BestDist == 8'hFF) begin
            $display("Reference Memory Not Found in the Search Window!");
        end else if (vif.BestDist == 8'h00) begin
            $display("Perfect Match Found! BestDist = %d, motionX = %d, motionY = %d", vif.BestDist, x, y);
        end else begin
            $display("Non-perfect Match Found: BestDist = %d, motionX = %d, motionY = %d", vif.BestDist, x, y);
        end

        if (x == Expected_motionX && y == Expected_motionY) begin
            $display("SUCCESS: DUT motions match expected! ExpectedX = %d, ExpectedY = %d", Expected_motionX, Expected_motionY);
        end else begin
            $display("FAIL: DUT motions DO NOT match! ExpectedX = %d, ExpectedY = %d", Expected_motionX, Expected_motionY);
        end

        $display("All tests completed\n");
        $finish;
    end
endprogram