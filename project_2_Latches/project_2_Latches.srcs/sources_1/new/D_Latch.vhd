----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Bahar Kaviani
-- 
-- Create Date: 11/30/2021 08:24:33 AM
-- Design Name: -
-- Module Name: D_Latch - LArch
-- Project Name: Latches
-- Target Devices: -
-- Tool Versions: -
-- Description: -
-- 
-- Dependencies: -
-- 
-- Revision: -
-- Revision 0.01 - File Created
-- Additional Comments: Hardware Description Languages for VHDL course @ coursera
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Latch is
    Port ( d : in STD_LOGIC;
           gate : in STD_LOGIC;
           clr : in STD_LOGIC;
           q : out STD_LOGIC);
end D_Latch;

architecture LArch of D_Latch is

begin

    -- Latch example 1
    latch_proc_1: process (gate, d)
    begin
        if (gate =  '1') then -- No rising_edge ()
            q <= d;
        end if;
        -- There is no gate = '0' value, so Latch inferred
    end process latch_proc_1;
    
    -- Latch example 2
    latch_proc_2: process (gate, d, clr)
    begin
        if (clr = '1') then
            q <= '0';
        elsif (gate = '1') then
            q <= d;
        end if;
    end process latch_proc_2;

end LArch;
