-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "08/15/2018 17:17:45"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA IS
    PORT (
	CLOCK_24 : IN std_logic_vector(1 DOWNTO 0);
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- CLOCK_24[1]	=>  Location: PIN_N17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_P21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[0]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_24 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll~CLK1\ : std_logic;
SIGNAL \C|altpll_0|sd1|pll~CLK2\ : std_logic;
SIGNAL \C|altpll_0|sd1|pll~CLK3\ : std_logic;
SIGNAL \C|altpll_0|sd1|pll~CLK4\ : std_logic;
SIGNAL \CLOCK_24[1]~input_o\ : std_logic;
SIGNAL \CLOCK_24[0]~input_o\ : std_logic;
SIGNAL \C|altpll_0|sd1|pll~FBOUT\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~24\ : std_logic;
SIGNAL \C1|HPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|LessThan11~0_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~26\ : std_logic;
SIGNAL \C1|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~28\ : std_logic;
SIGNAL \C1|HPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|HPOS[9]~30\ : std_logic;
SIGNAL \C1|HPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|LessThan8~0_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~12\ : std_logic;
SIGNAL \C1|HPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~14\ : std_logic;
SIGNAL \C1|HPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~16\ : std_logic;
SIGNAL \C1|HPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~18\ : std_logic;
SIGNAL \C1|HPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~20\ : std_logic;
SIGNAL \C1|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~22\ : std_logic;
SIGNAL \C1|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|HSYNC~q\ : std_logic;
SIGNAL \C1|VPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~26\ : std_logic;
SIGNAL \C1|VPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~28\ : std_logic;
SIGNAL \C1|VPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|VPOS[9]~30\ : std_logic;
SIGNAL \C1|VPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|LessThan12~0_combout\ : std_logic;
SIGNAL \C1|LessThan12~1_combout\ : std_logic;
SIGNAL \C1|LessThan9~0_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~12\ : std_logic;
SIGNAL \C1|VPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~14\ : std_logic;
SIGNAL \C1|VPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~16\ : std_logic;
SIGNAL \C1|VPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~18\ : std_logic;
SIGNAL \C1|VPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~20\ : std_logic;
SIGNAL \C1|VPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~22\ : std_logic;
SIGNAL \C1|VPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~24\ : std_logic;
SIGNAL \C1|VPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|LessThan15~1_combout\ : std_logic;
SIGNAL \C1|LessThan15~0_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|VSYNC~q\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|B~2_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \C1|Add13~0_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \C1|SQ_Y1[10]~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \C1|SQ_Y2[10]~0_combout\ : std_logic;
SIGNAL \C1|Add13~1\ : std_logic;
SIGNAL \C1|Add13~2_combout\ : std_logic;
SIGNAL \C1|Add13~3\ : std_logic;
SIGNAL \C1|Add13~4_combout\ : std_logic;
SIGNAL \C1|Add13~5\ : std_logic;
SIGNAL \C1|Add13~6_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[3]~4_combout\ : std_logic;
SIGNAL \C1|Add13~7\ : std_logic;
SIGNAL \C1|Add13~8_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[4]~3_combout\ : std_logic;
SIGNAL \C1|Add13~9\ : std_logic;
SIGNAL \C1|Add13~10_combout\ : std_logic;
SIGNAL \C1|Add13~11\ : std_logic;
SIGNAL \C1|Add13~12_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[6]~2_combout\ : std_logic;
SIGNAL \C1|Add13~13\ : std_logic;
SIGNAL \C1|Add13~14_combout\ : std_logic;
SIGNAL \C1|Add13~15\ : std_logic;
SIGNAL \C1|Add13~16_combout\ : std_logic;
SIGNAL \C1|Add13~17\ : std_logic;
SIGNAL \C1|Add13~18_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~1_combout\ : std_logic;
SIGNAL \C1|Add13~19\ : std_logic;
SIGNAL \C1|Add13~20_combout\ : std_logic;
SIGNAL \C1|Add3~1\ : std_logic;
SIGNAL \C1|Add3~3\ : std_logic;
SIGNAL \C1|Add3~5\ : std_logic;
SIGNAL \C1|Add3~7\ : std_logic;
SIGNAL \C1|Add3~9\ : std_logic;
SIGNAL \C1|Add3~11\ : std_logic;
SIGNAL \C1|Add3~13\ : std_logic;
SIGNAL \C1|Add3~14_combout\ : std_logic;
SIGNAL \C1|Add3~12_combout\ : std_logic;
SIGNAL \C1|Add3~10_combout\ : std_logic;
SIGNAL \C1|Add3~8_combout\ : std_logic;
SIGNAL \C1|Add3~6_combout\ : std_logic;
SIGNAL \C1|Add3~4_combout\ : std_logic;
SIGNAL \C1|Add3~2_combout\ : std_logic;
SIGNAL \C1|Add3~0_combout\ : std_logic;
SIGNAL \C1|LessThan7~1_cout\ : std_logic;
SIGNAL \C1|LessThan7~3_cout\ : std_logic;
SIGNAL \C1|LessThan7~5_cout\ : std_logic;
SIGNAL \C1|LessThan7~7_cout\ : std_logic;
SIGNAL \C1|LessThan7~9_cout\ : std_logic;
SIGNAL \C1|LessThan7~11_cout\ : std_logic;
SIGNAL \C1|LessThan7~13_cout\ : std_logic;
SIGNAL \C1|LessThan7~15_cout\ : std_logic;
SIGNAL \C1|LessThan7~17_cout\ : std_logic;
SIGNAL \C1|LessThan7~19_cout\ : std_logic;
SIGNAL \C1|LessThan7~20_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \C1|Add10~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \C1|SQ_X1[10]~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~0_combout\ : std_logic;
SIGNAL \C1|Add10~1\ : std_logic;
SIGNAL \C1|Add10~2_combout\ : std_logic;
SIGNAL \C1|Add10~3\ : std_logic;
SIGNAL \C1|Add10~4_combout\ : std_logic;
SIGNAL \C1|Add10~5\ : std_logic;
SIGNAL \C1|Add10~6_combout\ : std_logic;
SIGNAL \C1|SQ_X2[3]~4_combout\ : std_logic;
SIGNAL \C1|Add10~7\ : std_logic;
SIGNAL \C1|Add10~8_combout\ : std_logic;
SIGNAL \C1|SQ_X2[4]~3_combout\ : std_logic;
SIGNAL \C1|Add10~9\ : std_logic;
SIGNAL \C1|Add10~10_combout\ : std_logic;
SIGNAL \C1|Add10~11\ : std_logic;
SIGNAL \C1|Add10~12_combout\ : std_logic;
SIGNAL \C1|SQ_X2[6]~2_combout\ : std_logic;
SIGNAL \C1|Add10~13\ : std_logic;
SIGNAL \C1|Add10~14_combout\ : std_logic;
SIGNAL \C1|Add10~15\ : std_logic;
SIGNAL \C1|Add10~16_combout\ : std_logic;
SIGNAL \C1|Add10~17\ : std_logic;
SIGNAL \C1|Add10~18_combout\ : std_logic;
SIGNAL \C1|SQ_X2[9]~1_combout\ : std_logic;
SIGNAL \C1|Add10~19\ : std_logic;
SIGNAL \C1|Add10~20_combout\ : std_logic;
SIGNAL \C1|Add2~1\ : std_logic;
SIGNAL \C1|Add2~3\ : std_logic;
SIGNAL \C1|Add2~5\ : std_logic;
SIGNAL \C1|Add2~7\ : std_logic;
SIGNAL \C1|Add2~9\ : std_logic;
SIGNAL \C1|Add2~11\ : std_logic;
SIGNAL \C1|Add2~13\ : std_logic;
SIGNAL \C1|Add2~14_combout\ : std_logic;
SIGNAL \C1|Add2~12_combout\ : std_logic;
SIGNAL \C1|Add2~10_combout\ : std_logic;
SIGNAL \C1|Add2~8_combout\ : std_logic;
SIGNAL \C1|Add2~6_combout\ : std_logic;
SIGNAL \C1|Add2~4_combout\ : std_logic;
SIGNAL \C1|Add2~2_combout\ : std_logic;
SIGNAL \C1|Add2~0_combout\ : std_logic;
SIGNAL \C1|LessThan5~1_cout\ : std_logic;
SIGNAL \C1|LessThan5~3_cout\ : std_logic;
SIGNAL \C1|LessThan5~5_cout\ : std_logic;
SIGNAL \C1|LessThan5~7_cout\ : std_logic;
SIGNAL \C1|LessThan5~9_cout\ : std_logic;
SIGNAL \C1|LessThan5~11_cout\ : std_logic;
SIGNAL \C1|LessThan5~13_cout\ : std_logic;
SIGNAL \C1|LessThan5~15_cout\ : std_logic;
SIGNAL \C1|LessThan5~17_cout\ : std_logic;
SIGNAL \C1|LessThan5~19_cout\ : std_logic;
SIGNAL \C1|LessThan5~20_combout\ : std_logic;
SIGNAL \C1|Add3~15\ : std_logic;
SIGNAL \C1|Add3~16_combout\ : std_logic;
SIGNAL \C1|Add2~15\ : std_logic;
SIGNAL \C1|Add2~16_combout\ : std_logic;
SIGNAL \C1|DRAW2~0_combout\ : std_logic;
SIGNAL \C1|LessThan4~1_cout\ : std_logic;
SIGNAL \C1|LessThan4~3_cout\ : std_logic;
SIGNAL \C1|LessThan4~5_cout\ : std_logic;
SIGNAL \C1|LessThan4~7_cout\ : std_logic;
SIGNAL \C1|LessThan4~9_cout\ : std_logic;
SIGNAL \C1|LessThan4~11_cout\ : std_logic;
SIGNAL \C1|LessThan4~13_cout\ : std_logic;
SIGNAL \C1|LessThan4~15_cout\ : std_logic;
SIGNAL \C1|LessThan4~17_cout\ : std_logic;
SIGNAL \C1|LessThan4~19_cout\ : std_logic;
SIGNAL \C1|LessThan4~20_combout\ : std_logic;
SIGNAL \C1|LessThan6~1_cout\ : std_logic;
SIGNAL \C1|LessThan6~3_cout\ : std_logic;
SIGNAL \C1|LessThan6~5_cout\ : std_logic;
SIGNAL \C1|LessThan6~7_cout\ : std_logic;
SIGNAL \C1|LessThan6~9_cout\ : std_logic;
SIGNAL \C1|LessThan6~11_cout\ : std_logic;
SIGNAL \C1|LessThan6~13_cout\ : std_logic;
SIGNAL \C1|LessThan6~15_cout\ : std_logic;
SIGNAL \C1|LessThan6~17_cout\ : std_logic;
SIGNAL \C1|LessThan6~19_cout\ : std_logic;
SIGNAL \C1|LessThan6~20_combout\ : std_logic;
SIGNAL \C1|DRAW2~1_combout\ : std_logic;
SIGNAL \C1|Add6~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \C1|SQ_X1[10]~1_combout\ : std_logic;
SIGNAL \C1|Add6~1\ : std_logic;
SIGNAL \C1|Add6~2_combout\ : std_logic;
SIGNAL \C1|Add6~3\ : std_logic;
SIGNAL \C1|Add6~4_combout\ : std_logic;
SIGNAL \C1|SQ_X1[2]~7_combout\ : std_logic;
SIGNAL \C1|Add6~5\ : std_logic;
SIGNAL \C1|Add6~6_combout\ : std_logic;
SIGNAL \C1|Add6~7\ : std_logic;
SIGNAL \C1|Add6~8_combout\ : std_logic;
SIGNAL \C1|SQ_X1[4]~6_combout\ : std_logic;
SIGNAL \C1|Add6~9\ : std_logic;
SIGNAL \C1|Add6~10_combout\ : std_logic;
SIGNAL \C1|SQ_X1[5]~5_combout\ : std_logic;
SIGNAL \C1|Add6~11\ : std_logic;
SIGNAL \C1|Add6~12_combout\ : std_logic;
SIGNAL \C1|SQ_X1[6]~4_combout\ : std_logic;
SIGNAL \C1|Add6~13\ : std_logic;
SIGNAL \C1|Add6~14_combout\ : std_logic;
SIGNAL \C1|SQ_X1[7]~3_combout\ : std_logic;
SIGNAL \C1|Add6~15\ : std_logic;
SIGNAL \C1|Add6~16_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~2_combout\ : std_logic;
SIGNAL \C1|Add6~17\ : std_logic;
SIGNAL \C1|Add6~18_combout\ : std_logic;
SIGNAL \C1|Add6~19\ : std_logic;
SIGNAL \C1|Add6~20_combout\ : std_logic;
SIGNAL \C1|LessThan0~1_cout\ : std_logic;
SIGNAL \C1|LessThan0~3_cout\ : std_logic;
SIGNAL \C1|LessThan0~5_cout\ : std_logic;
SIGNAL \C1|LessThan0~7_cout\ : std_logic;
SIGNAL \C1|LessThan0~9_cout\ : std_logic;
SIGNAL \C1|LessThan0~11_cout\ : std_logic;
SIGNAL \C1|LessThan0~13_cout\ : std_logic;
SIGNAL \C1|LessThan0~15_cout\ : std_logic;
SIGNAL \C1|LessThan0~17_cout\ : std_logic;
SIGNAL \C1|LessThan0~19_cout\ : std_logic;
SIGNAL \C1|LessThan0~20_combout\ : std_logic;
SIGNAL \C1|Add9~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[10]~1_combout\ : std_logic;
SIGNAL \C1|Add9~1\ : std_logic;
SIGNAL \C1|Add9~2_combout\ : std_logic;
SIGNAL \C1|Add9~3\ : std_logic;
SIGNAL \C1|Add9~4_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[2]~7_combout\ : std_logic;
SIGNAL \C1|Add9~5\ : std_logic;
SIGNAL \C1|Add9~6_combout\ : std_logic;
SIGNAL \C1|Add9~7\ : std_logic;
SIGNAL \C1|Add9~8_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[4]~6_combout\ : std_logic;
SIGNAL \C1|Add9~9\ : std_logic;
SIGNAL \C1|Add9~10_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[5]~5_combout\ : std_logic;
SIGNAL \C1|Add9~11\ : std_logic;
SIGNAL \C1|Add9~12_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[6]~4_combout\ : std_logic;
SIGNAL \C1|Add9~13\ : std_logic;
SIGNAL \C1|Add9~14_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[7]~3_combout\ : std_logic;
SIGNAL \C1|Add9~15\ : std_logic;
SIGNAL \C1|Add9~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[8]~2_combout\ : std_logic;
SIGNAL \C1|Add9~17\ : std_logic;
SIGNAL \C1|Add9~18_combout\ : std_logic;
SIGNAL \C1|Add9~19\ : std_logic;
SIGNAL \C1|Add9~20_combout\ : std_logic;
SIGNAL \C1|LessThan2~1_cout\ : std_logic;
SIGNAL \C1|LessThan2~3_cout\ : std_logic;
SIGNAL \C1|LessThan2~5_cout\ : std_logic;
SIGNAL \C1|LessThan2~7_cout\ : std_logic;
SIGNAL \C1|LessThan2~9_cout\ : std_logic;
SIGNAL \C1|LessThan2~11_cout\ : std_logic;
SIGNAL \C1|LessThan2~13_cout\ : std_logic;
SIGNAL \C1|LessThan2~15_cout\ : std_logic;
SIGNAL \C1|LessThan2~17_cout\ : std_logic;
SIGNAL \C1|LessThan2~19_cout\ : std_logic;
SIGNAL \C1|LessThan2~20_combout\ : std_logic;
SIGNAL \C1|DRAW1~1_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|Add1~1\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|Add1~12_combout\ : std_logic;
SIGNAL \C1|Add1~10_combout\ : std_logic;
SIGNAL \C1|Add1~8_combout\ : std_logic;
SIGNAL \C1|Add1~6_combout\ : std_logic;
SIGNAL \C1|Add1~4_combout\ : std_logic;
SIGNAL \C1|Add1~2_combout\ : std_logic;
SIGNAL \C1|Add1~0_combout\ : std_logic;
SIGNAL \C1|LessThan3~1_cout\ : std_logic;
SIGNAL \C1|LessThan3~3_cout\ : std_logic;
SIGNAL \C1|LessThan3~5_cout\ : std_logic;
SIGNAL \C1|LessThan3~7_cout\ : std_logic;
SIGNAL \C1|LessThan3~9_cout\ : std_logic;
SIGNAL \C1|LessThan3~11_cout\ : std_logic;
SIGNAL \C1|LessThan3~13_cout\ : std_logic;
SIGNAL \C1|LessThan3~15_cout\ : std_logic;
SIGNAL \C1|LessThan3~17_cout\ : std_logic;
SIGNAL \C1|LessThan3~19_cout\ : std_logic;
SIGNAL \C1|LessThan3~20_combout\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|LessThan1~1_cout\ : std_logic;
SIGNAL \C1|LessThan1~3_cout\ : std_logic;
SIGNAL \C1|LessThan1~5_cout\ : std_logic;
SIGNAL \C1|LessThan1~7_cout\ : std_logic;
SIGNAL \C1|LessThan1~9_cout\ : std_logic;
SIGNAL \C1|LessThan1~11_cout\ : std_logic;
SIGNAL \C1|LessThan1~13_cout\ : std_logic;
SIGNAL \C1|LessThan1~15_cout\ : std_logic;
SIGNAL \C1|LessThan1~17_cout\ : std_logic;
SIGNAL \C1|LessThan1~19_cout\ : std_logic;
SIGNAL \C1|LessThan1~20_combout\ : std_logic;
SIGNAL \C1|Add1~15\ : std_logic;
SIGNAL \C1|Add1~16_combout\ : std_logic;
SIGNAL \C1|DRAW1~0_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \C1|R~1_combout\ : std_logic;
SIGNAL \C1|B~5_combout\ : std_logic;
SIGNAL \C1|B~3_combout\ : std_logic;
SIGNAL \C1|B~4_combout\ : std_logic;
SIGNAL \C1|VPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_Y1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_LessThan9~0_combout\ : std_logic;
SIGNAL \C1|ALT_INV_LessThan8~0_combout\ : std_logic;

BEGIN

ww_CLOCK_24 <= CLOCK_24;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_SW <= SW;
ww_KEY <= KEY;
VGA_R <= ww_VGA_R;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C|altpll_0|sd1|pll_INCLK_bus\ <= (gnd & \CLOCK_24[0]~input_o\);

\C|altpll_0|sd1|_clk0\ <= \C|altpll_0|sd1|pll_CLK_bus\(0);
\C|altpll_0|sd1|pll~CLK1\ <= \C|altpll_0|sd1|pll_CLK_bus\(1);
\C|altpll_0|sd1|pll~CLK2\ <= \C|altpll_0|sd1|pll_CLK_bus\(2);
\C|altpll_0|sd1|pll~CLK3\ <= \C|altpll_0|sd1|pll_CLK_bus\(3);
\C|altpll_0|sd1|pll~CLK4\ <= \C|altpll_0|sd1|pll_CLK_bus\(4);

\C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|altpll_0|sd1|_clk0\);
\C1|ALT_INV_LessThan9~0_combout\ <= NOT \C1|LessThan9~0_combout\;
\C1|ALT_INV_LessThan8~0_combout\ <= NOT \C1|LessThan8~0_combout\;

-- Location: IOOBUF_X23_Y29_N23
\VGA_HS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|HSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X21_Y29_N23
\VGA_VS~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|VSYNC~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X21_Y29_N30
\VGA_R[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X16_Y29_N9
\VGA_R[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X16_Y29_N2
\VGA_R[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X3_Y29_N23
\VGA_R[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|R\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X16_Y29_N16
\VGA_B[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X26_Y29_N23
\VGA_B[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X41_Y12_N23
\VGA_B[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X28_Y29_N30
\VGA_B[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X41_Y7_N9
\VGA_G[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X37_Y29_N30
\VGA_G[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X41_Y19_N9
\VGA_G[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X41_Y19_N23
\VGA_G[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C1|B\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOIBUF_X0_Y14_N1
\CLOCK_24[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_24(0),
	o => \CLOCK_24[0]~input_o\);

-- Location: PLL_1
\C|altpll_0|sd1|pll\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 9,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 41666,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 24,
	m => 27,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 3418,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "manual",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 192,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \C|altpll_0|sd1|pll~FBOUT\,
	inclk => \C|altpll_0|sd1|pll_INCLK_bus\,
	fbout => \C|altpll_0|sd1|pll~FBOUT\,
	clk => \C|altpll_0|sd1|pll_CLK_bus\);

-- Location: CLKCTRL_G3
\C|altpll_0|sd1|_clk0~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y25_N8
\C1|HPOS[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~11_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~12\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~11_combout\,
	cout => \C1|HPOS[0]~12\);

-- Location: LCCOMB_X26_Y25_N20
\C1|HPOS[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~23_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~22\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~22\ & VCC))
-- \C1|HPOS[6]~24\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~22\,
	combout => \C1|HPOS[6]~23_combout\,
	cout => \C1|HPOS[6]~24\);

-- Location: LCCOMB_X26_Y25_N22
\C1|HPOS[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~25_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~24\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~24\) # (GND)))
-- \C1|HPOS[7]~26\ = CARRY((!\C1|HPOS[6]~24\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~24\,
	combout => \C1|HPOS[7]~25_combout\,
	cout => \C1|HPOS[7]~26\);

-- Location: FF_X26_Y25_N23
\C1|HPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[7]~25_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(7));

-- Location: LCCOMB_X26_Y25_N4
\C1|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X26_Y25_N6
\C1|LessThan11~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan11~0_combout\ = ((\C1|process_0~7_combout\ & ((!\C1|HPOS\(4)) # (!\C1|HPOS\(3))))) # (!\C1|HPOS\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|process_0~7_combout\,
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(4),
	combout => \C1|LessThan11~0_combout\);

-- Location: LCCOMB_X26_Y25_N24
\C1|HPOS[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~27_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~26\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~26\ & VCC))
-- \C1|HPOS[8]~28\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~26\,
	combout => \C1|HPOS[8]~27_combout\,
	cout => \C1|HPOS[8]~28\);

-- Location: FF_X26_Y25_N25
\C1|HPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[8]~27_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(8));

-- Location: LCCOMB_X26_Y25_N26
\C1|HPOS[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~29_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS[8]~28\)) # (!\C1|HPOS\(9) & ((\C1|HPOS[8]~28\) # (GND)))
-- \C1|HPOS[9]~30\ = CARRY((!\C1|HPOS[8]~28\) # (!\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|HPOS[8]~28\,
	combout => \C1|HPOS[9]~29_combout\,
	cout => \C1|HPOS[9]~30\);

-- Location: FF_X26_Y25_N27
\C1|HPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[9]~29_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(9));

-- Location: LCCOMB_X26_Y25_N28
\C1|HPOS[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[10]~31_combout\ = \C1|HPOS[9]~30\ $ (!\C1|HPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|HPOS\(10),
	cin => \C1|HPOS[9]~30\,
	combout => \C1|HPOS[10]~31_combout\);

-- Location: FF_X26_Y25_N29
\C1|HPOS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[10]~31_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(10));

-- Location: LCCOMB_X24_Y25_N22
\C1|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~0_combout\ = (((\C1|LessThan11~0_combout\ & !\C1|HPOS\(8))) # (!\C1|HPOS\(10))) # (!\C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan11~0_combout\,
	datab => \C1|HPOS\(9),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(10),
	combout => \C1|LessThan8~0_combout\);

-- Location: FF_X26_Y25_N9
\C1|HPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[0]~11_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(0));

-- Location: LCCOMB_X26_Y25_N10
\C1|HPOS[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~13_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~12\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~12\) # (GND)))
-- \C1|HPOS[1]~14\ = CARRY((!\C1|HPOS[0]~12\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~12\,
	combout => \C1|HPOS[1]~13_combout\,
	cout => \C1|HPOS[1]~14\);

-- Location: FF_X26_Y25_N11
\C1|HPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[1]~13_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(1));

-- Location: LCCOMB_X26_Y25_N12
\C1|HPOS[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~15_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~14\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~14\ & VCC))
-- \C1|HPOS[2]~16\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~14\,
	combout => \C1|HPOS[2]~15_combout\,
	cout => \C1|HPOS[2]~16\);

-- Location: FF_X26_Y25_N13
\C1|HPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[2]~15_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(2));

-- Location: LCCOMB_X26_Y25_N14
\C1|HPOS[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~17_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~16\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~16\) # (GND)))
-- \C1|HPOS[3]~18\ = CARRY((!\C1|HPOS[2]~16\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~16\,
	combout => \C1|HPOS[3]~17_combout\,
	cout => \C1|HPOS[3]~18\);

-- Location: FF_X26_Y25_N15
\C1|HPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[3]~17_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(3));

-- Location: LCCOMB_X26_Y25_N16
\C1|HPOS[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~19_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~18\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~18\ & VCC))
-- \C1|HPOS[4]~20\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~18\,
	combout => \C1|HPOS[4]~19_combout\,
	cout => \C1|HPOS[4]~20\);

-- Location: FF_X26_Y25_N17
\C1|HPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[4]~19_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(4));

-- Location: LCCOMB_X26_Y25_N18
\C1|HPOS[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~21_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~20\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~20\) # (GND)))
-- \C1|HPOS[5]~22\ = CARRY((!\C1|HPOS[4]~20\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~20\,
	combout => \C1|HPOS[5]~21_combout\,
	cout => \C1|HPOS[5]~22\);

-- Location: FF_X26_Y25_N19
\C1|HPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[5]~21_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(5));

-- Location: FF_X26_Y25_N21
\C1|HPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|HPOS[6]~23_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(6));

-- Location: LCCOMB_X24_Y25_N24
\C1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (\C1|HPOS\(9)) # ((\C1|HPOS\(8)) # (\C1|HPOS\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(10),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X26_Y25_N0
\C1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (!\C1|HPOS\(1) & (!\C1|HPOS\(3) & (!\C1|HPOS\(0) & !\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(0),
	datad => \C1|HPOS\(2),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X26_Y25_N2
\C1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (\C1|HPOS\(5) & ((\C1|HPOS\(7)) # ((\C1|HPOS\(4) & !\C1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(7),
	datad => \C1|process_0~1_combout\,
	combout => \C1|process_0~2_combout\);

-- Location: LCCOMB_X24_Y25_N30
\C1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (\C1|process_0~0_combout\) # (\C1|HPOS\(7) $ (((!\C1|HPOS\(6) & !\C1|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|process_0~0_combout\,
	datac => \C1|process_0~2_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|process_0~3_combout\);

-- Location: FF_X24_Y25_N31
\C1|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HSYNC~q\);

-- Location: LCCOMB_X31_Y26_N6
\C1|VPOS[0]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~11_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~12\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~11_combout\,
	cout => \C1|VPOS[0]~12\);

-- Location: LCCOMB_X31_Y26_N20
\C1|VPOS[7]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~25_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~24\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~24\) # (GND)))
-- \C1|VPOS[7]~26\ = CARRY((!\C1|VPOS[6]~24\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~24\,
	combout => \C1|VPOS[7]~25_combout\,
	cout => \C1|VPOS[7]~26\);

-- Location: LCCOMB_X31_Y26_N22
\C1|VPOS[8]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~27_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~26\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~26\ & VCC))
-- \C1|VPOS[8]~28\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~26\,
	combout => \C1|VPOS[8]~27_combout\,
	cout => \C1|VPOS[8]~28\);

-- Location: FF_X31_Y26_N23
\C1|VPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[8]~27_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(8));

-- Location: LCCOMB_X31_Y26_N24
\C1|VPOS[9]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~29_combout\ = (\C1|VPOS\(9) & (!\C1|VPOS[8]~28\)) # (!\C1|VPOS\(9) & ((\C1|VPOS[8]~28\) # (GND)))
-- \C1|VPOS[9]~30\ = CARRY((!\C1|VPOS[8]~28\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|VPOS[8]~28\,
	combout => \C1|VPOS[9]~29_combout\,
	cout => \C1|VPOS[9]~30\);

-- Location: FF_X31_Y26_N25
\C1|VPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[9]~29_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(9));

-- Location: LCCOMB_X31_Y26_N26
\C1|VPOS[10]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[10]~31_combout\ = \C1|VPOS\(10) $ (!\C1|VPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	cin => \C1|VPOS[9]~30\,
	combout => \C1|VPOS[10]~31_combout\);

-- Location: FF_X31_Y26_N27
\C1|VPOS[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[10]~31_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(10));

-- Location: LCCOMB_X31_Y26_N2
\C1|LessThan12~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan12~0_combout\ = ((!\C1|VPOS\(1) & (!\C1|VPOS\(4) & !\C1|VPOS\(2)))) # (!\C1|VPOS\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan12~0_combout\);

-- Location: LCCOMB_X31_Y26_N28
\C1|LessThan12~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan12~1_combout\ = (\C1|process_0~4_combout\ & ((\C1|LessThan12~0_combout\) # ((!\C1|VPOS\(3) & !\C1|VPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|LessThan12~0_combout\,
	datac => \C1|VPOS\(4),
	datad => \C1|process_0~4_combout\,
	combout => \C1|LessThan12~1_combout\);

-- Location: LCCOMB_X31_Y26_N4
\C1|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan9~0_combout\ = (\C1|LessThan12~1_combout\) # (!\C1|VPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|VPOS\(10),
	datad => \C1|LessThan12~1_combout\,
	combout => \C1|LessThan9~0_combout\);

-- Location: FF_X31_Y26_N7
\C1|VPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[0]~11_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(0));

-- Location: LCCOMB_X31_Y26_N8
\C1|VPOS[1]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~13_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~12\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~12\) # (GND)))
-- \C1|VPOS[1]~14\ = CARRY((!\C1|VPOS[0]~12\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~12\,
	combout => \C1|VPOS[1]~13_combout\,
	cout => \C1|VPOS[1]~14\);

-- Location: FF_X31_Y26_N9
\C1|VPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[1]~13_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(1));

-- Location: LCCOMB_X31_Y26_N10
\C1|VPOS[2]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~15_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~14\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~14\ & VCC))
-- \C1|VPOS[2]~16\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~14\,
	combout => \C1|VPOS[2]~15_combout\,
	cout => \C1|VPOS[2]~16\);

-- Location: FF_X31_Y26_N11
\C1|VPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[2]~15_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(2));

-- Location: LCCOMB_X31_Y26_N12
\C1|VPOS[3]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~17_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~16\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~16\) # (GND)))
-- \C1|VPOS[3]~18\ = CARRY((!\C1|VPOS[2]~16\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~16\,
	combout => \C1|VPOS[3]~17_combout\,
	cout => \C1|VPOS[3]~18\);

-- Location: FF_X31_Y26_N13
\C1|VPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[3]~17_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(3));

-- Location: LCCOMB_X31_Y26_N14
\C1|VPOS[4]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~19_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~18\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~18\ & VCC))
-- \C1|VPOS[4]~20\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~18\,
	combout => \C1|VPOS[4]~19_combout\,
	cout => \C1|VPOS[4]~20\);

-- Location: FF_X31_Y26_N15
\C1|VPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[4]~19_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(4));

-- Location: LCCOMB_X31_Y26_N16
\C1|VPOS[5]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~21_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~20\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~20\) # (GND)))
-- \C1|VPOS[5]~22\ = CARRY((!\C1|VPOS[4]~20\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~20\,
	combout => \C1|VPOS[5]~21_combout\,
	cout => \C1|VPOS[5]~22\);

-- Location: FF_X31_Y26_N17
\C1|VPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[5]~21_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(5));

-- Location: LCCOMB_X31_Y26_N18
\C1|VPOS[6]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~23_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~22\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~22\ & VCC))
-- \C1|VPOS[6]~24\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~22\,
	combout => \C1|VPOS[6]~23_combout\,
	cout => \C1|VPOS[6]~24\);

-- Location: FF_X31_Y26_N19
\C1|VPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[6]~23_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(6));

-- Location: FF_X31_Y26_N21
\C1|VPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|VPOS[7]~25_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(7));

-- Location: LCCOMB_X31_Y26_N0
\C1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (!\C1|VPOS\(7) & (!\C1|VPOS\(9) & (!\C1|VPOS\(8) & !\C1|VPOS\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(6),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X29_Y25_N2
\C1|LessThan15~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan15~1_combout\ = (!\C1|VPOS\(5) & (!\C1|VPOS\(3) & (!\C1|VPOS\(2) & !\C1|VPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(4),
	combout => \C1|LessThan15~1_combout\);

-- Location: LCCOMB_X29_Y25_N26
\C1|LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan15~0_combout\ = (!\C1|VPOS\(1) & !\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(0),
	combout => \C1|LessThan15~0_combout\);

-- Location: LCCOMB_X29_Y25_N0
\C1|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (((\C1|LessThan15~0_combout\) # (\C1|VPOS\(10))) # (!\C1|LessThan15~1_combout\)) # (!\C1|process_0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|LessThan15~1_combout\,
	datac => \C1|LessThan15~0_combout\,
	datad => \C1|VPOS\(10),
	combout => \C1|process_0~5_combout\);

-- Location: FF_X29_Y25_N1
\C1|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VSYNC~q\);

-- Location: LCCOMB_X26_Y25_N30
\C1|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (!\C1|HPOS\(8) & (\C1|process_0~7_combout\ & (!\C1|HPOS\(7) & !\C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|process_0~7_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(4),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X24_Y25_N28
\C1|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (\C1|HPOS\(9)) # ((\C1|HPOS\(10)) # ((!\C1|LessThan11~0_combout\ & \C1|HPOS\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan11~0_combout\,
	datab => \C1|HPOS\(9),
	datac => \C1|HPOS\(8),
	datad => \C1|HPOS\(10),
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X29_Y25_N28
\C1|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = ((\C1|VPOS\(10)) # ((\C1|LessThan15~1_combout\ & \C1|LessThan15~0_combout\))) # (!\C1|LessThan12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan12~1_combout\,
	datab => \C1|LessThan15~1_combout\,
	datac => \C1|LessThan15~0_combout\,
	datad => \C1|VPOS\(10),
	combout => \C1|process_0~6_combout\);

-- Location: LCCOMB_X29_Y25_N30
\C1|B~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~2_combout\ = (\C1|process_0~6_combout\ & ((\C1|process_0~8_combout\) # ((\C1|process_0~1_combout\ & \C1|process_0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~1_combout\,
	datab => \C1|process_0~9_combout\,
	datac => \C1|process_0~8_combout\,
	datad => \C1|process_0~6_combout\,
	combout => \C1|B~2_combout\);

-- Location: IOIBUF_X30_Y29_N15
\KEY[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X32_Y25_N8
\C1|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~0_combout\ = \C1|SQ_Y2\(0) $ (VCC)
-- \C1|Add13~1\ = CARRY(\C1|SQ_Y2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(0),
	datad => VCC,
	combout => \C1|Add13~0_combout\,
	cout => \C1|Add13~1\);

-- Location: IOIBUF_X7_Y29_N8
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X24_Y28_N8
\C1|SQ_Y1[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[10]~0_combout\ = (!\KEY[3]~input_o\) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[2]~input_o\,
	datad => \KEY[3]~input_o\,
	combout => \C1|SQ_Y1[10]~0_combout\);

-- Location: IOIBUF_X23_Y29_N8
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X32_Y25_N30
\C1|SQ_Y2[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[10]~0_combout\ = (!\C1|LessThan8~0_combout\ & (\C1|SQ_Y1[10]~0_combout\ & (\SW[1]~input_o\ & !\C1|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan8~0_combout\,
	datab => \C1|SQ_Y1[10]~0_combout\,
	datac => \SW[1]~input_o\,
	datad => \C1|LessThan9~0_combout\,
	combout => \C1|SQ_Y2[10]~0_combout\);

-- Location: FF_X32_Y25_N9
\C1|SQ_Y2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add13~0_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(0));

-- Location: LCCOMB_X32_Y25_N10
\C1|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~2_combout\ = (\C1|SQ_Y2\(1) & ((\KEY[3]~input_o\ & (\C1|Add13~1\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add13~1\)))) # (!\C1|SQ_Y2\(1) & ((\KEY[3]~input_o\ & (!\C1|Add13~1\)) # (!\KEY[3]~input_o\ & ((\C1|Add13~1\) # (GND)))))
-- \C1|Add13~3\ = CARRY((\C1|SQ_Y2\(1) & (!\KEY[3]~input_o\ & !\C1|Add13~1\)) # (!\C1|SQ_Y2\(1) & ((!\C1|Add13~1\) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add13~1\,
	combout => \C1|Add13~2_combout\,
	cout => \C1|Add13~3\);

-- Location: FF_X32_Y25_N11
\C1|SQ_Y2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add13~2_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(1));

-- Location: LCCOMB_X32_Y25_N12
\C1|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~4_combout\ = ((\C1|SQ_Y2\(2) $ (\KEY[3]~input_o\ $ (\C1|Add13~3\)))) # (GND)
-- \C1|Add13~5\ = CARRY((\C1|SQ_Y2\(2) & ((!\C1|Add13~3\) # (!\KEY[3]~input_o\))) # (!\C1|SQ_Y2\(2) & (!\KEY[3]~input_o\ & !\C1|Add13~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add13~3\,
	combout => \C1|Add13~4_combout\,
	cout => \C1|Add13~5\);

-- Location: FF_X32_Y25_N13
\C1|SQ_Y2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add13~4_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(2));

-- Location: LCCOMB_X32_Y25_N14
\C1|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~6_combout\ = (\C1|SQ_Y2\(3) & ((\KEY[3]~input_o\ & (!\C1|Add13~5\)) # (!\KEY[3]~input_o\ & ((\C1|Add13~5\) # (GND))))) # (!\C1|SQ_Y2\(3) & ((\KEY[3]~input_o\ & (\C1|Add13~5\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add13~5\))))
-- \C1|Add13~7\ = CARRY((\C1|SQ_Y2\(3) & ((!\C1|Add13~5\) # (!\KEY[3]~input_o\))) # (!\C1|SQ_Y2\(3) & (!\KEY[3]~input_o\ & !\C1|Add13~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add13~5\,
	combout => \C1|Add13~6_combout\,
	cout => \C1|Add13~7\);

-- Location: LCCOMB_X32_Y25_N6
\C1|SQ_Y2[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[3]~4_combout\ = !\C1|Add13~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~6_combout\,
	combout => \C1|SQ_Y2[3]~4_combout\);

-- Location: FF_X32_Y25_N7
\C1|SQ_Y2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y2[3]~4_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(3));

-- Location: LCCOMB_X32_Y25_N16
\C1|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~8_combout\ = ((\C1|SQ_Y2\(4) $ (\KEY[3]~input_o\ $ (\C1|Add13~7\)))) # (GND)
-- \C1|Add13~9\ = CARRY((\C1|SQ_Y2\(4) & (\KEY[3]~input_o\ & !\C1|Add13~7\)) # (!\C1|SQ_Y2\(4) & ((\KEY[3]~input_o\) # (!\C1|Add13~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add13~7\,
	combout => \C1|Add13~8_combout\,
	cout => \C1|Add13~9\);

-- Location: LCCOMB_X32_Y25_N4
\C1|SQ_Y2[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[4]~3_combout\ = !\C1|Add13~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add13~8_combout\,
	combout => \C1|SQ_Y2[4]~3_combout\);

-- Location: FF_X32_Y25_N5
\C1|SQ_Y2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y2[4]~3_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(4));

-- Location: LCCOMB_X32_Y25_N18
\C1|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~10_combout\ = (\C1|SQ_Y2\(5) & ((\KEY[3]~input_o\ & (\C1|Add13~9\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add13~9\)))) # (!\C1|SQ_Y2\(5) & ((\KEY[3]~input_o\ & (!\C1|Add13~9\)) # (!\KEY[3]~input_o\ & ((\C1|Add13~9\) # (GND)))))
-- \C1|Add13~11\ = CARRY((\C1|SQ_Y2\(5) & (!\KEY[3]~input_o\ & !\C1|Add13~9\)) # (!\C1|SQ_Y2\(5) & ((!\C1|Add13~9\) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add13~9\,
	combout => \C1|Add13~10_combout\,
	cout => \C1|Add13~11\);

-- Location: FF_X32_Y25_N19
\C1|SQ_Y2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add13~10_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(5));

-- Location: LCCOMB_X32_Y25_N20
\C1|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~12_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y2\(6) $ (\C1|Add13~11\)))) # (GND)
-- \C1|Add13~13\ = CARRY((\KEY[3]~input_o\ & ((!\C1|Add13~11\) # (!\C1|SQ_Y2\(6)))) # (!\KEY[3]~input_o\ & (!\C1|SQ_Y2\(6) & !\C1|Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add13~11\,
	combout => \C1|Add13~12_combout\,
	cout => \C1|Add13~13\);

-- Location: LCCOMB_X32_Y25_N2
\C1|SQ_Y2[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[6]~2_combout\ = !\C1|Add13~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add13~12_combout\,
	combout => \C1|SQ_Y2[6]~2_combout\);

-- Location: FF_X32_Y25_N3
\C1|SQ_Y2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y2[6]~2_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(6));

-- Location: LCCOMB_X32_Y25_N22
\C1|Add13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~14_combout\ = (\C1|SQ_Y2\(7) & ((\KEY[3]~input_o\ & (\C1|Add13~13\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add13~13\)))) # (!\C1|SQ_Y2\(7) & ((\KEY[3]~input_o\ & (!\C1|Add13~13\)) # (!\KEY[3]~input_o\ & ((\C1|Add13~13\) # (GND)))))
-- \C1|Add13~15\ = CARRY((\C1|SQ_Y2\(7) & (!\KEY[3]~input_o\ & !\C1|Add13~13\)) # (!\C1|SQ_Y2\(7) & ((!\C1|Add13~13\) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add13~13\,
	combout => \C1|Add13~14_combout\,
	cout => \C1|Add13~15\);

-- Location: FF_X32_Y25_N23
\C1|SQ_Y2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add13~14_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(7));

-- Location: LCCOMB_X32_Y25_N24
\C1|Add13~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~16_combout\ = ((\C1|SQ_Y2\(8) $ (\KEY[3]~input_o\ $ (!\C1|Add13~15\)))) # (GND)
-- \C1|Add13~17\ = CARRY((\C1|SQ_Y2\(8) & ((\KEY[3]~input_o\) # (!\C1|Add13~15\))) # (!\C1|SQ_Y2\(8) & (\KEY[3]~input_o\ & !\C1|Add13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add13~15\,
	combout => \C1|Add13~16_combout\,
	cout => \C1|Add13~17\);

-- Location: FF_X32_Y25_N25
\C1|SQ_Y2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add13~16_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(8));

-- Location: LCCOMB_X32_Y25_N26
\C1|Add13~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~18_combout\ = (\C1|SQ_Y2\(9) & ((\KEY[3]~input_o\ & (!\C1|Add13~17\)) # (!\KEY[3]~input_o\ & ((\C1|Add13~17\) # (GND))))) # (!\C1|SQ_Y2\(9) & ((\KEY[3]~input_o\ & (\C1|Add13~17\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add13~17\))))
-- \C1|Add13~19\ = CARRY((\C1|SQ_Y2\(9) & ((!\C1|Add13~17\) # (!\KEY[3]~input_o\))) # (!\C1|SQ_Y2\(9) & (!\KEY[3]~input_o\ & !\C1|Add13~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add13~17\,
	combout => \C1|Add13~18_combout\,
	cout => \C1|Add13~19\);

-- Location: LCCOMB_X32_Y25_N0
\C1|SQ_Y2[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~1_combout\ = !\C1|Add13~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~18_combout\,
	combout => \C1|SQ_Y2[9]~1_combout\);

-- Location: FF_X32_Y25_N1
\C1|SQ_Y2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y2[9]~1_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(9));

-- Location: LCCOMB_X32_Y25_N28
\C1|Add13~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~20_combout\ = \KEY[3]~input_o\ $ (\C1|Add13~19\ $ (!\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \KEY[3]~input_o\,
	datad => \C1|SQ_Y2\(10),
	cin => \C1|Add13~19\,
	combout => \C1|Add13~20_combout\);

-- Location: FF_X32_Y25_N29
\C1|SQ_Y2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add13~20_combout\,
	ena => \C1|SQ_Y2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(10));

-- Location: LCCOMB_X33_Y26_N8
\C1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~0_combout\ = (\C1|SQ_Y2\(2) & (\C1|SQ_Y2\(3) $ (GND))) # (!\C1|SQ_Y2\(2) & (!\C1|SQ_Y2\(3) & VCC))
-- \C1|Add3~1\ = CARRY((\C1|SQ_Y2\(2) & !\C1|SQ_Y2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	combout => \C1|Add3~0_combout\,
	cout => \C1|Add3~1\);

-- Location: LCCOMB_X33_Y26_N10
\C1|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~2_combout\ = (\C1|SQ_Y2\(4) & ((\C1|Add3~1\) # (GND))) # (!\C1|SQ_Y2\(4) & (!\C1|Add3~1\))
-- \C1|Add3~3\ = CARRY((\C1|SQ_Y2\(4)) # (!\C1|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|Add3~1\,
	combout => \C1|Add3~2_combout\,
	cout => \C1|Add3~3\);

-- Location: LCCOMB_X33_Y26_N12
\C1|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~4_combout\ = (\C1|SQ_Y2\(5) & ((GND) # (!\C1|Add3~3\))) # (!\C1|SQ_Y2\(5) & (\C1|Add3~3\ $ (GND)))
-- \C1|Add3~5\ = CARRY((\C1|SQ_Y2\(5)) # (!\C1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|Add3~3\,
	combout => \C1|Add3~4_combout\,
	cout => \C1|Add3~5\);

-- Location: LCCOMB_X33_Y26_N14
\C1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~6_combout\ = (\C1|SQ_Y2\(6) & (!\C1|Add3~5\)) # (!\C1|SQ_Y2\(6) & (\C1|Add3~5\ & VCC))
-- \C1|Add3~7\ = CARRY((\C1|SQ_Y2\(6) & !\C1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add3~5\,
	combout => \C1|Add3~6_combout\,
	cout => \C1|Add3~7\);

-- Location: LCCOMB_X33_Y26_N16
\C1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~8_combout\ = (\C1|SQ_Y2\(7) & (\C1|Add3~7\ $ (GND))) # (!\C1|SQ_Y2\(7) & (!\C1|Add3~7\ & VCC))
-- \C1|Add3~9\ = CARRY((\C1|SQ_Y2\(7) & !\C1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|Add3~7\,
	combout => \C1|Add3~8_combout\,
	cout => \C1|Add3~9\);

-- Location: LCCOMB_X33_Y26_N18
\C1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~10_combout\ = (\C1|SQ_Y2\(8) & (!\C1|Add3~9\)) # (!\C1|SQ_Y2\(8) & ((\C1|Add3~9\) # (GND)))
-- \C1|Add3~11\ = CARRY((!\C1|Add3~9\) # (!\C1|SQ_Y2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add3~9\,
	combout => \C1|Add3~10_combout\,
	cout => \C1|Add3~11\);

-- Location: LCCOMB_X33_Y26_N20
\C1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~12_combout\ = (\C1|SQ_Y2\(9) & (!\C1|Add3~11\ & VCC)) # (!\C1|SQ_Y2\(9) & (\C1|Add3~11\ $ (GND)))
-- \C1|Add3~13\ = CARRY((!\C1|SQ_Y2\(9) & !\C1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add3~11\,
	combout => \C1|Add3~12_combout\,
	cout => \C1|Add3~13\);

-- Location: LCCOMB_X33_Y26_N22
\C1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~14_combout\ = (\C1|SQ_Y2\(10) & (!\C1|Add3~13\)) # (!\C1|SQ_Y2\(10) & ((\C1|Add3~13\) # (GND)))
-- \C1|Add3~15\ = CARRY((!\C1|Add3~13\) # (!\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(10),
	datad => VCC,
	cin => \C1|Add3~13\,
	combout => \C1|Add3~14_combout\,
	cout => \C1|Add3~15\);

-- Location: LCCOMB_X32_Y27_N10
\C1|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~1_cout\ = CARRY((!\C1|VPOS\(0) & \C1|SQ_Y2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|SQ_Y2\(0),
	datad => VCC,
	cout => \C1|LessThan7~1_cout\);

-- Location: LCCOMB_X32_Y27_N12
\C1|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~3_cout\ = CARRY((\C1|SQ_Y2\(1) & (\C1|VPOS\(1) & !\C1|LessThan7~1_cout\)) # (!\C1|SQ_Y2\(1) & ((\C1|VPOS\(1)) # (!\C1|LessThan7~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|LessThan7~1_cout\,
	cout => \C1|LessThan7~3_cout\);

-- Location: LCCOMB_X32_Y27_N14
\C1|LessThan7~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~5_cout\ = CARRY((\C1|VPOS\(2) & (!\C1|SQ_Y2\(2) & !\C1|LessThan7~3_cout\)) # (!\C1|VPOS\(2) & ((!\C1|LessThan7~3_cout\) # (!\C1|SQ_Y2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|LessThan7~3_cout\,
	cout => \C1|LessThan7~5_cout\);

-- Location: LCCOMB_X32_Y27_N16
\C1|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~7_cout\ = CARRY((\C1|VPOS\(3) & ((!\C1|LessThan7~5_cout\) # (!\C1|Add3~0_combout\))) # (!\C1|VPOS\(3) & (!\C1|Add3~0_combout\ & !\C1|LessThan7~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|Add3~0_combout\,
	datad => VCC,
	cin => \C1|LessThan7~5_cout\,
	cout => \C1|LessThan7~7_cout\);

-- Location: LCCOMB_X32_Y27_N18
\C1|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~9_cout\ = CARRY((\C1|VPOS\(4) & (\C1|Add3~2_combout\ & !\C1|LessThan7~7_cout\)) # (!\C1|VPOS\(4) & ((\C1|Add3~2_combout\) # (!\C1|LessThan7~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|Add3~2_combout\,
	datad => VCC,
	cin => \C1|LessThan7~7_cout\,
	cout => \C1|LessThan7~9_cout\);

-- Location: LCCOMB_X32_Y27_N20
\C1|LessThan7~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~11_cout\ = CARRY((\C1|Add3~4_combout\ & (\C1|VPOS\(5) & !\C1|LessThan7~9_cout\)) # (!\C1|Add3~4_combout\ & ((\C1|VPOS\(5)) # (!\C1|LessThan7~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~4_combout\,
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan7~9_cout\,
	cout => \C1|LessThan7~11_cout\);

-- Location: LCCOMB_X32_Y27_N22
\C1|LessThan7~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~13_cout\ = CARRY((\C1|Add3~6_combout\ & ((!\C1|LessThan7~11_cout\) # (!\C1|VPOS\(6)))) # (!\C1|Add3~6_combout\ & (!\C1|VPOS\(6) & !\C1|LessThan7~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~6_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan7~11_cout\,
	cout => \C1|LessThan7~13_cout\);

-- Location: LCCOMB_X32_Y27_N24
\C1|LessThan7~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~15_cout\ = CARRY((\C1|Add3~8_combout\ & (\C1|VPOS\(7) & !\C1|LessThan7~13_cout\)) # (!\C1|Add3~8_combout\ & ((\C1|VPOS\(7)) # (!\C1|LessThan7~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~8_combout\,
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan7~13_cout\,
	cout => \C1|LessThan7~15_cout\);

-- Location: LCCOMB_X32_Y27_N26
\C1|LessThan7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~17_cout\ = CARRY((\C1|Add3~10_combout\ & ((!\C1|LessThan7~15_cout\) # (!\C1|VPOS\(8)))) # (!\C1|Add3~10_combout\ & (!\C1|VPOS\(8) & !\C1|LessThan7~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~10_combout\,
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan7~15_cout\,
	cout => \C1|LessThan7~17_cout\);

-- Location: LCCOMB_X32_Y27_N28
\C1|LessThan7~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~19_cout\ = CARRY((\C1|Add3~12_combout\ & (\C1|VPOS\(9) & !\C1|LessThan7~17_cout\)) # (!\C1|Add3~12_combout\ & ((\C1|VPOS\(9)) # (!\C1|LessThan7~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~12_combout\,
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|LessThan7~17_cout\,
	cout => \C1|LessThan7~19_cout\);

-- Location: LCCOMB_X32_Y27_N30
\C1|LessThan7~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~20_combout\ = (\C1|VPOS\(10) & (!\C1|LessThan7~19_cout\ & \C1|Add3~14_combout\)) # (!\C1|VPOS\(10) & ((\C1|Add3~14_combout\) # (!\C1|LessThan7~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(10),
	datad => \C1|Add3~14_combout\,
	cin => \C1|LessThan7~19_cout\,
	combout => \C1|LessThan7~20_combout\);

-- Location: IOIBUF_X41_Y26_N8
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X30_Y26_N4
\C1|Add10~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~0_combout\ = \C1|SQ_X2\(0) $ (VCC)
-- \C1|Add10~1\ = CARRY(\C1|SQ_X2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(0),
	datad => VCC,
	combout => \C1|Add10~0_combout\,
	cout => \C1|Add10~1\);

-- Location: IOIBUF_X23_Y29_N29
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X24_Y26_N30
\C1|SQ_X1[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[10]~0_combout\ = (!\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datac => \KEY[1]~input_o\,
	combout => \C1|SQ_X1[10]~0_combout\);

-- Location: LCCOMB_X30_Y26_N30
\C1|SQ_X2[10]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~0_combout\ = (\C1|SQ_X1[10]~0_combout\ & (\SW[1]~input_o\ & (!\C1|LessThan8~0_combout\ & !\C1|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1[10]~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \C1|LessThan8~0_combout\,
	datad => \C1|LessThan9~0_combout\,
	combout => \C1|SQ_X2[10]~0_combout\);

-- Location: FF_X30_Y26_N5
\C1|SQ_X2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add10~0_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(0));

-- Location: LCCOMB_X30_Y26_N6
\C1|Add10~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~2_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X2\(1) & (!\C1|Add10~1\)) # (!\C1|SQ_X2\(1) & ((\C1|Add10~1\) # (GND))))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(1) & (\C1|Add10~1\ & VCC)) # (!\C1|SQ_X2\(1) & (!\C1|Add10~1\))))
-- \C1|Add10~3\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add10~1\) # (!\C1|SQ_X2\(1)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X2\(1) & !\C1|Add10~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	cin => \C1|Add10~1\,
	combout => \C1|Add10~2_combout\,
	cout => \C1|Add10~3\);

-- Location: FF_X30_Y26_N7
\C1|SQ_X2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add10~2_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(1));

-- Location: LCCOMB_X30_Y26_N8
\C1|Add10~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~4_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X2\(2) $ (!\C1|Add10~3\)))) # (GND)
-- \C1|Add10~5\ = CARRY((\KEY[1]~input_o\ & ((\C1|SQ_X2\(2)) # (!\C1|Add10~3\))) # (!\KEY[1]~input_o\ & (\C1|SQ_X2\(2) & !\C1|Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|Add10~3\,
	combout => \C1|Add10~4_combout\,
	cout => \C1|Add10~5\);

-- Location: FF_X30_Y26_N9
\C1|SQ_X2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add10~4_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(2));

-- Location: LCCOMB_X30_Y26_N10
\C1|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~6_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X2\(3) & ((\C1|Add10~5\) # (GND))) # (!\C1|SQ_X2\(3) & (!\C1|Add10~5\)))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(3) & (!\C1|Add10~5\)) # (!\C1|SQ_X2\(3) & (\C1|Add10~5\ & VCC))))
-- \C1|Add10~7\ = CARRY((\KEY[1]~input_o\ & ((\C1|SQ_X2\(3)) # (!\C1|Add10~5\))) # (!\KEY[1]~input_o\ & (\C1|SQ_X2\(3) & !\C1|Add10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Add10~5\,
	combout => \C1|Add10~6_combout\,
	cout => \C1|Add10~7\);

-- Location: LCCOMB_X30_Y26_N28
\C1|SQ_X2[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[3]~4_combout\ = !\C1|Add10~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add10~6_combout\,
	combout => \C1|SQ_X2[3]~4_combout\);

-- Location: FF_X30_Y26_N29
\C1|SQ_X2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X2[3]~4_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(3));

-- Location: LCCOMB_X30_Y26_N12
\C1|Add10~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~8_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X2\(4) $ (!\C1|Add10~7\)))) # (GND)
-- \C1|Add10~9\ = CARRY((\KEY[1]~input_o\ & (!\C1|SQ_X2\(4) & !\C1|Add10~7\)) # (!\KEY[1]~input_o\ & ((!\C1|Add10~7\) # (!\C1|SQ_X2\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Add10~7\,
	combout => \C1|Add10~8_combout\,
	cout => \C1|Add10~9\);

-- Location: LCCOMB_X30_Y26_N2
\C1|SQ_X2[4]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[4]~3_combout\ = !\C1|Add10~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add10~8_combout\,
	combout => \C1|SQ_X2[4]~3_combout\);

-- Location: FF_X30_Y26_N3
\C1|SQ_X2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X2[4]~3_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(4));

-- Location: LCCOMB_X30_Y26_N14
\C1|Add10~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~10_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X2\(5) & (!\C1|Add10~9\)) # (!\C1|SQ_X2\(5) & ((\C1|Add10~9\) # (GND))))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(5) & (\C1|Add10~9\ & VCC)) # (!\C1|SQ_X2\(5) & (!\C1|Add10~9\))))
-- \C1|Add10~11\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add10~9\) # (!\C1|SQ_X2\(5)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X2\(5) & !\C1|Add10~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Add10~9\,
	combout => \C1|Add10~10_combout\,
	cout => \C1|Add10~11\);

-- Location: FF_X30_Y26_N15
\C1|SQ_X2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add10~10_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(5));

-- Location: LCCOMB_X30_Y26_N16
\C1|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~12_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X2\(6) $ (!\C1|Add10~11\)))) # (GND)
-- \C1|Add10~13\ = CARRY((\KEY[1]~input_o\ & (!\C1|SQ_X2\(6) & !\C1|Add10~11\)) # (!\KEY[1]~input_o\ & ((!\C1|Add10~11\) # (!\C1|SQ_X2\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add10~11\,
	combout => \C1|Add10~12_combout\,
	cout => \C1|Add10~13\);

-- Location: LCCOMB_X30_Y26_N26
\C1|SQ_X2[6]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[6]~2_combout\ = !\C1|Add10~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add10~12_combout\,
	combout => \C1|SQ_X2[6]~2_combout\);

-- Location: FF_X30_Y26_N27
\C1|SQ_X2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X2[6]~2_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(6));

-- Location: LCCOMB_X30_Y26_N18
\C1|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~14_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X2\(7) & (!\C1|Add10~13\)) # (!\C1|SQ_X2\(7) & ((\C1|Add10~13\) # (GND))))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(7) & (\C1|Add10~13\ & VCC)) # (!\C1|SQ_X2\(7) & (!\C1|Add10~13\))))
-- \C1|Add10~15\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add10~13\) # (!\C1|SQ_X2\(7)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X2\(7) & !\C1|Add10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add10~13\,
	combout => \C1|Add10~14_combout\,
	cout => \C1|Add10~15\);

-- Location: FF_X30_Y26_N19
\C1|SQ_X2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add10~14_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(7));

-- Location: LCCOMB_X30_Y26_N20
\C1|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~16_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X2\(8) $ (\C1|Add10~15\)))) # (GND)
-- \C1|Add10~17\ = CARRY((\KEY[1]~input_o\ & (\C1|SQ_X2\(8) & !\C1|Add10~15\)) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(8)) # (!\C1|Add10~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add10~15\,
	combout => \C1|Add10~16_combout\,
	cout => \C1|Add10~17\);

-- Location: FF_X30_Y26_N21
\C1|SQ_X2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add10~16_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(8));

-- Location: LCCOMB_X30_Y26_N22
\C1|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~18_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X2\(9) & ((\C1|Add10~17\) # (GND))) # (!\C1|SQ_X2\(9) & (!\C1|Add10~17\)))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(9) & (!\C1|Add10~17\)) # (!\C1|SQ_X2\(9) & (\C1|Add10~17\ & VCC))))
-- \C1|Add10~19\ = CARRY((\KEY[1]~input_o\ & ((\C1|SQ_X2\(9)) # (!\C1|Add10~17\))) # (!\KEY[1]~input_o\ & (\C1|SQ_X2\(9) & !\C1|Add10~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add10~17\,
	combout => \C1|Add10~18_combout\,
	cout => \C1|Add10~19\);

-- Location: LCCOMB_X30_Y26_N0
\C1|SQ_X2[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[9]~1_combout\ = !\C1|Add10~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add10~18_combout\,
	combout => \C1|SQ_X2[9]~1_combout\);

-- Location: FF_X30_Y26_N1
\C1|SQ_X2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X2[9]~1_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(9));

-- Location: LCCOMB_X30_Y26_N24
\C1|Add10~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~20_combout\ = \KEY[1]~input_o\ $ (\C1|SQ_X2\(10) $ (\C1|Add10~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(10),
	cin => \C1|Add10~19\,
	combout => \C1|Add10~20_combout\);

-- Location: FF_X30_Y26_N25
\C1|SQ_X2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add10~20_combout\,
	ena => \C1|SQ_X2[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(10));

-- Location: LCCOMB_X29_Y27_N10
\C1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = (\C1|SQ_X2\(3) & (\C1|SQ_X2\(2) & VCC)) # (!\C1|SQ_X2\(3) & (\C1|SQ_X2\(2) $ (VCC)))
-- \C1|Add2~1\ = CARRY((!\C1|SQ_X2\(3) & \C1|SQ_X2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	combout => \C1|Add2~0_combout\,
	cout => \C1|Add2~1\);

-- Location: LCCOMB_X29_Y27_N12
\C1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~2_combout\ = (\C1|SQ_X2\(4) & ((\C1|Add2~1\) # (GND))) # (!\C1|SQ_X2\(4) & (!\C1|Add2~1\))
-- \C1|Add2~3\ = CARRY((\C1|SQ_X2\(4)) # (!\C1|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Add2~1\,
	combout => \C1|Add2~2_combout\,
	cout => \C1|Add2~3\);

-- Location: LCCOMB_X29_Y27_N14
\C1|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~4_combout\ = (\C1|SQ_X2\(5) & ((GND) # (!\C1|Add2~3\))) # (!\C1|SQ_X2\(5) & (\C1|Add2~3\ $ (GND)))
-- \C1|Add2~5\ = CARRY((\C1|SQ_X2\(5)) # (!\C1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Add2~3\,
	combout => \C1|Add2~4_combout\,
	cout => \C1|Add2~5\);

-- Location: LCCOMB_X29_Y27_N16
\C1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~6_combout\ = (\C1|SQ_X2\(6) & (!\C1|Add2~5\)) # (!\C1|SQ_X2\(6) & (\C1|Add2~5\ & VCC))
-- \C1|Add2~7\ = CARRY((\C1|SQ_X2\(6) & !\C1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add2~5\,
	combout => \C1|Add2~6_combout\,
	cout => \C1|Add2~7\);

-- Location: LCCOMB_X29_Y27_N18
\C1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~8_combout\ = (\C1|SQ_X2\(7) & (\C1|Add2~7\ $ (GND))) # (!\C1|SQ_X2\(7) & (!\C1|Add2~7\ & VCC))
-- \C1|Add2~9\ = CARRY((\C1|SQ_X2\(7) & !\C1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add2~7\,
	combout => \C1|Add2~8_combout\,
	cout => \C1|Add2~9\);

-- Location: LCCOMB_X29_Y27_N20
\C1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~10_combout\ = (\C1|SQ_X2\(8) & (!\C1|Add2~9\)) # (!\C1|SQ_X2\(8) & ((\C1|Add2~9\) # (GND)))
-- \C1|Add2~11\ = CARRY((!\C1|Add2~9\) # (!\C1|SQ_X2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add2~9\,
	combout => \C1|Add2~10_combout\,
	cout => \C1|Add2~11\);

-- Location: LCCOMB_X29_Y27_N22
\C1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~12_combout\ = (\C1|SQ_X2\(9) & (!\C1|Add2~11\ & VCC)) # (!\C1|SQ_X2\(9) & (\C1|Add2~11\ $ (GND)))
-- \C1|Add2~13\ = CARRY((!\C1|SQ_X2\(9) & !\C1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add2~11\,
	combout => \C1|Add2~12_combout\,
	cout => \C1|Add2~13\);

-- Location: LCCOMB_X29_Y27_N24
\C1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~14_combout\ = (\C1|SQ_X2\(10) & (!\C1|Add2~13\)) # (!\C1|SQ_X2\(10) & ((\C1|Add2~13\) # (GND)))
-- \C1|Add2~15\ = CARRY((!\C1|Add2~13\) # (!\C1|SQ_X2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Add2~13\,
	combout => \C1|Add2~14_combout\,
	cout => \C1|Add2~15\);

-- Location: LCCOMB_X28_Y27_N4
\C1|LessThan5~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~1_cout\ = CARRY((\C1|SQ_X2\(0) & !\C1|HPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(0),
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan5~1_cout\);

-- Location: LCCOMB_X28_Y27_N6
\C1|LessThan5~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~3_cout\ = CARRY((\C1|SQ_X2\(1) & (\C1|HPOS\(1) & !\C1|LessThan5~1_cout\)) # (!\C1|SQ_X2\(1) & ((\C1|HPOS\(1)) # (!\C1|LessThan5~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan5~1_cout\,
	cout => \C1|LessThan5~3_cout\);

-- Location: LCCOMB_X28_Y27_N8
\C1|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~5_cout\ = CARRY((\C1|SQ_X2\(2) & (!\C1|HPOS\(2) & !\C1|LessThan5~3_cout\)) # (!\C1|SQ_X2\(2) & ((!\C1|LessThan5~3_cout\) # (!\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan5~3_cout\,
	cout => \C1|LessThan5~5_cout\);

-- Location: LCCOMB_X28_Y27_N10
\C1|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~7_cout\ = CARRY((\C1|HPOS\(3) & ((!\C1|LessThan5~5_cout\) # (!\C1|Add2~0_combout\))) # (!\C1|HPOS\(3) & (!\C1|Add2~0_combout\ & !\C1|LessThan5~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|Add2~0_combout\,
	datad => VCC,
	cin => \C1|LessThan5~5_cout\,
	cout => \C1|LessThan5~7_cout\);

-- Location: LCCOMB_X28_Y27_N12
\C1|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~9_cout\ = CARRY((\C1|HPOS\(4) & (\C1|Add2~2_combout\ & !\C1|LessThan5~7_cout\)) # (!\C1|HPOS\(4) & ((\C1|Add2~2_combout\) # (!\C1|LessThan5~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|Add2~2_combout\,
	datad => VCC,
	cin => \C1|LessThan5~7_cout\,
	cout => \C1|LessThan5~9_cout\);

-- Location: LCCOMB_X28_Y27_N14
\C1|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|HPOS\(5) & ((!\C1|LessThan5~9_cout\) # (!\C1|Add2~4_combout\))) # (!\C1|HPOS\(5) & (!\C1|Add2~4_combout\ & !\C1|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add2~4_combout\,
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X28_Y27_N16
\C1|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~13_cout\ = CARRY((\C1|HPOS\(6) & (\C1|Add2~6_combout\ & !\C1|LessThan5~11_cout\)) # (!\C1|HPOS\(6) & ((\C1|Add2~6_combout\) # (!\C1|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add2~6_combout\,
	datad => VCC,
	cin => \C1|LessThan5~11_cout\,
	cout => \C1|LessThan5~13_cout\);

-- Location: LCCOMB_X28_Y27_N18
\C1|LessThan5~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~15_cout\ = CARRY((\C1|Add2~8_combout\ & (\C1|HPOS\(7) & !\C1|LessThan5~13_cout\)) # (!\C1|Add2~8_combout\ & ((\C1|HPOS\(7)) # (!\C1|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan5~13_cout\,
	cout => \C1|LessThan5~15_cout\);

-- Location: LCCOMB_X28_Y27_N20
\C1|LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~17_cout\ = CARRY((\C1|Add2~10_combout\ & ((!\C1|LessThan5~15_cout\) # (!\C1|HPOS\(8)))) # (!\C1|Add2~10_combout\ & (!\C1|HPOS\(8) & !\C1|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan5~15_cout\,
	cout => \C1|LessThan5~17_cout\);

-- Location: LCCOMB_X28_Y27_N22
\C1|LessThan5~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~19_cout\ = CARRY((\C1|HPOS\(9) & ((!\C1|LessThan5~17_cout\) # (!\C1|Add2~12_combout\))) # (!\C1|HPOS\(9) & (!\C1|Add2~12_combout\ & !\C1|LessThan5~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add2~12_combout\,
	datad => VCC,
	cin => \C1|LessThan5~17_cout\,
	cout => \C1|LessThan5~19_cout\);

-- Location: LCCOMB_X28_Y27_N24
\C1|LessThan5~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~20_combout\ = (\C1|HPOS\(10) & (!\C1|LessThan5~19_cout\ & \C1|Add2~14_combout\)) # (!\C1|HPOS\(10) & ((\C1|Add2~14_combout\) # (!\C1|LessThan5~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datad => \C1|Add2~14_combout\,
	cin => \C1|LessThan5~19_cout\,
	combout => \C1|LessThan5~20_combout\);

-- Location: LCCOMB_X33_Y26_N24
\C1|Add3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~16_combout\ = !\C1|Add3~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add3~15\,
	combout => \C1|Add3~16_combout\);

-- Location: LCCOMB_X29_Y27_N26
\C1|Add2~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~16_combout\ = !\C1|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add2~15\,
	combout => \C1|Add2~16_combout\);

-- Location: LCCOMB_X28_Y27_N0
\C1|DRAW2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~0_combout\ = (\C1|LessThan7~20_combout\ & ((\C1|LessThan5~20_combout\) # ((\C1|Add2~16_combout\)))) # (!\C1|LessThan7~20_combout\ & (\C1|Add3~16_combout\ & ((\C1|LessThan5~20_combout\) # (\C1|Add2~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan7~20_combout\,
	datab => \C1|LessThan5~20_combout\,
	datac => \C1|Add3~16_combout\,
	datad => \C1|Add2~16_combout\,
	combout => \C1|DRAW2~0_combout\);

-- Location: LCCOMB_X30_Y27_N8
\C1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~1_cout\ = CARRY((!\C1|SQ_X2\(0) & \C1|HPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(0),
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan4~1_cout\);

-- Location: LCCOMB_X30_Y27_N10
\C1|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~3_cout\ = CARRY((\C1|HPOS\(1) & (\C1|SQ_X2\(1) & !\C1|LessThan4~1_cout\)) # (!\C1|HPOS\(1) & ((\C1|SQ_X2\(1)) # (!\C1|LessThan4~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	cin => \C1|LessThan4~1_cout\,
	cout => \C1|LessThan4~3_cout\);

-- Location: LCCOMB_X30_Y27_N12
\C1|LessThan4~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~5_cout\ = CARRY((\C1|SQ_X2\(2) & (\C1|HPOS\(2) & !\C1|LessThan4~3_cout\)) # (!\C1|SQ_X2\(2) & ((\C1|HPOS\(2)) # (!\C1|LessThan4~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan4~3_cout\,
	cout => \C1|LessThan4~5_cout\);

-- Location: LCCOMB_X30_Y27_N14
\C1|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~7_cout\ = CARRY((\C1|SQ_X2\(3) & (!\C1|HPOS\(3) & !\C1|LessThan4~5_cout\)) # (!\C1|SQ_X2\(3) & ((!\C1|LessThan4~5_cout\) # (!\C1|HPOS\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan4~5_cout\,
	cout => \C1|LessThan4~7_cout\);

-- Location: LCCOMB_X30_Y27_N16
\C1|LessThan4~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~9_cout\ = CARRY((\C1|SQ_X2\(4) & ((\C1|HPOS\(4)) # (!\C1|LessThan4~7_cout\))) # (!\C1|SQ_X2\(4) & (\C1|HPOS\(4) & !\C1|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan4~7_cout\,
	cout => \C1|LessThan4~9_cout\);

-- Location: LCCOMB_X30_Y27_N18
\C1|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~11_cout\ = CARRY((\C1|SQ_X2\(5) & ((!\C1|LessThan4~9_cout\) # (!\C1|HPOS\(5)))) # (!\C1|SQ_X2\(5) & (!\C1|HPOS\(5) & !\C1|LessThan4~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|LessThan4~9_cout\,
	cout => \C1|LessThan4~11_cout\);

-- Location: LCCOMB_X30_Y27_N20
\C1|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~13_cout\ = CARRY((\C1|SQ_X2\(6) & ((\C1|HPOS\(6)) # (!\C1|LessThan4~11_cout\))) # (!\C1|SQ_X2\(6) & (\C1|HPOS\(6) & !\C1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan4~11_cout\,
	cout => \C1|LessThan4~13_cout\);

-- Location: LCCOMB_X30_Y27_N22
\C1|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~15_cout\ = CARRY((\C1|SQ_X2\(7) & ((!\C1|LessThan4~13_cout\) # (!\C1|HPOS\(7)))) # (!\C1|SQ_X2\(7) & (!\C1|HPOS\(7) & !\C1|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan4~13_cout\,
	cout => \C1|LessThan4~15_cout\);

-- Location: LCCOMB_X30_Y27_N24
\C1|LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~17_cout\ = CARRY((\C1|HPOS\(8) & ((!\C1|LessThan4~15_cout\) # (!\C1|SQ_X2\(8)))) # (!\C1|HPOS\(8) & (!\C1|SQ_X2\(8) & !\C1|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|LessThan4~15_cout\,
	cout => \C1|LessThan4~17_cout\);

-- Location: LCCOMB_X30_Y27_N26
\C1|LessThan4~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~19_cout\ = CARRY((\C1|HPOS\(9) & (!\C1|SQ_X2\(9) & !\C1|LessThan4~17_cout\)) # (!\C1|HPOS\(9) & ((!\C1|LessThan4~17_cout\) # (!\C1|SQ_X2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|LessThan4~17_cout\,
	cout => \C1|LessThan4~19_cout\);

-- Location: LCCOMB_X30_Y27_N28
\C1|LessThan4~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~20_combout\ = (\C1|SQ_X2\(10) & (!\C1|LessThan4~19_cout\ & \C1|HPOS\(10))) # (!\C1|SQ_X2\(10) & ((\C1|HPOS\(10)) # (!\C1|LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => \C1|HPOS\(10),
	cin => \C1|LessThan4~19_cout\,
	combout => \C1|LessThan4~20_combout\);

-- Location: LCCOMB_X32_Y26_N6
\C1|LessThan6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~1_cout\ = CARRY((!\C1|SQ_Y2\(0) & \C1|VPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(0),
	datab => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan6~1_cout\);

-- Location: LCCOMB_X32_Y26_N8
\C1|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~3_cout\ = CARRY((\C1|SQ_Y2\(1) & ((!\C1|LessThan6~1_cout\) # (!\C1|VPOS\(1)))) # (!\C1|SQ_Y2\(1) & (!\C1|VPOS\(1) & !\C1|LessThan6~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(1),
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|LessThan6~1_cout\,
	cout => \C1|LessThan6~3_cout\);

-- Location: LCCOMB_X32_Y26_N10
\C1|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~5_cout\ = CARRY((\C1|SQ_Y2\(2) & (\C1|VPOS\(2) & !\C1|LessThan6~3_cout\)) # (!\C1|SQ_Y2\(2) & ((\C1|VPOS\(2)) # (!\C1|LessThan6~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(2),
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|LessThan6~3_cout\,
	cout => \C1|LessThan6~5_cout\);

-- Location: LCCOMB_X32_Y26_N12
\C1|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~7_cout\ = CARRY((\C1|VPOS\(3) & (!\C1|SQ_Y2\(3) & !\C1|LessThan6~5_cout\)) # (!\C1|VPOS\(3) & ((!\C1|LessThan6~5_cout\) # (!\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|LessThan6~5_cout\,
	cout => \C1|LessThan6~7_cout\);

-- Location: LCCOMB_X32_Y26_N14
\C1|LessThan6~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~9_cout\ = CARRY((\C1|SQ_Y2\(4) & ((\C1|VPOS\(4)) # (!\C1|LessThan6~7_cout\))) # (!\C1|SQ_Y2\(4) & (\C1|VPOS\(4) & !\C1|LessThan6~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(4),
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan6~7_cout\,
	cout => \C1|LessThan6~9_cout\);

-- Location: LCCOMB_X32_Y26_N16
\C1|LessThan6~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~11_cout\ = CARRY((\C1|VPOS\(5) & (\C1|SQ_Y2\(5) & !\C1|LessThan6~9_cout\)) # (!\C1|VPOS\(5) & ((\C1|SQ_Y2\(5)) # (!\C1|LessThan6~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|LessThan6~9_cout\,
	cout => \C1|LessThan6~11_cout\);

-- Location: LCCOMB_X32_Y26_N18
\C1|LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~13_cout\ = CARRY((\C1|VPOS\(6) & ((\C1|SQ_Y2\(6)) # (!\C1|LessThan6~11_cout\))) # (!\C1|VPOS\(6) & (\C1|SQ_Y2\(6) & !\C1|LessThan6~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|LessThan6~11_cout\,
	cout => \C1|LessThan6~13_cout\);

-- Location: LCCOMB_X32_Y26_N20
\C1|LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~15_cout\ = CARRY((\C1|SQ_Y2\(7) & ((!\C1|LessThan6~13_cout\) # (!\C1|VPOS\(7)))) # (!\C1|SQ_Y2\(7) & (!\C1|VPOS\(7) & !\C1|LessThan6~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan6~13_cout\,
	cout => \C1|LessThan6~15_cout\);

-- Location: LCCOMB_X32_Y26_N22
\C1|LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~17_cout\ = CARRY((\C1|SQ_Y2\(8) & (\C1|VPOS\(8) & !\C1|LessThan6~15_cout\)) # (!\C1|SQ_Y2\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan6~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan6~15_cout\,
	cout => \C1|LessThan6~17_cout\);

-- Location: LCCOMB_X32_Y26_N24
\C1|LessThan6~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~19_cout\ = CARRY((\C1|SQ_Y2\(9) & (!\C1|VPOS\(9) & !\C1|LessThan6~17_cout\)) # (!\C1|SQ_Y2\(9) & ((!\C1|LessThan6~17_cout\) # (!\C1|VPOS\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|LessThan6~17_cout\,
	cout => \C1|LessThan6~19_cout\);

-- Location: LCCOMB_X32_Y26_N26
\C1|LessThan6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~20_combout\ = (\C1|VPOS\(10) & ((!\C1|SQ_Y2\(10)) # (!\C1|LessThan6~19_cout\))) # (!\C1|VPOS\(10) & (!\C1|LessThan6~19_cout\ & !\C1|SQ_Y2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datad => \C1|SQ_Y2\(10),
	cin => \C1|LessThan6~19_cout\,
	combout => \C1|LessThan6~20_combout\);

-- Location: LCCOMB_X28_Y27_N2
\C1|DRAW2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~1_combout\ = (\C1|LessThan4~20_combout\ & \C1|LessThan6~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan4~20_combout\,
	datad => \C1|LessThan6~20_combout\,
	combout => \C1|DRAW2~1_combout\);

-- Location: LCCOMB_X24_Y26_N8
\C1|Add6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~0_combout\ = \C1|SQ_X1\(0) $ (VCC)
-- \C1|Add6~1\ = CARRY(\C1|SQ_X1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(0),
	datad => VCC,
	combout => \C1|Add6~0_combout\,
	cout => \C1|Add6~1\);

-- Location: IOIBUF_X28_Y29_N8
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X24_Y26_N6
\C1|SQ_X1[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[10]~1_combout\ = (\C1|SQ_X1[10]~0_combout\ & (\SW[0]~input_o\ & (!\C1|LessThan8~0_combout\ & !\C1|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1[10]~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \C1|LessThan8~0_combout\,
	datad => \C1|LessThan9~0_combout\,
	combout => \C1|SQ_X1[10]~1_combout\);

-- Location: FF_X24_Y26_N9
\C1|SQ_X1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add6~0_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(0));

-- Location: LCCOMB_X24_Y26_N10
\C1|Add6~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~2_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X1\(1) & (!\C1|Add6~1\)) # (!\C1|SQ_X1\(1) & ((\C1|Add6~1\) # (GND))))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(1) & (\C1|Add6~1\ & VCC)) # (!\C1|SQ_X1\(1) & (!\C1|Add6~1\))))
-- \C1|Add6~3\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add6~1\) # (!\C1|SQ_X1\(1)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X1\(1) & !\C1|Add6~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cin => \C1|Add6~1\,
	combout => \C1|Add6~2_combout\,
	cout => \C1|Add6~3\);

-- Location: FF_X24_Y26_N11
\C1|SQ_X1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add6~2_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(1));

-- Location: LCCOMB_X24_Y26_N12
\C1|Add6~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~4_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X1\(2) $ (\C1|Add6~3\)))) # (GND)
-- \C1|Add6~5\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add6~3\) # (!\C1|SQ_X1\(2)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X1\(2) & !\C1|Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|Add6~3\,
	combout => \C1|Add6~4_combout\,
	cout => \C1|Add6~5\);

-- Location: LCCOMB_X26_Y26_N24
\C1|SQ_X1[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[2]~7_combout\ = !\C1|Add6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~4_combout\,
	combout => \C1|SQ_X1[2]~7_combout\);

-- Location: FF_X26_Y26_N25
\C1|SQ_X1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X1[2]~7_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(2));

-- Location: LCCOMB_X24_Y26_N14
\C1|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~6_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X1\(3) & (!\C1|Add6~5\)) # (!\C1|SQ_X1\(3) & ((\C1|Add6~5\) # (GND))))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(3) & (\C1|Add6~5\ & VCC)) # (!\C1|SQ_X1\(3) & (!\C1|Add6~5\))))
-- \C1|Add6~7\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add6~5\) # (!\C1|SQ_X1\(3)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X1\(3) & !\C1|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|Add6~5\,
	combout => \C1|Add6~6_combout\,
	cout => \C1|Add6~7\);

-- Location: FF_X24_Y26_N15
\C1|SQ_X1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add6~6_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(3));

-- Location: LCCOMB_X24_Y26_N16
\C1|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~8_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X1\(4) $ (!\C1|Add6~7\)))) # (GND)
-- \C1|Add6~9\ = CARRY((\KEY[1]~input_o\ & (!\C1|SQ_X1\(4) & !\C1|Add6~7\)) # (!\KEY[1]~input_o\ & ((!\C1|Add6~7\) # (!\C1|SQ_X1\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add6~7\,
	combout => \C1|Add6~8_combout\,
	cout => \C1|Add6~9\);

-- Location: LCCOMB_X26_Y26_N30
\C1|SQ_X1[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[4]~6_combout\ = !\C1|Add6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~8_combout\,
	combout => \C1|SQ_X1[4]~6_combout\);

-- Location: FF_X26_Y26_N31
\C1|SQ_X1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X1[4]~6_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(4));

-- Location: LCCOMB_X24_Y26_N18
\C1|Add6~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~10_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X1\(5) & ((\C1|Add6~9\) # (GND))) # (!\C1|SQ_X1\(5) & (!\C1|Add6~9\)))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(5) & (!\C1|Add6~9\)) # (!\C1|SQ_X1\(5) & (\C1|Add6~9\ & VCC))))
-- \C1|Add6~11\ = CARRY((\KEY[1]~input_o\ & ((\C1|SQ_X1\(5)) # (!\C1|Add6~9\))) # (!\KEY[1]~input_o\ & (\C1|SQ_X1\(5) & !\C1|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|Add6~9\,
	combout => \C1|Add6~10_combout\,
	cout => \C1|Add6~11\);

-- Location: LCCOMB_X24_Y26_N2
\C1|SQ_X1[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[5]~5_combout\ = !\C1|Add6~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~10_combout\,
	combout => \C1|SQ_X1[5]~5_combout\);

-- Location: FF_X24_Y26_N3
\C1|SQ_X1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X1[5]~5_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(5));

-- Location: LCCOMB_X24_Y26_N20
\C1|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~12_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X1\(6) $ (!\C1|Add6~11\)))) # (GND)
-- \C1|Add6~13\ = CARRY((\KEY[1]~input_o\ & (!\C1|SQ_X1\(6) & !\C1|Add6~11\)) # (!\KEY[1]~input_o\ & ((!\C1|Add6~11\) # (!\C1|SQ_X1\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add6~11\,
	combout => \C1|Add6~12_combout\,
	cout => \C1|Add6~13\);

-- Location: LCCOMB_X26_Y26_N20
\C1|SQ_X1[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[6]~4_combout\ = !\C1|Add6~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~12_combout\,
	combout => \C1|SQ_X1[6]~4_combout\);

-- Location: FF_X26_Y26_N21
\C1|SQ_X1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X1[6]~4_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(6));

-- Location: LCCOMB_X24_Y26_N22
\C1|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~14_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X1\(7) & ((\C1|Add6~13\) # (GND))) # (!\C1|SQ_X1\(7) & (!\C1|Add6~13\)))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(7) & (!\C1|Add6~13\)) # (!\C1|SQ_X1\(7) & (\C1|Add6~13\ & VCC))))
-- \C1|Add6~15\ = CARRY((\KEY[1]~input_o\ & ((\C1|SQ_X1\(7)) # (!\C1|Add6~13\))) # (!\KEY[1]~input_o\ & (\C1|SQ_X1\(7) & !\C1|Add6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add6~13\,
	combout => \C1|Add6~14_combout\,
	cout => \C1|Add6~15\);

-- Location: LCCOMB_X26_Y26_N18
\C1|SQ_X1[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[7]~3_combout\ = !\C1|Add6~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~14_combout\,
	combout => \C1|SQ_X1[7]~3_combout\);

-- Location: FF_X26_Y26_N19
\C1|SQ_X1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X1[7]~3_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(7));

-- Location: LCCOMB_X24_Y26_N24
\C1|Add6~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~16_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X1\(8) $ (!\C1|Add6~15\)))) # (GND)
-- \C1|Add6~17\ = CARRY((\KEY[1]~input_o\ & (!\C1|SQ_X1\(8) & !\C1|Add6~15\)) # (!\KEY[1]~input_o\ & ((!\C1|Add6~15\) # (!\C1|SQ_X1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|Add6~15\,
	combout => \C1|Add6~16_combout\,
	cout => \C1|Add6~17\);

-- Location: LCCOMB_X24_Y26_N0
\C1|SQ_X1[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~2_combout\ = !\C1|Add6~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~16_combout\,
	combout => \C1|SQ_X1[8]~2_combout\);

-- Location: FF_X24_Y26_N1
\C1|SQ_X1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_X1[8]~2_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(8));

-- Location: LCCOMB_X24_Y26_N26
\C1|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~18_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X1\(9) & (!\C1|Add6~17\)) # (!\C1|SQ_X1\(9) & ((\C1|Add6~17\) # (GND))))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(9) & (\C1|Add6~17\ & VCC)) # (!\C1|SQ_X1\(9) & (!\C1|Add6~17\))))
-- \C1|Add6~19\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add6~17\) # (!\C1|SQ_X1\(9)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X1\(9) & !\C1|Add6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add6~17\,
	combout => \C1|Add6~18_combout\,
	cout => \C1|Add6~19\);

-- Location: FF_X24_Y26_N27
\C1|SQ_X1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add6~18_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(9));

-- Location: LCCOMB_X24_Y26_N28
\C1|Add6~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~20_combout\ = \KEY[1]~input_o\ $ (\C1|SQ_X1\(10) $ (\C1|Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(10),
	cin => \C1|Add6~19\,
	combout => \C1|Add6~20_combout\);

-- Location: FF_X24_Y26_N29
\C1|SQ_X1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add6~20_combout\,
	ena => \C1|SQ_X1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(10));

-- Location: LCCOMB_X24_Y25_N0
\C1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_cout\ = CARRY((!\C1|SQ_X1\(0) & \C1|HPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(0),
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan0~1_cout\);

-- Location: LCCOMB_X24_Y25_N2
\C1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~3_cout\ = CARRY((\C1|HPOS\(1) & (\C1|SQ_X1\(1) & !\C1|LessThan0~1_cout\)) # (!\C1|HPOS\(1) & ((\C1|SQ_X1\(1)) # (!\C1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cin => \C1|LessThan0~1_cout\,
	cout => \C1|LessThan0~3_cout\);

-- Location: LCCOMB_X24_Y25_N4
\C1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~5_cout\ = CARRY((\C1|HPOS\(2) & ((\C1|SQ_X1\(2)) # (!\C1|LessThan0~3_cout\))) # (!\C1|HPOS\(2) & (\C1|SQ_X1\(2) & !\C1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|LessThan0~3_cout\,
	cout => \C1|LessThan0~5_cout\);

-- Location: LCCOMB_X24_Y25_N6
\C1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~7_cout\ = CARRY((\C1|HPOS\(3) & (\C1|SQ_X1\(3) & !\C1|LessThan0~5_cout\)) # (!\C1|HPOS\(3) & ((\C1|SQ_X1\(3)) # (!\C1|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|LessThan0~5_cout\,
	cout => \C1|LessThan0~7_cout\);

-- Location: LCCOMB_X24_Y25_N8
\C1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~9_cout\ = CARRY((\C1|SQ_X1\(4) & ((\C1|HPOS\(4)) # (!\C1|LessThan0~7_cout\))) # (!\C1|SQ_X1\(4) & (\C1|HPOS\(4) & !\C1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan0~7_cout\,
	cout => \C1|LessThan0~9_cout\);

-- Location: LCCOMB_X24_Y25_N10
\C1|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~11_cout\ = CARRY((\C1|SQ_X1\(5) & (!\C1|HPOS\(5) & !\C1|LessThan0~9_cout\)) # (!\C1|SQ_X1\(5) & ((!\C1|LessThan0~9_cout\) # (!\C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|LessThan0~9_cout\,
	cout => \C1|LessThan0~11_cout\);

-- Location: LCCOMB_X24_Y25_N12
\C1|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~13_cout\ = CARRY((\C1|HPOS\(6) & ((\C1|SQ_X1\(6)) # (!\C1|LessThan0~11_cout\))) # (!\C1|HPOS\(6) & (\C1|SQ_X1\(6) & !\C1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|LessThan0~11_cout\,
	cout => \C1|LessThan0~13_cout\);

-- Location: LCCOMB_X24_Y25_N14
\C1|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~15_cout\ = CARRY((\C1|SQ_X1\(7) & (!\C1|HPOS\(7) & !\C1|LessThan0~13_cout\)) # (!\C1|SQ_X1\(7) & ((!\C1|LessThan0~13_cout\) # (!\C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan0~13_cout\,
	cout => \C1|LessThan0~15_cout\);

-- Location: LCCOMB_X24_Y25_N16
\C1|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~17_cout\ = CARRY((\C1|HPOS\(8) & ((\C1|SQ_X1\(8)) # (!\C1|LessThan0~15_cout\))) # (!\C1|HPOS\(8) & (\C1|SQ_X1\(8) & !\C1|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|LessThan0~15_cout\,
	cout => \C1|LessThan0~17_cout\);

-- Location: LCCOMB_X24_Y25_N18
\C1|LessThan0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~19_cout\ = CARRY((\C1|SQ_X1\(9) & ((!\C1|LessThan0~17_cout\) # (!\C1|HPOS\(9)))) # (!\C1|SQ_X1\(9) & (!\C1|HPOS\(9) & !\C1|LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|LessThan0~17_cout\,
	cout => \C1|LessThan0~19_cout\);

-- Location: LCCOMB_X24_Y25_N20
\C1|LessThan0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~20_combout\ = (\C1|SQ_X1\(10) & (!\C1|LessThan0~19_cout\ & \C1|HPOS\(10))) # (!\C1|SQ_X1\(10) & ((\C1|HPOS\(10)) # (!\C1|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(10),
	datad => \C1|HPOS\(10),
	cin => \C1|LessThan0~19_cout\,
	combout => \C1|LessThan0~20_combout\);

-- Location: LCCOMB_X29_Y28_N4
\C1|Add9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~0_combout\ = \C1|SQ_Y1\(0) $ (VCC)
-- \C1|Add9~1\ = CARRY(\C1|SQ_Y1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(0),
	datad => VCC,
	combout => \C1|Add9~0_combout\,
	cout => \C1|Add9~1\);

-- Location: LCCOMB_X24_Y26_N4
\C1|SQ_Y1[10]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[10]~1_combout\ = (!\C1|LessThan8~0_combout\ & (\C1|SQ_Y1[10]~0_combout\ & (\SW[0]~input_o\ & !\C1|LessThan9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan8~0_combout\,
	datab => \C1|SQ_Y1[10]~0_combout\,
	datac => \SW[0]~input_o\,
	datad => \C1|LessThan9~0_combout\,
	combout => \C1|SQ_Y1[10]~1_combout\);

-- Location: FF_X29_Y28_N5
\C1|SQ_Y1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add9~0_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(0));

-- Location: LCCOMB_X29_Y28_N6
\C1|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~2_combout\ = (\C1|SQ_Y1\(1) & ((\KEY[3]~input_o\ & (\C1|Add9~1\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add9~1\)))) # (!\C1|SQ_Y1\(1) & ((\KEY[3]~input_o\ & (!\C1|Add9~1\)) # (!\KEY[3]~input_o\ & ((\C1|Add9~1\) # (GND)))))
-- \C1|Add9~3\ = CARRY((\C1|SQ_Y1\(1) & (!\KEY[3]~input_o\ & !\C1|Add9~1\)) # (!\C1|SQ_Y1\(1) & ((!\C1|Add9~1\) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~1\,
	combout => \C1|Add9~2_combout\,
	cout => \C1|Add9~3\);

-- Location: FF_X29_Y28_N7
\C1|SQ_Y1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add9~2_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(1));

-- Location: LCCOMB_X29_Y28_N8
\C1|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~4_combout\ = ((\C1|SQ_Y1\(2) $ (\KEY[3]~input_o\ $ (!\C1|Add9~3\)))) # (GND)
-- \C1|Add9~5\ = CARRY((\C1|SQ_Y1\(2) & (!\KEY[3]~input_o\ & !\C1|Add9~3\)) # (!\C1|SQ_Y1\(2) & ((!\C1|Add9~3\) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~3\,
	combout => \C1|Add9~4_combout\,
	cout => \C1|Add9~5\);

-- Location: LCCOMB_X29_Y26_N0
\C1|SQ_Y1[2]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[2]~7_combout\ = !\C1|Add9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add9~4_combout\,
	combout => \C1|SQ_Y1[2]~7_combout\);

-- Location: FF_X29_Y26_N1
\C1|SQ_Y1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y1[2]~7_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(2));

-- Location: LCCOMB_X29_Y28_N10
\C1|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~6_combout\ = (\C1|SQ_Y1\(3) & ((\KEY[3]~input_o\ & (\C1|Add9~5\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add9~5\)))) # (!\C1|SQ_Y1\(3) & ((\KEY[3]~input_o\ & (!\C1|Add9~5\)) # (!\KEY[3]~input_o\ & ((\C1|Add9~5\) # (GND)))))
-- \C1|Add9~7\ = CARRY((\C1|SQ_Y1\(3) & (!\KEY[3]~input_o\ & !\C1|Add9~5\)) # (!\C1|SQ_Y1\(3) & ((!\C1|Add9~5\) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~5\,
	combout => \C1|Add9~6_combout\,
	cout => \C1|Add9~7\);

-- Location: FF_X29_Y28_N11
\C1|SQ_Y1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add9~6_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(3));

-- Location: LCCOMB_X29_Y28_N12
\C1|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~8_combout\ = ((\C1|SQ_Y1\(4) $ (\KEY[3]~input_o\ $ (\C1|Add9~7\)))) # (GND)
-- \C1|Add9~9\ = CARRY((\C1|SQ_Y1\(4) & (\KEY[3]~input_o\ & !\C1|Add9~7\)) # (!\C1|SQ_Y1\(4) & ((\KEY[3]~input_o\) # (!\C1|Add9~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~7\,
	combout => \C1|Add9~8_combout\,
	cout => \C1|Add9~9\);

-- Location: LCCOMB_X29_Y28_N30
\C1|SQ_Y1[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[4]~6_combout\ = !\C1|Add9~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add9~8_combout\,
	combout => \C1|SQ_Y1[4]~6_combout\);

-- Location: FF_X29_Y28_N31
\C1|SQ_Y1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y1[4]~6_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(4));

-- Location: LCCOMB_X29_Y28_N14
\C1|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~10_combout\ = (\C1|SQ_Y1\(5) & ((\KEY[3]~input_o\ & (!\C1|Add9~9\)) # (!\KEY[3]~input_o\ & ((\C1|Add9~9\) # (GND))))) # (!\C1|SQ_Y1\(5) & ((\KEY[3]~input_o\ & (\C1|Add9~9\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add9~9\))))
-- \C1|Add9~11\ = CARRY((\C1|SQ_Y1\(5) & ((!\C1|Add9~9\) # (!\KEY[3]~input_o\))) # (!\C1|SQ_Y1\(5) & (!\KEY[3]~input_o\ & !\C1|Add9~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(5),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~9\,
	combout => \C1|Add9~10_combout\,
	cout => \C1|Add9~11\);

-- Location: LCCOMB_X29_Y28_N28
\C1|SQ_Y1[5]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[5]~5_combout\ = !\C1|Add9~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~10_combout\,
	combout => \C1|SQ_Y1[5]~5_combout\);

-- Location: FF_X29_Y28_N29
\C1|SQ_Y1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y1[5]~5_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(5));

-- Location: LCCOMB_X29_Y28_N16
\C1|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~12_combout\ = ((\C1|SQ_Y1\(6) $ (\KEY[3]~input_o\ $ (\C1|Add9~11\)))) # (GND)
-- \C1|Add9~13\ = CARRY((\C1|SQ_Y1\(6) & (\KEY[3]~input_o\ & !\C1|Add9~11\)) # (!\C1|SQ_Y1\(6) & ((\KEY[3]~input_o\) # (!\C1|Add9~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~11\,
	combout => \C1|Add9~12_combout\,
	cout => \C1|Add9~13\);

-- Location: LCCOMB_X29_Y28_N2
\C1|SQ_Y1[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[6]~4_combout\ = !\C1|Add9~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add9~12_combout\,
	combout => \C1|SQ_Y1[6]~4_combout\);

-- Location: FF_X29_Y28_N3
\C1|SQ_Y1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y1[6]~4_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(6));

-- Location: LCCOMB_X29_Y28_N18
\C1|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~14_combout\ = (\C1|SQ_Y1\(7) & ((\KEY[3]~input_o\ & (!\C1|Add9~13\)) # (!\KEY[3]~input_o\ & ((\C1|Add9~13\) # (GND))))) # (!\C1|SQ_Y1\(7) & ((\KEY[3]~input_o\ & (\C1|Add9~13\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add9~13\))))
-- \C1|Add9~15\ = CARRY((\C1|SQ_Y1\(7) & ((!\C1|Add9~13\) # (!\KEY[3]~input_o\))) # (!\C1|SQ_Y1\(7) & (!\KEY[3]~input_o\ & !\C1|Add9~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~13\,
	combout => \C1|Add9~14_combout\,
	cout => \C1|Add9~15\);

-- Location: LCCOMB_X29_Y28_N26
\C1|SQ_Y1[7]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[7]~3_combout\ = !\C1|Add9~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add9~14_combout\,
	combout => \C1|SQ_Y1[7]~3_combout\);

-- Location: FF_X29_Y28_N27
\C1|SQ_Y1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y1[7]~3_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(7));

-- Location: LCCOMB_X29_Y28_N20
\C1|Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~16_combout\ = ((\C1|SQ_Y1\(8) $ (\KEY[3]~input_o\ $ (\C1|Add9~15\)))) # (GND)
-- \C1|Add9~17\ = CARRY((\C1|SQ_Y1\(8) & (\KEY[3]~input_o\ & !\C1|Add9~15\)) # (!\C1|SQ_Y1\(8) & ((\KEY[3]~input_o\) # (!\C1|Add9~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~15\,
	combout => \C1|Add9~16_combout\,
	cout => \C1|Add9~17\);

-- Location: LCCOMB_X29_Y28_N0
\C1|SQ_Y1[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[8]~2_combout\ = !\C1|Add9~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add9~16_combout\,
	combout => \C1|SQ_Y1[8]~2_combout\);

-- Location: FF_X29_Y28_N1
\C1|SQ_Y1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|SQ_Y1[8]~2_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(8));

-- Location: LCCOMB_X29_Y28_N22
\C1|Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~18_combout\ = (\C1|SQ_Y1\(9) & ((\KEY[3]~input_o\ & (\C1|Add9~17\ & VCC)) # (!\KEY[3]~input_o\ & (!\C1|Add9~17\)))) # (!\C1|SQ_Y1\(9) & ((\KEY[3]~input_o\ & (!\C1|Add9~17\)) # (!\KEY[3]~input_o\ & ((\C1|Add9~17\) # (GND)))))
-- \C1|Add9~19\ = CARRY((\C1|SQ_Y1\(9) & (!\KEY[3]~input_o\ & !\C1|Add9~17\)) # (!\C1|SQ_Y1\(9) & ((!\C1|Add9~17\) # (!\KEY[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datab => \KEY[3]~input_o\,
	datad => VCC,
	cin => \C1|Add9~17\,
	combout => \C1|Add9~18_combout\,
	cout => \C1|Add9~19\);

-- Location: FF_X29_Y28_N23
\C1|SQ_Y1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add9~18_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(9));

-- Location: LCCOMB_X29_Y28_N24
\C1|Add9~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~20_combout\ = \C1|SQ_Y1\(10) $ (\C1|Add9~19\ $ (!\KEY[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => \KEY[3]~input_o\,
	cin => \C1|Add9~19\,
	combout => \C1|Add9~20_combout\);

-- Location: FF_X29_Y28_N25
\C1|SQ_Y1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|Add9~20_combout\,
	ena => \C1|SQ_Y1[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(10));

-- Location: LCCOMB_X29_Y25_N4
\C1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~1_cout\ = CARRY((\C1|VPOS\(0) & !\C1|SQ_Y1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datab => \C1|SQ_Y1\(0),
	datad => VCC,
	cout => \C1|LessThan2~1_cout\);

-- Location: LCCOMB_X29_Y25_N6
\C1|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~3_cout\ = CARRY((\C1|SQ_Y1\(1) & ((!\C1|LessThan2~1_cout\) # (!\C1|VPOS\(1)))) # (!\C1|SQ_Y1\(1) & (!\C1|VPOS\(1) & !\C1|LessThan2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(1),
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|LessThan2~1_cout\,
	cout => \C1|LessThan2~3_cout\);

-- Location: LCCOMB_X29_Y25_N8
\C1|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~5_cout\ = CARRY((\C1|SQ_Y1\(2) & ((\C1|VPOS\(2)) # (!\C1|LessThan2~3_cout\))) # (!\C1|SQ_Y1\(2) & (\C1|VPOS\(2) & !\C1|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|LessThan2~3_cout\,
	cout => \C1|LessThan2~5_cout\);

-- Location: LCCOMB_X29_Y25_N10
\C1|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~7_cout\ = CARRY((\C1|SQ_Y1\(3) & ((!\C1|LessThan2~5_cout\) # (!\C1|VPOS\(3)))) # (!\C1|SQ_Y1\(3) & (!\C1|VPOS\(3) & !\C1|LessThan2~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan2~5_cout\,
	cout => \C1|LessThan2~7_cout\);

-- Location: LCCOMB_X29_Y25_N12
\C1|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~9_cout\ = CARRY((\C1|SQ_Y1\(4) & ((\C1|VPOS\(4)) # (!\C1|LessThan2~7_cout\))) # (!\C1|SQ_Y1\(4) & (\C1|VPOS\(4) & !\C1|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan2~7_cout\,
	cout => \C1|LessThan2~9_cout\);

-- Location: LCCOMB_X29_Y25_N14
\C1|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~11_cout\ = CARRY((\C1|VPOS\(5) & (!\C1|SQ_Y1\(5) & !\C1|LessThan2~9_cout\)) # (!\C1|VPOS\(5) & ((!\C1|LessThan2~9_cout\) # (!\C1|SQ_Y1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|LessThan2~9_cout\,
	cout => \C1|LessThan2~11_cout\);

-- Location: LCCOMB_X29_Y25_N16
\C1|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~13_cout\ = CARRY((\C1|SQ_Y1\(6) & ((\C1|VPOS\(6)) # (!\C1|LessThan2~11_cout\))) # (!\C1|SQ_Y1\(6) & (\C1|VPOS\(6) & !\C1|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan2~11_cout\,
	cout => \C1|LessThan2~13_cout\);

-- Location: LCCOMB_X29_Y25_N18
\C1|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~15_cout\ = CARRY((\C1|VPOS\(7) & (!\C1|SQ_Y1\(7) & !\C1|LessThan2~13_cout\)) # (!\C1|VPOS\(7) & ((!\C1|LessThan2~13_cout\) # (!\C1|SQ_Y1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datab => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|LessThan2~13_cout\,
	cout => \C1|LessThan2~15_cout\);

-- Location: LCCOMB_X29_Y25_N20
\C1|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~17_cout\ = CARRY((\C1|VPOS\(8) & ((\C1|SQ_Y1\(8)) # (!\C1|LessThan2~15_cout\))) # (!\C1|VPOS\(8) & (\C1|SQ_Y1\(8) & !\C1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|LessThan2~15_cout\,
	cout => \C1|LessThan2~17_cout\);

-- Location: LCCOMB_X29_Y25_N22
\C1|LessThan2~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~19_cout\ = CARRY((\C1|VPOS\(9) & (\C1|SQ_Y1\(9) & !\C1|LessThan2~17_cout\)) # (!\C1|VPOS\(9) & ((\C1|SQ_Y1\(9)) # (!\C1|LessThan2~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|LessThan2~17_cout\,
	cout => \C1|LessThan2~19_cout\);

-- Location: LCCOMB_X29_Y25_N24
\C1|LessThan2~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~20_combout\ = (\C1|SQ_Y1\(10) & (!\C1|LessThan2~19_cout\ & \C1|VPOS\(10))) # (!\C1|SQ_Y1\(10) & ((\C1|VPOS\(10)) # (!\C1|LessThan2~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(10),
	datad => \C1|VPOS\(10),
	cin => \C1|LessThan2~19_cout\,
	combout => \C1|LessThan2~20_combout\);

-- Location: LCCOMB_X24_Y25_N26
\C1|DRAW1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~1_combout\ = (\C1|LessThan0~20_combout\ & \C1|LessThan2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|LessThan0~20_combout\,
	datac => \C1|LessThan2~20_combout\,
	combout => \C1|DRAW1~1_combout\);

-- Location: LCCOMB_X26_Y26_N0
\C1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = (\C1|SQ_X1\(3) & (\C1|SQ_X1\(2) $ (GND))) # (!\C1|SQ_X1\(3) & (!\C1|SQ_X1\(2) & VCC))
-- \C1|Add0~1\ = CARRY((\C1|SQ_X1\(3) & !\C1|SQ_X1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X26_Y26_N2
\C1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|SQ_X1\(4) & ((\C1|Add0~1\) # (GND))) # (!\C1|SQ_X1\(4) & (!\C1|Add0~1\))
-- \C1|Add0~3\ = CARRY((\C1|SQ_X1\(4)) # (!\C1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X26_Y26_N4
\C1|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = (\C1|SQ_X1\(5) & (\C1|Add0~3\ $ (GND))) # (!\C1|SQ_X1\(5) & ((GND) # (!\C1|Add0~3\)))
-- \C1|Add0~5\ = CARRY((!\C1|Add0~3\) # (!\C1|SQ_X1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X26_Y26_N6
\C1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|SQ_X1\(6) & (!\C1|Add0~5\)) # (!\C1|SQ_X1\(6) & (\C1|Add0~5\ & VCC))
-- \C1|Add0~7\ = CARRY((\C1|SQ_X1\(6) & !\C1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X26_Y26_N8
\C1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|SQ_X1\(7) & (!\C1|Add0~7\ & VCC)) # (!\C1|SQ_X1\(7) & (\C1|Add0~7\ $ (GND)))
-- \C1|Add0~9\ = CARRY((!\C1|SQ_X1\(7) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X26_Y26_N10
\C1|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|SQ_X1\(8) & ((\C1|Add0~9\) # (GND))) # (!\C1|SQ_X1\(8) & (!\C1|Add0~9\))
-- \C1|Add0~11\ = CARRY((\C1|SQ_X1\(8)) # (!\C1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCCOMB_X26_Y26_N12
\C1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|SQ_X1\(9) & (\C1|Add0~11\ $ (GND))) # (!\C1|SQ_X1\(9) & (!\C1|Add0~11\ & VCC))
-- \C1|Add0~13\ = CARRY((\C1|SQ_X1\(9) & !\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X26_Y26_N14
\C1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|SQ_X1\(10) & (!\C1|Add0~13\)) # (!\C1|SQ_X1\(10) & ((\C1|Add0~13\) # (GND)))
-- \C1|Add0~15\ = CARRY((!\C1|Add0~13\) # (!\C1|SQ_X1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: LCCOMB_X26_Y26_N16
\C1|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~16_combout\ = !\C1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add0~15\,
	combout => \C1|Add0~16_combout\);

-- Location: LCCOMB_X29_Y26_N12
\C1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = (\C1|SQ_Y1\(2) & (\C1|SQ_Y1\(3) & VCC)) # (!\C1|SQ_Y1\(2) & (\C1|SQ_Y1\(3) $ (VCC)))
-- \C1|Add1~1\ = CARRY((!\C1|SQ_Y1\(2) & \C1|SQ_Y1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(2),
	datab => \C1|SQ_Y1\(3),
	datad => VCC,
	combout => \C1|Add1~0_combout\,
	cout => \C1|Add1~1\);

-- Location: LCCOMB_X29_Y26_N14
\C1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = (\C1|SQ_Y1\(4) & ((\C1|Add1~1\) # (GND))) # (!\C1|SQ_Y1\(4) & (!\C1|Add1~1\))
-- \C1|Add1~3\ = CARRY((\C1|SQ_Y1\(4)) # (!\C1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|Add1~1\,
	combout => \C1|Add1~2_combout\,
	cout => \C1|Add1~3\);

-- Location: LCCOMB_X29_Y26_N16
\C1|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~4_combout\ = (\C1|SQ_Y1\(5) & (\C1|Add1~3\ $ (GND))) # (!\C1|SQ_Y1\(5) & ((GND) # (!\C1|Add1~3\)))
-- \C1|Add1~5\ = CARRY((!\C1|Add1~3\) # (!\C1|SQ_Y1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|Add1~3\,
	combout => \C1|Add1~4_combout\,
	cout => \C1|Add1~5\);

-- Location: LCCOMB_X29_Y26_N18
\C1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~6_combout\ = (\C1|SQ_Y1\(6) & (!\C1|Add1~5\)) # (!\C1|SQ_Y1\(6) & (\C1|Add1~5\ & VCC))
-- \C1|Add1~7\ = CARRY((\C1|SQ_Y1\(6) & !\C1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|Add1~5\,
	combout => \C1|Add1~6_combout\,
	cout => \C1|Add1~7\);

-- Location: LCCOMB_X29_Y26_N20
\C1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~8_combout\ = (\C1|SQ_Y1\(7) & (!\C1|Add1~7\ & VCC)) # (!\C1|SQ_Y1\(7) & (\C1|Add1~7\ $ (GND)))
-- \C1|Add1~9\ = CARRY((!\C1|SQ_Y1\(7) & !\C1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|Add1~7\,
	combout => \C1|Add1~8_combout\,
	cout => \C1|Add1~9\);

-- Location: LCCOMB_X29_Y26_N22
\C1|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~10_combout\ = (\C1|SQ_Y1\(8) & ((\C1|Add1~9\) # (GND))) # (!\C1|SQ_Y1\(8) & (!\C1|Add1~9\))
-- \C1|Add1~11\ = CARRY((\C1|SQ_Y1\(8)) # (!\C1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|Add1~9\,
	combout => \C1|Add1~10_combout\,
	cout => \C1|Add1~11\);

-- Location: LCCOMB_X29_Y26_N24
\C1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~12_combout\ = (\C1|SQ_Y1\(9) & (\C1|Add1~11\ $ (GND))) # (!\C1|SQ_Y1\(9) & (!\C1|Add1~11\ & VCC))
-- \C1|Add1~13\ = CARRY((\C1|SQ_Y1\(9) & !\C1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|Add1~11\,
	combout => \C1|Add1~12_combout\,
	cout => \C1|Add1~13\);

-- Location: LCCOMB_X29_Y26_N26
\C1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~14_combout\ = (\C1|SQ_Y1\(10) & (!\C1|Add1~13\)) # (!\C1|SQ_Y1\(10) & ((\C1|Add1~13\) # (GND)))
-- \C1|Add1~15\ = CARRY((!\C1|Add1~13\) # (!\C1|SQ_Y1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(10),
	datad => VCC,
	cin => \C1|Add1~13\,
	combout => \C1|Add1~14_combout\,
	cout => \C1|Add1~15\);

-- Location: LCCOMB_X28_Y25_N4
\C1|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~1_cout\ = CARRY((\C1|SQ_Y1\(0) & !\C1|VPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(0),
	datab => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan3~1_cout\);

-- Location: LCCOMB_X28_Y25_N6
\C1|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~3_cout\ = CARRY((\C1|VPOS\(1) & ((!\C1|LessThan3~1_cout\) # (!\C1|SQ_Y1\(1)))) # (!\C1|VPOS\(1) & (!\C1|SQ_Y1\(1) & !\C1|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	cin => \C1|LessThan3~1_cout\,
	cout => \C1|LessThan3~3_cout\);

-- Location: LCCOMB_X28_Y25_N8
\C1|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~5_cout\ = CARRY((\C1|VPOS\(2) & (\C1|SQ_Y1\(2) & !\C1|LessThan3~3_cout\)) # (!\C1|VPOS\(2) & ((\C1|SQ_Y1\(2)) # (!\C1|LessThan3~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|LessThan3~3_cout\,
	cout => \C1|LessThan3~5_cout\);

-- Location: LCCOMB_X28_Y25_N10
\C1|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~7_cout\ = CARRY((\C1|Add1~0_combout\ & (\C1|VPOS\(3) & !\C1|LessThan3~5_cout\)) # (!\C1|Add1~0_combout\ & ((\C1|VPOS\(3)) # (!\C1|LessThan3~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~0_combout\,
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan3~5_cout\,
	cout => \C1|LessThan3~7_cout\);

-- Location: LCCOMB_X28_Y25_N12
\C1|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~9_cout\ = CARRY((\C1|Add1~2_combout\ & ((!\C1|LessThan3~7_cout\) # (!\C1|VPOS\(4)))) # (!\C1|Add1~2_combout\ & (!\C1|VPOS\(4) & !\C1|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~2_combout\,
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan3~7_cout\,
	cout => \C1|LessThan3~9_cout\);

-- Location: LCCOMB_X28_Y25_N14
\C1|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~11_cout\ = CARRY((\C1|VPOS\(5) & ((!\C1|LessThan3~9_cout\) # (!\C1|Add1~4_combout\))) # (!\C1|VPOS\(5) & (!\C1|Add1~4_combout\ & !\C1|LessThan3~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(5),
	datab => \C1|Add1~4_combout\,
	datad => VCC,
	cin => \C1|LessThan3~9_cout\,
	cout => \C1|LessThan3~11_cout\);

-- Location: LCCOMB_X28_Y25_N16
\C1|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~13_cout\ = CARRY((\C1|VPOS\(6) & (\C1|Add1~6_combout\ & !\C1|LessThan3~11_cout\)) # (!\C1|VPOS\(6) & ((\C1|Add1~6_combout\) # (!\C1|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|Add1~6_combout\,
	datad => VCC,
	cin => \C1|LessThan3~11_cout\,
	cout => \C1|LessThan3~13_cout\);

-- Location: LCCOMB_X28_Y25_N18
\C1|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~15_cout\ = CARRY((\C1|Add1~8_combout\ & (\C1|VPOS\(7) & !\C1|LessThan3~13_cout\)) # (!\C1|Add1~8_combout\ & ((\C1|VPOS\(7)) # (!\C1|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~8_combout\,
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan3~13_cout\,
	cout => \C1|LessThan3~15_cout\);

-- Location: LCCOMB_X28_Y25_N20
\C1|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~17_cout\ = CARRY((\C1|VPOS\(8) & (\C1|Add1~10_combout\ & !\C1|LessThan3~15_cout\)) # (!\C1|VPOS\(8) & ((\C1|Add1~10_combout\) # (!\C1|LessThan3~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add1~10_combout\,
	datad => VCC,
	cin => \C1|LessThan3~15_cout\,
	cout => \C1|LessThan3~17_cout\);

-- Location: LCCOMB_X28_Y25_N22
\C1|LessThan3~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~19_cout\ = CARRY((\C1|Add1~12_combout\ & (\C1|VPOS\(9) & !\C1|LessThan3~17_cout\)) # (!\C1|Add1~12_combout\ & ((\C1|VPOS\(9)) # (!\C1|LessThan3~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~12_combout\,
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|LessThan3~17_cout\,
	cout => \C1|LessThan3~19_cout\);

-- Location: LCCOMB_X28_Y25_N24
\C1|LessThan3~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~20_combout\ = (\C1|VPOS\(10) & (\C1|Add1~14_combout\ & !\C1|LessThan3~19_cout\)) # (!\C1|VPOS\(10) & ((\C1|Add1~14_combout\) # (!\C1|LessThan3~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(10),
	datab => \C1|Add1~14_combout\,
	cin => \C1|LessThan3~19_cout\,
	combout => \C1|LessThan3~20_combout\);

-- Location: LCCOMB_X24_Y24_N2
\C1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~1_cout\ = CARRY((!\C1|HPOS\(0) & \C1|SQ_X1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|SQ_X1\(0),
	datad => VCC,
	cout => \C1|LessThan1~1_cout\);

-- Location: LCCOMB_X24_Y24_N4
\C1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~3_cout\ = CARRY((\C1|HPOS\(1) & ((!\C1|LessThan1~1_cout\) # (!\C1|SQ_X1\(1)))) # (!\C1|HPOS\(1) & (!\C1|SQ_X1\(1) & !\C1|LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cin => \C1|LessThan1~1_cout\,
	cout => \C1|LessThan1~3_cout\);

-- Location: LCCOMB_X24_Y24_N6
\C1|LessThan1~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~5_cout\ = CARRY((\C1|HPOS\(2) & (\C1|SQ_X1\(2) & !\C1|LessThan1~3_cout\)) # (!\C1|HPOS\(2) & ((\C1|SQ_X1\(2)) # (!\C1|LessThan1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|LessThan1~3_cout\,
	cout => \C1|LessThan1~5_cout\);

-- Location: LCCOMB_X24_Y24_N8
\C1|LessThan1~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~7_cout\ = CARRY((\C1|HPOS\(3) & ((!\C1|LessThan1~5_cout\) # (!\C1|Add0~0_combout\))) # (!\C1|HPOS\(3) & (!\C1|Add0~0_combout\ & !\C1|LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|Add0~0_combout\,
	datad => VCC,
	cin => \C1|LessThan1~5_cout\,
	cout => \C1|LessThan1~7_cout\);

-- Location: LCCOMB_X24_Y24_N10
\C1|LessThan1~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~9_cout\ = CARRY((\C1|HPOS\(4) & (\C1|Add0~2_combout\ & !\C1|LessThan1~7_cout\)) # (!\C1|HPOS\(4) & ((\C1|Add0~2_combout\) # (!\C1|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|Add0~2_combout\,
	datad => VCC,
	cin => \C1|LessThan1~7_cout\,
	cout => \C1|LessThan1~9_cout\);

-- Location: LCCOMB_X24_Y24_N12
\C1|LessThan1~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~11_cout\ = CARRY((\C1|HPOS\(5) & ((!\C1|LessThan1~9_cout\) # (!\C1|Add0~4_combout\))) # (!\C1|HPOS\(5) & (!\C1|Add0~4_combout\ & !\C1|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|LessThan1~9_cout\,
	cout => \C1|LessThan1~11_cout\);

-- Location: LCCOMB_X24_Y24_N14
\C1|LessThan1~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~13_cout\ = CARRY((\C1|HPOS\(6) & (\C1|Add0~6_combout\ & !\C1|LessThan1~11_cout\)) # (!\C1|HPOS\(6) & ((\C1|Add0~6_combout\) # (!\C1|LessThan1~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add0~6_combout\,
	datad => VCC,
	cin => \C1|LessThan1~11_cout\,
	cout => \C1|LessThan1~13_cout\);

-- Location: LCCOMB_X24_Y24_N16
\C1|LessThan1~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~15_cout\ = CARRY((\C1|Add0~8_combout\ & (\C1|HPOS\(7) & !\C1|LessThan1~13_cout\)) # (!\C1|Add0~8_combout\ & ((\C1|HPOS\(7)) # (!\C1|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan1~13_cout\,
	cout => \C1|LessThan1~15_cout\);

-- Location: LCCOMB_X24_Y24_N18
\C1|LessThan1~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~17_cout\ = CARRY((\C1|Add0~10_combout\ & ((!\C1|LessThan1~15_cout\) # (!\C1|HPOS\(8)))) # (!\C1|Add0~10_combout\ & (!\C1|HPOS\(8) & !\C1|LessThan1~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~10_combout\,
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan1~15_cout\,
	cout => \C1|LessThan1~17_cout\);

-- Location: LCCOMB_X24_Y24_N20
\C1|LessThan1~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~19_cout\ = CARRY((\C1|Add0~12_combout\ & (\C1|HPOS\(9) & !\C1|LessThan1~17_cout\)) # (!\C1|Add0~12_combout\ & ((\C1|HPOS\(9)) # (!\C1|LessThan1~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~12_combout\,
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|LessThan1~17_cout\,
	cout => \C1|LessThan1~19_cout\);

-- Location: LCCOMB_X24_Y24_N22
\C1|LessThan1~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~20_combout\ = (\C1|HPOS\(10) & (!\C1|LessThan1~19_cout\ & \C1|Add0~14_combout\)) # (!\C1|HPOS\(10) & ((\C1|Add0~14_combout\) # (!\C1|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datad => \C1|Add0~14_combout\,
	cin => \C1|LessThan1~19_cout\,
	combout => \C1|LessThan1~20_combout\);

-- Location: LCCOMB_X29_Y26_N28
\C1|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~16_combout\ = !\C1|Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add1~15\,
	combout => \C1|Add1~16_combout\);

-- Location: LCCOMB_X28_Y25_N2
\C1|DRAW1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~0_combout\ = (\C1|Add0~16_combout\ & ((\C1|LessThan3~20_combout\) # ((\C1|Add1~16_combout\)))) # (!\C1|Add0~16_combout\ & (\C1|LessThan1~20_combout\ & ((\C1|LessThan3~20_combout\) # (\C1|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~16_combout\,
	datab => \C1|LessThan3~20_combout\,
	datac => \C1|LessThan1~20_combout\,
	datad => \C1|Add1~16_combout\,
	combout => \C1|DRAW1~0_combout\);

-- Location: LCCOMB_X28_Y25_N28
\C1|R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (\C1|DRAW2~0_combout\ & ((\C1|DRAW2~1_combout\) # ((\C1|DRAW1~1_combout\ & \C1|DRAW1~0_combout\)))) # (!\C1|DRAW2~0_combout\ & (((\C1|DRAW1~1_combout\ & \C1|DRAW1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW2~0_combout\,
	datab => \C1|DRAW2~1_combout\,
	datac => \C1|DRAW1~1_combout\,
	datad => \C1|DRAW1~0_combout\,
	combout => \C1|R~0_combout\);

-- Location: LCCOMB_X28_Y25_N0
\C1|R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~1_combout\ = (\C1|B~2_combout\ & \C1|R~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|B~2_combout\,
	datad => \C1|R~0_combout\,
	combout => \C1|R~1_combout\);

-- Location: FF_X28_Y25_N1
\C1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(0));

-- Location: LCCOMB_X28_Y27_N26
\C1|B~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~5_combout\ = (!\SW[1]~input_o\ & (\C1|DRAW2~0_combout\ & (\C1|LessThan4~20_combout\ & \C1|LessThan6~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \C1|DRAW2~0_combout\,
	datac => \C1|LessThan4~20_combout\,
	datad => \C1|LessThan6~20_combout\,
	combout => \C1|B~5_combout\);

-- Location: LCCOMB_X28_Y25_N30
\C1|B~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~3_combout\ = (\C1|DRAW1~1_combout\ & (\C1|DRAW1~0_combout\ & ((!\C1|DRAW2~1_combout\) # (!\C1|DRAW2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW2~0_combout\,
	datab => \C1|DRAW2~1_combout\,
	datac => \C1|DRAW1~1_combout\,
	datad => \C1|DRAW1~0_combout\,
	combout => \C1|B~3_combout\);

-- Location: LCCOMB_X28_Y25_N26
\C1|B~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~4_combout\ = (\C1|B~2_combout\ & ((\C1|B~5_combout\) # ((!\SW[0]~input_o\ & \C1|B~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|B~5_combout\,
	datab => \SW[0]~input_o\,
	datac => \C1|B~3_combout\,
	datad => \C1|B~2_combout\,
	combout => \C1|B~4_combout\);

-- Location: FF_X28_Y25_N27
\C1|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	d => \C1|B~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(0));

-- Location: IOIBUF_X41_Y12_N1
\CLOCK_24[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_24(1),
	o => \CLOCK_24[1]~input_o\);
END structure;


