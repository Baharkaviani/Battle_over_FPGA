----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Bahar Kaviani
-- 
-- Create Date: 12/11/2021 09:59:28 AM
-- Design Name: -
-- Module Name: shift_reg - SREG_Arch
-- Project Name: -
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

entity shift_reg is
    Port ( d0 : in STD_LOGIC;
           clk : in STD_LOGIC;
           load : in STD_LOGIC;
           reset : in STD_LOGIC;
           q : out STD_LOGIC_VECTOR (0 to 3));
end shift_reg;

architecture SREG_Arch of shift_reg is

begin


end SREG_Arch;
