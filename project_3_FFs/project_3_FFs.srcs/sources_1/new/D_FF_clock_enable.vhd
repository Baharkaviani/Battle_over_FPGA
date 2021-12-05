----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Bahar Kaviani
-- 
-- Create Date: 12/05/2021 09:05:27 AM
-- Design Name: -
-- Module Name: D_FF_clock_enable - DFF_Arch
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

entity D_FF_clock_enable is
    Port ( clk : in STD_LOGIC;
           ce : in STD_LOGIC;
           d : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end D_FF_clock_enable;

architecture DFF_Arch of D_FF_clock_enable is

begin

    -- D FF example 3 (with clock enable)
    dff_proc: process (clk, ce, reset)
    begin
        if (reset = '1') then
            q <= '0';
        elsif (rising_edge(clk)) then
            if (ce = '1') then
                q <= d;
            end if;
        end if;
    end process dff_proc;

end DFF_Arch;
