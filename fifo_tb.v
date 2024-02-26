module synchronous_fifo(
    parameter DEPTH = 8  // Depth of the FIFO
)(
    input wire clk,      // Clock input
    input wire rst,      // Reset input
    input wire wr_en,    // Write enable
    input wire rd_en,    // Read enable
    input wire [7:0] data_in,  // Input data
    output reg [7:0] data_out, // Output data
    output reg empty,    // Empty flag
    output reg full      // Full flag
);

// Internal memory for data storage
reg [7:0] mem [0:DEPTH-1];

// Pointers for read and write operations
reg [2:0] wr_ptr, rd_ptr;

// Empty and Full flag logic
assign empty = (wr_ptr == rd_ptr);
assign full = ((wr_ptr + 1) % DEPTH == rd_ptr);

// Write operation
always @(posedge clk) begin
    if (rst) begin
        wr_ptr <= 0;
    end else if (wr_en && !full) begin
        mem[wr_ptr] <= data_in;
        wr_ptr <= (wr_ptr + 1) % DEPTH;
    end
end

// Read operation
always @(posedge clk) begin
    if (rst) begin
        rd_ptr <= 0;
        data_out <= 8'h00;
    end else if (rd_en && !empty) begin
        data_out <= mem[rd_ptr];
        rd_ptr <= (rd_ptr + 1) % DEPTH;
    end
end

endmodule
