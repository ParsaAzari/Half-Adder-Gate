# Half Adder Gate in VHDL


## Description
The Half Adder is a combinational logic circuit that performs the addition of two single-bit binary numbers. It produces two outputs: the sum and the carry.


## Entity

Entity

The **entity** section defines the inputs and outputs of the Half Adder. It specifies the types and names of the input and output ports.

```vhdl
-- Defining the entity (half adder) with input and output ports
entity half_adder is
    port (
        -- 1-bit input ports
        InPutNuberOne, InPutNumberTwo : in std_logic;
        -- Output ports for sum and carry
        OutPutSum, OutPutCarry : out std_logic
    );
end entity half_adder; -- End of entity definition
```
## Architecture

Architecture

The architecture section describes how the Half Adder operates. It implements the logic for calculating the sum and carry based on the input signals.

```vhdl
-- Defining the architecture and functionality of the half adder
architecture Functional of half_adder is
begin
    -- Calculating the sum of the two input ports and assigning it to the output sum
    OutPutSum <= InPutNuberOne xor InPutNumberTwo;

    -- Calculating the carry bit using the AND operator and assigning it to the carry output
    OutPutCarry <= InPutNuberOne and InPutNumberTwo;
end architecture Functional; -- End of architecture
```

## File Structure
```
/EightInputANDGate
│
├── vhd
│   └── HalfAdderGate.vhd       # Main VHDL file containing the Half Adder Gate code
├── HalfAdderGate.vhdpproj      # Project file for the VHDL compiler or IDE
├── vhd|_Is.toml                       # Configuration file
└── README.md      # Documentation for the Half Adder Circuit Gate
```


## Truth Table for Half Adder Circuit

| Input 1 | Input 2 | Sum | Carry |
|---------|---------|-----|-------|
|    0    |    0    |  0  |   0   |
|    0    |    1    |  1  |   0   |
|    1    |    0    |  1  |   0   |
|    1    |    1    |  0  |   1   |

## How to Compile and Simulate

To compile and simulate the VHDL code, you can use the **VHDPlus IDE**. Follow these steps to get started:

1. Install the VHDPlus IDE by following the instructions at the official documentation:  
   [VHDPlus IDE Installation Guide](https://vhdplus.com/docs/getstarted/#install-vhdplus-ide)
   
2. After installing the software, open the project file (`HalfAdderGate.vhdpproj`) in the VHDPlus IDE.

3. Compile the project by using the compile button or the appropriate option within the IDE.

4. You can also simulate the circuit within the VHDPlus environment to observe the outputs for various inputs.
## License

MIT License

Copyright (c) 2024

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
[MIT LINK](https://choosealicense.com/licenses/mit/)