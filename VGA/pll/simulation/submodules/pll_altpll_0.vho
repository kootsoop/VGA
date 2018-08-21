--IP Functional Simulation Model
--VERSION_BEGIN 13.1 cbx_mgl 2013:10:24:09:16:30:SJ cbx_simgen 2013:10:24:09:15:20:SJ  VERSION_END


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

-- You may only use these simulation model output files for simulation
-- purposes and expressly not for synthesis or any other purposes (in which
-- event Altera disclaims all warranties of any kind).


--synopsys translate_off

 LIBRARY cycloneiii;
 USE cycloneiii.cycloneiii_components.all;

--synthesis_resources = cycloneiii_pll 1 lut 6 
 LIBRARY ieee;
 USE ieee.std_logic_1164.all;

 ENTITY  pll_altpll_0 IS 
	 PORT 
	 ( 
		 address	:	IN  STD_LOGIC_VECTOR (1 DOWNTO 0);
		 areset	:	IN  STD_LOGIC;
		 c0	:	OUT  STD_LOGIC;
		 clk	:	IN  STD_LOGIC;
		 locked	:	OUT  STD_LOGIC;
		 phasedone	:	OUT  STD_LOGIC;
		 read	:	IN  STD_LOGIC;
		 readdata	:	OUT  STD_LOGIC_VECTOR (31 DOWNTO 0);
		 reset	:	IN  STD_LOGIC;
		 write	:	IN  STD_LOGIC;
		 writedata	:	IN  STD_LOGIC_VECTOR (31 DOWNTO 0)
	 ); 
 END pll_altpll_0;

 ARCHITECTURE RTL OF pll_altpll_0 IS

	 ATTRIBUTE synthesis_clearbox : natural;
	 ATTRIBUTE synthesis_clearbox OF RTL : ARCHITECTURE IS 1;
	 SIGNAL  wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_clk	:	STD_LOGIC_VECTOR (4 DOWNTO 0);
	 SIGNAL  wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_fbout	:	STD_LOGIC;
	 SIGNAL  wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_inclk	:	STD_LOGIC_VECTOR (1 DOWNTO 0);
	 SIGNAL  wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_locked	:	STD_LOGIC;
	 SIGNAL	pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_pll_lock_sync_119q	:	STD_LOGIC := '0';
	 SIGNAL	pll_altpll_0_pfdena_reg_24q	:	STD_LOGIC := '0';
	 SIGNAL	pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe4a_0_107q	:	STD_LOGIC := '0';
	 SIGNAL	pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe5a_0_110q	:	STD_LOGIC := '0';
	 SIGNAL	pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe6a_0_111q	:	STD_LOGIC := '0';
	 SIGNAL	pll_altpll_0_prev_reset_20q	:	STD_LOGIC := '0';
	 SIGNAL  wire_w_lg_w_lg_w20w21w22w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_lg_w14w16w17w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w20w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w14w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w15w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_address_range2w5w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_reset11w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w85w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w_address_range3w4w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w20w21w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_lg_w14w16w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  s_wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_locked_117_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_pll_altpll_0_w_select_control_15_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_pll_altpll_0_w_select_status_16_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_pll_altpll_0_wire_pfdena_reg_ena_12_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_pll_altpll_0_wire_sd1_areset_18_dataout :	STD_LOGIC;
	 SIGNAL  s_wire_vcc :	STD_LOGIC;
	 SIGNAL  wire_w_address_range2w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
	 SIGNAL  wire_w_address_range3w	:	STD_LOGIC_VECTOR (0 DOWNTO 0);
 BEGIN

	wire_w_lg_w_lg_w20w21w22w(0) <= wire_w_lg_w20w21w(0) AND read;
	wire_w_lg_w_lg_w14w16w17w(0) <= wire_w_lg_w14w16w(0) AND read;
	wire_w20w(0) <= s_wire_pll_altpll_0_w_select_control_15_dataout AND pll_altpll_0_pfdena_reg_24q;
	wire_w14w(0) <= s_wire_pll_altpll_0_w_select_control_15_dataout AND pll_altpll_0_prev_reset_20q;
	wire_w15w(0) <= s_wire_pll_altpll_0_w_select_status_16_dataout AND pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe6a_0_111q;
	wire_w_lg_w_address_range2w5w(0) <= wire_w_address_range2w(0) AND wire_w_lg_w_address_range3w4w(0);
	wire_w_lg_reset11w(0) <= NOT reset;
	wire_w85w(0) <= NOT s_wire_pll_altpll_0_wire_sd1_areset_18_dataout;
	wire_w_lg_w_address_range3w4w(0) <= NOT wire_w_address_range3w(0);
	wire_w_lg_w20w21w(0) <= wire_w20w(0) OR s_wire_pll_altpll_0_w_select_status_16_dataout;
	wire_w_lg_w14w16w(0) <= wire_w14w(0) OR wire_w15w(0);
	c0 <= wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_clk(0);
	locked <= s_wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_locked_117_dataout;
	phasedone <= '0';
	readdata <= ( "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & "0" & wire_w_lg_w_lg_w20w21w22w & wire_w_lg_w_lg_w14w16w17w);
	s_wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_locked_117_dataout <= (pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_pll_lock_sync_119q AND wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_locked);
	s_wire_pll_altpll_0_w_select_control_15_dataout <= wire_w_lg_w_address_range2w5w(0);
	s_wire_pll_altpll_0_w_select_status_16_dataout <= ((NOT address(0)) AND wire_w_lg_w_address_range3w4w(0));
	s_wire_pll_altpll_0_wire_pfdena_reg_ena_12_dataout <= (s_wire_pll_altpll_0_w_select_control_15_dataout AND write);
	s_wire_pll_altpll_0_wire_sd1_areset_18_dataout <= (pll_altpll_0_prev_reset_20q OR areset);
	s_wire_vcc <= '1';
	wire_w_address_range2w(0) <= address(0);
	wire_w_address_range3w(0) <= address(1);
	wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_inclk <= ( "0" & clk);
	pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129 :  cycloneiii_pll
	  GENERIC MAP (
		BANDWIDTH_TYPE => "auto",
		CLK0_DIVIDE_BY => 2000,
		CLK0_DUTY_CYCLE => 50,
		CLK0_MULTIPLY_BY => 1007,
		CLK0_PHASE_SHIFT => "0",
		COMPENSATE_CLOCK => "clk0",
		INCLK0_INPUT_FREQUENCY => 20000,
		OPERATION_MODE => "normal",
		PLL_TYPE => "auto"
	  )
	  PORT MAP ( 
		areset => s_wire_pll_altpll_0_wire_sd1_areset_18_dataout,
		clk => wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_clk,
		fbin => wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_fbout,
		fbout => wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_fbout,
		inclk => wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_inclk,
		locked => wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_locked
	  );
	PROCESS (wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_locked, s_wire_pll_altpll_0_wire_sd1_areset_18_dataout)
	BEGIN
		IF (s_wire_pll_altpll_0_wire_sd1_areset_18_dataout = '1') THEN
				pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_pll_lock_sync_119q <= '0';
		ELSIF (wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_locked = '1' AND wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_cycloneiii_pll_pll7_129_locked'event) THEN
				pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_pll_lock_sync_119q <= s_wire_vcc;
		END IF;
	END PROCESS;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				pll_altpll_0_pfdena_reg_24q <= '1';
		ELSIF (clk = '1' AND clk'event) THEN
			IF (s_wire_pll_altpll_0_wire_pfdena_reg_ena_12_dataout = '1') THEN
				pll_altpll_0_pfdena_reg_24q <= writedata(1);
			END IF;
		END IF;
		if (now = 0 ns) then
			pll_altpll_0_pfdena_reg_24q <= '1' after 1 ps;
		end if;
	END PROCESS;
	PROCESS (clk, reset)
	BEGIN
		IF (reset = '1') THEN
				pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe4a_0_107q <= '0';
				pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe5a_0_110q <= '0';
				pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe6a_0_111q <= '0';
				pll_altpll_0_prev_reset_20q <= '0';
		ELSIF (clk = '1' AND clk'event) THEN
				pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe4a_0_107q <= s_wire_pll_altpll_0_pll_altpll_0_altpll_bb42_sd1_locked_117_dataout;
				pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe5a_0_110q <= pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe4a_0_107q;
				pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe6a_0_111q <= pll_altpll_0_pll_altpll_0_stdsync_sv6_stdsync2_pll_altpll_0_dffpipe_l2c_dffpipe3_dffe5a_0_110q;
				pll_altpll_0_prev_reset_20q <= (s_wire_pll_altpll_0_wire_pfdena_reg_ena_12_dataout AND writedata(0));
		END IF;
	END PROCESS;

 END RTL; --pll_altpll_0
--synopsys translate_on
--VALID FILE
