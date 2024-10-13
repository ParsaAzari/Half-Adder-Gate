-- Importing standard libraries
library ieee;
use ieee.std_logic_1164.all;

-- Defining the entity (half adder) with input and output ports
entity half_adder is
    port (
        -- 1-bit input ports
        InPutNuberOne, InPutNumberTwo : in std_logic;
        -- Output ports for sum and carry
        OutPutSum, OutPutCarry : out std_logic
    );
end entity half_adder; -- End of entity definition

-- Defining the architecture and functionality of the half adder
architecture Functional of half_adder is
begin
    -- Calculating the sum of the two input ports and assigning it to the output sum
    OutPutSum <= InPutNuberOne xor InPutNumberTwo;

    -- Calculating the carry bit using the AND operator and assigning it to the carry output
    OutPutCarry <= InPutNuberOne and InPutNumberTwo;
end architecture Functional; -- End of architecture