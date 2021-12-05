----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Bahar Kaviani
-- 
-- Create Date: 12/05/2021 08:40:33 AM
-- Design Name: -
-- Module Name: D_FF - DFF_Arch
-- Project Name: FFs
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

entity D_FF is
    Port ( d : in STD_LOGIC;
           clk : in STD_LOGIC;
           r : in STD_LOGIC;
           q : out STD_LOGIC);
end D_FF;

architecture DFF_Arch of D_FF is

begin

    -- D FF example 1 (with sync reset)
    dff_proc: process (clk)
    begin
        if (rising_edge(clk)) then
            if (r = '1') then -- sync reset (because it is in rising_edge(clk) body)
                q <= '0';
            else
                q <= d;
            end if;
        end if;
    end process dff_proc;

end DFF_Arch;
