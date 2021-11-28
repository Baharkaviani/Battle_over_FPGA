----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Bahar Kaviani
-- 
-- Create Date: 11/24/2021 10:55:55 AM
-- Design Name: 
-- Module Name: four_bit_register - Reg_Arch
-- Project Name: Four bit Register
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity four_bit_register is
    Port ( D : in STD_LOGIC_VECTOR(3 downto 0);
           clk : in STD_LOGIC;
           load : in STD_LOGIC;
           reset : in STD_LOGIC;
           Q : out STD_LOGIC_VECTOR(3 downto 0));
end four_bit_register;

architecture Reg_Arch of four_bit_register is

begin
    
    dreg_process: process (CLK, reset, load)
    begin
        if (reset = '0') then
            Q <= "0000";
        elsif (rising_edge(CLK)) then
            if (load = '1') then
                Q <= D;
            end if;
        end if;
    end process dreg_process;

end Reg_Arch;
