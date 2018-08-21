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

-- DATE "08/20/2018 21:57:57"

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
	VGA_HS : BUFFER std_logic;
	VGA_VS : BUFFER std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	VGA_R : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_B : BUFFER std_logic_vector(3 DOWNTO 0);
	VGA_G : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- CLOCK_24[1]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_H20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_H22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[1]	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[0]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \C|altpll_0|sd1|pll7_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll7_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_24[1]~input_o\ : std_logic;
SIGNAL \CLOCK_24[0]~input_o\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_fbout\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~10_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~25\ : std_logic;
SIGNAL \C1|HPOS[8]~26_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~27\ : std_logic;
SIGNAL \C1|HPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|LessThan8~0_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~11\ : std_logic;
SIGNAL \C1|HPOS[1]~12_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~13\ : std_logic;
SIGNAL \C1|HPOS[2]~14_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~15\ : std_logic;
SIGNAL \C1|HPOS[3]~16_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~17\ : std_logic;
SIGNAL \C1|HPOS[4]~18_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~19\ : std_logic;
SIGNAL \C1|HPOS[5]~20_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~21\ : std_logic;
SIGNAL \C1|HPOS[6]~22_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23\ : std_logic;
SIGNAL \C1|HPOS[7]~24_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|HSYNC~q\ : std_logic;
SIGNAL \C1|VPOS[0]~10_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~15\ : std_logic;
SIGNAL \C1|VPOS[3]~16_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~17\ : std_logic;
SIGNAL \C1|VPOS[4]~18_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~19\ : std_logic;
SIGNAL \C1|VPOS[5]~20_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~21\ : std_logic;
SIGNAL \C1|VPOS[6]~22_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~23\ : std_logic;
SIGNAL \C1|VPOS[7]~24_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~25\ : std_logic;
SIGNAL \C1|VPOS[8]~26_combout\ : std_logic;
SIGNAL \C1|VPOS[8]~27\ : std_logic;
SIGNAL \C1|VPOS[9]~28_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|LessThan15~0_combout\ : std_logic;
SIGNAL \C1|LessThan9~0_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~11\ : std_logic;
SIGNAL \C1|VPOS[1]~12_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~13\ : std_logic;
SIGNAL \C1|VPOS[2]~14_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|VSYNC~q\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|B~2_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \C1|Add9~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[9]~1_combout\ : std_logic;
SIGNAL \C1|Add9~1\ : std_logic;
SIGNAL \C1|Add9~2_combout\ : std_logic;
SIGNAL \C1|Add9~3\ : std_logic;
SIGNAL \C1|Add9~4_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[2]~5_combout\ : std_logic;
SIGNAL \C1|Add9~5\ : std_logic;
SIGNAL \C1|Add9~6_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[3]~4_combout\ : std_logic;
SIGNAL \C1|Add9~7\ : std_logic;
SIGNAL \C1|Add9~8_combout\ : std_logic;
SIGNAL \C1|Add9~9\ : std_logic;
SIGNAL \C1|Add9~10_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[5]~3_combout\ : std_logic;
SIGNAL \C1|Add9~11\ : std_logic;
SIGNAL \C1|Add9~12_combout\ : std_logic;
SIGNAL \C1|Add9~13\ : std_logic;
SIGNAL \C1|Add9~14_combout\ : std_logic;
SIGNAL \C1|Add9~15\ : std_logic;
SIGNAL \C1|Add9~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y1[8]~2_combout\ : std_logic;
SIGNAL \C1|Add9~17\ : std_logic;
SIGNAL \C1|Add9~18_combout\ : std_logic;
SIGNAL \C1|LessThan2~1_cout\ : std_logic;
SIGNAL \C1|LessThan2~3_cout\ : std_logic;
SIGNAL \C1|LessThan2~5_cout\ : std_logic;
SIGNAL \C1|LessThan2~7_cout\ : std_logic;
SIGNAL \C1|LessThan2~9_cout\ : std_logic;
SIGNAL \C1|LessThan2~11_cout\ : std_logic;
SIGNAL \C1|LessThan2~13_cout\ : std_logic;
SIGNAL \C1|LessThan2~15_cout\ : std_logic;
SIGNAL \C1|LessThan2~17_cout\ : std_logic;
SIGNAL \C1|LessThan2~18_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \C1|Add6~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \C1|SQ_X1[9]~0_combout\ : std_logic;
SIGNAL \C1|SQ_X1[9]~1_combout\ : std_logic;
SIGNAL \C1|Add6~1\ : std_logic;
SIGNAL \C1|Add6~2_combout\ : std_logic;
SIGNAL \C1|Add6~3\ : std_logic;
SIGNAL \C1|Add6~4_combout\ : std_logic;
SIGNAL \C1|SQ_X1[2]~5_combout\ : std_logic;
SIGNAL \C1|Add6~5\ : std_logic;
SIGNAL \C1|Add6~6_combout\ : std_logic;
SIGNAL \C1|SQ_X1[3]~4_combout\ : std_logic;
SIGNAL \C1|Add6~7\ : std_logic;
SIGNAL \C1|Add6~8_combout\ : std_logic;
SIGNAL \C1|Add6~9\ : std_logic;
SIGNAL \C1|Add6~10_combout\ : std_logic;
SIGNAL \C1|SQ_X1[5]~3_combout\ : std_logic;
SIGNAL \C1|Add6~11\ : std_logic;
SIGNAL \C1|Add6~12_combout\ : std_logic;
SIGNAL \C1|Add6~13\ : std_logic;
SIGNAL \C1|Add6~14_combout\ : std_logic;
SIGNAL \C1|Add6~15\ : std_logic;
SIGNAL \C1|Add6~16_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~2_combout\ : std_logic;
SIGNAL \C1|Add6~17\ : std_logic;
SIGNAL \C1|Add6~18_combout\ : std_logic;
SIGNAL \C1|LessThan0~1_cout\ : std_logic;
SIGNAL \C1|LessThan0~3_cout\ : std_logic;
SIGNAL \C1|LessThan0~5_cout\ : std_logic;
SIGNAL \C1|LessThan0~7_cout\ : std_logic;
SIGNAL \C1|LessThan0~9_cout\ : std_logic;
SIGNAL \C1|LessThan0~11_cout\ : std_logic;
SIGNAL \C1|LessThan0~13_cout\ : std_logic;
SIGNAL \C1|LessThan0~15_cout\ : std_logic;
SIGNAL \C1|LessThan0~17_cout\ : std_logic;
SIGNAL \C1|LessThan0~18_combout\ : std_logic;
SIGNAL \C1|DRAW1~1_combout\ : std_logic;
SIGNAL \C1|Add10~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \C1|SQ_X2[9]~0_combout\ : std_logic;
SIGNAL \C1|Add10~1\ : std_logic;
SIGNAL \C1|Add10~2_combout\ : std_logic;
SIGNAL \C1|Add10~3\ : std_logic;
SIGNAL \C1|Add10~4_combout\ : std_logic;
SIGNAL \C1|Add10~5\ : std_logic;
SIGNAL \C1|Add10~6_combout\ : std_logic;
SIGNAL \C1|Add10~7\ : std_logic;
SIGNAL \C1|Add10~8_combout\ : std_logic;
SIGNAL \C1|SQ_X2[4]~3_combout\ : std_logic;
SIGNAL \C1|Add10~9\ : std_logic;
SIGNAL \C1|Add10~10_combout\ : std_logic;
SIGNAL \C1|Add10~11\ : std_logic;
SIGNAL \C1|Add10~12_combout\ : std_logic;
SIGNAL \C1|Add10~13\ : std_logic;
SIGNAL \C1|Add10~14_combout\ : std_logic;
SIGNAL \C1|SQ_X2[7]~2_combout\ : std_logic;
SIGNAL \C1|Add10~15\ : std_logic;
SIGNAL \C1|Add10~16_combout\ : std_logic;
SIGNAL \C1|SQ_X2[8]~1_combout\ : std_logic;
SIGNAL \C1|Add10~17\ : std_logic;
SIGNAL \C1|Add10~18_combout\ : std_logic;
SIGNAL \C1|LessThan4~1_cout\ : std_logic;
SIGNAL \C1|LessThan4~3_cout\ : std_logic;
SIGNAL \C1|LessThan4~5_cout\ : std_logic;
SIGNAL \C1|LessThan4~7_cout\ : std_logic;
SIGNAL \C1|LessThan4~9_cout\ : std_logic;
SIGNAL \C1|LessThan4~11_cout\ : std_logic;
SIGNAL \C1|LessThan4~13_cout\ : std_logic;
SIGNAL \C1|LessThan4~15_cout\ : std_logic;
SIGNAL \C1|LessThan4~17_cout\ : std_logic;
SIGNAL \C1|LessThan4~18_combout\ : std_logic;
SIGNAL \C1|Add13~0_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[9]~0_combout\ : std_logic;
SIGNAL \C1|Add13~1\ : std_logic;
SIGNAL \C1|Add13~2_combout\ : std_logic;
SIGNAL \C1|Add13~3\ : std_logic;
SIGNAL \C1|Add13~4_combout\ : std_logic;
SIGNAL \C1|Add13~5\ : std_logic;
SIGNAL \C1|Add13~6_combout\ : std_logic;
SIGNAL \C1|Add13~7\ : std_logic;
SIGNAL \C1|Add13~8_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[4]~3_combout\ : std_logic;
SIGNAL \C1|Add13~9\ : std_logic;
SIGNAL \C1|Add13~10_combout\ : std_logic;
SIGNAL \C1|Add13~11\ : std_logic;
SIGNAL \C1|Add13~12_combout\ : std_logic;
SIGNAL \C1|Add13~13\ : std_logic;
SIGNAL \C1|Add13~14_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[7]~2_combout\ : std_logic;
SIGNAL \C1|Add13~15\ : std_logic;
SIGNAL \C1|Add13~16_combout\ : std_logic;
SIGNAL \C1|SQ_Y2[8]~1_combout\ : std_logic;
SIGNAL \C1|Add13~17\ : std_logic;
SIGNAL \C1|Add13~18_combout\ : std_logic;
SIGNAL \C1|LessThan6~1_cout\ : std_logic;
SIGNAL \C1|LessThan6~3_cout\ : std_logic;
SIGNAL \C1|LessThan6~5_cout\ : std_logic;
SIGNAL \C1|LessThan6~7_cout\ : std_logic;
SIGNAL \C1|LessThan6~9_cout\ : std_logic;
SIGNAL \C1|LessThan6~11_cout\ : std_logic;
SIGNAL \C1|LessThan6~13_cout\ : std_logic;
SIGNAL \C1|LessThan6~15_cout\ : std_logic;
SIGNAL \C1|LessThan6~17_cout\ : std_logic;
SIGNAL \C1|LessThan6~18_combout\ : std_logic;
SIGNAL \C1|DRAW2~1_combout\ : std_logic;
SIGNAL \C1|Add3~1\ : std_logic;
SIGNAL \C1|Add3~3\ : std_logic;
SIGNAL \C1|Add3~5\ : std_logic;
SIGNAL \C1|Add3~7\ : std_logic;
SIGNAL \C1|Add3~9\ : std_logic;
SIGNAL \C1|Add3~11\ : std_logic;
SIGNAL \C1|Add3~13\ : std_logic;
SIGNAL \C1|Add3~14_combout\ : std_logic;
SIGNAL \C1|Add2~1\ : std_logic;
SIGNAL \C1|Add2~3\ : std_logic;
SIGNAL \C1|Add2~5\ : std_logic;
SIGNAL \C1|Add2~7\ : std_logic;
SIGNAL \C1|Add2~9\ : std_logic;
SIGNAL \C1|Add2~11\ : std_logic;
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
SIGNAL \C1|LessThan5~18_combout\ : std_logic;
SIGNAL \C1|Add2~13\ : std_logic;
SIGNAL \C1|Add2~14_combout\ : std_logic;
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
SIGNAL \C1|LessThan7~18_combout\ : std_logic;
SIGNAL \C1|DRAW2~0_combout\ : std_logic;
SIGNAL \C1|Add1~1\ : std_logic;
SIGNAL \C1|Add1~3\ : std_logic;
SIGNAL \C1|Add1~5\ : std_logic;
SIGNAL \C1|Add1~7\ : std_logic;
SIGNAL \C1|Add1~9\ : std_logic;
SIGNAL \C1|Add1~11\ : std_logic;
SIGNAL \C1|Add1~13\ : std_logic;
SIGNAL \C1|Add1~14_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
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
SIGNAL \C1|LessThan1~18_combout\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
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
SIGNAL \C1|LessThan3~18_combout\ : std_logic;
SIGNAL \C1|DRAW1~0_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \C1|R~1_combout\ : std_logic;
SIGNAL \C1|B~5_combout\ : std_logic;
SIGNAL \C1|B~3_combout\ : std_logic;
SIGNAL \C1|B~4_combout\ : std_logic;
SIGNAL \C|altpll_0|sd1|wire_pll7_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|SQ_Y2\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|SQ_Y1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|SQ_X2\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|SQ_X1\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(9 DOWNTO 0);
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

\C|altpll_0|sd1|pll7_INCLK_bus\ <= (gnd & \CLOCK_24[0]~input_o\);

\C|altpll_0|sd1|wire_pll7_clk\(0) <= \C|altpll_0|sd1|pll7_CLK_bus\(0);
\C|altpll_0|sd1|wire_pll7_clk\(1) <= \C|altpll_0|sd1|pll7_CLK_bus\(1);
\C|altpll_0|sd1|wire_pll7_clk\(2) <= \C|altpll_0|sd1|pll7_CLK_bus\(2);
\C|altpll_0|sd1|wire_pll7_clk\(3) <= \C|altpll_0|sd1|pll7_CLK_bus\(3);
\C|altpll_0|sd1|wire_pll7_clk\(4) <= \C|altpll_0|sd1|pll7_CLK_bus\(4);

\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \C|altpll_0|sd1|wire_pll7_clk\(0));
\C1|ALT_INV_LessThan9~0_combout\ <= NOT \C1|LessThan9~0_combout\;
\C1|ALT_INV_LessThan8~0_combout\ <= NOT \C1|LessThan8~0_combout\;

-- Location: IOOBUF_X41_Y18_N16
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

-- Location: IOOBUF_X41_Y18_N23
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

-- Location: IOOBUF_X41_Y23_N23
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

-- Location: IOOBUF_X41_Y25_N2
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

-- Location: IOOBUF_X41_Y22_N2
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

-- Location: IOOBUF_X41_Y21_N23
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

-- Location: IOOBUF_X41_Y19_N16
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

-- Location: IOOBUF_X41_Y19_N9
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

-- Location: IOOBUF_X41_Y19_N2
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

-- Location: IOOBUF_X41_Y21_N9
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

-- Location: IOOBUF_X41_Y20_N2
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

-- Location: IOOBUF_X41_Y24_N23
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

-- Location: IOOBUF_X41_Y21_N16
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

-- Location: IOOBUF_X41_Y20_N23
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

-- Location: IOIBUF_X41_Y15_N1
\CLOCK_24[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_24(0),
	o => \CLOCK_24[0]~input_o\);

-- Location: PLL_2
\C|altpll_0|sd1|pll7\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 11,
	c0_initial => 1,
	c0_low => 10,
	c0_mode => "odd",
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
	clk0_divide_by => 147,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 74,
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
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 16,
	m => 74,
	m_initial => 1,
	m_ph => 0,
	n => 7,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5079,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 236,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \C|altpll_0|sd1|wire_pll7_fbout\,
	inclk => \C|altpll_0|sd1|pll7_INCLK_bus\,
	fbout => \C|altpll_0|sd1|wire_pll7_fbout\,
	clk => \C|altpll_0|sd1|pll7_CLK_bus\);

-- Location: CLKCTRL_G8
\C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y21_N8
\C1|HPOS[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~10_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~11\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~10_combout\,
	cout => \C1|HPOS[0]~11\);

-- Location: LCCOMB_X27_Y21_N28
\C1|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (!\C1|HPOS\(5) & !\C1|HPOS\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(6),
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X27_Y21_N22
\C1|HPOS[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~24_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~23\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~23\) # (GND)))
-- \C1|HPOS[7]~25\ = CARRY((!\C1|HPOS[6]~23\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~23\,
	combout => \C1|HPOS[7]~24_combout\,
	cout => \C1|HPOS[7]~25\);

-- Location: LCCOMB_X27_Y21_N24
\C1|HPOS[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~26_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~25\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~25\ & VCC))
-- \C1|HPOS[8]~27\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~25\,
	combout => \C1|HPOS[8]~26_combout\,
	cout => \C1|HPOS[8]~27\);

-- Location: FF_X27_Y21_N25
\C1|HPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[8]~26_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(8));

-- Location: LCCOMB_X27_Y21_N26
\C1|HPOS[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~28_combout\ = \C1|HPOS\(9) $ (\C1|HPOS[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	cin => \C1|HPOS[8]~27\,
	combout => \C1|HPOS[9]~28_combout\);

-- Location: FF_X27_Y21_N27
\C1|HPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[9]~28_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(9));

-- Location: LCCOMB_X27_Y21_N30
\C1|LessThan8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~0_combout\ = (((!\C1|HPOS\(7) & \C1|process_0~7_combout\)) # (!\C1|HPOS\(8))) # (!\C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|process_0~7_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(8),
	combout => \C1|LessThan8~0_combout\);

-- Location: FF_X27_Y21_N9
\C1|HPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[0]~10_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(0));

-- Location: LCCOMB_X27_Y21_N10
\C1|HPOS[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~12_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~11\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~11\) # (GND)))
-- \C1|HPOS[1]~13\ = CARRY((!\C1|HPOS[0]~11\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~11\,
	combout => \C1|HPOS[1]~12_combout\,
	cout => \C1|HPOS[1]~13\);

-- Location: FF_X27_Y21_N11
\C1|HPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[1]~12_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(1));

-- Location: LCCOMB_X27_Y21_N12
\C1|HPOS[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~14_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~13\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~13\ & VCC))
-- \C1|HPOS[2]~15\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~13\,
	combout => \C1|HPOS[2]~14_combout\,
	cout => \C1|HPOS[2]~15\);

-- Location: FF_X27_Y21_N13
\C1|HPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[2]~14_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(2));

-- Location: LCCOMB_X27_Y21_N14
\C1|HPOS[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~16_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~15\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~15\) # (GND)))
-- \C1|HPOS[3]~17\ = CARRY((!\C1|HPOS[2]~15\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~15\,
	combout => \C1|HPOS[3]~16_combout\,
	cout => \C1|HPOS[3]~17\);

-- Location: FF_X27_Y21_N15
\C1|HPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[3]~16_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(3));

-- Location: LCCOMB_X27_Y21_N16
\C1|HPOS[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~18_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~17\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~17\ & VCC))
-- \C1|HPOS[4]~19\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~17\,
	combout => \C1|HPOS[4]~18_combout\,
	cout => \C1|HPOS[4]~19\);

-- Location: FF_X27_Y21_N17
\C1|HPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[4]~18_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(4));

-- Location: LCCOMB_X27_Y21_N18
\C1|HPOS[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~20_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~19\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~19\) # (GND)))
-- \C1|HPOS[5]~21\ = CARRY((!\C1|HPOS[4]~19\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~19\,
	combout => \C1|HPOS[5]~20_combout\,
	cout => \C1|HPOS[5]~21\);

-- Location: FF_X27_Y21_N19
\C1|HPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[5]~20_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(5));

-- Location: LCCOMB_X27_Y21_N20
\C1|HPOS[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~22_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~21\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~21\ & VCC))
-- \C1|HPOS[6]~23\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~21\,
	combout => \C1|HPOS[6]~22_combout\,
	cout => \C1|HPOS[6]~23\);

-- Location: FF_X27_Y21_N21
\C1|HPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[6]~22_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(6));

-- Location: FF_X27_Y21_N23
\C1|HPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|HPOS[7]~24_combout\,
	sclr => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HPOS\(7));

-- Location: LCCOMB_X23_Y18_N0
\C1|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (!\C1|HPOS\(0) & (!\C1|HPOS\(3) & (!\C1|HPOS\(1) & !\C1|HPOS\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|HPOS\(3),
	datac => \C1|HPOS\(1),
	datad => \C1|HPOS\(2),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X27_Y21_N2
\C1|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (\C1|HPOS\(6) & (((!\C1|HPOS\(4)) # (!\C1|HPOS\(5))))) # (!\C1|HPOS\(6) & ((\C1|HPOS\(5)) # ((!\C1|process_0~0_combout\ & \C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~0_combout\,
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(4),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X27_Y21_N0
\C1|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (\C1|HPOS\(7)) # (((\C1|HPOS\(9)) # (\C1|HPOS\(8))) # (!\C1|process_0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|process_0~1_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(8),
	combout => \C1|process_0~2_combout\);

-- Location: FF_X27_Y21_N1
\C1|HSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|HSYNC~q\);

-- Location: LCCOMB_X27_Y19_N8
\C1|VPOS[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~10_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~11\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~10_combout\,
	cout => \C1|VPOS[0]~11\);

-- Location: LCCOMB_X27_Y19_N12
\C1|VPOS[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~14_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~13\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~13\ & VCC))
-- \C1|VPOS[2]~15\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~13\,
	combout => \C1|VPOS[2]~14_combout\,
	cout => \C1|VPOS[2]~15\);

-- Location: LCCOMB_X27_Y19_N14
\C1|VPOS[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~16_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~15\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~15\) # (GND)))
-- \C1|VPOS[3]~17\ = CARRY((!\C1|VPOS[2]~15\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~15\,
	combout => \C1|VPOS[3]~16_combout\,
	cout => \C1|VPOS[3]~17\);

-- Location: FF_X27_Y19_N15
\C1|VPOS[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[3]~16_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(3));

-- Location: LCCOMB_X27_Y19_N16
\C1|VPOS[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~18_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~17\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~17\ & VCC))
-- \C1|VPOS[4]~19\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~17\,
	combout => \C1|VPOS[4]~18_combout\,
	cout => \C1|VPOS[4]~19\);

-- Location: FF_X27_Y19_N17
\C1|VPOS[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[4]~18_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(4));

-- Location: LCCOMB_X27_Y19_N18
\C1|VPOS[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~20_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~19\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~19\) # (GND)))
-- \C1|VPOS[5]~21\ = CARRY((!\C1|VPOS[4]~19\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~19\,
	combout => \C1|VPOS[5]~20_combout\,
	cout => \C1|VPOS[5]~21\);

-- Location: FF_X27_Y19_N19
\C1|VPOS[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[5]~20_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(5));

-- Location: LCCOMB_X27_Y19_N20
\C1|VPOS[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~22_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~21\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~21\ & VCC))
-- \C1|VPOS[6]~23\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~21\,
	combout => \C1|VPOS[6]~22_combout\,
	cout => \C1|VPOS[6]~23\);

-- Location: FF_X27_Y19_N21
\C1|VPOS[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[6]~22_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(6));

-- Location: LCCOMB_X27_Y19_N22
\C1|VPOS[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~24_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~23\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~23\) # (GND)))
-- \C1|VPOS[7]~25\ = CARRY((!\C1|VPOS[6]~23\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~23\,
	combout => \C1|VPOS[7]~24_combout\,
	cout => \C1|VPOS[7]~25\);

-- Location: FF_X27_Y19_N23
\C1|VPOS[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[7]~24_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(7));

-- Location: LCCOMB_X27_Y19_N24
\C1|VPOS[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~26_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~25\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~25\ & VCC))
-- \C1|VPOS[8]~27\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~25\,
	combout => \C1|VPOS[8]~26_combout\,
	cout => \C1|VPOS[8]~27\);

-- Location: FF_X27_Y19_N25
\C1|VPOS[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[8]~26_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(8));

-- Location: LCCOMB_X27_Y19_N26
\C1|VPOS[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~28_combout\ = \C1|VPOS\(9) $ (\C1|VPOS[8]~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	cin => \C1|VPOS[8]~27\,
	combout => \C1|VPOS[9]~28_combout\);

-- Location: FF_X27_Y19_N27
\C1|VPOS[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[9]~28_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(9));

-- Location: LCCOMB_X27_Y19_N2
\C1|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (!\C1|VPOS\(5) & (!\C1|VPOS\(3) & !\C1|VPOS\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(4),
	combout => \C1|process_0~3_combout\);

-- Location: LCCOMB_X27_Y19_N4
\C1|LessThan15~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan15~0_combout\ = (!\C1|VPOS\(8) & (!\C1|VPOS\(7) & !\C1|VPOS\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(8),
	datac => \C1|VPOS\(7),
	datad => \C1|VPOS\(6),
	combout => \C1|LessThan15~0_combout\);

-- Location: LCCOMB_X27_Y19_N30
\C1|LessThan9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan9~0_combout\ = ((\C1|process_0~3_combout\ & \C1|LessThan15~0_combout\)) # (!\C1|VPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|process_0~3_combout\,
	datac => \C1|LessThan15~0_combout\,
	combout => \C1|LessThan9~0_combout\);

-- Location: FF_X27_Y19_N9
\C1|VPOS[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[0]~10_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(0));

-- Location: LCCOMB_X27_Y19_N10
\C1|VPOS[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~12_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~11\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~11\) # (GND)))
-- \C1|VPOS[1]~13\ = CARRY((!\C1|VPOS[0]~11\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~11\,
	combout => \C1|VPOS[1]~12_combout\,
	cout => \C1|VPOS[1]~13\);

-- Location: FF_X27_Y19_N11
\C1|VPOS[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[1]~12_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(1));

-- Location: FF_X27_Y19_N13
\C1|VPOS[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|VPOS[2]~14_combout\,
	sclr => \C1|ALT_INV_LessThan9~0_combout\,
	ena => \C1|ALT_INV_LessThan8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VPOS\(2));

-- Location: LCCOMB_X27_Y19_N28
\C1|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (!\C1|VPOS\(2) & (\C1|process_0~3_combout\ & (!\C1|VPOS\(0) & !\C1|VPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|process_0~3_combout\,
	datac => \C1|VPOS\(0),
	datad => \C1|VPOS\(1),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X27_Y19_N6
\C1|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (\C1|VPOS\(9)) # ((\C1|VPOS\(5) & ((\C1|VPOS\(3)) # (\C1|VPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(3),
	datad => \C1|VPOS\(4),
	combout => \C1|process_0~5_combout\);

-- Location: LCCOMB_X27_Y19_N0
\C1|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = (\C1|process_0~4_combout\) # ((\C1|process_0~5_combout\) # (!\C1|LessThan15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~4_combout\,
	datac => \C1|LessThan15~0_combout\,
	datad => \C1|process_0~5_combout\,
	combout => \C1|process_0~6_combout\);

-- Location: FF_X27_Y19_N1
\C1|VSYNC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|VSYNC~q\);

-- Location: LCCOMB_X27_Y21_N4
\C1|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (!\C1|HPOS\(5) & (!\C1|HPOS\(6) & (!\C1|HPOS\(7) & !\C1|HPOS\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|HPOS\(6),
	datac => \C1|HPOS\(7),
	datad => \C1|HPOS\(4),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X27_Y21_N6
\C1|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (\C1|HPOS\(9)) # ((\C1|HPOS\(8)) # ((\C1|HPOS\(7) & !\C1|process_0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|process_0~7_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(8),
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X26_Y19_N6
\C1|B~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~2_combout\ = (\C1|process_0~6_combout\ & ((\C1|process_0~8_combout\) # ((\C1|process_0~9_combout\ & \C1|process_0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~9_combout\,
	datab => \C1|process_0~6_combout\,
	datac => \C1|process_0~8_combout\,
	datad => \C1|process_0~0_combout\,
	combout => \C1|B~2_combout\);

-- Location: IOIBUF_X0_Y25_N1
\KEY[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LCCOMB_X29_Y18_N4
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

-- Location: IOIBUF_X0_Y24_N1
\SW[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\KEY[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LCCOMB_X27_Y18_N6
\C1|SQ_Y1[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~0_combout\ = (!\KEY[3]~input_o\) # (!\KEY[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[2]~input_o\,
	datad => \KEY[3]~input_o\,
	combout => \C1|SQ_Y1[9]~0_combout\);

-- Location: LCCOMB_X29_Y18_N28
\C1|SQ_Y1[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[9]~1_combout\ = (!\C1|LessThan9~0_combout\ & (\SW[0]~input_o\ & (\C1|SQ_Y1[9]~0_combout\ & !\C1|LessThan8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan9~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \C1|SQ_Y1[9]~0_combout\,
	datad => \C1|LessThan8~0_combout\,
	combout => \C1|SQ_Y1[9]~1_combout\);

-- Location: FF_X29_Y18_N5
\C1|SQ_Y1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add9~0_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(0));

-- Location: LCCOMB_X29_Y18_N6
\C1|Add9~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~2_combout\ = (\KEY[3]~input_o\ & ((\C1|SQ_Y1\(1) & (\C1|Add9~1\ & VCC)) # (!\C1|SQ_Y1\(1) & (!\C1|Add9~1\)))) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y1\(1) & (!\C1|Add9~1\)) # (!\C1|SQ_Y1\(1) & ((\C1|Add9~1\) # (GND)))))
-- \C1|Add9~3\ = CARRY((\KEY[3]~input_o\ & (!\C1|SQ_Y1\(1) & !\C1|Add9~1\)) # (!\KEY[3]~input_o\ & ((!\C1|Add9~1\) # (!\C1|SQ_Y1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y1\(1),
	datad => VCC,
	cin => \C1|Add9~1\,
	combout => \C1|Add9~2_combout\,
	cout => \C1|Add9~3\);

-- Location: FF_X29_Y18_N7
\C1|SQ_Y1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add9~2_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(1));

-- Location: LCCOMB_X29_Y18_N8
\C1|Add9~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~4_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y1\(2) $ (!\C1|Add9~3\)))) # (GND)
-- \C1|Add9~5\ = CARRY((\KEY[3]~input_o\ & (!\C1|SQ_Y1\(2) & !\C1|Add9~3\)) # (!\KEY[3]~input_o\ & ((!\C1|Add9~3\) # (!\C1|SQ_Y1\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|Add9~3\,
	combout => \C1|Add9~4_combout\,
	cout => \C1|Add9~5\);

-- Location: LCCOMB_X29_Y18_N2
\C1|SQ_Y1[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[2]~5_combout\ = !\C1|Add9~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add9~4_combout\,
	combout => \C1|SQ_Y1[2]~5_combout\);

-- Location: FF_X29_Y18_N3
\C1|SQ_Y1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_Y1[2]~5_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(2));

-- Location: LCCOMB_X29_Y18_N10
\C1|Add9~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~6_combout\ = (\KEY[3]~input_o\ & ((\C1|SQ_Y1\(3) & (!\C1|Add9~5\)) # (!\C1|SQ_Y1\(3) & (\C1|Add9~5\ & VCC)))) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y1\(3) & ((\C1|Add9~5\) # (GND))) # (!\C1|SQ_Y1\(3) & (!\C1|Add9~5\))))
-- \C1|Add9~7\ = CARRY((\KEY[3]~input_o\ & (\C1|SQ_Y1\(3) & !\C1|Add9~5\)) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y1\(3)) # (!\C1|Add9~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y1\(3),
	datad => VCC,
	cin => \C1|Add9~5\,
	combout => \C1|Add9~6_combout\,
	cout => \C1|Add9~7\);

-- Location: LCCOMB_X29_Y18_N0
\C1|SQ_Y1[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[3]~4_combout\ = !\C1|Add9~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add9~6_combout\,
	combout => \C1|SQ_Y1[3]~4_combout\);

-- Location: FF_X29_Y18_N1
\C1|SQ_Y1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_Y1[3]~4_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(3));

-- Location: LCCOMB_X29_Y18_N12
\C1|Add9~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~8_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y1\(4) $ (!\C1|Add9~7\)))) # (GND)
-- \C1|Add9~9\ = CARRY((\KEY[3]~input_o\ & ((\C1|SQ_Y1\(4)) # (!\C1|Add9~7\))) # (!\KEY[3]~input_o\ & (\C1|SQ_Y1\(4) & !\C1|Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|Add9~7\,
	combout => \C1|Add9~8_combout\,
	cout => \C1|Add9~9\);

-- Location: FF_X29_Y18_N13
\C1|SQ_Y1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add9~8_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(4));

-- Location: LCCOMB_X29_Y18_N14
\C1|Add9~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~10_combout\ = (\KEY[3]~input_o\ & ((\C1|SQ_Y1\(5) & (!\C1|Add9~9\)) # (!\C1|SQ_Y1\(5) & (\C1|Add9~9\ & VCC)))) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y1\(5) & ((\C1|Add9~9\) # (GND))) # (!\C1|SQ_Y1\(5) & (!\C1|Add9~9\))))
-- \C1|Add9~11\ = CARRY((\KEY[3]~input_o\ & (\C1|SQ_Y1\(5) & !\C1|Add9~9\)) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y1\(5)) # (!\C1|Add9~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y1\(5),
	datad => VCC,
	cin => \C1|Add9~9\,
	combout => \C1|Add9~10_combout\,
	cout => \C1|Add9~11\);

-- Location: LCCOMB_X29_Y18_N26
\C1|SQ_Y1[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y1[5]~3_combout\ = !\C1|Add9~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add9~10_combout\,
	combout => \C1|SQ_Y1[5]~3_combout\);

-- Location: FF_X29_Y18_N27
\C1|SQ_Y1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_Y1[5]~3_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(5));

-- Location: LCCOMB_X29_Y18_N16
\C1|Add9~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~12_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y1\(6) $ (!\C1|Add9~11\)))) # (GND)
-- \C1|Add9~13\ = CARRY((\KEY[3]~input_o\ & ((\C1|SQ_Y1\(6)) # (!\C1|Add9~11\))) # (!\KEY[3]~input_o\ & (\C1|SQ_Y1\(6) & !\C1|Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|Add9~11\,
	combout => \C1|Add9~12_combout\,
	cout => \C1|Add9~13\);

-- Location: FF_X29_Y18_N17
\C1|SQ_Y1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add9~12_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(6));

-- Location: LCCOMB_X29_Y18_N18
\C1|Add9~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~14_combout\ = (\KEY[3]~input_o\ & ((\C1|SQ_Y1\(7) & (\C1|Add9~13\ & VCC)) # (!\C1|SQ_Y1\(7) & (!\C1|Add9~13\)))) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y1\(7) & (!\C1|Add9~13\)) # (!\C1|SQ_Y1\(7) & ((\C1|Add9~13\) # (GND)))))
-- \C1|Add9~15\ = CARRY((\KEY[3]~input_o\ & (!\C1|SQ_Y1\(7) & !\C1|Add9~13\)) # (!\KEY[3]~input_o\ & ((!\C1|Add9~13\) # (!\C1|SQ_Y1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|Add9~13\,
	combout => \C1|Add9~14_combout\,
	cout => \C1|Add9~15\);

-- Location: FF_X29_Y18_N19
\C1|SQ_Y1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add9~14_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(7));

-- Location: LCCOMB_X29_Y18_N20
\C1|Add9~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~16_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y1\(8) $ (\C1|Add9~15\)))) # (GND)
-- \C1|Add9~17\ = CARRY((\KEY[3]~input_o\ & ((!\C1|Add9~15\) # (!\C1|SQ_Y1\(8)))) # (!\KEY[3]~input_o\ & (!\C1|SQ_Y1\(8) & !\C1|Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y1\(8),
	datad => VCC,
	cin => \C1|Add9~15\,
	combout => \C1|Add9~16_combout\,
	cout => \C1|Add9~17\);

-- Location: LCCOMB_X29_Y18_N24
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

-- Location: FF_X29_Y18_N25
\C1|SQ_Y1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_Y1[8]~2_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(8));

-- Location: LCCOMB_X29_Y18_N22
\C1|Add9~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add9~18_combout\ = \KEY[3]~input_o\ $ (\C1|Add9~17\ $ (\C1|SQ_Y1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datad => \C1|SQ_Y1\(9),
	cin => \C1|Add9~17\,
	combout => \C1|Add9~18_combout\);

-- Location: FF_X29_Y18_N23
\C1|SQ_Y1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add9~18_combout\,
	ena => \C1|SQ_Y1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y1\(9));

-- Location: LCCOMB_X28_Y18_N6
\C1|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~1_cout\ = CARRY((!\C1|SQ_Y1\(0) & \C1|VPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(0),
	datab => \C1|VPOS\(0),
	datad => VCC,
	cout => \C1|LessThan2~1_cout\);

-- Location: LCCOMB_X28_Y18_N8
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

-- Location: LCCOMB_X28_Y18_N10
\C1|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~5_cout\ = CARRY((\C1|VPOS\(2) & ((\C1|SQ_Y1\(2)) # (!\C1|LessThan2~3_cout\))) # (!\C1|VPOS\(2) & (\C1|SQ_Y1\(2) & !\C1|LessThan2~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	cin => \C1|LessThan2~3_cout\,
	cout => \C1|LessThan2~5_cout\);

-- Location: LCCOMB_X28_Y18_N12
\C1|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~7_cout\ = CARRY((\C1|VPOS\(3) & (!\C1|SQ_Y1\(3) & !\C1|LessThan2~5_cout\)) # (!\C1|VPOS\(3) & ((!\C1|LessThan2~5_cout\) # (!\C1|SQ_Y1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|SQ_Y1\(3),
	datad => VCC,
	cin => \C1|LessThan2~5_cout\,
	cout => \C1|LessThan2~7_cout\);

-- Location: LCCOMB_X28_Y18_N14
\C1|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~9_cout\ = CARRY((\C1|VPOS\(4) & ((!\C1|LessThan2~7_cout\) # (!\C1|SQ_Y1\(4)))) # (!\C1|VPOS\(4) & (!\C1|SQ_Y1\(4) & !\C1|LessThan2~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|LessThan2~7_cout\,
	cout => \C1|LessThan2~9_cout\);

-- Location: LCCOMB_X28_Y18_N16
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

-- Location: LCCOMB_X28_Y18_N18
\C1|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~13_cout\ = CARRY((\C1|VPOS\(6) & ((!\C1|LessThan2~11_cout\) # (!\C1|SQ_Y1\(6)))) # (!\C1|VPOS\(6) & (!\C1|SQ_Y1\(6) & !\C1|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|LessThan2~11_cout\,
	cout => \C1|LessThan2~13_cout\);

-- Location: LCCOMB_X28_Y18_N20
\C1|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~15_cout\ = CARRY((\C1|SQ_Y1\(7) & ((!\C1|LessThan2~13_cout\) # (!\C1|VPOS\(7)))) # (!\C1|SQ_Y1\(7) & (!\C1|VPOS\(7) & !\C1|LessThan2~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan2~13_cout\,
	cout => \C1|LessThan2~15_cout\);

-- Location: LCCOMB_X28_Y18_N22
\C1|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~17_cout\ = CARRY((\C1|SQ_Y1\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan2~15_cout\))) # (!\C1|SQ_Y1\(8) & (\C1|VPOS\(8) & !\C1|LessThan2~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan2~15_cout\,
	cout => \C1|LessThan2~17_cout\);

-- Location: LCCOMB_X28_Y18_N24
\C1|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan2~18_combout\ = (\C1|VPOS\(9) & ((\C1|LessThan2~17_cout\) # (!\C1|SQ_Y1\(9)))) # (!\C1|VPOS\(9) & (\C1|LessThan2~17_cout\ & !\C1|SQ_Y1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datad => \C1|SQ_Y1\(9),
	cin => \C1|LessThan2~17_cout\,
	combout => \C1|LessThan2~18_combout\);

-- Location: IOIBUF_X0_Y23_N15
\KEY[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X29_Y24_N8
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

-- Location: IOIBUF_X0_Y21_N8
\KEY[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: LCCOMB_X23_Y20_N2
\C1|SQ_X1[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[9]~0_combout\ = (!\KEY[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \KEY[1]~input_o\,
	combout => \C1|SQ_X1[9]~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\C1|SQ_X1[9]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[9]~1_combout\ = (\SW[0]~input_o\ & (!\C1|LessThan8~0_combout\ & (!\C1|LessThan9~0_combout\ & \C1|SQ_X1[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \C1|LessThan8~0_combout\,
	datac => \C1|LessThan9~0_combout\,
	datad => \C1|SQ_X1[9]~0_combout\,
	combout => \C1|SQ_X1[9]~1_combout\);

-- Location: FF_X29_Y24_N9
\C1|SQ_X1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add6~0_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(0));

-- Location: LCCOMB_X29_Y24_N10
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

-- Location: FF_X29_Y24_N11
\C1|SQ_X1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add6~2_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(1));

-- Location: LCCOMB_X29_Y24_N12
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

-- Location: LCCOMB_X30_Y23_N22
\C1|SQ_X1[2]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[2]~5_combout\ = !\C1|Add6~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~4_combout\,
	combout => \C1|SQ_X1[2]~5_combout\);

-- Location: FF_X30_Y23_N23
\C1|SQ_X1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_X1[2]~5_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(2));

-- Location: LCCOMB_X29_Y24_N14
\C1|Add6~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~6_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X1\(3) & ((\C1|Add6~5\) # (GND))) # (!\C1|SQ_X1\(3) & (!\C1|Add6~5\)))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(3) & (!\C1|Add6~5\)) # (!\C1|SQ_X1\(3) & (\C1|Add6~5\ & VCC))))
-- \C1|Add6~7\ = CARRY((\KEY[1]~input_o\ & ((\C1|SQ_X1\(3)) # (!\C1|Add6~5\))) # (!\KEY[1]~input_o\ & (\C1|SQ_X1\(3) & !\C1|Add6~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|Add6~5\,
	combout => \C1|Add6~6_combout\,
	cout => \C1|Add6~7\);

-- Location: LCCOMB_X30_Y23_N20
\C1|SQ_X1[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[3]~4_combout\ = !\C1|Add6~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~6_combout\,
	combout => \C1|SQ_X1[3]~4_combout\);

-- Location: FF_X30_Y23_N21
\C1|SQ_X1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_X1[3]~4_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(3));

-- Location: LCCOMB_X29_Y24_N16
\C1|Add6~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~8_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X1\(4) $ (\C1|Add6~7\)))) # (GND)
-- \C1|Add6~9\ = CARRY((\KEY[1]~input_o\ & (\C1|SQ_X1\(4) & !\C1|Add6~7\)) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(4)) # (!\C1|Add6~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add6~7\,
	combout => \C1|Add6~8_combout\,
	cout => \C1|Add6~9\);

-- Location: FF_X29_Y24_N17
\C1|SQ_X1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add6~8_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(4));

-- Location: LCCOMB_X29_Y24_N18
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

-- Location: LCCOMB_X30_Y23_N26
\C1|SQ_X1[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[5]~3_combout\ = !\C1|Add6~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~10_combout\,
	combout => \C1|SQ_X1[5]~3_combout\);

-- Location: FF_X30_Y23_N27
\C1|SQ_X1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_X1[5]~3_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(5));

-- Location: LCCOMB_X29_Y24_N20
\C1|Add6~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~12_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X1\(6) $ (\C1|Add6~11\)))) # (GND)
-- \C1|Add6~13\ = CARRY((\KEY[1]~input_o\ & (\C1|SQ_X1\(6) & !\C1|Add6~11\)) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(6)) # (!\C1|Add6~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add6~11\,
	combout => \C1|Add6~12_combout\,
	cout => \C1|Add6~13\);

-- Location: FF_X29_Y24_N21
\C1|SQ_X1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add6~12_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(6));

-- Location: LCCOMB_X29_Y24_N22
\C1|Add6~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~14_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X1\(7) & (!\C1|Add6~13\)) # (!\C1|SQ_X1\(7) & ((\C1|Add6~13\) # (GND))))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X1\(7) & (\C1|Add6~13\ & VCC)) # (!\C1|SQ_X1\(7) & (!\C1|Add6~13\))))
-- \C1|Add6~15\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add6~13\) # (!\C1|SQ_X1\(7)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X1\(7) & !\C1|Add6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add6~13\,
	combout => \C1|Add6~14_combout\,
	cout => \C1|Add6~15\);

-- Location: FF_X29_Y24_N23
\C1|SQ_X1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add6~14_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(7));

-- Location: LCCOMB_X29_Y24_N24
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

-- Location: LCCOMB_X30_Y23_N24
\C1|SQ_X1[8]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~2_combout\ = !\C1|Add6~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~16_combout\,
	combout => \C1|SQ_X1[8]~2_combout\);

-- Location: FF_X30_Y23_N25
\C1|SQ_X1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_X1[8]~2_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(8));

-- Location: LCCOMB_X29_Y24_N26
\C1|Add6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add6~18_combout\ = \KEY[1]~input_o\ $ (\C1|Add6~17\ $ (!\C1|SQ_X1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datad => \C1|SQ_X1\(9),
	cin => \C1|Add6~17\,
	combout => \C1|Add6~18_combout\);

-- Location: FF_X29_Y24_N27
\C1|SQ_X1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add6~18_combout\,
	ena => \C1|SQ_X1[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X1\(9));

-- Location: LCCOMB_X28_Y23_N0
\C1|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_cout\ = CARRY((\C1|HPOS\(0) & !\C1|SQ_X1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|SQ_X1\(0),
	datad => VCC,
	cout => \C1|LessThan0~1_cout\);

-- Location: LCCOMB_X28_Y23_N2
\C1|LessThan0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~3_cout\ = CARRY((\C1|SQ_X1\(1) & ((!\C1|LessThan0~1_cout\) # (!\C1|HPOS\(1)))) # (!\C1|SQ_X1\(1) & (!\C1|HPOS\(1) & !\C1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan0~1_cout\,
	cout => \C1|LessThan0~3_cout\);

-- Location: LCCOMB_X28_Y23_N4
\C1|LessThan0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~5_cout\ = CARRY((\C1|SQ_X1\(2) & ((\C1|HPOS\(2)) # (!\C1|LessThan0~3_cout\))) # (!\C1|SQ_X1\(2) & (\C1|HPOS\(2) & !\C1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan0~3_cout\,
	cout => \C1|LessThan0~5_cout\);

-- Location: LCCOMB_X28_Y23_N6
\C1|LessThan0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~7_cout\ = CARRY((\C1|HPOS\(3) & (!\C1|SQ_X1\(3) & !\C1|LessThan0~5_cout\)) # (!\C1|HPOS\(3) & ((!\C1|LessThan0~5_cout\) # (!\C1|SQ_X1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|LessThan0~5_cout\,
	cout => \C1|LessThan0~7_cout\);

-- Location: LCCOMB_X28_Y23_N8
\C1|LessThan0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~9_cout\ = CARRY((\C1|HPOS\(4) & ((!\C1|LessThan0~7_cout\) # (!\C1|SQ_X1\(4)))) # (!\C1|HPOS\(4) & (!\C1|SQ_X1\(4) & !\C1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|LessThan0~7_cout\,
	cout => \C1|LessThan0~9_cout\);

-- Location: LCCOMB_X28_Y23_N10
\C1|LessThan0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~11_cout\ = CARRY((\C1|HPOS\(5) & (!\C1|SQ_X1\(5) & !\C1|LessThan0~9_cout\)) # (!\C1|HPOS\(5) & ((!\C1|LessThan0~9_cout\) # (!\C1|SQ_X1\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|LessThan0~9_cout\,
	cout => \C1|LessThan0~11_cout\);

-- Location: LCCOMB_X28_Y23_N12
\C1|LessThan0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~13_cout\ = CARRY((\C1|SQ_X1\(6) & (\C1|HPOS\(6) & !\C1|LessThan0~11_cout\)) # (!\C1|SQ_X1\(6) & ((\C1|HPOS\(6)) # (!\C1|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan0~11_cout\,
	cout => \C1|LessThan0~13_cout\);

-- Location: LCCOMB_X28_Y23_N14
\C1|LessThan0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~15_cout\ = CARRY((\C1|SQ_X1\(7) & ((!\C1|LessThan0~13_cout\) # (!\C1|HPOS\(7)))) # (!\C1|SQ_X1\(7) & (!\C1|HPOS\(7) & !\C1|LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan0~13_cout\,
	cout => \C1|LessThan0~15_cout\);

-- Location: LCCOMB_X28_Y23_N16
\C1|LessThan0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~17_cout\ = CARRY((\C1|SQ_X1\(8) & ((\C1|HPOS\(8)) # (!\C1|LessThan0~15_cout\))) # (!\C1|SQ_X1\(8) & (\C1|HPOS\(8) & !\C1|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan0~15_cout\,
	cout => \C1|LessThan0~17_cout\);

-- Location: LCCOMB_X28_Y23_N18
\C1|LessThan0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~18_combout\ = (\C1|HPOS\(9) & ((\C1|LessThan0~17_cout\) # (!\C1|SQ_X1\(9)))) # (!\C1|HPOS\(9) & (\C1|LessThan0~17_cout\ & !\C1|SQ_X1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => \C1|SQ_X1\(9),
	cin => \C1|LessThan0~17_cout\,
	combout => \C1|LessThan0~18_combout\);

-- Location: LCCOMB_X26_Y19_N10
\C1|DRAW1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~1_combout\ = (\C1|LessThan2~18_combout\ & \C1|LessThan0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|LessThan2~18_combout\,
	datad => \C1|LessThan0~18_combout\,
	combout => \C1|DRAW1~1_combout\);

-- Location: LCCOMB_X23_Y20_N4
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

-- Location: IOIBUF_X0_Y27_N1
\SW[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X23_Y20_N30
\C1|SQ_X2[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[9]~0_combout\ = (!\C1|LessThan9~0_combout\ & (\SW[1]~input_o\ & (!\C1|LessThan8~0_combout\ & \C1|SQ_X1[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan9~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \C1|LessThan8~0_combout\,
	datad => \C1|SQ_X1[9]~0_combout\,
	combout => \C1|SQ_X2[9]~0_combout\);

-- Location: FF_X23_Y20_N5
\C1|SQ_X2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~0_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(0));

-- Location: LCCOMB_X23_Y20_N6
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

-- Location: FF_X23_Y20_N7
\C1|SQ_X2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~2_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(1));

-- Location: LCCOMB_X23_Y20_N8
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

-- Location: FF_X23_Y20_N9
\C1|SQ_X2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~4_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(2));

-- Location: LCCOMB_X23_Y20_N10
\C1|Add10~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~6_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X2\(3) & (!\C1|Add10~5\)) # (!\C1|SQ_X2\(3) & ((\C1|Add10~5\) # (GND))))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(3) & (\C1|Add10~5\ & VCC)) # (!\C1|SQ_X2\(3) & (!\C1|Add10~5\))))
-- \C1|Add10~7\ = CARRY((\KEY[1]~input_o\ & ((!\C1|Add10~5\) # (!\C1|SQ_X2\(3)))) # (!\KEY[1]~input_o\ & (!\C1|SQ_X2\(3) & !\C1|Add10~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|Add10~5\,
	combout => \C1|Add10~6_combout\,
	cout => \C1|Add10~7\);

-- Location: FF_X23_Y20_N11
\C1|SQ_X2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~6_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(3));

-- Location: LCCOMB_X23_Y20_N12
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

-- Location: LCCOMB_X23_Y20_N24
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

-- Location: FF_X23_Y20_N25
\C1|SQ_X2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_X2[4]~3_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(4));

-- Location: LCCOMB_X23_Y20_N14
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

-- Location: FF_X23_Y20_N15
\C1|SQ_X2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~10_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(5));

-- Location: LCCOMB_X23_Y20_N16
\C1|Add10~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~12_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X2\(6) $ (\C1|Add10~11\)))) # (GND)
-- \C1|Add10~13\ = CARRY((\KEY[1]~input_o\ & (\C1|SQ_X2\(6) & !\C1|Add10~11\)) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(6)) # (!\C1|Add10~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add10~11\,
	combout => \C1|Add10~12_combout\,
	cout => \C1|Add10~13\);

-- Location: FF_X23_Y20_N17
\C1|SQ_X2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~12_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(6));

-- Location: LCCOMB_X23_Y20_N18
\C1|Add10~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~14_combout\ = (\KEY[1]~input_o\ & ((\C1|SQ_X2\(7) & ((\C1|Add10~13\) # (GND))) # (!\C1|SQ_X2\(7) & (!\C1|Add10~13\)))) # (!\KEY[1]~input_o\ & ((\C1|SQ_X2\(7) & (!\C1|Add10~13\)) # (!\C1|SQ_X2\(7) & (\C1|Add10~13\ & VCC))))
-- \C1|Add10~15\ = CARRY((\KEY[1]~input_o\ & ((\C1|SQ_X2\(7)) # (!\C1|Add10~13\))) # (!\KEY[1]~input_o\ & (\C1|SQ_X2\(7) & !\C1|Add10~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add10~13\,
	combout => \C1|Add10~14_combout\,
	cout => \C1|Add10~15\);

-- Location: LCCOMB_X23_Y20_N26
\C1|SQ_X2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[7]~2_combout\ = !\C1|Add10~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add10~14_combout\,
	combout => \C1|SQ_X2[7]~2_combout\);

-- Location: FF_X23_Y20_N27
\C1|SQ_X2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_X2[7]~2_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(7));

-- Location: LCCOMB_X23_Y20_N20
\C1|Add10~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~16_combout\ = ((\KEY[1]~input_o\ $ (\C1|SQ_X2\(8) $ (!\C1|Add10~15\)))) # (GND)
-- \C1|Add10~17\ = CARRY((\KEY[1]~input_o\ & (!\C1|SQ_X2\(8) & !\C1|Add10~15\)) # (!\KEY[1]~input_o\ & ((!\C1|Add10~15\) # (!\C1|SQ_X2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[1]~input_o\,
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add10~15\,
	combout => \C1|Add10~16_combout\,
	cout => \C1|Add10~17\);

-- Location: LCCOMB_X23_Y20_N0
\C1|SQ_X2[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[8]~1_combout\ = !\C1|Add10~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add10~16_combout\,
	combout => \C1|SQ_X2[8]~1_combout\);

-- Location: FF_X23_Y20_N1
\C1|SQ_X2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_X2[8]~1_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(8));

-- Location: LCCOMB_X23_Y20_N22
\C1|Add10~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add10~18_combout\ = \C1|SQ_X2\(9) $ (\C1|Add10~17\ $ (!\KEY[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datad => \KEY[1]~input_o\,
	cin => \C1|Add10~17\,
	combout => \C1|Add10~18_combout\);

-- Location: FF_X23_Y20_N23
\C1|SQ_X2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add10~18_combout\,
	ena => \C1|SQ_X2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_X2\(9));

-- Location: LCCOMB_X23_Y18_N10
\C1|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~1_cout\ = CARRY((\C1|HPOS\(0) & !\C1|SQ_X2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|SQ_X2\(0),
	datad => VCC,
	cout => \C1|LessThan4~1_cout\);

-- Location: LCCOMB_X23_Y18_N12
\C1|LessThan4~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~3_cout\ = CARRY((\C1|SQ_X2\(1) & ((!\C1|LessThan4~1_cout\) # (!\C1|HPOS\(1)))) # (!\C1|SQ_X2\(1) & (!\C1|HPOS\(1) & !\C1|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan4~1_cout\,
	cout => \C1|LessThan4~3_cout\);

-- Location: LCCOMB_X23_Y18_N14
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

-- Location: LCCOMB_X23_Y18_N16
\C1|LessThan4~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~7_cout\ = CARRY((\C1|SQ_X2\(3) & ((!\C1|LessThan4~5_cout\) # (!\C1|HPOS\(3)))) # (!\C1|SQ_X2\(3) & (!\C1|HPOS\(3) & !\C1|LessThan4~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan4~5_cout\,
	cout => \C1|LessThan4~7_cout\);

-- Location: LCCOMB_X23_Y18_N18
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

-- Location: LCCOMB_X23_Y18_N20
\C1|LessThan4~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~11_cout\ = CARRY((\C1|HPOS\(5) & (\C1|SQ_X2\(5) & !\C1|LessThan4~9_cout\)) # (!\C1|HPOS\(5) & ((\C1|SQ_X2\(5)) # (!\C1|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|LessThan4~9_cout\,
	cout => \C1|LessThan4~11_cout\);

-- Location: LCCOMB_X23_Y18_N22
\C1|LessThan4~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~13_cout\ = CARRY((\C1|HPOS\(6) & ((!\C1|LessThan4~11_cout\) # (!\C1|SQ_X2\(6)))) # (!\C1|HPOS\(6) & (!\C1|SQ_X2\(6) & !\C1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|LessThan4~11_cout\,
	cout => \C1|LessThan4~13_cout\);

-- Location: LCCOMB_X23_Y18_N24
\C1|LessThan4~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~15_cout\ = CARRY((\C1|SQ_X2\(7) & (!\C1|HPOS\(7) & !\C1|LessThan4~13_cout\)) # (!\C1|SQ_X2\(7) & ((!\C1|LessThan4~13_cout\) # (!\C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan4~13_cout\,
	cout => \C1|LessThan4~15_cout\);

-- Location: LCCOMB_X23_Y18_N26
\C1|LessThan4~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~17_cout\ = CARRY((\C1|HPOS\(8) & ((\C1|SQ_X2\(8)) # (!\C1|LessThan4~15_cout\))) # (!\C1|HPOS\(8) & (\C1|SQ_X2\(8) & !\C1|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|LessThan4~15_cout\,
	cout => \C1|LessThan4~17_cout\);

-- Location: LCCOMB_X23_Y18_N28
\C1|LessThan4~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~18_combout\ = (\C1|HPOS\(9) & ((\C1|LessThan4~17_cout\) # (!\C1|SQ_X2\(9)))) # (!\C1|HPOS\(9) & (!\C1|SQ_X2\(9) & \C1|LessThan4~17_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001010110010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|SQ_X2\(9),
	cin => \C1|LessThan4~17_cout\,
	combout => \C1|LessThan4~18_combout\);

-- Location: LCCOMB_X27_Y18_N10
\C1|Add13~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~0_combout\ = \C1|SQ_Y2\(0) $ (VCC)
-- \C1|Add13~1\ = CARRY(\C1|SQ_Y2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(0),
	datad => VCC,
	combout => \C1|Add13~0_combout\,
	cout => \C1|Add13~1\);

-- Location: LCCOMB_X27_Y18_N8
\C1|SQ_Y2[9]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[9]~0_combout\ = (\SW[1]~input_o\ & (!\C1|LessThan8~0_combout\ & (!\C1|LessThan9~0_combout\ & \C1|SQ_Y1[9]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \C1|LessThan8~0_combout\,
	datac => \C1|LessThan9~0_combout\,
	datad => \C1|SQ_Y1[9]~0_combout\,
	combout => \C1|SQ_Y2[9]~0_combout\);

-- Location: FF_X27_Y18_N11
\C1|SQ_Y2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~0_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(0));

-- Location: LCCOMB_X27_Y18_N12
\C1|Add13~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~2_combout\ = (\KEY[3]~input_o\ & ((\C1|SQ_Y2\(1) & (\C1|Add13~1\ & VCC)) # (!\C1|SQ_Y2\(1) & (!\C1|Add13~1\)))) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y2\(1) & (!\C1|Add13~1\)) # (!\C1|SQ_Y2\(1) & ((\C1|Add13~1\) # (GND)))))
-- \C1|Add13~3\ = CARRY((\KEY[3]~input_o\ & (!\C1|SQ_Y2\(1) & !\C1|Add13~1\)) # (!\KEY[3]~input_o\ & ((!\C1|Add13~1\) # (!\C1|SQ_Y2\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cin => \C1|Add13~1\,
	combout => \C1|Add13~2_combout\,
	cout => \C1|Add13~3\);

-- Location: FF_X27_Y18_N13
\C1|SQ_Y2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~2_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(1));

-- Location: LCCOMB_X27_Y18_N14
\C1|Add13~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~4_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y2\(2) $ (\C1|Add13~3\)))) # (GND)
-- \C1|Add13~5\ = CARRY((\KEY[3]~input_o\ & (\C1|SQ_Y2\(2) & !\C1|Add13~3\)) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y2\(2)) # (!\C1|Add13~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|Add13~3\,
	combout => \C1|Add13~4_combout\,
	cout => \C1|Add13~5\);

-- Location: FF_X27_Y18_N15
\C1|SQ_Y2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~4_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(2));

-- Location: LCCOMB_X27_Y18_N16
\C1|Add13~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~6_combout\ = (\KEY[3]~input_o\ & ((\C1|SQ_Y2\(3) & (\C1|Add13~5\ & VCC)) # (!\C1|SQ_Y2\(3) & (!\C1|Add13~5\)))) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y2\(3) & (!\C1|Add13~5\)) # (!\C1|SQ_Y2\(3) & ((\C1|Add13~5\) # (GND)))))
-- \C1|Add13~7\ = CARRY((\KEY[3]~input_o\ & (!\C1|SQ_Y2\(3) & !\C1|Add13~5\)) # (!\KEY[3]~input_o\ & ((!\C1|Add13~5\) # (!\C1|SQ_Y2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(3),
	datad => VCC,
	cin => \C1|Add13~5\,
	combout => \C1|Add13~6_combout\,
	cout => \C1|Add13~7\);

-- Location: FF_X27_Y18_N17
\C1|SQ_Y2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~6_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(3));

-- Location: LCCOMB_X27_Y18_N18
\C1|Add13~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~8_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y2\(4) $ (\C1|Add13~7\)))) # (GND)
-- \C1|Add13~9\ = CARRY((\KEY[3]~input_o\ & ((!\C1|Add13~7\) # (!\C1|SQ_Y2\(4)))) # (!\KEY[3]~input_o\ & (!\C1|SQ_Y2\(4) & !\C1|Add13~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(4),
	datad => VCC,
	cin => \C1|Add13~7\,
	combout => \C1|Add13~8_combout\,
	cout => \C1|Add13~9\);

-- Location: LCCOMB_X27_Y18_N4
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

-- Location: FF_X27_Y18_N5
\C1|SQ_Y2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_Y2[4]~3_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(4));

-- Location: LCCOMB_X27_Y18_N20
\C1|Add13~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~10_combout\ = (\KEY[3]~input_o\ & ((\C1|SQ_Y2\(5) & (\C1|Add13~9\ & VCC)) # (!\C1|SQ_Y2\(5) & (!\C1|Add13~9\)))) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y2\(5) & (!\C1|Add13~9\)) # (!\C1|SQ_Y2\(5) & ((\C1|Add13~9\) # (GND)))))
-- \C1|Add13~11\ = CARRY((\KEY[3]~input_o\ & (!\C1|SQ_Y2\(5) & !\C1|Add13~9\)) # (!\KEY[3]~input_o\ & ((!\C1|Add13~9\) # (!\C1|SQ_Y2\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(5),
	datad => VCC,
	cin => \C1|Add13~9\,
	combout => \C1|Add13~10_combout\,
	cout => \C1|Add13~11\);

-- Location: FF_X27_Y18_N21
\C1|SQ_Y2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~10_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(5));

-- Location: LCCOMB_X27_Y18_N22
\C1|Add13~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~12_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y2\(6) $ (!\C1|Add13~11\)))) # (GND)
-- \C1|Add13~13\ = CARRY((\KEY[3]~input_o\ & ((\C1|SQ_Y2\(6)) # (!\C1|Add13~11\))) # (!\KEY[3]~input_o\ & (\C1|SQ_Y2\(6) & !\C1|Add13~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add13~11\,
	combout => \C1|Add13~12_combout\,
	cout => \C1|Add13~13\);

-- Location: FF_X27_Y18_N23
\C1|SQ_Y2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~12_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(6));

-- Location: LCCOMB_X27_Y18_N24
\C1|Add13~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~14_combout\ = (\KEY[3]~input_o\ & ((\C1|SQ_Y2\(7) & (!\C1|Add13~13\)) # (!\C1|SQ_Y2\(7) & (\C1|Add13~13\ & VCC)))) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y2\(7) & ((\C1|Add13~13\) # (GND))) # (!\C1|SQ_Y2\(7) & (!\C1|Add13~13\))))
-- \C1|Add13~15\ = CARRY((\KEY[3]~input_o\ & (\C1|SQ_Y2\(7) & !\C1|Add13~13\)) # (!\KEY[3]~input_o\ & ((\C1|SQ_Y2\(7)) # (!\C1|Add13~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|Add13~13\,
	combout => \C1|Add13~14_combout\,
	cout => \C1|Add13~15\);

-- Location: LCCOMB_X27_Y18_N2
\C1|SQ_Y2[7]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[7]~2_combout\ = !\C1|Add13~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add13~14_combout\,
	combout => \C1|SQ_Y2[7]~2_combout\);

-- Location: FF_X27_Y18_N3
\C1|SQ_Y2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_Y2[7]~2_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(7));

-- Location: LCCOMB_X27_Y18_N26
\C1|Add13~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~16_combout\ = ((\KEY[3]~input_o\ $ (\C1|SQ_Y2\(8) $ (\C1|Add13~15\)))) # (GND)
-- \C1|Add13~17\ = CARRY((\KEY[3]~input_o\ & ((!\C1|Add13~15\) # (!\C1|SQ_Y2\(8)))) # (!\KEY[3]~input_o\ & (!\C1|SQ_Y2\(8) & !\C1|Add13~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datab => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add13~15\,
	combout => \C1|Add13~16_combout\,
	cout => \C1|Add13~17\);

-- Location: LCCOMB_X27_Y18_N0
\C1|SQ_Y2[8]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|SQ_Y2[8]~1_combout\ = !\C1|Add13~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add13~16_combout\,
	combout => \C1|SQ_Y2[8]~1_combout\);

-- Location: FF_X27_Y18_N1
\C1|SQ_Y2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|SQ_Y2[8]~1_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(8));

-- Location: LCCOMB_X27_Y18_N28
\C1|Add13~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add13~18_combout\ = \KEY[3]~input_o\ $ (\C1|Add13~17\ $ (\C1|SQ_Y2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[3]~input_o\,
	datad => \C1|SQ_Y2\(9),
	cin => \C1|Add13~17\,
	combout => \C1|Add13~18_combout\);

-- Location: FF_X27_Y18_N29
\C1|SQ_Y2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|Add13~18_combout\,
	ena => \C1|SQ_Y2[9]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|SQ_Y2\(9));

-- Location: LCCOMB_X24_Y17_N6
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

-- Location: LCCOMB_X24_Y17_N8
\C1|LessThan6~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~3_cout\ = CARRY((\C1|VPOS\(1) & (\C1|SQ_Y2\(1) & !\C1|LessThan6~1_cout\)) # (!\C1|VPOS\(1) & ((\C1|SQ_Y2\(1)) # (!\C1|LessThan6~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cin => \C1|LessThan6~1_cout\,
	cout => \C1|LessThan6~3_cout\);

-- Location: LCCOMB_X24_Y17_N10
\C1|LessThan6~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~5_cout\ = CARRY((\C1|VPOS\(2) & ((!\C1|LessThan6~3_cout\) # (!\C1|SQ_Y2\(2)))) # (!\C1|VPOS\(2) & (!\C1|SQ_Y2\(2) & !\C1|LessThan6~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	cin => \C1|LessThan6~3_cout\,
	cout => \C1|LessThan6~5_cout\);

-- Location: LCCOMB_X24_Y17_N12
\C1|LessThan6~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~7_cout\ = CARRY((\C1|SQ_Y2\(3) & ((!\C1|LessThan6~5_cout\) # (!\C1|VPOS\(3)))) # (!\C1|SQ_Y2\(3) & (!\C1|VPOS\(3) & !\C1|LessThan6~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan6~5_cout\,
	cout => \C1|LessThan6~7_cout\);

-- Location: LCCOMB_X24_Y17_N14
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

-- Location: LCCOMB_X24_Y17_N16
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

-- Location: LCCOMB_X24_Y17_N18
\C1|LessThan6~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~13_cout\ = CARRY((\C1|SQ_Y2\(6) & (\C1|VPOS\(6) & !\C1|LessThan6~11_cout\)) # (!\C1|SQ_Y2\(6) & ((\C1|VPOS\(6)) # (!\C1|LessThan6~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(6),
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan6~11_cout\,
	cout => \C1|LessThan6~13_cout\);

-- Location: LCCOMB_X24_Y17_N20
\C1|LessThan6~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~15_cout\ = CARRY((\C1|SQ_Y2\(7) & (!\C1|VPOS\(7) & !\C1|LessThan6~13_cout\)) # (!\C1|SQ_Y2\(7) & ((!\C1|LessThan6~13_cout\) # (!\C1|VPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datab => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|LessThan6~13_cout\,
	cout => \C1|LessThan6~15_cout\);

-- Location: LCCOMB_X24_Y17_N22
\C1|LessThan6~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~17_cout\ = CARRY((\C1|SQ_Y2\(8) & ((\C1|VPOS\(8)) # (!\C1|LessThan6~15_cout\))) # (!\C1|SQ_Y2\(8) & (\C1|VPOS\(8) & !\C1|LessThan6~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan6~15_cout\,
	cout => \C1|LessThan6~17_cout\);

-- Location: LCCOMB_X24_Y17_N24
\C1|LessThan6~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan6~18_combout\ = (\C1|SQ_Y2\(9) & (\C1|LessThan6~17_cout\ & \C1|VPOS\(9))) # (!\C1|SQ_Y2\(9) & ((\C1|LessThan6~17_cout\) # (\C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(9),
	datad => \C1|VPOS\(9),
	cin => \C1|LessThan6~17_cout\,
	combout => \C1|LessThan6~18_combout\);

-- Location: LCCOMB_X26_Y19_N24
\C1|DRAW2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~1_combout\ = (\C1|LessThan4~18_combout\ & \C1|LessThan6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan4~18_combout\,
	datad => \C1|LessThan6~18_combout\,
	combout => \C1|DRAW2~1_combout\);

-- Location: LCCOMB_X24_Y19_N8
\C1|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~0_combout\ = (\C1|SQ_Y2\(3) & (\C1|SQ_Y2\(2) $ (VCC))) # (!\C1|SQ_Y2\(3) & (\C1|SQ_Y2\(2) & VCC))
-- \C1|Add3~1\ = CARRY((\C1|SQ_Y2\(3) & \C1|SQ_Y2\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(3),
	datab => \C1|SQ_Y2\(2),
	datad => VCC,
	combout => \C1|Add3~0_combout\,
	cout => \C1|Add3~1\);

-- Location: LCCOMB_X24_Y19_N10
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

-- Location: LCCOMB_X24_Y19_N12
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

-- Location: LCCOMB_X24_Y19_N14
\C1|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~6_combout\ = (\C1|SQ_Y2\(6) & (\C1|Add3~5\ & VCC)) # (!\C1|SQ_Y2\(6) & (!\C1|Add3~5\))
-- \C1|Add3~7\ = CARRY((!\C1|SQ_Y2\(6) & !\C1|Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(6),
	datad => VCC,
	cin => \C1|Add3~5\,
	combout => \C1|Add3~6_combout\,
	cout => \C1|Add3~7\);

-- Location: LCCOMB_X24_Y19_N16
\C1|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~8_combout\ = (\C1|SQ_Y2\(7) & (!\C1|Add3~7\ & VCC)) # (!\C1|SQ_Y2\(7) & (\C1|Add3~7\ $ (GND)))
-- \C1|Add3~9\ = CARRY((!\C1|SQ_Y2\(7) & !\C1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(7),
	datad => VCC,
	cin => \C1|Add3~7\,
	combout => \C1|Add3~8_combout\,
	cout => \C1|Add3~9\);

-- Location: LCCOMB_X24_Y19_N18
\C1|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~10_combout\ = (\C1|SQ_Y2\(8) & ((\C1|Add3~9\) # (GND))) # (!\C1|SQ_Y2\(8) & (!\C1|Add3~9\))
-- \C1|Add3~11\ = CARRY((\C1|SQ_Y2\(8)) # (!\C1|Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y2\(8),
	datad => VCC,
	cin => \C1|Add3~9\,
	combout => \C1|Add3~10_combout\,
	cout => \C1|Add3~11\);

-- Location: LCCOMB_X24_Y19_N20
\C1|Add3~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~12_combout\ = (\C1|SQ_Y2\(9) & (\C1|Add3~11\ $ (GND))) # (!\C1|SQ_Y2\(9) & (!\C1|Add3~11\ & VCC))
-- \C1|Add3~13\ = CARRY((\C1|SQ_Y2\(9) & !\C1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y2\(9),
	datad => VCC,
	cin => \C1|Add3~11\,
	combout => \C1|Add3~12_combout\,
	cout => \C1|Add3~13\);

-- Location: LCCOMB_X24_Y19_N22
\C1|Add3~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add3~14_combout\ = \C1|Add3~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add3~13\,
	combout => \C1|Add3~14_combout\);

-- Location: LCCOMB_X23_Y19_N12
\C1|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = (\C1|SQ_X2\(2) & (\C1|SQ_X2\(3) $ (VCC))) # (!\C1|SQ_X2\(2) & (\C1|SQ_X2\(3) & VCC))
-- \C1|Add2~1\ = CARRY((\C1|SQ_X2\(2) & \C1|SQ_X2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	combout => \C1|Add2~0_combout\,
	cout => \C1|Add2~1\);

-- Location: LCCOMB_X23_Y19_N14
\C1|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~2_combout\ = (\C1|SQ_X2\(4) & ((\C1|Add2~1\) # (GND))) # (!\C1|SQ_X2\(4) & (!\C1|Add2~1\))
-- \C1|Add2~3\ = CARRY((\C1|SQ_X2\(4)) # (!\C1|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Add2~1\,
	combout => \C1|Add2~2_combout\,
	cout => \C1|Add2~3\);

-- Location: LCCOMB_X23_Y19_N16
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

-- Location: LCCOMB_X23_Y19_N18
\C1|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~6_combout\ = (\C1|SQ_X2\(6) & (\C1|Add2~5\ & VCC)) # (!\C1|SQ_X2\(6) & (!\C1|Add2~5\))
-- \C1|Add2~7\ = CARRY((!\C1|SQ_X2\(6) & !\C1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add2~5\,
	combout => \C1|Add2~6_combout\,
	cout => \C1|Add2~7\);

-- Location: LCCOMB_X23_Y19_N20
\C1|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~8_combout\ = (\C1|SQ_X2\(7) & (!\C1|Add2~7\ & VCC)) # (!\C1|SQ_X2\(7) & (\C1|Add2~7\ $ (GND)))
-- \C1|Add2~9\ = CARRY((!\C1|SQ_X2\(7) & !\C1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add2~7\,
	combout => \C1|Add2~8_combout\,
	cout => \C1|Add2~9\);

-- Location: LCCOMB_X23_Y19_N22
\C1|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~10_combout\ = (\C1|SQ_X2\(8) & ((\C1|Add2~9\) # (GND))) # (!\C1|SQ_X2\(8) & (!\C1|Add2~9\))
-- \C1|Add2~11\ = CARRY((\C1|SQ_X2\(8)) # (!\C1|Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add2~9\,
	combout => \C1|Add2~10_combout\,
	cout => \C1|Add2~11\);

-- Location: LCCOMB_X23_Y19_N24
\C1|Add2~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~12_combout\ = (\C1|SQ_X2\(9) & (\C1|Add2~11\ $ (GND))) # (!\C1|SQ_X2\(9) & (!\C1|Add2~11\ & VCC))
-- \C1|Add2~13\ = CARRY((\C1|SQ_X2\(9) & !\C1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add2~11\,
	combout => \C1|Add2~12_combout\,
	cout => \C1|Add2~13\);

-- Location: LCCOMB_X24_Y7_N6
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

-- Location: LCCOMB_X24_Y7_N8
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

-- Location: LCCOMB_X24_Y7_N10
\C1|LessThan5~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~5_cout\ = CARRY((\C1|HPOS\(2) & (!\C1|SQ_X2\(2) & !\C1|LessThan5~3_cout\)) # (!\C1|HPOS\(2) & ((!\C1|LessThan5~3_cout\) # (!\C1|SQ_X2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|LessThan5~3_cout\,
	cout => \C1|LessThan5~5_cout\);

-- Location: LCCOMB_X24_Y7_N12
\C1|LessThan5~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~7_cout\ = CARRY((\C1|Add2~0_combout\ & (\C1|HPOS\(3) & !\C1|LessThan5~5_cout\)) # (!\C1|Add2~0_combout\ & ((\C1|HPOS\(3)) # (!\C1|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan5~5_cout\,
	cout => \C1|LessThan5~7_cout\);

-- Location: LCCOMB_X24_Y7_N14
\C1|LessThan5~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~9_cout\ = CARRY((\C1|Add2~2_combout\ & ((!\C1|LessThan5~7_cout\) # (!\C1|HPOS\(4)))) # (!\C1|Add2~2_combout\ & (!\C1|HPOS\(4) & !\C1|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan5~7_cout\,
	cout => \C1|LessThan5~9_cout\);

-- Location: LCCOMB_X24_Y7_N16
\C1|LessThan5~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|Add2~4_combout\ & (\C1|HPOS\(5) & !\C1|LessThan5~9_cout\)) # (!\C1|Add2~4_combout\ & ((\C1|HPOS\(5)) # (!\C1|LessThan5~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~4_combout\,
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X24_Y7_N18
\C1|LessThan5~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~13_cout\ = CARRY((\C1|Add2~6_combout\ & ((!\C1|LessThan5~11_cout\) # (!\C1|HPOS\(6)))) # (!\C1|Add2~6_combout\ & (!\C1|HPOS\(6) & !\C1|LessThan5~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~6_combout\,
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan5~11_cout\,
	cout => \C1|LessThan5~13_cout\);

-- Location: LCCOMB_X24_Y7_N20
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

-- Location: LCCOMB_X24_Y7_N22
\C1|LessThan5~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~17_cout\ = CARRY((\C1|HPOS\(8) & (\C1|Add2~10_combout\ & !\C1|LessThan5~15_cout\)) # (!\C1|HPOS\(8) & ((\C1|Add2~10_combout\) # (!\C1|LessThan5~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|Add2~10_combout\,
	datad => VCC,
	cin => \C1|LessThan5~15_cout\,
	cout => \C1|LessThan5~17_cout\);

-- Location: LCCOMB_X24_Y7_N24
\C1|LessThan5~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~18_combout\ = (\C1|Add2~12_combout\ & ((\C1|LessThan5~17_cout\) # (!\C1|HPOS\(9)))) # (!\C1|Add2~12_combout\ & (\C1|LessThan5~17_cout\ & !\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~12_combout\,
	datad => \C1|HPOS\(9),
	cin => \C1|LessThan5~17_cout\,
	combout => \C1|LessThan5~18_combout\);

-- Location: LCCOMB_X23_Y19_N26
\C1|Add2~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add2~14_combout\ = \C1|Add2~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add2~13\,
	combout => \C1|Add2~14_combout\);

-- Location: LCCOMB_X26_Y18_N12
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

-- Location: LCCOMB_X26_Y18_N14
\C1|LessThan7~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~3_cout\ = CARRY((\C1|VPOS\(1) & ((!\C1|LessThan7~1_cout\) # (!\C1|SQ_Y2\(1)))) # (!\C1|VPOS\(1) & (!\C1|SQ_Y2\(1) & !\C1|LessThan7~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(1),
	datab => \C1|SQ_Y2\(1),
	datad => VCC,
	cin => \C1|LessThan7~1_cout\,
	cout => \C1|LessThan7~3_cout\);

-- Location: LCCOMB_X26_Y18_N16
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

-- Location: LCCOMB_X26_Y18_N18
\C1|LessThan7~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~7_cout\ = CARRY((\C1|Add3~0_combout\ & (\C1|VPOS\(3) & !\C1|LessThan7~5_cout\)) # (!\C1|Add3~0_combout\ & ((\C1|VPOS\(3)) # (!\C1|LessThan7~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~0_combout\,
	datab => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|LessThan7~5_cout\,
	cout => \C1|LessThan7~7_cout\);

-- Location: LCCOMB_X26_Y18_N20
\C1|LessThan7~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~9_cout\ = CARRY((\C1|Add3~2_combout\ & ((!\C1|LessThan7~7_cout\) # (!\C1|VPOS\(4)))) # (!\C1|Add3~2_combout\ & (!\C1|VPOS\(4) & !\C1|LessThan7~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~2_combout\,
	datab => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|LessThan7~7_cout\,
	cout => \C1|LessThan7~9_cout\);

-- Location: LCCOMB_X26_Y18_N22
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

-- Location: LCCOMB_X26_Y18_N24
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

-- Location: LCCOMB_X26_Y18_N26
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

-- Location: LCCOMB_X26_Y18_N28
\C1|LessThan7~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~17_cout\ = CARRY((\C1|VPOS\(8) & (\C1|Add3~10_combout\ & !\C1|LessThan7~15_cout\)) # (!\C1|VPOS\(8) & ((\C1|Add3~10_combout\) # (!\C1|LessThan7~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|Add3~10_combout\,
	datad => VCC,
	cin => \C1|LessThan7~15_cout\,
	cout => \C1|LessThan7~17_cout\);

-- Location: LCCOMB_X26_Y18_N30
\C1|LessThan7~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan7~18_combout\ = (\C1|Add3~12_combout\ & ((\C1|LessThan7~17_cout\) # (!\C1|VPOS\(9)))) # (!\C1|Add3~12_combout\ & (\C1|LessThan7~17_cout\ & !\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add3~12_combout\,
	datad => \C1|VPOS\(9),
	cin => \C1|LessThan7~17_cout\,
	combout => \C1|LessThan7~18_combout\);

-- Location: LCCOMB_X26_Y19_N22
\C1|DRAW2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~0_combout\ = (\C1|Add3~14_combout\ & ((\C1|LessThan5~18_combout\) # ((\C1|Add2~14_combout\)))) # (!\C1|Add3~14_combout\ & (\C1|LessThan7~18_combout\ & ((\C1|LessThan5~18_combout\) # (\C1|Add2~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add3~14_combout\,
	datab => \C1|LessThan5~18_combout\,
	datac => \C1|Add2~14_combout\,
	datad => \C1|LessThan7~18_combout\,
	combout => \C1|DRAW2~0_combout\);

-- Location: LCCOMB_X28_Y19_N14
\C1|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~0_combout\ = (\C1|SQ_Y1\(3) & (!\C1|SQ_Y1\(2) & VCC)) # (!\C1|SQ_Y1\(3) & (\C1|SQ_Y1\(2) $ (GND)))
-- \C1|Add1~1\ = CARRY((!\C1|SQ_Y1\(3) & !\C1|SQ_Y1\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(3),
	datab => \C1|SQ_Y1\(2),
	datad => VCC,
	combout => \C1|Add1~0_combout\,
	cout => \C1|Add1~1\);

-- Location: LCCOMB_X28_Y19_N16
\C1|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~2_combout\ = (\C1|SQ_Y1\(4) & (!\C1|Add1~1\)) # (!\C1|SQ_Y1\(4) & ((\C1|Add1~1\) # (GND)))
-- \C1|Add1~3\ = CARRY((!\C1|Add1~1\) # (!\C1|SQ_Y1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(4),
	datad => VCC,
	cin => \C1|Add1~1\,
	combout => \C1|Add1~2_combout\,
	cout => \C1|Add1~3\);

-- Location: LCCOMB_X28_Y19_N18
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

-- Location: LCCOMB_X28_Y19_N20
\C1|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~6_combout\ = (\C1|SQ_Y1\(6) & (\C1|Add1~5\ & VCC)) # (!\C1|SQ_Y1\(6) & (!\C1|Add1~5\))
-- \C1|Add1~7\ = CARRY((!\C1|SQ_Y1\(6) & !\C1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(6),
	datad => VCC,
	cin => \C1|Add1~5\,
	combout => \C1|Add1~6_combout\,
	cout => \C1|Add1~7\);

-- Location: LCCOMB_X28_Y19_N22
\C1|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~8_combout\ = (\C1|SQ_Y1\(7) & (\C1|Add1~7\ $ (GND))) # (!\C1|SQ_Y1\(7) & (!\C1|Add1~7\ & VCC))
-- \C1|Add1~9\ = CARRY((\C1|SQ_Y1\(7) & !\C1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_Y1\(7),
	datad => VCC,
	cin => \C1|Add1~7\,
	combout => \C1|Add1~8_combout\,
	cout => \C1|Add1~9\);

-- Location: LCCOMB_X28_Y19_N24
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

-- Location: LCCOMB_X28_Y19_N26
\C1|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~12_combout\ = (\C1|SQ_Y1\(9) & (\C1|Add1~11\ $ (GND))) # (!\C1|SQ_Y1\(9) & (!\C1|Add1~11\ & VCC))
-- \C1|Add1~13\ = CARRY((\C1|SQ_Y1\(9) & !\C1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_Y1\(9),
	datad => VCC,
	cin => \C1|Add1~11\,
	combout => \C1|Add1~12_combout\,
	cout => \C1|Add1~13\);

-- Location: LCCOMB_X28_Y19_N28
\C1|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add1~14_combout\ = \C1|Add1~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add1~13\,
	combout => \C1|Add1~14_combout\);

-- Location: LCCOMB_X30_Y23_N0
\C1|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = (\C1|SQ_X1\(2) & (!\C1|SQ_X1\(3) & VCC)) # (!\C1|SQ_X1\(2) & (\C1|SQ_X1\(3) $ (GND)))
-- \C1|Add0~1\ = CARRY((!\C1|SQ_X1\(2) & !\C1|SQ_X1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X30_Y23_N2
\C1|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|SQ_X1\(4) & (!\C1|Add0~1\)) # (!\C1|SQ_X1\(4) & ((\C1|Add0~1\) # (GND)))
-- \C1|Add0~3\ = CARRY((!\C1|Add0~1\) # (!\C1|SQ_X1\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X30_Y23_N4
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

-- Location: LCCOMB_X30_Y23_N6
\C1|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|SQ_X1\(6) & (\C1|Add0~5\ & VCC)) # (!\C1|SQ_X1\(6) & (!\C1|Add0~5\))
-- \C1|Add0~7\ = CARRY((!\C1|SQ_X1\(6) & !\C1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X30_Y23_N8
\C1|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|SQ_X1\(7) & (\C1|Add0~7\ $ (GND))) # (!\C1|SQ_X1\(7) & (!\C1|Add0~7\ & VCC))
-- \C1|Add0~9\ = CARRY((\C1|SQ_X1\(7) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X30_Y23_N10
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

-- Location: LCCOMB_X30_Y23_N12
\C1|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|SQ_X1\(9) & (\C1|Add0~11\ $ (GND))) # (!\C1|SQ_X1\(9) & (!\C1|Add0~11\ & VCC))
-- \C1|Add0~13\ = CARRY((\C1|SQ_X1\(9) & !\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X26_Y23_N4
\C1|LessThan1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~1_cout\ = CARRY((\C1|SQ_X1\(0) & !\C1|HPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(0),
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan1~1_cout\);

-- Location: LCCOMB_X26_Y23_N6
\C1|LessThan1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~3_cout\ = CARRY((\C1|SQ_X1\(1) & (\C1|HPOS\(1) & !\C1|LessThan1~1_cout\)) # (!\C1|SQ_X1\(1) & ((\C1|HPOS\(1)) # (!\C1|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan1~1_cout\,
	cout => \C1|LessThan1~3_cout\);

-- Location: LCCOMB_X26_Y23_N8
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

-- Location: LCCOMB_X26_Y23_N10
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

-- Location: LCCOMB_X26_Y23_N12
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

-- Location: LCCOMB_X26_Y23_N14
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

-- Location: LCCOMB_X26_Y23_N16
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

-- Location: LCCOMB_X26_Y23_N18
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

-- Location: LCCOMB_X26_Y23_N20
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

-- Location: LCCOMB_X26_Y23_N22
\C1|LessThan1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~18_combout\ = (\C1|HPOS\(9) & (\C1|LessThan1~17_cout\ & \C1|Add0~12_combout\)) # (!\C1|HPOS\(9) & ((\C1|LessThan1~17_cout\) # (\C1|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datad => \C1|Add0~12_combout\,
	cin => \C1|LessThan1~17_cout\,
	combout => \C1|LessThan1~18_combout\);

-- Location: LCCOMB_X30_Y23_N14
\C1|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = \C1|Add0~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\);

-- Location: LCCOMB_X29_Y20_N6
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

-- Location: LCCOMB_X29_Y20_N8
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

-- Location: LCCOMB_X29_Y20_N10
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

-- Location: LCCOMB_X29_Y20_N12
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

-- Location: LCCOMB_X29_Y20_N14
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

-- Location: LCCOMB_X29_Y20_N16
\C1|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~11_cout\ = CARRY((\C1|Add1~4_combout\ & (\C1|VPOS\(5) & !\C1|LessThan3~9_cout\)) # (!\C1|Add1~4_combout\ & ((\C1|VPOS\(5)) # (!\C1|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~4_combout\,
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|LessThan3~9_cout\,
	cout => \C1|LessThan3~11_cout\);

-- Location: LCCOMB_X29_Y20_N18
\C1|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~13_cout\ = CARRY((\C1|Add1~6_combout\ & ((!\C1|LessThan3~11_cout\) # (!\C1|VPOS\(6)))) # (!\C1|Add1~6_combout\ & (!\C1|VPOS\(6) & !\C1|LessThan3~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~6_combout\,
	datab => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|LessThan3~11_cout\,
	cout => \C1|LessThan3~13_cout\);

-- Location: LCCOMB_X29_Y20_N20
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

-- Location: LCCOMB_X29_Y20_N22
\C1|LessThan3~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~17_cout\ = CARRY((\C1|Add1~10_combout\ & ((!\C1|LessThan3~15_cout\) # (!\C1|VPOS\(8)))) # (!\C1|Add1~10_combout\ & (!\C1|VPOS\(8) & !\C1|LessThan3~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~10_combout\,
	datab => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|LessThan3~15_cout\,
	cout => \C1|LessThan3~17_cout\);

-- Location: LCCOMB_X29_Y20_N24
\C1|LessThan3~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|LessThan3~18_combout\ = (\C1|VPOS\(9) & (\C1|LessThan3~17_cout\ & \C1|Add1~12_combout\)) # (!\C1|VPOS\(9) & ((\C1|LessThan3~17_cout\) # (\C1|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => \C1|Add1~12_combout\,
	cin => \C1|LessThan3~17_cout\,
	combout => \C1|LessThan3~18_combout\);

-- Location: LCCOMB_X26_Y19_N20
\C1|DRAW1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~0_combout\ = (\C1|Add1~14_combout\ & ((\C1|LessThan1~18_combout\) # ((\C1|Add0~14_combout\)))) # (!\C1|Add1~14_combout\ & (\C1|LessThan3~18_combout\ & ((\C1|LessThan1~18_combout\) # (\C1|Add0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add1~14_combout\,
	datab => \C1|LessThan1~18_combout\,
	datac => \C1|Add0~14_combout\,
	datad => \C1|LessThan3~18_combout\,
	combout => \C1|DRAW1~0_combout\);

-- Location: LCCOMB_X26_Y19_N12
\C1|R~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (\C1|DRAW1~1_combout\ & ((\C1|DRAW1~0_combout\) # ((\C1|DRAW2~1_combout\ & \C1|DRAW2~0_combout\)))) # (!\C1|DRAW1~1_combout\ & (\C1|DRAW2~1_combout\ & (\C1|DRAW2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW1~1_combout\,
	datab => \C1|DRAW2~1_combout\,
	datac => \C1|DRAW2~0_combout\,
	datad => \C1|DRAW1~0_combout\,
	combout => \C1|R~0_combout\);

-- Location: LCCOMB_X26_Y19_N0
\C1|R~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|R~1_combout\ = (\C1|B~2_combout\ & \C1|R~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|B~2_combout\,
	datad => \C1|R~0_combout\,
	combout => \C1|R~1_combout\);

-- Location: FF_X26_Y19_N1
\C1|R[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|R~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|R\(0));

-- Location: LCCOMB_X26_Y19_N2
\C1|B~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~5_combout\ = (\C1|LessThan4~18_combout\ & (!\SW[1]~input_o\ & (\C1|DRAW2~0_combout\ & \C1|LessThan6~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan4~18_combout\,
	datab => \SW[1]~input_o\,
	datac => \C1|DRAW2~0_combout\,
	datad => \C1|LessThan6~18_combout\,
	combout => \C1|B~5_combout\);

-- Location: LCCOMB_X26_Y19_N16
\C1|B~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~3_combout\ = (\C1|DRAW1~1_combout\ & (\C1|DRAW1~0_combout\ & ((!\C1|DRAW2~0_combout\) # (!\C1|DRAW2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW1~1_combout\,
	datab => \C1|DRAW2~1_combout\,
	datac => \C1|DRAW2~0_combout\,
	datad => \C1|DRAW1~0_combout\,
	combout => \C1|B~3_combout\);

-- Location: LCCOMB_X26_Y19_N26
\C1|B~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \C1|B~4_combout\ = (\C1|B~2_combout\ & ((\C1|B~5_combout\) # ((!\SW[0]~input_o\ & \C1|B~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|B~2_combout\,
	datab => \C1|B~5_combout\,
	datac => \SW[0]~input_o\,
	datad => \C1|B~3_combout\,
	combout => \C1|B~4_combout\);

-- Location: FF_X26_Y19_N27
\C1|B[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \C|altpll_0|sd1|wire_pll7_clk[0]~clkctrl_outclk\,
	d => \C1|B~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|B\(0));

-- Location: IOIBUF_X19_Y29_N8
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


