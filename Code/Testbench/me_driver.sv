class me_driver;
    virtual ME_Interface vif;
    mailbox gen2drv;

    function new(virtual ME_Interface vif, mailbox gen2drv);
        this.vif = vif;
        this.gen2drv = gen2drv;
    endfunction

    task run();
        ME_transaction tr;

        forever begin;
            gen2drv.get(tr); //get the object from the mailbox

            // load the transaction onto physical hardware 
            for(int i = 0; i < 256; i++) begin
                ME_tb_top.read.Rmem[i] = tr.Rmem[i];
            end

            for(int i = 0; i < 1024; i++) begin
                ME_tb_top.search.Smem[i] = tr.Smem[i];
            end

            vif.drv_cb.start <= 1'b0;
            repeat(3) @(vif.drv_cb);

            vif.drv_cb.start <= 1'b1;

            wait(vif.drv_cb.completed == 1'b1);
            vif.drv_cb.start <= 1'b0;
            @(vif.drv_cb);
        end
    endtask
endclass

