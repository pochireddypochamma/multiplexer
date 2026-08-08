```verilog
`timescale 1ns/1ps

module mux_4to1_tb;

    reg I0;
    reg I1;
    reg I2;
    reg I3;

    reg S1;
    reg S0;

    wire Y;

    // Instantiate the 4-to-1 Multiplexer
    mux_4to1 uut (
        .I0(I0),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .S1(S1),
        .S0(S0),
        .Y(Y)
    );

    initial begin

        $display("================================================");
        $display("             4-TO-1 MUX TESTBENCH");
        $display("================================================");
        $display("Time\tS1\tS0\tI0\tI1\tI2\tI3\tY");
        $display("------------------------------------------------");

        // Input values
        I0 = 1;
        I1 = 0;
        I2 = 1;
        I3 = 0;

        // Select I0
        S1 = 0;
        S0 = 0;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, S1, S0, I0, I1, I2, I3, Y);

        // Select I1
        S1 = 0;
        S0 = 1;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, S1, S0, I0, I1, I2, I3, Y);

        // Select I2
        S1 = 1;
        S0 = 0;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, S1, S0, I0, I1, I2, I3, Y);

        // Select I3
        S1 = 1;
        S0 = 1;
        #10;
        $display("%0t\t%b\t%b\t%b\t%b\t%b\t%b\t%b",
                 $time, S1, S0, I0, I1, I2, I3, Y);

        $display("------------------------------------------------");
        $display("Simulation completed successfully.");
        $display("================================================");

        $finish;
    end

endmodule
```
