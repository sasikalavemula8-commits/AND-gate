`timescale 1ns/1ps

module tb_and_gate;

    reg A;
    reg B;
    wire Y;

    // Instantiate AND Gate
    and_gate uut (
        .A(A),
        .B(B),
        .Y(Y)
    );

    initial begin
        $display("================================");
        $display("        AND GATE TEST");
        $display("================================");
        $display(" A  B | Y");
        $display("--------");

        A = 0; B = 0; #10;
        $display(" %b  %b | %b", A, B, Y);

        A = 0; B = 1; #10;
        $display(" %b  %b | %b", A, B, Y);

        A = 1; B = 0; #10;
        $display(" %b  %b | %b", A, B, Y);

        A = 1; B = 1; #10;
        $display(" %b  %b | %b", A, B, Y);

        $display("================================");

        $finish;
    end

endmodule
