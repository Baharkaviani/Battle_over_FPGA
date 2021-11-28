----------------------------------------------------------------------------------
-- Company: -
-- Engineer: Bahar Kaviani
-- 
-- Create Date: 11/24/2021 11:14:10 AM
-- Design Name: 
-- Module Name: four_bit_register - testbench
-- Project Name: Four bit Register
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
use IEEE.Numeric_Std.ALL;

entity four_bit_register_tb is
end;

architecture bench of four_bit_register_tb is

    component four_bit_register 
        Port ( D : in STD_LOGIC_VECTOR(3 downto 0);
               clk : in STD_LOGIC;
               load : in STD_LOGIC;
               reset : in STD_LOGIC;
               Q : out STD_LOGIC_VECTOR(3 downto 0));
    end component;
    
    signal D: STD_LOGIC_VECTOR(3 downto 0);
    signal clk: STD_LOGIC := '0';
    signal load: STD_LOGIC;
    signal reset: STD_LOGIC;
    signal Q: STD_LOGIC_VECTOR(3 downto 0) := "0000";

    constant clock_period: time := 10 ns;
    signal stop_the_clock: boolean;
    
begin

    uut: four_bit_register port map ( D     => D,
                                      clk   => clk,
                                      load  => load,
                                      reset => reset,
                                      Q     => Q );
                                      
    stimulus: process
    begin
        -- initialisation code
        D <= "0000";
        load <= '0';
        reset <= '1';
        
        -- test bench stimulus code
        D <= "1011";
        load <= '1';
        wait for 20ns;
        
        load <= '0';
        wait for 20ns;
        
        D <= "1001";
        wait for 20ns;
        
        load <= '1';
        wait for 20ns;
        
        reset <= '0';
        wait for 20ns;
        
        reset <= '1';
        D <= "0010";
        load <= '1';
        wait for 20ns;
        
        load <= '0';
        wait for 20ns;
        
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
