-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/15/2024 01:23:15"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	TRAFFIC_CONTROLLER IS
    PORT (
	Clk : IN std_logic;
	Reset : IN std_logic;
	lights : BUFFER std_logic_vector(7 DOWNTO 0);
	t_5secs : BUFFER std_logic;
	t_1secs : BUFFER std_logic
	);
END TRAFFIC_CONTROLLER;

-- Design Ports Information


ARCHITECTURE structure OF TRAFFIC_CONTROLLER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_lights : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_t_5secs : std_logic;
SIGNAL ww_t_1secs : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \current_state.RST~regout\ : std_logic;
SIGNAL \TIME2|count[0]~1\ : std_logic;
SIGNAL \TIME2|count[1]~3\ : std_logic;
SIGNAL \TIME2|count[1]~3COUT1_66\ : std_logic;
SIGNAL \TIME2|count[2]~5\ : std_logic;
SIGNAL \TIME2|count[2]~5COUT1_67\ : std_logic;
SIGNAL \TIME2|Equal0~0_combout\ : std_logic;
SIGNAL \TIME2|count[3]~7\ : std_logic;
SIGNAL \TIME2|count[3]~7COUT1_68\ : std_logic;
SIGNAL \TIME2|count[4]~11\ : std_logic;
SIGNAL \TIME2|count[4]~11COUT1_69\ : std_logic;
SIGNAL \TIME2|count[5]~13\ : std_logic;
SIGNAL \TIME2|count[6]~15\ : std_logic;
SIGNAL \TIME2|count[6]~15COUT1_70\ : std_logic;
SIGNAL \TIME2|count[7]~9\ : std_logic;
SIGNAL \TIME2|count[7]~9COUT1_71\ : std_logic;
SIGNAL \TIME2|count[8]~17\ : std_logic;
SIGNAL \TIME2|count[8]~17COUT1_72\ : std_logic;
SIGNAL \TIME2|count[9]~19\ : std_logic;
SIGNAL \TIME2|count[9]~19COUT1_73\ : std_logic;
SIGNAL \TIME2|count[10]~21\ : std_logic;
SIGNAL \TIME2|Equal0~2_combout\ : std_logic;
SIGNAL \TIME2|count[11]~23\ : std_logic;
SIGNAL \TIME2|count[11]~23COUT1_74\ : std_logic;
SIGNAL \TIME2|count[12]~25\ : std_logic;
SIGNAL \TIME2|count[12]~25COUT1_75\ : std_logic;
SIGNAL \TIME2|count[13]~27\ : std_logic;
SIGNAL \TIME2|count[13]~27COUT1_76\ : std_logic;
SIGNAL \TIME2|count[14]~29\ : std_logic;
SIGNAL \TIME2|count[14]~29COUT1_77\ : std_logic;
SIGNAL \TIME2|Equal0~3_combout\ : std_logic;
SIGNAL \TIME2|Equal0~1_combout\ : std_logic;
SIGNAL \TIME2|Equal0~4_combout\ : std_logic;
SIGNAL \TIME2|count[16]~64_combout\ : std_logic;
SIGNAL \TIME2|count[15]~31\ : std_logic;
SIGNAL \TIME2|count[16]~33\ : std_logic;
SIGNAL \TIME2|count[16]~33COUT1_78\ : std_logic;
SIGNAL \TIME2|count[17]~35\ : std_logic;
SIGNAL \TIME2|count[17]~35COUT1_79\ : std_logic;
SIGNAL \TIME2|count[18]~37\ : std_logic;
SIGNAL \TIME2|count[18]~37COUT1_80\ : std_logic;
SIGNAL \TIME2|Equal0~5_combout\ : std_logic;
SIGNAL \TIME2|count[19]~39\ : std_logic;
SIGNAL \TIME2|count[19]~39COUT1_81\ : std_logic;
SIGNAL \TIME2|count[20]~41\ : std_logic;
SIGNAL \TIME2|count[21]~43\ : std_logic;
SIGNAL \TIME2|count[21]~43COUT1_82\ : std_logic;
SIGNAL \TIME2|count[22]~45\ : std_logic;
SIGNAL \TIME2|count[22]~45COUT1_83\ : std_logic;
SIGNAL \TIME2|count[23]~47\ : std_logic;
SIGNAL \TIME2|count[23]~47COUT1_84\ : std_logic;
SIGNAL \TIME2|count[24]~49\ : std_logic;
SIGNAL \TIME2|count[24]~49COUT1_85\ : std_logic;
SIGNAL \TIME2|count[25]~51\ : std_logic;
SIGNAL \TIME2|count[26]~53\ : std_logic;
SIGNAL \TIME2|count[26]~53COUT1_86\ : std_logic;
SIGNAL \TIME2|count[27]~55\ : std_logic;
SIGNAL \TIME2|count[27]~55COUT1_87\ : std_logic;
SIGNAL \TIME2|count[28]~57\ : std_logic;
SIGNAL \TIME2|count[28]~57COUT1_88\ : std_logic;
SIGNAL \TIME2|count[29]~59\ : std_logic;
SIGNAL \TIME2|count[29]~59COUT1_89\ : std_logic;
SIGNAL \TIME2|count[30]~61\ : std_logic;
SIGNAL \TIME2|Equal0~8_combout\ : std_logic;
SIGNAL \TIME2|Equal0~6_combout\ : std_logic;
SIGNAL \TIME2|Equal0~7_combout\ : std_logic;
SIGNAL \TIME2|Equal0~9_combout\ : std_logic;
SIGNAL \TIME2|S1~regout\ : std_logic;
SIGNAL \TIME1|count[0]~1\ : std_logic;
SIGNAL \TIME1|count[1]~3\ : std_logic;
SIGNAL \TIME1|count[1]~3COUT1_66\ : std_logic;
SIGNAL \TIME1|count[2]~5\ : std_logic;
SIGNAL \TIME1|count[2]~5COUT1_67\ : std_logic;
SIGNAL \TIME1|count[3]~7\ : std_logic;
SIGNAL \TIME1|count[3]~7COUT1_68\ : std_logic;
SIGNAL \TIME1|count[4]~15\ : std_logic;
SIGNAL \TIME1|count[4]~15COUT1_69\ : std_logic;
SIGNAL \TIME1|count[5]~9\ : std_logic;
SIGNAL \TIME1|count[6]~11\ : std_logic;
SIGNAL \TIME1|count[6]~11COUT1_70\ : std_logic;
SIGNAL \TIME1|count[7]~13\ : std_logic;
SIGNAL \TIME1|count[7]~13COUT1_71\ : std_logic;
SIGNAL \TIME1|count[8]~17\ : std_logic;
SIGNAL \TIME1|count[8]~17COUT1_72\ : std_logic;
SIGNAL \TIME1|count[9]~19\ : std_logic;
SIGNAL \TIME1|count[9]~19COUT1_73\ : std_logic;
SIGNAL \TIME1|count[10]~21\ : std_logic;
SIGNAL \TIME1|count[11]~23\ : std_logic;
SIGNAL \TIME1|count[11]~23COUT1_74\ : std_logic;
SIGNAL \TIME1|count[12]~25\ : std_logic;
SIGNAL \TIME1|count[12]~25COUT1_75\ : std_logic;
SIGNAL \TIME1|count[13]~27\ : std_logic;
SIGNAL \TIME1|count[13]~27COUT1_76\ : std_logic;
SIGNAL \TIME1|count[14]~29\ : std_logic;
SIGNAL \TIME1|count[14]~29COUT1_77\ : std_logic;
SIGNAL \TIME1|count[15]~31\ : std_logic;
SIGNAL \TIME1|count[16]~33\ : std_logic;
SIGNAL \TIME1|count[16]~33COUT1_78\ : std_logic;
SIGNAL \TIME1|count[17]~35\ : std_logic;
SIGNAL \TIME1|count[17]~35COUT1_79\ : std_logic;
SIGNAL \TIME1|count[18]~37\ : std_logic;
SIGNAL \TIME1|count[18]~37COUT1_80\ : std_logic;
SIGNAL \TIME1|count[19]~39\ : std_logic;
SIGNAL \TIME1|count[19]~39COUT1_81\ : std_logic;
SIGNAL \TIME1|count[20]~41\ : std_logic;
SIGNAL \TIME1|count[21]~43\ : std_logic;
SIGNAL \TIME1|count[21]~43COUT1_82\ : std_logic;
SIGNAL \TIME1|count[22]~45\ : std_logic;
SIGNAL \TIME1|count[22]~45COUT1_83\ : std_logic;
SIGNAL \TIME1|count[23]~47\ : std_logic;
SIGNAL \TIME1|count[23]~47COUT1_84\ : std_logic;
SIGNAL \TIME1|count[24]~49\ : std_logic;
SIGNAL \TIME1|count[24]~49COUT1_85\ : std_logic;
SIGNAL \TIME1|count[25]~51\ : std_logic;
SIGNAL \TIME1|count[26]~53\ : std_logic;
SIGNAL \TIME1|count[26]~53COUT1_86\ : std_logic;
SIGNAL \TIME1|Equal0~7_combout\ : std_logic;
SIGNAL \TIME1|count[27]~55\ : std_logic;
SIGNAL \TIME1|count[27]~55COUT1_87\ : std_logic;
SIGNAL \TIME1|count[28]~57\ : std_logic;
SIGNAL \TIME1|count[28]~57COUT1_88\ : std_logic;
SIGNAL \TIME1|count[29]~59\ : std_logic;
SIGNAL \TIME1|count[29]~59COUT1_89\ : std_logic;
SIGNAL \TIME1|count[30]~61\ : std_logic;
SIGNAL \TIME1|Equal0~8_combout\ : std_logic;
SIGNAL \TIME1|Equal0~6_combout\ : std_logic;
SIGNAL \TIME1|Equal0~5_combout\ : std_logic;
SIGNAL \TIME1|Equal0~9_combout\ : std_logic;
SIGNAL \TIME1|count[25]~64_combout\ : std_logic;
SIGNAL \TIME1|Equal0~1_combout\ : std_logic;
SIGNAL \TIME1|Equal0~0_combout\ : std_logic;
SIGNAL \TIME1|Equal0~3_combout\ : std_logic;
SIGNAL \TIME1|Equal0~2_combout\ : std_logic;
SIGNAL \TIME1|Equal0~4_combout\ : std_logic;
SIGNAL \TIME1|S1~regout\ : std_logic;
SIGNAL \current_state~25_combout\ : std_logic;
SIGNAL \current_state~21_combout\ : std_logic;
SIGNAL \current_state~19_combout\ : std_logic;
SIGNAL \current_state~15_combout\ : std_logic;
SIGNAL \current_state.S2~regout\ : std_logic;
SIGNAL \current_state~17_combout\ : std_logic;
SIGNAL \current_state.S3~regout\ : std_logic;
SIGNAL \current_state.S4~regout\ : std_logic;
SIGNAL \current_state~11_combout\ : std_logic;
SIGNAL \current_state.S5~regout\ : std_logic;
SIGNAL \current_state.S6~regout\ : std_logic;
SIGNAL \current_state.S7~regout\ : std_logic;
SIGNAL \current_state~13_combout\ : std_logic;
SIGNAL \current_state.S0~regout\ : std_logic;
SIGNAL \current_state~23_combout\ : std_logic;
SIGNAL \current_state.S1~regout\ : std_logic;
SIGNAL \lights~0_combout\ : std_logic;
SIGNAL \lights~1_combout\ : std_logic;
SIGNAL \lights~2_combout\ : std_logic;
SIGNAL \lights~3_combout\ : std_logic;
SIGNAL \lights~4_combout\ : std_logic;
SIGNAL \lights~5_combout\ : std_logic;
SIGNAL \lights~6_combout\ : std_logic;
SIGNAL \TIME2|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TIME1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_lights~2_combout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Reset <= Reset;
lights <= ww_lights;
t_5secs <= ww_t_5secs;
t_1secs <= ww_t_1secs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_lights~2_combout\ <= NOT \lights~2_combout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LC_X7_Y7_N8
\current_state.RST\ : maxv_lcell
-- Equation(s):
-- \current_state.RST~regout\ = DFFEAS((((!\Reset~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \Reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.RST~regout\);

-- Location: LC_X9_Y7_N4
\TIME2|count[0]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(0) = DFFEAS((!\TIME2|count\(0)), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[0]~1\ = CARRY((\TIME2|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(0),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(0),
	cout => \TIME2|count[0]~1\);

-- Location: LC_X9_Y7_N5
\TIME2|count[1]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(1) = DFFEAS(\TIME2|count\(1) $ ((((\TIME2|count[0]~1\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[1]~3\ = CARRY(((!\TIME2|count[0]~1\)) # (!\TIME2|count\(1)))
-- \TIME2|count[1]~3COUT1_66\ = CARRY(((!\TIME2|count[0]~1\)) # (!\TIME2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(1),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(1),
	cout0 => \TIME2|count[1]~3\,
	cout1 => \TIME2|count[1]~3COUT1_66\);

-- Location: LC_X9_Y7_N6
\TIME2|count[2]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(2) = DFFEAS(\TIME2|count\(2) $ ((((!(!\TIME2|count[0]~1\ & \TIME2|count[1]~3\) # (\TIME2|count[0]~1\ & \TIME2|count[1]~3COUT1_66\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[2]~5\ = CARRY((\TIME2|count\(2) & ((!\TIME2|count[1]~3\))))
-- \TIME2|count[2]~5COUT1_67\ = CARRY((\TIME2|count\(2) & ((!\TIME2|count[1]~3COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(2),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[0]~1\,
	cin0 => \TIME2|count[1]~3\,
	cin1 => \TIME2|count[1]~3COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(2),
	cout0 => \TIME2|count[2]~5\,
	cout1 => \TIME2|count[2]~5COUT1_67\);

-- Location: LC_X9_Y7_N7
\TIME2|count[3]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(3) = DFFEAS((\TIME2|count\(3) $ (((!\TIME2|count[0]~1\ & \TIME2|count[2]~5\) # (\TIME2|count[0]~1\ & \TIME2|count[2]~5COUT1_67\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[3]~7\ = CARRY(((!\TIME2|count[2]~5\) # (!\TIME2|count\(3))))
-- \TIME2|count[3]~7COUT1_68\ = CARRY(((!\TIME2|count[2]~5COUT1_67\) # (!\TIME2|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(3),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[0]~1\,
	cin0 => \TIME2|count[2]~5\,
	cin1 => \TIME2|count[2]~5COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(3),
	cout0 => \TIME2|count[3]~7\,
	cout1 => \TIME2|count[3]~7COUT1_68\);

-- Location: LC_X8_Y7_N0
\TIME2|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~0_combout\ = ((\TIME2|count\(0)) # ((\TIME2|count\(1)) # (!\TIME2|count\(2)))) # (!\TIME2|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffdf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(3),
	datab => \TIME2|count\(0),
	datac => \TIME2|count\(2),
	datad => \TIME2|count\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~0_combout\);

-- Location: LC_X9_Y7_N8
\TIME2|count[4]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(4) = DFFEAS(\TIME2|count\(4) $ ((((!(!\TIME2|count[0]~1\ & \TIME2|count[3]~7\) # (\TIME2|count[0]~1\ & \TIME2|count[3]~7COUT1_68\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[4]~11\ = CARRY((\TIME2|count\(4) & ((!\TIME2|count[3]~7\))))
-- \TIME2|count[4]~11COUT1_69\ = CARRY((\TIME2|count\(4) & ((!\TIME2|count[3]~7COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(4),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[0]~1\,
	cin0 => \TIME2|count[3]~7\,
	cin1 => \TIME2|count[3]~7COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(4),
	cout0 => \TIME2|count[4]~11\,
	cout1 => \TIME2|count[4]~11COUT1_69\);

-- Location: LC_X9_Y7_N9
\TIME2|count[5]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(5) = DFFEAS((\TIME2|count\(5) $ (((!\TIME2|count[0]~1\ & \TIME2|count[4]~11\) # (\TIME2|count[0]~1\ & \TIME2|count[4]~11COUT1_69\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[5]~13\ = CARRY(((!\TIME2|count[4]~11COUT1_69\) # (!\TIME2|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(5),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[0]~1\,
	cin0 => \TIME2|count[4]~11\,
	cin1 => \TIME2|count[4]~11COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(5),
	cout => \TIME2|count[5]~13\);

-- Location: LC_X10_Y7_N0
\TIME2|count[6]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(6) = DFFEAS((\TIME2|count\(6) $ ((!\TIME2|count[5]~13\))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[6]~15\ = CARRY(((\TIME2|count\(6) & !\TIME2|count[5]~13\)))
-- \TIME2|count[6]~15COUT1_70\ = CARRY(((\TIME2|count\(6) & !\TIME2|count[5]~13\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(6),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[5]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(6),
	cout0 => \TIME2|count[6]~15\,
	cout1 => \TIME2|count[6]~15COUT1_70\);

-- Location: LC_X10_Y7_N1
\TIME2|count[7]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(7) = DFFEAS((\TIME2|count\(7) $ (((!\TIME2|count[5]~13\ & \TIME2|count[6]~15\) # (\TIME2|count[5]~13\ & \TIME2|count[6]~15COUT1_70\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[7]~9\ = CARRY(((!\TIME2|count[6]~15\) # (!\TIME2|count\(7))))
-- \TIME2|count[7]~9COUT1_71\ = CARRY(((!\TIME2|count[6]~15COUT1_70\) # (!\TIME2|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(7),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[5]~13\,
	cin0 => \TIME2|count[6]~15\,
	cin1 => \TIME2|count[6]~15COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(7),
	cout0 => \TIME2|count[7]~9\,
	cout1 => \TIME2|count[7]~9COUT1_71\);

-- Location: LC_X10_Y7_N2
\TIME2|count[8]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(8) = DFFEAS((\TIME2|count\(8) $ ((!(!\TIME2|count[5]~13\ & \TIME2|count[7]~9\) # (\TIME2|count[5]~13\ & \TIME2|count[7]~9COUT1_71\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[8]~17\ = CARRY(((\TIME2|count\(8) & !\TIME2|count[7]~9\)))
-- \TIME2|count[8]~17COUT1_72\ = CARRY(((\TIME2|count\(8) & !\TIME2|count[7]~9COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(8),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[5]~13\,
	cin0 => \TIME2|count[7]~9\,
	cin1 => \TIME2|count[7]~9COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(8),
	cout0 => \TIME2|count[8]~17\,
	cout1 => \TIME2|count[8]~17COUT1_72\);

-- Location: LC_X10_Y7_N3
\TIME2|count[9]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(9) = DFFEAS(\TIME2|count\(9) $ (((((!\TIME2|count[5]~13\ & \TIME2|count[8]~17\) # (\TIME2|count[5]~13\ & \TIME2|count[8]~17COUT1_72\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[9]~19\ = CARRY(((!\TIME2|count[8]~17\)) # (!\TIME2|count\(9)))
-- \TIME2|count[9]~19COUT1_73\ = CARRY(((!\TIME2|count[8]~17COUT1_72\)) # (!\TIME2|count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(9),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[5]~13\,
	cin0 => \TIME2|count[8]~17\,
	cin1 => \TIME2|count[8]~17COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(9),
	cout0 => \TIME2|count[9]~19\,
	cout1 => \TIME2|count[9]~19COUT1_73\);

-- Location: LC_X10_Y7_N4
\TIME2|count[10]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(10) = DFFEAS(\TIME2|count\(10) $ ((((!(!\TIME2|count[5]~13\ & \TIME2|count[9]~19\) # (\TIME2|count[5]~13\ & \TIME2|count[9]~19COUT1_73\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[10]~21\ = CARRY((\TIME2|count\(10) & ((!\TIME2|count[9]~19COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(10),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[5]~13\,
	cin0 => \TIME2|count[9]~19\,
	cin1 => \TIME2|count[9]~19COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(10),
	cout => \TIME2|count[10]~21\);

-- Location: LC_X10_Y7_N5
\TIME2|count[11]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(11) = DFFEAS(\TIME2|count\(11) $ ((((\TIME2|count[10]~21\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[11]~23\ = CARRY(((!\TIME2|count[10]~21\)) # (!\TIME2|count\(11)))
-- \TIME2|count[11]~23COUT1_74\ = CARRY(((!\TIME2|count[10]~21\)) # (!\TIME2|count\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(11),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[10]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(11),
	cout0 => \TIME2|count[11]~23\,
	cout1 => \TIME2|count[11]~23COUT1_74\);

-- Location: LC_X9_Y7_N1
\TIME2|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~2_combout\ = (\TIME2|count\(9)) # ((\TIME2|count\(11)) # ((\TIME2|count\(8)) # (\TIME2|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(9),
	datab => \TIME2|count\(11),
	datac => \TIME2|count\(8),
	datad => \TIME2|count\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~2_combout\);

-- Location: LC_X10_Y7_N6
\TIME2|count[12]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(12) = DFFEAS(\TIME2|count\(12) $ ((((!(!\TIME2|count[10]~21\ & \TIME2|count[11]~23\) # (\TIME2|count[10]~21\ & \TIME2|count[11]~23COUT1_74\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[12]~25\ = CARRY((\TIME2|count\(12) & ((!\TIME2|count[11]~23\))))
-- \TIME2|count[12]~25COUT1_75\ = CARRY((\TIME2|count\(12) & ((!\TIME2|count[11]~23COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(12),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[10]~21\,
	cin0 => \TIME2|count[11]~23\,
	cin1 => \TIME2|count[11]~23COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(12),
	cout0 => \TIME2|count[12]~25\,
	cout1 => \TIME2|count[12]~25COUT1_75\);

-- Location: LC_X10_Y7_N7
\TIME2|count[13]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(13) = DFFEAS((\TIME2|count\(13) $ (((!\TIME2|count[10]~21\ & \TIME2|count[12]~25\) # (\TIME2|count[10]~21\ & \TIME2|count[12]~25COUT1_75\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[13]~27\ = CARRY(((!\TIME2|count[12]~25\) # (!\TIME2|count\(13))))
-- \TIME2|count[13]~27COUT1_76\ = CARRY(((!\TIME2|count[12]~25COUT1_75\) # (!\TIME2|count\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(13),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[10]~21\,
	cin0 => \TIME2|count[12]~25\,
	cin1 => \TIME2|count[12]~25COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(13),
	cout0 => \TIME2|count[13]~27\,
	cout1 => \TIME2|count[13]~27COUT1_76\);

-- Location: LC_X10_Y7_N8
\TIME2|count[14]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(14) = DFFEAS(\TIME2|count\(14) $ ((((!(!\TIME2|count[10]~21\ & \TIME2|count[13]~27\) # (\TIME2|count[10]~21\ & \TIME2|count[13]~27COUT1_76\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[14]~29\ = CARRY((\TIME2|count\(14) & ((!\TIME2|count[13]~27\))))
-- \TIME2|count[14]~29COUT1_77\ = CARRY((\TIME2|count\(14) & ((!\TIME2|count[13]~27COUT1_76\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(14),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[10]~21\,
	cin0 => \TIME2|count[13]~27\,
	cin1 => \TIME2|count[13]~27COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(14),
	cout0 => \TIME2|count[14]~29\,
	cout1 => \TIME2|count[14]~29COUT1_77\);

-- Location: LC_X10_Y7_N9
\TIME2|count[15]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(15) = DFFEAS((\TIME2|count\(15) $ (((!\TIME2|count[10]~21\ & \TIME2|count[14]~29\) # (\TIME2|count[10]~21\ & \TIME2|count[14]~29COUT1_77\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[15]~31\ = CARRY(((!\TIME2|count[14]~29COUT1_77\) # (!\TIME2|count\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(15),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[10]~21\,
	cin0 => \TIME2|count[14]~29\,
	cin1 => \TIME2|count[14]~29COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(15),
	cout => \TIME2|count[15]~31\);

-- Location: LC_X9_Y7_N0
\TIME2|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~3_combout\ = (\TIME2|count\(13)) # ((\TIME2|count\(15)) # ((\TIME2|count\(12)) # (\TIME2|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(13),
	datab => \TIME2|count\(15),
	datac => \TIME2|count\(12),
	datad => \TIME2|count\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~3_combout\);

-- Location: LC_X8_Y7_N2
\TIME2|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~1_combout\ = (\TIME2|count\(7)) # (((!\TIME2|count\(4)) # (!\TIME2|count\(6))) # (!\TIME2|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(7),
	datab => \TIME2|count\(5),
	datac => \TIME2|count\(6),
	datad => \TIME2|count\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~1_combout\);

-- Location: LC_X9_Y7_N2
\TIME2|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~4_combout\ = (\TIME2|Equal0~0_combout\) # ((\TIME2|Equal0~2_combout\) # ((\TIME2|Equal0~3_combout\) # (\TIME2|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|Equal0~0_combout\,
	datab => \TIME2|Equal0~2_combout\,
	datac => \TIME2|Equal0~3_combout\,
	datad => \TIME2|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~4_combout\);

-- Location: LC_X9_Y7_N3
\TIME2|count[16]~64\ : maxv_lcell
-- Equation(s):
-- \TIME2|count[16]~64_combout\ = ((\Reset~combout\) # ((!\TIME2|Equal0~9_combout\ & !\TIME2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Reset~combout\,
	datac => \TIME2|Equal0~9_combout\,
	datad => \TIME2|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|count[16]~64_combout\);

-- Location: LC_X11_Y7_N0
\TIME2|count[16]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(16) = DFFEAS((\TIME2|count\(16) $ ((!\TIME2|count[15]~31\))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[16]~33\ = CARRY(((\TIME2|count\(16) & !\TIME2|count[15]~31\)))
-- \TIME2|count[16]~33COUT1_78\ = CARRY(((\TIME2|count\(16) & !\TIME2|count[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(16),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[15]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(16),
	cout0 => \TIME2|count[16]~33\,
	cout1 => \TIME2|count[16]~33COUT1_78\);

-- Location: LC_X11_Y7_N1
\TIME2|count[17]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(17) = DFFEAS((\TIME2|count\(17) $ (((!\TIME2|count[15]~31\ & \TIME2|count[16]~33\) # (\TIME2|count[15]~31\ & \TIME2|count[16]~33COUT1_78\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[17]~35\ = CARRY(((!\TIME2|count[16]~33\) # (!\TIME2|count\(17))))
-- \TIME2|count[17]~35COUT1_79\ = CARRY(((!\TIME2|count[16]~33COUT1_78\) # (!\TIME2|count\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(17),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[15]~31\,
	cin0 => \TIME2|count[16]~33\,
	cin1 => \TIME2|count[16]~33COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(17),
	cout0 => \TIME2|count[17]~35\,
	cout1 => \TIME2|count[17]~35COUT1_79\);

-- Location: LC_X11_Y7_N2
\TIME2|count[18]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(18) = DFFEAS((\TIME2|count\(18) $ ((!(!\TIME2|count[15]~31\ & \TIME2|count[17]~35\) # (\TIME2|count[15]~31\ & \TIME2|count[17]~35COUT1_79\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[18]~37\ = CARRY(((\TIME2|count\(18) & !\TIME2|count[17]~35\)))
-- \TIME2|count[18]~37COUT1_80\ = CARRY(((\TIME2|count\(18) & !\TIME2|count[17]~35COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(18),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[15]~31\,
	cin0 => \TIME2|count[17]~35\,
	cin1 => \TIME2|count[17]~35COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(18),
	cout0 => \TIME2|count[18]~37\,
	cout1 => \TIME2|count[18]~37COUT1_80\);

-- Location: LC_X11_Y7_N3
\TIME2|count[19]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(19) = DFFEAS(\TIME2|count\(19) $ (((((!\TIME2|count[15]~31\ & \TIME2|count[18]~37\) # (\TIME2|count[15]~31\ & \TIME2|count[18]~37COUT1_80\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[19]~39\ = CARRY(((!\TIME2|count[18]~37\)) # (!\TIME2|count\(19)))
-- \TIME2|count[19]~39COUT1_81\ = CARRY(((!\TIME2|count[18]~37COUT1_80\)) # (!\TIME2|count\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(19),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[15]~31\,
	cin0 => \TIME2|count[18]~37\,
	cin1 => \TIME2|count[18]~37COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(19),
	cout0 => \TIME2|count[19]~39\,
	cout1 => \TIME2|count[19]~39COUT1_81\);

-- Location: LC_X8_Y7_N6
\TIME2|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~5_combout\ = (\TIME2|count\(16)) # ((\TIME2|count\(18)) # ((\TIME2|count\(17)) # (\TIME2|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(16),
	datab => \TIME2|count\(18),
	datac => \TIME2|count\(17),
	datad => \TIME2|count\(19),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~5_combout\);

-- Location: LC_X11_Y7_N4
\TIME2|count[20]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(20) = DFFEAS(\TIME2|count\(20) $ ((((!(!\TIME2|count[15]~31\ & \TIME2|count[19]~39\) # (\TIME2|count[15]~31\ & \TIME2|count[19]~39COUT1_81\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[20]~41\ = CARRY((\TIME2|count\(20) & ((!\TIME2|count[19]~39COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(20),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[15]~31\,
	cin0 => \TIME2|count[19]~39\,
	cin1 => \TIME2|count[19]~39COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(20),
	cout => \TIME2|count[20]~41\);

-- Location: LC_X11_Y7_N5
\TIME2|count[21]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(21) = DFFEAS(\TIME2|count\(21) $ ((((\TIME2|count[20]~41\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[21]~43\ = CARRY(((!\TIME2|count[20]~41\)) # (!\TIME2|count\(21)))
-- \TIME2|count[21]~43COUT1_82\ = CARRY(((!\TIME2|count[20]~41\)) # (!\TIME2|count\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(21),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[20]~41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(21),
	cout0 => \TIME2|count[21]~43\,
	cout1 => \TIME2|count[21]~43COUT1_82\);

-- Location: LC_X11_Y7_N6
\TIME2|count[22]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(22) = DFFEAS(\TIME2|count\(22) $ ((((!(!\TIME2|count[20]~41\ & \TIME2|count[21]~43\) # (\TIME2|count[20]~41\ & \TIME2|count[21]~43COUT1_82\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[22]~45\ = CARRY((\TIME2|count\(22) & ((!\TIME2|count[21]~43\))))
-- \TIME2|count[22]~45COUT1_83\ = CARRY((\TIME2|count\(22) & ((!\TIME2|count[21]~43COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(22),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[20]~41\,
	cin0 => \TIME2|count[21]~43\,
	cin1 => \TIME2|count[21]~43COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(22),
	cout0 => \TIME2|count[22]~45\,
	cout1 => \TIME2|count[22]~45COUT1_83\);

-- Location: LC_X11_Y7_N7
\TIME2|count[23]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(23) = DFFEAS((\TIME2|count\(23) $ (((!\TIME2|count[20]~41\ & \TIME2|count[22]~45\) # (\TIME2|count[20]~41\ & \TIME2|count[22]~45COUT1_83\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[23]~47\ = CARRY(((!\TIME2|count[22]~45\) # (!\TIME2|count\(23))))
-- \TIME2|count[23]~47COUT1_84\ = CARRY(((!\TIME2|count[22]~45COUT1_83\) # (!\TIME2|count\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(23),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[20]~41\,
	cin0 => \TIME2|count[22]~45\,
	cin1 => \TIME2|count[22]~45COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(23),
	cout0 => \TIME2|count[23]~47\,
	cout1 => \TIME2|count[23]~47COUT1_84\);

-- Location: LC_X11_Y7_N8
\TIME2|count[24]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(24) = DFFEAS(\TIME2|count\(24) $ ((((!(!\TIME2|count[20]~41\ & \TIME2|count[23]~47\) # (\TIME2|count[20]~41\ & \TIME2|count[23]~47COUT1_84\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[24]~49\ = CARRY((\TIME2|count\(24) & ((!\TIME2|count[23]~47\))))
-- \TIME2|count[24]~49COUT1_85\ = CARRY((\TIME2|count\(24) & ((!\TIME2|count[23]~47COUT1_84\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(24),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[20]~41\,
	cin0 => \TIME2|count[23]~47\,
	cin1 => \TIME2|count[23]~47COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(24),
	cout0 => \TIME2|count[24]~49\,
	cout1 => \TIME2|count[24]~49COUT1_85\);

-- Location: LC_X11_Y7_N9
\TIME2|count[25]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(25) = DFFEAS((\TIME2|count\(25) $ (((!\TIME2|count[20]~41\ & \TIME2|count[24]~49\) # (\TIME2|count[20]~41\ & \TIME2|count[24]~49COUT1_85\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[25]~51\ = CARRY(((!\TIME2|count[24]~49COUT1_85\) # (!\TIME2|count\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(25),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[20]~41\,
	cin0 => \TIME2|count[24]~49\,
	cin1 => \TIME2|count[24]~49COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(25),
	cout => \TIME2|count[25]~51\);

-- Location: LC_X12_Y7_N0
\TIME2|count[26]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(26) = DFFEAS((\TIME2|count\(26) $ ((!\TIME2|count[25]~51\))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[26]~53\ = CARRY(((\TIME2|count\(26) & !\TIME2|count[25]~51\)))
-- \TIME2|count[26]~53COUT1_86\ = CARRY(((\TIME2|count\(26) & !\TIME2|count[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(26),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[25]~51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(26),
	cout0 => \TIME2|count[26]~53\,
	cout1 => \TIME2|count[26]~53COUT1_86\);

-- Location: LC_X12_Y7_N1
\TIME2|count[27]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(27) = DFFEAS((\TIME2|count\(27) $ (((!\TIME2|count[25]~51\ & \TIME2|count[26]~53\) # (\TIME2|count[25]~51\ & \TIME2|count[26]~53COUT1_86\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[27]~55\ = CARRY(((!\TIME2|count[26]~53\) # (!\TIME2|count\(27))))
-- \TIME2|count[27]~55COUT1_87\ = CARRY(((!\TIME2|count[26]~53COUT1_86\) # (!\TIME2|count\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(27),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[25]~51\,
	cin0 => \TIME2|count[26]~53\,
	cin1 => \TIME2|count[26]~53COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(27),
	cout0 => \TIME2|count[27]~55\,
	cout1 => \TIME2|count[27]~55COUT1_87\);

-- Location: LC_X12_Y7_N2
\TIME2|count[28]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(28) = DFFEAS(\TIME2|count\(28) $ ((((!(!\TIME2|count[25]~51\ & \TIME2|count[27]~55\) # (\TIME2|count[25]~51\ & \TIME2|count[27]~55COUT1_87\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[28]~57\ = CARRY((\TIME2|count\(28) & ((!\TIME2|count[27]~55\))))
-- \TIME2|count[28]~57COUT1_88\ = CARRY((\TIME2|count\(28) & ((!\TIME2|count[27]~55COUT1_87\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(28),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[25]~51\,
	cin0 => \TIME2|count[27]~55\,
	cin1 => \TIME2|count[27]~55COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(28),
	cout0 => \TIME2|count[28]~57\,
	cout1 => \TIME2|count[28]~57COUT1_88\);

-- Location: LC_X12_Y7_N3
\TIME2|count[29]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(29) = DFFEAS(\TIME2|count\(29) $ (((((!\TIME2|count[25]~51\ & \TIME2|count[28]~57\) # (\TIME2|count[25]~51\ & \TIME2|count[28]~57COUT1_88\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[29]~59\ = CARRY(((!\TIME2|count[28]~57\)) # (!\TIME2|count\(29)))
-- \TIME2|count[29]~59COUT1_89\ = CARRY(((!\TIME2|count[28]~57COUT1_88\)) # (!\TIME2|count\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(29),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[25]~51\,
	cin0 => \TIME2|count[28]~57\,
	cin1 => \TIME2|count[28]~57COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(29),
	cout0 => \TIME2|count[29]~59\,
	cout1 => \TIME2|count[29]~59COUT1_89\);

-- Location: LC_X12_Y7_N4
\TIME2|count[30]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(30) = DFFEAS((\TIME2|count\(30) $ ((!(!\TIME2|count[25]~51\ & \TIME2|count[29]~59\) # (\TIME2|count[25]~51\ & \TIME2|count[29]~59COUT1_89\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )
-- \TIME2|count[30]~61\ = CARRY(((\TIME2|count\(30) & !\TIME2|count[29]~59COUT1_89\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME2|count\(30),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[25]~51\,
	cin0 => \TIME2|count[29]~59\,
	cin1 => \TIME2|count[29]~59COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(30),
	cout => \TIME2|count[30]~61\);

-- Location: LC_X12_Y7_N5
\TIME2|count[31]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(31) = DFFEAS(\TIME2|count\(31) $ ((((\TIME2|count[30]~61\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME2|count[16]~64_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(31),
	aclr => GND,
	sclr => \TIME2|count[16]~64_combout\,
	cin => \TIME2|count[30]~61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(31));

-- Location: LC_X12_Y7_N8
\TIME2|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~8_combout\ = (\TIME2|count\(30)) # ((\TIME2|count\(28)) # ((\TIME2|count\(31)) # (\TIME2|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(30),
	datab => \TIME2|count\(28),
	datac => \TIME2|count\(31),
	datad => \TIME2|count\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~8_combout\);

-- Location: LC_X8_Y7_N4
\TIME2|Equal0~6\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~6_combout\ = (\TIME2|count\(23)) # ((\TIME2|count\(21)) # ((\TIME2|count\(20)) # (\TIME2|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(23),
	datab => \TIME2|count\(21),
	datac => \TIME2|count\(20),
	datad => \TIME2|count\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~6_combout\);

-- Location: LC_X8_Y7_N7
\TIME2|Equal0~7\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~7_combout\ = (\TIME2|count\(26)) # ((\TIME2|count\(27)) # ((\TIME2|count\(24)) # (\TIME2|count\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(26),
	datab => \TIME2|count\(27),
	datac => \TIME2|count\(24),
	datad => \TIME2|count\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~7_combout\);

-- Location: LC_X8_Y7_N8
\TIME2|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~9_combout\ = (\TIME2|Equal0~5_combout\) # ((\TIME2|Equal0~8_combout\) # ((\TIME2|Equal0~6_combout\) # (\TIME2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|Equal0~5_combout\,
	datab => \TIME2|Equal0~8_combout\,
	datac => \TIME2|Equal0~6_combout\,
	datad => \TIME2|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~9_combout\);

-- Location: LC_X8_Y7_N3
\TIME2|S1\ : maxv_lcell
-- Equation(s):
-- \TIME2|S1~regout\ = DFFEAS((!\TIME2|Equal0~9_combout\ & (!\TIME2|Equal0~4_combout\ & (!\Reset~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|Equal0~9_combout\,
	datab => \TIME2|Equal0~4_combout\,
	datac => \Reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|S1~regout\);

-- Location: LC_X8_Y4_N4
\TIME1|count[0]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(0) = DFFEAS((!\TIME1|count\(0)), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[0]~1\ = CARRY((\TIME1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(0),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(0),
	cout => \TIME1|count[0]~1\);

-- Location: LC_X8_Y4_N5
\TIME1|count[1]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(1) = DFFEAS(\TIME1|count\(1) $ ((((\TIME1|count[0]~1\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[1]~3\ = CARRY(((!\TIME1|count[0]~1\)) # (!\TIME1|count\(1)))
-- \TIME1|count[1]~3COUT1_66\ = CARRY(((!\TIME1|count[0]~1\)) # (!\TIME1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(1),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[0]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(1),
	cout0 => \TIME1|count[1]~3\,
	cout1 => \TIME1|count[1]~3COUT1_66\);

-- Location: LC_X8_Y4_N6
\TIME1|count[2]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(2) = DFFEAS((\TIME1|count\(2) $ ((!(!\TIME1|count[0]~1\ & \TIME1|count[1]~3\) # (\TIME1|count[0]~1\ & \TIME1|count[1]~3COUT1_66\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[2]~5\ = CARRY(((\TIME1|count\(2) & !\TIME1|count[1]~3\)))
-- \TIME1|count[2]~5COUT1_67\ = CARRY(((\TIME1|count\(2) & !\TIME1|count[1]~3COUT1_66\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(2),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[0]~1\,
	cin0 => \TIME1|count[1]~3\,
	cin1 => \TIME1|count[1]~3COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(2),
	cout0 => \TIME1|count[2]~5\,
	cout1 => \TIME1|count[2]~5COUT1_67\);

-- Location: LC_X8_Y4_N7
\TIME1|count[3]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(3) = DFFEAS((\TIME1|count\(3) $ (((!\TIME1|count[0]~1\ & \TIME1|count[2]~5\) # (\TIME1|count[0]~1\ & \TIME1|count[2]~5COUT1_67\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[3]~7\ = CARRY(((!\TIME1|count[2]~5\) # (!\TIME1|count\(3))))
-- \TIME1|count[3]~7COUT1_68\ = CARRY(((!\TIME1|count[2]~5COUT1_67\) # (!\TIME1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(3),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[0]~1\,
	cin0 => \TIME1|count[2]~5\,
	cin1 => \TIME1|count[2]~5COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(3),
	cout0 => \TIME1|count[3]~7\,
	cout1 => \TIME1|count[3]~7COUT1_68\);

-- Location: LC_X8_Y4_N8
\TIME1|count[4]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(4) = DFFEAS(\TIME1|count\(4) $ ((((!(!\TIME1|count[0]~1\ & \TIME1|count[3]~7\) # (\TIME1|count[0]~1\ & \TIME1|count[3]~7COUT1_68\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[4]~15\ = CARRY((\TIME1|count\(4) & ((!\TIME1|count[3]~7\))))
-- \TIME1|count[4]~15COUT1_69\ = CARRY((\TIME1|count\(4) & ((!\TIME1|count[3]~7COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(4),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[0]~1\,
	cin0 => \TIME1|count[3]~7\,
	cin1 => \TIME1|count[3]~7COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(4),
	cout0 => \TIME1|count[4]~15\,
	cout1 => \TIME1|count[4]~15COUT1_69\);

-- Location: LC_X8_Y4_N9
\TIME1|count[5]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(5) = DFFEAS((\TIME1|count\(5) $ (((!\TIME1|count[0]~1\ & \TIME1|count[4]~15\) # (\TIME1|count[0]~1\ & \TIME1|count[4]~15COUT1_69\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[5]~9\ = CARRY(((!\TIME1|count[4]~15COUT1_69\) # (!\TIME1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(5),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[0]~1\,
	cin0 => \TIME1|count[4]~15\,
	cin1 => \TIME1|count[4]~15COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(5),
	cout => \TIME1|count[5]~9\);

-- Location: LC_X9_Y4_N0
\TIME1|count[6]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(6) = DFFEAS((\TIME1|count\(6) $ ((!\TIME1|count[5]~9\))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[6]~11\ = CARRY(((\TIME1|count\(6) & !\TIME1|count[5]~9\)))
-- \TIME1|count[6]~11COUT1_70\ = CARRY(((\TIME1|count\(6) & !\TIME1|count[5]~9\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(6),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(6),
	cout0 => \TIME1|count[6]~11\,
	cout1 => \TIME1|count[6]~11COUT1_70\);

-- Location: LC_X9_Y4_N1
\TIME1|count[7]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(7) = DFFEAS((\TIME1|count\(7) $ (((!\TIME1|count[5]~9\ & \TIME1|count[6]~11\) # (\TIME1|count[5]~9\ & \TIME1|count[6]~11COUT1_70\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[7]~13\ = CARRY(((!\TIME1|count[6]~11\) # (!\TIME1|count\(7))))
-- \TIME1|count[7]~13COUT1_71\ = CARRY(((!\TIME1|count[6]~11COUT1_70\) # (!\TIME1|count\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(7),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[5]~9\,
	cin0 => \TIME1|count[6]~11\,
	cin1 => \TIME1|count[6]~11COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(7),
	cout0 => \TIME1|count[7]~13\,
	cout1 => \TIME1|count[7]~13COUT1_71\);

-- Location: LC_X9_Y4_N2
\TIME1|count[8]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(8) = DFFEAS((\TIME1|count\(8) $ ((!(!\TIME1|count[5]~9\ & \TIME1|count[7]~13\) # (\TIME1|count[5]~9\ & \TIME1|count[7]~13COUT1_71\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[8]~17\ = CARRY(((\TIME1|count\(8) & !\TIME1|count[7]~13\)))
-- \TIME1|count[8]~17COUT1_72\ = CARRY(((\TIME1|count\(8) & !\TIME1|count[7]~13COUT1_71\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(8),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[5]~9\,
	cin0 => \TIME1|count[7]~13\,
	cin1 => \TIME1|count[7]~13COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(8),
	cout0 => \TIME1|count[8]~17\,
	cout1 => \TIME1|count[8]~17COUT1_72\);

-- Location: LC_X9_Y4_N3
\TIME1|count[9]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(9) = DFFEAS(\TIME1|count\(9) $ (((((!\TIME1|count[5]~9\ & \TIME1|count[8]~17\) # (\TIME1|count[5]~9\ & \TIME1|count[8]~17COUT1_72\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[9]~19\ = CARRY(((!\TIME1|count[8]~17\)) # (!\TIME1|count\(9)))
-- \TIME1|count[9]~19COUT1_73\ = CARRY(((!\TIME1|count[8]~17COUT1_72\)) # (!\TIME1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(9),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[5]~9\,
	cin0 => \TIME1|count[8]~17\,
	cin1 => \TIME1|count[8]~17COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(9),
	cout0 => \TIME1|count[9]~19\,
	cout1 => \TIME1|count[9]~19COUT1_73\);

-- Location: LC_X9_Y4_N4
\TIME1|count[10]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(10) = DFFEAS(\TIME1|count\(10) $ ((((!(!\TIME1|count[5]~9\ & \TIME1|count[9]~19\) # (\TIME1|count[5]~9\ & \TIME1|count[9]~19COUT1_73\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[10]~21\ = CARRY((\TIME1|count\(10) & ((!\TIME1|count[9]~19COUT1_73\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(10),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[5]~9\,
	cin0 => \TIME1|count[9]~19\,
	cin1 => \TIME1|count[9]~19COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(10),
	cout => \TIME1|count[10]~21\);

-- Location: LC_X9_Y4_N5
\TIME1|count[11]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(11) = DFFEAS(\TIME1|count\(11) $ ((((\TIME1|count[10]~21\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[11]~23\ = CARRY(((!\TIME1|count[10]~21\)) # (!\TIME1|count\(11)))
-- \TIME1|count[11]~23COUT1_74\ = CARRY(((!\TIME1|count[10]~21\)) # (!\TIME1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(11),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[10]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(11),
	cout0 => \TIME1|count[11]~23\,
	cout1 => \TIME1|count[11]~23COUT1_74\);

-- Location: LC_X9_Y4_N6
\TIME1|count[12]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(12) = DFFEAS(\TIME1|count\(12) $ ((((!(!\TIME1|count[10]~21\ & \TIME1|count[11]~23\) # (\TIME1|count[10]~21\ & \TIME1|count[11]~23COUT1_74\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[12]~25\ = CARRY((\TIME1|count\(12) & ((!\TIME1|count[11]~23\))))
-- \TIME1|count[12]~25COUT1_75\ = CARRY((\TIME1|count\(12) & ((!\TIME1|count[11]~23COUT1_74\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(12),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[10]~21\,
	cin0 => \TIME1|count[11]~23\,
	cin1 => \TIME1|count[11]~23COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(12),
	cout0 => \TIME1|count[12]~25\,
	cout1 => \TIME1|count[12]~25COUT1_75\);

-- Location: LC_X9_Y4_N7
\TIME1|count[13]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(13) = DFFEAS((\TIME1|count\(13) $ (((!\TIME1|count[10]~21\ & \TIME1|count[12]~25\) # (\TIME1|count[10]~21\ & \TIME1|count[12]~25COUT1_75\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[13]~27\ = CARRY(((!\TIME1|count[12]~25\) # (!\TIME1|count\(13))))
-- \TIME1|count[13]~27COUT1_76\ = CARRY(((!\TIME1|count[12]~25COUT1_75\) # (!\TIME1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(13),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[10]~21\,
	cin0 => \TIME1|count[12]~25\,
	cin1 => \TIME1|count[12]~25COUT1_75\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(13),
	cout0 => \TIME1|count[13]~27\,
	cout1 => \TIME1|count[13]~27COUT1_76\);

-- Location: LC_X9_Y4_N8
\TIME1|count[14]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(14) = DFFEAS(\TIME1|count\(14) $ ((((!(!\TIME1|count[10]~21\ & \TIME1|count[13]~27\) # (\TIME1|count[10]~21\ & \TIME1|count[13]~27COUT1_76\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[14]~29\ = CARRY((\TIME1|count\(14) & ((!\TIME1|count[13]~27\))))
-- \TIME1|count[14]~29COUT1_77\ = CARRY((\TIME1|count\(14) & ((!\TIME1|count[13]~27COUT1_76\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(14),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[10]~21\,
	cin0 => \TIME1|count[13]~27\,
	cin1 => \TIME1|count[13]~27COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(14),
	cout0 => \TIME1|count[14]~29\,
	cout1 => \TIME1|count[14]~29COUT1_77\);

-- Location: LC_X9_Y4_N9
\TIME1|count[15]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(15) = DFFEAS((\TIME1|count\(15) $ (((!\TIME1|count[10]~21\ & \TIME1|count[14]~29\) # (\TIME1|count[10]~21\ & \TIME1|count[14]~29COUT1_77\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[15]~31\ = CARRY(((!\TIME1|count[14]~29COUT1_77\) # (!\TIME1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(15),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[10]~21\,
	cin0 => \TIME1|count[14]~29\,
	cin1 => \TIME1|count[14]~29COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(15),
	cout => \TIME1|count[15]~31\);

-- Location: LC_X10_Y4_N0
\TIME1|count[16]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(16) = DFFEAS((\TIME1|count\(16) $ ((!\TIME1|count[15]~31\))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[16]~33\ = CARRY(((\TIME1|count\(16) & !\TIME1|count[15]~31\)))
-- \TIME1|count[16]~33COUT1_78\ = CARRY(((\TIME1|count\(16) & !\TIME1|count[15]~31\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(16),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[15]~31\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(16),
	cout0 => \TIME1|count[16]~33\,
	cout1 => \TIME1|count[16]~33COUT1_78\);

-- Location: LC_X10_Y4_N1
\TIME1|count[17]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(17) = DFFEAS((\TIME1|count\(17) $ (((!\TIME1|count[15]~31\ & \TIME1|count[16]~33\) # (\TIME1|count[15]~31\ & \TIME1|count[16]~33COUT1_78\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[17]~35\ = CARRY(((!\TIME1|count[16]~33\) # (!\TIME1|count\(17))))
-- \TIME1|count[17]~35COUT1_79\ = CARRY(((!\TIME1|count[16]~33COUT1_78\) # (!\TIME1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(17),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[15]~31\,
	cin0 => \TIME1|count[16]~33\,
	cin1 => \TIME1|count[16]~33COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(17),
	cout0 => \TIME1|count[17]~35\,
	cout1 => \TIME1|count[17]~35COUT1_79\);

-- Location: LC_X10_Y4_N2
\TIME1|count[18]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(18) = DFFEAS((\TIME1|count\(18) $ ((!(!\TIME1|count[15]~31\ & \TIME1|count[17]~35\) # (\TIME1|count[15]~31\ & \TIME1|count[17]~35COUT1_79\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[18]~37\ = CARRY(((\TIME1|count\(18) & !\TIME1|count[17]~35\)))
-- \TIME1|count[18]~37COUT1_80\ = CARRY(((\TIME1|count\(18) & !\TIME1|count[17]~35COUT1_79\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(18),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[15]~31\,
	cin0 => \TIME1|count[17]~35\,
	cin1 => \TIME1|count[17]~35COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(18),
	cout0 => \TIME1|count[18]~37\,
	cout1 => \TIME1|count[18]~37COUT1_80\);

-- Location: LC_X10_Y4_N3
\TIME1|count[19]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(19) = DFFEAS(\TIME1|count\(19) $ (((((!\TIME1|count[15]~31\ & \TIME1|count[18]~37\) # (\TIME1|count[15]~31\ & \TIME1|count[18]~37COUT1_80\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[19]~39\ = CARRY(((!\TIME1|count[18]~37\)) # (!\TIME1|count\(19)))
-- \TIME1|count[19]~39COUT1_81\ = CARRY(((!\TIME1|count[18]~37COUT1_80\)) # (!\TIME1|count\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(19),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[15]~31\,
	cin0 => \TIME1|count[18]~37\,
	cin1 => \TIME1|count[18]~37COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(19),
	cout0 => \TIME1|count[19]~39\,
	cout1 => \TIME1|count[19]~39COUT1_81\);

-- Location: LC_X10_Y4_N4
\TIME1|count[20]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(20) = DFFEAS(\TIME1|count\(20) $ ((((!(!\TIME1|count[15]~31\ & \TIME1|count[19]~39\) # (\TIME1|count[15]~31\ & \TIME1|count[19]~39COUT1_81\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[20]~41\ = CARRY((\TIME1|count\(20) & ((!\TIME1|count[19]~39COUT1_81\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(20),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[15]~31\,
	cin0 => \TIME1|count[19]~39\,
	cin1 => \TIME1|count[19]~39COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(20),
	cout => \TIME1|count[20]~41\);

-- Location: LC_X10_Y4_N5
\TIME1|count[21]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(21) = DFFEAS(\TIME1|count\(21) $ ((((\TIME1|count[20]~41\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[21]~43\ = CARRY(((!\TIME1|count[20]~41\)) # (!\TIME1|count\(21)))
-- \TIME1|count[21]~43COUT1_82\ = CARRY(((!\TIME1|count[20]~41\)) # (!\TIME1|count\(21)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(21),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[20]~41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(21),
	cout0 => \TIME1|count[21]~43\,
	cout1 => \TIME1|count[21]~43COUT1_82\);

-- Location: LC_X10_Y4_N6
\TIME1|count[22]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(22) = DFFEAS(\TIME1|count\(22) $ ((((!(!\TIME1|count[20]~41\ & \TIME1|count[21]~43\) # (\TIME1|count[20]~41\ & \TIME1|count[21]~43COUT1_82\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[22]~45\ = CARRY((\TIME1|count\(22) & ((!\TIME1|count[21]~43\))))
-- \TIME1|count[22]~45COUT1_83\ = CARRY((\TIME1|count\(22) & ((!\TIME1|count[21]~43COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(22),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[20]~41\,
	cin0 => \TIME1|count[21]~43\,
	cin1 => \TIME1|count[21]~43COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(22),
	cout0 => \TIME1|count[22]~45\,
	cout1 => \TIME1|count[22]~45COUT1_83\);

-- Location: LC_X10_Y4_N7
\TIME1|count[23]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(23) = DFFEAS((\TIME1|count\(23) $ (((!\TIME1|count[20]~41\ & \TIME1|count[22]~45\) # (\TIME1|count[20]~41\ & \TIME1|count[22]~45COUT1_83\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[23]~47\ = CARRY(((!\TIME1|count[22]~45\) # (!\TIME1|count\(23))))
-- \TIME1|count[23]~47COUT1_84\ = CARRY(((!\TIME1|count[22]~45COUT1_83\) # (!\TIME1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(23),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[20]~41\,
	cin0 => \TIME1|count[22]~45\,
	cin1 => \TIME1|count[22]~45COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(23),
	cout0 => \TIME1|count[23]~47\,
	cout1 => \TIME1|count[23]~47COUT1_84\);

-- Location: LC_X10_Y4_N8
\TIME1|count[24]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(24) = DFFEAS(\TIME1|count\(24) $ ((((!(!\TIME1|count[20]~41\ & \TIME1|count[23]~47\) # (\TIME1|count[20]~41\ & \TIME1|count[23]~47COUT1_84\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[24]~49\ = CARRY((\TIME1|count\(24) & ((!\TIME1|count[23]~47\))))
-- \TIME1|count[24]~49COUT1_85\ = CARRY((\TIME1|count\(24) & ((!\TIME1|count[23]~47COUT1_84\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(24),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[20]~41\,
	cin0 => \TIME1|count[23]~47\,
	cin1 => \TIME1|count[23]~47COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(24),
	cout0 => \TIME1|count[24]~49\,
	cout1 => \TIME1|count[24]~49COUT1_85\);

-- Location: LC_X10_Y4_N9
\TIME1|count[25]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(25) = DFFEAS((\TIME1|count\(25) $ (((!\TIME1|count[20]~41\ & \TIME1|count[24]~49\) # (\TIME1|count[20]~41\ & \TIME1|count[24]~49COUT1_85\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[25]~51\ = CARRY(((!\TIME1|count[24]~49COUT1_85\) # (!\TIME1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(25),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[20]~41\,
	cin0 => \TIME1|count[24]~49\,
	cin1 => \TIME1|count[24]~49COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(25),
	cout => \TIME1|count[25]~51\);

-- Location: LC_X11_Y4_N0
\TIME1|count[26]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(26) = DFFEAS((\TIME1|count\(26) $ ((!\TIME1|count[25]~51\))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[26]~53\ = CARRY(((\TIME1|count\(26) & !\TIME1|count[25]~51\)))
-- \TIME1|count[26]~53COUT1_86\ = CARRY(((\TIME1|count\(26) & !\TIME1|count[25]~51\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(26),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[25]~51\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(26),
	cout0 => \TIME1|count[26]~53\,
	cout1 => \TIME1|count[26]~53COUT1_86\);

-- Location: LC_X11_Y4_N1
\TIME1|count[27]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(27) = DFFEAS((\TIME1|count\(27) $ (((!\TIME1|count[25]~51\ & \TIME1|count[26]~53\) # (\TIME1|count[25]~51\ & \TIME1|count[26]~53COUT1_86\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[27]~55\ = CARRY(((!\TIME1|count[26]~53\) # (!\TIME1|count\(27))))
-- \TIME1|count[27]~55COUT1_87\ = CARRY(((!\TIME1|count[26]~53COUT1_86\) # (!\TIME1|count\(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(27),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[25]~51\,
	cin0 => \TIME1|count[26]~53\,
	cin1 => \TIME1|count[26]~53COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(27),
	cout0 => \TIME1|count[27]~55\,
	cout1 => \TIME1|count[27]~55COUT1_87\);

-- Location: LC_X7_Y4_N3
\TIME1|Equal0~7\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~7_combout\ = (\TIME1|count\(25)) # ((\TIME1|count\(24)) # ((\TIME1|count\(27)) # (\TIME1|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(25),
	datab => \TIME1|count\(24),
	datac => \TIME1|count\(27),
	datad => \TIME1|count\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~7_combout\);

-- Location: LC_X11_Y4_N2
\TIME1|count[28]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(28) = DFFEAS((\TIME1|count\(28) $ ((!(!\TIME1|count[25]~51\ & \TIME1|count[27]~55\) # (\TIME1|count[25]~51\ & \TIME1|count[27]~55COUT1_87\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[28]~57\ = CARRY(((\TIME1|count\(28) & !\TIME1|count[27]~55\)))
-- \TIME1|count[28]~57COUT1_88\ = CARRY(((\TIME1|count\(28) & !\TIME1|count[27]~55COUT1_87\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|count\(28),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[25]~51\,
	cin0 => \TIME1|count[27]~55\,
	cin1 => \TIME1|count[27]~55COUT1_87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(28),
	cout0 => \TIME1|count[28]~57\,
	cout1 => \TIME1|count[28]~57COUT1_88\);

-- Location: LC_X11_Y4_N3
\TIME1|count[29]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(29) = DFFEAS(\TIME1|count\(29) $ (((((!\TIME1|count[25]~51\ & \TIME1|count[28]~57\) # (\TIME1|count[25]~51\ & \TIME1|count[28]~57COUT1_88\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[29]~59\ = CARRY(((!\TIME1|count[28]~57\)) # (!\TIME1|count\(29)))
-- \TIME1|count[29]~59COUT1_89\ = CARRY(((!\TIME1|count[28]~57COUT1_88\)) # (!\TIME1|count\(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(29),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[25]~51\,
	cin0 => \TIME1|count[28]~57\,
	cin1 => \TIME1|count[28]~57COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(29),
	cout0 => \TIME1|count[29]~59\,
	cout1 => \TIME1|count[29]~59COUT1_89\);

-- Location: LC_X11_Y4_N4
\TIME1|count[30]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(30) = DFFEAS(\TIME1|count\(30) $ ((((!(!\TIME1|count[25]~51\ & \TIME1|count[29]~59\) # (\TIME1|count[25]~51\ & \TIME1|count[29]~59COUT1_89\))))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )
-- \TIME1|count[30]~61\ = CARRY((\TIME1|count\(30) & ((!\TIME1|count[29]~59COUT1_89\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(30),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[25]~51\,
	cin0 => \TIME1|count[29]~59\,
	cin1 => \TIME1|count[29]~59COUT1_89\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(30),
	cout => \TIME1|count[30]~61\);

-- Location: LC_X11_Y4_N5
\TIME1|count[31]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(31) = DFFEAS(\TIME1|count\(31) $ ((((\TIME1|count[30]~61\)))), GLOBAL(\Clk~combout\), VCC, , , , , \TIME1|count[25]~64_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(31),
	aclr => GND,
	sclr => \TIME1|count[25]~64_combout\,
	cin => \TIME1|count[30]~61\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(31));

-- Location: LC_X11_Y4_N8
\TIME1|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~8_combout\ = (\TIME1|count\(31)) # ((\TIME1|count\(28)) # ((\TIME1|count\(30)) # (\TIME1|count\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(31),
	datab => \TIME1|count\(28),
	datac => \TIME1|count\(30),
	datad => \TIME1|count\(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~8_combout\);

-- Location: LC_X7_Y4_N0
\TIME1|Equal0~6\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~6_combout\ = (\TIME1|count\(20)) # ((\TIME1|count\(23)) # ((\TIME1|count\(22)) # (\TIME1|count\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(20),
	datab => \TIME1|count\(23),
	datac => \TIME1|count\(22),
	datad => \TIME1|count\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~6_combout\);

-- Location: LC_X7_Y4_N4
\TIME1|Equal0~5\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~5_combout\ = (\TIME1|count\(19)) # ((\TIME1|count\(18)) # ((\TIME1|count\(16)) # (\TIME1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(19),
	datab => \TIME1|count\(18),
	datac => \TIME1|count\(16),
	datad => \TIME1|count\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~5_combout\);

-- Location: LC_X7_Y4_N5
\TIME1|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~9_combout\ = (\TIME1|Equal0~7_combout\) # ((\TIME1|Equal0~8_combout\) # ((\TIME1|Equal0~6_combout\) # (\TIME1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|Equal0~7_combout\,
	datab => \TIME1|Equal0~8_combout\,
	datac => \TIME1|Equal0~6_combout\,
	datad => \TIME1|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~9_combout\);

-- Location: LC_X7_Y4_N6
\TIME1|count[25]~64\ : maxv_lcell
-- Equation(s):
-- \TIME1|count[25]~64_combout\ = (\Reset~combout\) # (((!\TIME1|Equal0~4_combout\ & !\TIME1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Reset~combout\,
	datac => \TIME1|Equal0~4_combout\,
	datad => \TIME1|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|count[25]~64_combout\);

-- Location: LC_X8_Y4_N3
\TIME1|Equal0~1\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~1_combout\ = ((\TIME1|count\(5)) # ((\TIME1|count\(6)) # (\TIME1|count\(7)))) # (!\TIME1|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(4),
	datab => \TIME1|count\(5),
	datac => \TIME1|count\(6),
	datad => \TIME1|count\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~1_combout\);

-- Location: LC_X8_Y4_N2
\TIME1|Equal0~0\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~0_combout\ = (\TIME1|count\(1)) # (((\TIME1|count\(0)) # (\TIME1|count\(2))) # (!\TIME1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(1),
	datab => \TIME1|count\(3),
	datac => \TIME1|count\(0),
	datad => \TIME1|count\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~0_combout\);

-- Location: LC_X8_Y4_N0
\TIME1|Equal0~3\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~3_combout\ = (\TIME1|count\(12)) # ((\TIME1|count\(14)) # ((\TIME1|count\(15)) # (\TIME1|count\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(12),
	datab => \TIME1|count\(14),
	datac => \TIME1|count\(15),
	datad => \TIME1|count\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~3_combout\);

-- Location: LC_X8_Y4_N1
\TIME1|Equal0~2\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~2_combout\ = (\TIME1|count\(9)) # ((\TIME1|count\(11)) # ((\TIME1|count\(8)) # (\TIME1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(9),
	datab => \TIME1|count\(11),
	datac => \TIME1|count\(8),
	datad => \TIME1|count\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~2_combout\);

-- Location: LC_X7_Y4_N7
\TIME1|Equal0~4\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~4_combout\ = (\TIME1|Equal0~1_combout\) # ((\TIME1|Equal0~0_combout\) # ((\TIME1|Equal0~3_combout\) # (\TIME1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|Equal0~1_combout\,
	datab => \TIME1|Equal0~0_combout\,
	datac => \TIME1|Equal0~3_combout\,
	datad => \TIME1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~4_combout\);

-- Location: LC_X7_Y4_N2
\TIME1|S1\ : maxv_lcell
-- Equation(s):
-- \TIME1|S1~regout\ = DFFEAS((!\Reset~combout\ & (!\TIME1|Equal0~4_combout\ & (!\TIME1|Equal0~9_combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Reset~combout\,
	datab => \TIME1|Equal0~4_combout\,
	datac => \TIME1|Equal0~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|S1~regout\);

-- Location: LC_X7_Y7_N3
\current_state~25\ : maxv_lcell
-- Equation(s):
-- \current_state~25_combout\ = ((!\TIME1|S1~regout\ & (\current_state.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|S1~regout\,
	datac => \current_state.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \current_state~25_combout\);

-- Location: LC_X8_Y8_N4
\current_state~21\ : maxv_lcell
-- Equation(s):
-- \current_state~21_combout\ = ((!\TIME2|S1~regout\ & ((\current_state.S6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|S1~regout\,
	datad => \current_state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \current_state~21_combout\);

-- Location: LC_X8_Y6_N4
\current_state~19\ : maxv_lcell
-- Equation(s):
-- \current_state~19_combout\ = (!\TIME2|S1~regout\ & (((\current_state.S4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|S1~regout\,
	datac => \current_state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \current_state~19_combout\);

-- Location: LC_X8_Y6_N8
\current_state~15\ : maxv_lcell
-- Equation(s):
-- \current_state~15_combout\ = (!\TIME2|S1~regout\ & (((\current_state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|S1~regout\,
	datac => \current_state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \current_state~15_combout\);

-- Location: LC_X8_Y6_N6
\current_state.S2\ : maxv_lcell
-- Equation(s):
-- \current_state.S2~regout\ = DFFEAS((!\Reset~combout\ & ((\current_state~15_combout\) # ((\current_state.S1~regout\ & \TIME1|S1~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \current_state~15_combout\,
	datab => \current_state.S1~regout\,
	datac => \Reset~combout\,
	datad => \TIME1|S1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.S2~regout\);

-- Location: LC_X8_Y6_N7
\current_state~17\ : maxv_lcell
-- Equation(s):
-- \current_state~17_combout\ = ((!\TIME1|S1~regout\ & ((\current_state.S3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|S1~regout\,
	datad => \current_state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \current_state~17_combout\);

-- Location: LC_X8_Y6_N3
\current_state.S3\ : maxv_lcell
-- Equation(s):
-- \current_state.S3~regout\ = DFFEAS((!\Reset~combout\ & ((\current_state~17_combout\) # ((\current_state.S2~regout\ & \TIME2|S1~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \current_state.S2~regout\,
	datab => \current_state~17_combout\,
	datac => \Reset~combout\,
	datad => \TIME2|S1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.S3~regout\);

-- Location: LC_X8_Y6_N5
\current_state.S4\ : maxv_lcell
-- Equation(s):
-- \current_state.S4~regout\ = DFFEAS((!\Reset~combout\ & ((\current_state~19_combout\) # ((\TIME1|S1~regout\ & \current_state.S3~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Reset~combout\,
	datab => \TIME1|S1~regout\,
	datac => \current_state~19_combout\,
	datad => \current_state.S3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.S4~regout\);

-- Location: LC_X8_Y8_N1
\current_state~11\ : maxv_lcell
-- Equation(s):
-- \current_state~11_combout\ = (((!\TIME1|S1~regout\ & \current_state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TIME1|S1~regout\,
	datad => \current_state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \current_state~11_combout\);

-- Location: LC_X8_Y8_N8
\current_state.S5\ : maxv_lcell
-- Equation(s):
-- \current_state.S5~regout\ = DFFEAS((!\Reset~combout\ & ((\current_state~11_combout\) # ((\current_state.S4~regout\ & \TIME2|S1~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \current_state.S4~regout\,
	datab => \TIME2|S1~regout\,
	datac => \Reset~combout\,
	datad => \current_state~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.S5~regout\);

-- Location: LC_X8_Y8_N9
\current_state.S6\ : maxv_lcell
-- Equation(s):
-- \current_state.S6~regout\ = DFFEAS((!\Reset~combout\ & ((\current_state~21_combout\) # ((\TIME1|S1~regout\ & \current_state.S5~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \current_state~21_combout\,
	datab => \TIME1|S1~regout\,
	datac => \Reset~combout\,
	datad => \current_state.S5~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.S6~regout\);

-- Location: LC_X7_Y7_N6
\current_state.S7\ : maxv_lcell
-- Equation(s):
-- \current_state.S7~regout\ = DFFEAS((!\Reset~combout\ & ((\current_state~25_combout\) # ((\TIME2|S1~regout\ & \current_state.S6~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \current_state~25_combout\,
	datab => \TIME2|S1~regout\,
	datac => \Reset~combout\,
	datad => \current_state.S6~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.S7~regout\);

-- Location: LC_X7_Y7_N4
\current_state~13\ : maxv_lcell
-- Equation(s):
-- \current_state~13_combout\ = (\current_state.S7~regout\ & ((\TIME1|S1~regout\) # ((\current_state.S0~regout\ & !\TIME2|S1~regout\)))) # (!\current_state.S7~regout\ & (((\current_state.S0~regout\ & !\TIME2|S1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "88f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S7~regout\,
	datab => \TIME1|S1~regout\,
	datac => \current_state.S0~regout\,
	datad => \TIME2|S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \current_state~13_combout\);

-- Location: LC_X7_Y7_N5
\current_state.S0\ : maxv_lcell
-- Equation(s):
-- \current_state.S0~regout\ = DFFEAS(((!\Reset~combout\ & ((\current_state~13_combout\) # (!\current_state.RST~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f05",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \current_state.RST~regout\,
	datac => \Reset~combout\,
	datad => \current_state~13_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.S0~regout\);

-- Location: LC_X8_Y6_N9
\current_state~23\ : maxv_lcell
-- Equation(s):
-- \current_state~23_combout\ = ((!\TIME1|S1~regout\ & ((\current_state.S1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|S1~regout\,
	datad => \current_state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \current_state~23_combout\);

-- Location: LC_X8_Y6_N2
\current_state.S1\ : maxv_lcell
-- Equation(s):
-- \current_state.S1~regout\ = DFFEAS((!\Reset~combout\ & ((\current_state~23_combout\) # ((\TIME2|S1~regout\ & \current_state.S0~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f08",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|S1~regout\,
	datab => \current_state.S0~regout\,
	datac => \Reset~combout\,
	datad => \current_state~23_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \current_state.S1~regout\);

-- Location: LC_X8_Y6_N1
\lights~0\ : maxv_lcell
-- Equation(s):
-- \lights~0_combout\ = (!\current_state.S2~regout\ & (!\current_state.S0~regout\ & (!\current_state.S4~regout\ & !\current_state.S3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S2~regout\,
	datab => \current_state.S0~regout\,
	datac => \current_state.S4~regout\,
	datad => \current_state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lights~0_combout\);

-- Location: LC_X8_Y8_N7
\lights~1\ : maxv_lcell
-- Equation(s):
-- \lights~1_combout\ = (\current_state.RST~regout\ & (((!\current_state.S1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RST~regout\,
	datad => \current_state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lights~1_combout\);

-- Location: LC_X8_Y8_N2
\lights~2\ : maxv_lcell
-- Equation(s):
-- \lights~2_combout\ = (\current_state.S5~regout\) # (((!\current_state.S6~regout\) # (!\lights~0_combout\)) # (!\lights~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S5~regout\,
	datab => \lights~1_combout\,
	datac => \lights~0_combout\,
	datad => \current_state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lights~2_combout\);

-- Location: LC_X8_Y8_N5
\lights~3\ : maxv_lcell
-- Equation(s):
-- \lights~3_combout\ = (\lights~2_combout\ & (((!\current_state.S1~regout\ & \lights~0_combout\)) # (!\current_state.RST~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RST~regout\,
	datab => \current_state.S1~regout\,
	datac => \lights~0_combout\,
	datad => \lights~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lights~3_combout\);

-- Location: LC_X8_Y8_N6
\lights~4\ : maxv_lcell
-- Equation(s):
-- \lights~4_combout\ = (((\current_state.S3~regout\) # (\current_state.S5~regout\))) # (!\current_state.RST~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RST~regout\,
	datac => \current_state.S3~regout\,
	datad => \current_state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lights~4_combout\);

-- Location: LC_X8_Y8_N0
\lights~5\ : maxv_lcell
-- Equation(s):
-- \lights~5_combout\ = (((\current_state.S3~regout\) # (\current_state.S1~regout\))) # (!\current_state.RST~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.RST~regout\,
	datac => \current_state.S3~regout\,
	datad => \current_state.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lights~5_combout\);

-- Location: LC_X8_Y8_N3
\lights~6\ : maxv_lcell
-- Equation(s):
-- \lights~6_combout\ = ((!\current_state.S5~regout\ & (\lights~0_combout\ & !\current_state.S6~regout\))) # (!\lights~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3373",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \current_state.S5~regout\,
	datab => \lights~1_combout\,
	datac => \lights~0_combout\,
	datad => \current_state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \lights~6_combout\);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lights[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lights~3_combout\,
	oe => VCC,
	padio => ww_lights(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lights[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_lights~2_combout\,
	oe => VCC,
	padio => ww_lights(1));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lights[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lights~4_combout\,
	oe => VCC,
	padio => ww_lights(2));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lights[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \current_state.S4~regout\,
	oe => VCC,
	padio => ww_lights(3));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lights[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lights~5_combout\,
	oe => VCC,
	padio => ww_lights(4));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lights[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \current_state.S2~regout\,
	oe => VCC,
	padio => ww_lights(5));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lights[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \lights~6_combout\,
	oe => VCC,
	padio => ww_lights(6));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\lights[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \current_state.S0~regout\,
	oe => VCC,
	padio => ww_lights(7));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\t_5secs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \TIME2|S1~regout\,
	oe => VCC,
	padio => ww_t_5secs);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\t_1secs~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \TIME1|S1~regout\,
	oe => VCC,
	padio => ww_t_1secs);
END structure;


