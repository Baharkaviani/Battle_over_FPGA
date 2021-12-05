----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Bahar Kaviani
-- 
-- Create Date: 12/05/2021 08:57:53 AM
-- Design Name: -
-- Module Name: D_FF_async_reset - DFF_Arch
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

entity D_FF_async_reset is
    Port ( clk : in STD_LOGIC;
           d : in STD_LOGIC;
           set : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC);
end D_FF_async_reset;

architecture DFF_Arch of D_FF_async_reset is

begin

    -- D FF example 2 (with async reset)
    dff_proc: process (clk, set, reset)
    begin
        if (reset = '1') then
            q <= '0';
        elsif (clk'event and clk='1') then -- this means rising_edge(clk)
            if (set = '0') then
                q <= '1';
            else
                q <= d;
            end if;
        end if;
    end process dff_proc;


end DFF_Arch;
