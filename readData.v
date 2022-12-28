module readData(input clk, readData, input [31:0] num, output reg [63:0] pipe);
  integer               data_file    ; // file handler
  integer               scan_file    ; // file handler
  reg [24:0] captured_data;
  `define NULL 0    

  initial begin

  end
  integer n;
  always @(posedge readData) begin
    data_file = $fopen("data.dat", "r");
    $display("berim raghmaye %d bekhooonim", num);

    if (data_file == `NULL) begin
      $display("data_file handle was NULL");
      $finish;
    end
    
    for (n = 0; n < 64; n = n + 1) begin
      scan_file = $fscanf(data_file, "%b\n", captured_data); 
      $display("run misham ba bit %d va misham in %b", num, captured_data);
      pipe[n] = captured_data[24 - num];
    end
  end

endmodule