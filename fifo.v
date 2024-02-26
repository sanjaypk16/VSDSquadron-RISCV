module synchronous_fifo_tb;

    reg clk;        // Clock
    reg rst;        // Reset
    reg wr_en;      // Write enable
    reg rd_en;      // Read enable
    reg [7:0] data_in;  // Input data
    wire [7:0] data_out; // Output data
    wire empty;     // Empty flag
    wire full;      // Full flag

    // Instantiate the FIFO
    synchronous_fifo #(.DEPTH(8)) fifo (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_in(data_in),
        .data_out(data_out),
        .empty(empty),
        .full(full)
    );

    // Clock generation
    always #5 clk = ~clk;

    // Testbench initialization
    initial begin
        $dumpfile("dump.vcd"); // Specify VCD file name
        $dumpvars(0, synchronous_fifo_tb); // Dump all variables

        clk = 0;
        rst = 1;
        wr_en = 0;
        rd_en = 0;
        data_in = 8'h00;

        // Release reset after 10 time units
        #10 rst = 0;

        // Write data into FIFO
        #20 data_in = 8'hAA; wr_en = 1;
        #30 data_in = 8'hBB; wr_en = 1;
        #40 data_in = 8'hCC; wr_en = 1;
        #50 data_in = 8'hDD; wr_en = 1;
        #60 wr_en = 0;

        // Read data from FIFO
        #70 rd_en = 1;
        #80 rd_en = 1;
        #90 rd_en = 1;
        #100 rd_en = 1;
        #110 rd_en = 0;

        // Finish simulation after some delay
        #120 $finish;
    end

endmodule