--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:51:27 05/09/2018
-- Design Name:   
-- Module Name:   /home/student/Desktop/CPU/Lab7/CCSiMP-32/MUX3_Test.vhd
-- Project Name:  CCSiMP-32
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX3
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX3_Test IS
END MUX3_Test;
 
ARCHITECTURE behavior OF MUX3_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX3
    PORT(
         I_MUX3_0 : IN  std_logic_vector(2 downto 0);
         I_MUX3_1 : IN  std_logic_vector(2 downto 0);
         I_MUX3_Sel : IN  std_logic;
         O_MUX3_Out : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal I_MUX3_0 : std_logic_vector(2 downto 0) := (others => '0');
   signal I_MUX3_1 : std_logic_vector(2 downto 0) := (others => '0');
   signal I_MUX3_Sel : std_logic := '0';

 	--Outputs
   signal O_MUX3_Out : std_logic_vector(2 downto 0);
   
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX3 PORT MAP (
          I_MUX3_0 => I_MUX3_0,
          I_MUX3_1 => I_MUX3_1,
          I_MUX3_Sel => I_MUX3_Sel,
          O_MUX3_Out => O_MUX3_Out
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		I_MUX3_0 <= "101";
		I_MUX3_1 <= "110";
		wait for 20 ns;
		
		I_MUX3_Sel <= '1';
		wait for 20 ns;
		
		I_MUX3_Sel <= '0';
      wait;
   end process;

END;
