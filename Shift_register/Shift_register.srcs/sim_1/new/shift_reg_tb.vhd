----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Bahar Kaviani
-- 
-- Create Date: 12/11/2021 10:21:03 AM
-- Design Name: -
-- Module Name: shift_reg_tb - bench
-- Project Name: Shift_register
-- Target Devices: -
-- Tool Versions: -
-- Description: -
-- 
-- Dependencies: -
-- 
-- Revision: -
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shift_reg_tb is
end shift_reg_tb;

architecture bench of shift_reg_tb is
    
    component shift_reg
        Port ( d0 : in STD_LOGIC;
               clk : in STD_LOGIC;
               shift : in STD_LOGIC;
               reset : in STD_LOGIC;
               q : out STD_LOGIC_VECTOR (0 to 3));
    end component;
    
    signal d0: STD_LOGIC;
    signal clk: STD_LOGIC := '0';
    signal shift: STD_LOGIC;
    signal reset: STD_LOGIC;
    signal q: STD_LOGIC_VECTOR (0 to 3) := "0000";
    
    constant clock_period: time := 10ns;
    signal stop_the_clock: boolean;
    
begin

    uut: shift_reg port map ( d0    => d0,
                              clk   => clk,
                              shift => shift,
                              reset => reset,
                              q => q );
    stimulus: process
    begin
        -- initialisation code
        d0 <= '0';
        shift <= '0';
        reset <= '0';
        wait for 2ns;
        
        reset <= '1';
        wait for 2ns;
        
        -- test bench stimulus code
        d0 <= '1';
        shift <= '1';
        wait for clock_period;
        
        d0 <= '0';
        wait for clock_period;
        
        shift <= '0';
        wait for clock_period;
        
        d0 <= '1';
        shift <= '1';
        wait for clock_period;
        
        d0 <= '0';
        shift <= '1';
        wait for clock_period;
        
        -- end of simulation
        stop_the_clock <= true;
        wait;
    end process;
    
    clocking: process
    begin
        while not stop_the_clock loop
            clk <= not clk after clock_period / 2;
            wait for clock_period;
        end loop;
        wait;
    end process;

end bench;
