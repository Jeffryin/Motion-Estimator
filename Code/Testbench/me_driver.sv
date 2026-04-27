class me_driver;
    virtual ME_Interface vif;
    
    function new(virtual ME_Interface vif);
        this.vif = vif;
    endfunction

    task drive();
        vif.drv_cb.start <= 1'b0;

        repeat(3) @(posedge vif.drv_cb.clk);

        vif.drv_cb.start <= 1'b1;

        wait(vif.drv_cb.completed == 1'b1);

        vif.drv_cb.start <= 1'b0;
        @(posedge vif.drv_cb.clk);
    endtask
endclass