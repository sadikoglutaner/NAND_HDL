----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 08/01/2022 04:51:20 PM
-- Design Name: 
-- Module Name: NAND_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
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

entity NAND_TB is
--    Port ( a : in STD_LOGIC;
--           b : in STD_LOGIC;
--           z : out STD_LOGIC);
end NAND_TB;

architecture Behavioral of NAND_TB is

component NAND_GATE
PORT(
    a : IN std_logic;
    b : IN std_logic;
    z : OUT std_logic       
);
end component;

-- Inputs
signal a1 : std_logic := '0';
signal b1 : std_logic := '0';

--Output
signal z1 : std_logic;

begin

--Instantite the Unit Under Test (UUT)
uut : NAND_GATE port map(
    a => a1,
    b => b1,
    z => z1
);

--Stimus process
stim_proc: process
begin
-- hold reset state for 100ns.
    wait for 100ns;
--Inset stimus here
    a1 <= '0';
    b1 <= '0';
    wait for 100ns;
    a1 <= '0';
    b1 <= '1';
    wait for 100ns;
    a1 <= '1';
    b1 <= '0';
    wait for 100ns;
    a1 <= '1';
    b1 <= '1';
    wait;
    end process;
    
end Behavioral;
