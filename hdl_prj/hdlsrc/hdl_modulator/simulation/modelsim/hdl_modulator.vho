-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "02/07/2018 21:36:06"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hdl_modulator IS
    PORT (
	clk : IN std_logic;
	reset_x : IN std_logic;
	clk_enable : IN std_logic;
	Real_rsvd : IN std_logic_vector(19 DOWNTO 0);
	Imag : IN std_logic_vector(19 DOWNTO 0);
	ce_out : OUT std_logic;
	Baseband_Mixed_Signal : OUT std_logic_vector(36 DOWNTO 0)
	);
END hdl_modulator;

-- Design Ports Information
-- ce_out	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[0]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[1]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[3]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[4]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[5]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[6]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[7]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[8]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[9]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[10]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[11]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[12]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[13]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[14]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[15]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[16]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[17]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[18]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[19]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[20]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[21]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[22]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[23]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[24]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[25]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[26]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[27]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[28]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[29]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[30]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[31]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[32]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[33]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[34]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[35]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Baseband_Mixed_Signal[36]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_enable	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[0]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[2]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[5]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[7]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[9]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[10]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[11]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[12]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[13]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[14]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[15]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[16]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[17]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[18]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Imag[19]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[0]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[1]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[3]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[4]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[5]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[6]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[7]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[8]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[9]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[10]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[11]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[12]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[13]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[14]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[15]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[16]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[17]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[18]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Real_rsvd[19]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_x	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hdl_modulator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_x : std_logic;
SIGNAL ww_clk_enable : std_logic;
SIGNAL ww_Real_rsvd : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_Imag : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_ce_out : std_logic;
SIGNAL ww_Baseband_Mixed_Signal : std_logic_vector(36 DOWNTO 0);
SIGNAL \Mult1~mac_AX_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Mult1~mac_AY_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Mult1~mac_CHAININ_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~mac_AX_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Mult0~mac_AY_bus\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \Mult0~mac_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult0~mac_CHAINOUT_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \Mult1~8\ : std_logic;
SIGNAL \Mult1~9\ : std_logic;
SIGNAL \Mult1~10\ : std_logic;
SIGNAL \Mult1~11\ : std_logic;
SIGNAL \Mult1~12\ : std_logic;
SIGNAL \Mult1~13\ : std_logic;
SIGNAL \Mult1~14\ : std_logic;
SIGNAL \Mult1~15\ : std_logic;
SIGNAL \Mult1~16\ : std_logic;
SIGNAL \Mult1~17\ : std_logic;
SIGNAL \Mult1~18\ : std_logic;
SIGNAL \Mult1~19\ : std_logic;
SIGNAL \Mult1~20\ : std_logic;
SIGNAL \Mult1~21\ : std_logic;
SIGNAL \Mult1~22\ : std_logic;
SIGNAL \Mult1~23\ : std_logic;
SIGNAL \Mult1~24\ : std_logic;
SIGNAL \Mult1~25\ : std_logic;
SIGNAL \Mult1~26\ : std_logic;
SIGNAL \Mult1~27\ : std_logic;
SIGNAL \Mult1~28\ : std_logic;
SIGNAL \Mult1~29\ : std_logic;
SIGNAL \Mult1~30\ : std_logic;
SIGNAL \Mult1~31\ : std_logic;
SIGNAL \Mult1~32\ : std_logic;
SIGNAL \Mult1~33\ : std_logic;
SIGNAL \Mult1~34\ : std_logic;
SIGNAL \Mult0~8\ : std_logic;
SIGNAL \Mult0~9\ : std_logic;
SIGNAL \Mult0~10\ : std_logic;
SIGNAL \Mult0~11\ : std_logic;
SIGNAL \Mult0~12\ : std_logic;
SIGNAL \Mult0~13\ : std_logic;
SIGNAL \Mult0~14\ : std_logic;
SIGNAL \Mult0~15\ : std_logic;
SIGNAL \Mult0~16\ : std_logic;
SIGNAL \Mult0~17\ : std_logic;
SIGNAL \Mult0~18\ : std_logic;
SIGNAL \Mult0~19\ : std_logic;
SIGNAL \Mult0~20\ : std_logic;
SIGNAL \Mult0~21\ : std_logic;
SIGNAL \Mult0~22\ : std_logic;
SIGNAL \Mult0~23\ : std_logic;
SIGNAL \Mult0~24\ : std_logic;
SIGNAL \Mult0~25\ : std_logic;
SIGNAL \Mult0~26\ : std_logic;
SIGNAL \Mult0~27\ : std_logic;
SIGNAL \Mult0~28\ : std_logic;
SIGNAL \Mult0~29\ : std_logic;
SIGNAL \Mult0~30\ : std_logic;
SIGNAL \Mult0~31\ : std_logic;
SIGNAL \Mult0~32\ : std_logic;
SIGNAL \Mult0~33\ : std_logic;
SIGNAL \Mult0~34\ : std_logic;
SIGNAL \Mult0~35\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk_enable~input_o\ : std_logic;
SIGNAL \Imag[0]~input_o\ : std_logic;
SIGNAL \Imag[1]~input_o\ : std_logic;
SIGNAL \Imag[2]~input_o\ : std_logic;
SIGNAL \Imag[3]~input_o\ : std_logic;
SIGNAL \Imag[4]~input_o\ : std_logic;
SIGNAL \Imag[5]~input_o\ : std_logic;
SIGNAL \Imag[6]~input_o\ : std_logic;
SIGNAL \Imag[7]~input_o\ : std_logic;
SIGNAL \Imag[8]~input_o\ : std_logic;
SIGNAL \Imag[9]~input_o\ : std_logic;
SIGNAL \Imag[10]~input_o\ : std_logic;
SIGNAL \Imag[11]~input_o\ : std_logic;
SIGNAL \Imag[12]~input_o\ : std_logic;
SIGNAL \Imag[13]~input_o\ : std_logic;
SIGNAL \Imag[14]~input_o\ : std_logic;
SIGNAL \Imag[15]~input_o\ : std_logic;
SIGNAL \Imag[16]~input_o\ : std_logic;
SIGNAL \Imag[17]~input_o\ : std_logic;
SIGNAL \Imag[18]~input_o\ : std_logic;
SIGNAL \Imag[19]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \reset_x~input_o\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|LessThan0~0_combout\ : std_logic;
SIGNAL \scale_out1[5]~1_combout\ : std_logic;
SIGNAL \scale_out1[11]~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|LessThan0~1_combout\ : std_logic;
SIGNAL \scale_out1[12]~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|LessThan1~0_combout\ : std_logic;
SIGNAL \scale_out1[13]~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|LessThan1~1_combout\ : std_logic;
SIGNAL \scale_out1[10]~6_combout\ : std_logic;
SIGNAL \scale_out1[9]~7_combout\ : std_logic;
SIGNAL \scale_out1[8]~8_combout\ : std_logic;
SIGNAL \scale_out1[7]~5_combout\ : std_logic;
SIGNAL \scale_out1[6]~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~2\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~6\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~10\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~26\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~18\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~13_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~17_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~5_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~9_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~1_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~32_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~14\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~30\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~21_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux14~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~25_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux14~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux14~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~29_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux14~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux14~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~1_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux13~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux13~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux13~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux13~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux13~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~2\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~5_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux12~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux12~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux12~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux12~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux12~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~6\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~9_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux11~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux11~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux11~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux11~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux11~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~10\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~13_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux4~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux10~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux10~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux10~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux10~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~14\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~17_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux9~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux9~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux9~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux9~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~18\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~21_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux8~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux8~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux8~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux8~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux8~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~22\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~25_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux7~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux7~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux7~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux7~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux7~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~26\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~29_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux6~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux6~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux6~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux6~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux6~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~30\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~33_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux5~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux5~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux5~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux5~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux5~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~34\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~37_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux4~6_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux4~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux4~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux4~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux4~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~38\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~41_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux3~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux3~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux4~5_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux3~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux3~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~42\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~45_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux2~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux2~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux2~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux2~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~46\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~49_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Mux1~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~50\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~53_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~54\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~57_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~58\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add2~61_sumout\ : std_logic;
SIGNAL \Real_rsvd[0]~input_o\ : std_logic;
SIGNAL \Real_rsvd[1]~input_o\ : std_logic;
SIGNAL \Real_rsvd[2]~input_o\ : std_logic;
SIGNAL \Real_rsvd[3]~input_o\ : std_logic;
SIGNAL \Real_rsvd[4]~input_o\ : std_logic;
SIGNAL \Real_rsvd[5]~input_o\ : std_logic;
SIGNAL \Real_rsvd[6]~input_o\ : std_logic;
SIGNAL \Real_rsvd[7]~input_o\ : std_logic;
SIGNAL \Real_rsvd[8]~input_o\ : std_logic;
SIGNAL \Real_rsvd[9]~input_o\ : std_logic;
SIGNAL \Real_rsvd[10]~input_o\ : std_logic;
SIGNAL \Real_rsvd[11]~input_o\ : std_logic;
SIGNAL \Real_rsvd[12]~input_o\ : std_logic;
SIGNAL \Real_rsvd[13]~input_o\ : std_logic;
SIGNAL \Real_rsvd[14]~input_o\ : std_logic;
SIGNAL \Real_rsvd[15]~input_o\ : std_logic;
SIGNAL \Real_rsvd[16]~input_o\ : std_logic;
SIGNAL \Real_rsvd[17]~input_o\ : std_logic;
SIGNAL \Real_rsvd[18]~input_o\ : std_logic;
SIGNAL \Real_rsvd[19]~input_o\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|LessThan0~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|LessThan1~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|LessThan1~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~34_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~35\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~39\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~42_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~38_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~43\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~59\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~51\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~46_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~50_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|LessThan0~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~47\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~63\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~54_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux14~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux14~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~58_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux14~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|Add1~62_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux14~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux14~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~1_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux13~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux13~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux13~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux13~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux13~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~2\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~5_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux12~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux12~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux12~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux12~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux12~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~6\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~9_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux11~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux11~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux11~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux11~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux11~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~10\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~13_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux4~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux10~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux10~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux10~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux10~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~14\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~17_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux9~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux9~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux9~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux9~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~18\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~21_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux8~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux8~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux8~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux8~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux8~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~22\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~25_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux7~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux7~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux7~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux7~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux7~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~26\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~29_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux6~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux6~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux6~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux6~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux6~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~30\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~33_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux5~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux5~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux5~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux5~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux5~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~34\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~37_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux4~6_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux4~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux4~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux4~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux4~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~38\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~41_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux3~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux3~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux4~5_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux3~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux3~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~42\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~45_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux2~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux2~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux2~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux2~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~46\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~49_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Mux1~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~50\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~53_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~54\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~57_sumout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~58\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|Add2~61_sumout\ : std_logic;
SIGNAL \Mult0~100\ : std_logic;
SIGNAL \Mult0~101\ : std_logic;
SIGNAL \Mult0~102\ : std_logic;
SIGNAL \Mult0~103\ : std_logic;
SIGNAL \Mult0~104\ : std_logic;
SIGNAL \Mult0~105\ : std_logic;
SIGNAL \Mult0~106\ : std_logic;
SIGNAL \Mult0~107\ : std_logic;
SIGNAL \Mult0~108\ : std_logic;
SIGNAL \Mult0~109\ : std_logic;
SIGNAL \Mult0~110\ : std_logic;
SIGNAL \Mult0~111\ : std_logic;
SIGNAL \Mult0~112\ : std_logic;
SIGNAL \Mult0~113\ : std_logic;
SIGNAL \Mult0~114\ : std_logic;
SIGNAL \Mult0~115\ : std_logic;
SIGNAL \Mult0~116\ : std_logic;
SIGNAL \Mult0~117\ : std_logic;
SIGNAL \Mult0~118\ : std_logic;
SIGNAL \Mult0~119\ : std_logic;
SIGNAL \Mult0~120\ : std_logic;
SIGNAL \Mult0~121\ : std_logic;
SIGNAL \Mult0~122\ : std_logic;
SIGNAL \Mult0~123\ : std_logic;
SIGNAL \Mult0~124\ : std_logic;
SIGNAL \Mult0~125\ : std_logic;
SIGNAL \Mult0~126\ : std_logic;
SIGNAL \Mult0~127\ : std_logic;
SIGNAL \Mult0~128\ : std_logic;
SIGNAL \Mult0~129\ : std_logic;
SIGNAL \Mult0~130\ : std_logic;
SIGNAL \Mult0~131\ : std_logic;
SIGNAL \Mult0~132\ : std_logic;
SIGNAL \Mult0~133\ : std_logic;
SIGNAL \Mult0~134\ : std_logic;
SIGNAL \Mult0~135\ : std_logic;
SIGNAL \Mult0~136\ : std_logic;
SIGNAL \Mult0~137\ : std_logic;
SIGNAL \Mult0~138\ : std_logic;
SIGNAL \Mult0~139\ : std_logic;
SIGNAL \Mult0~140\ : std_logic;
SIGNAL \Mult0~141\ : std_logic;
SIGNAL \Mult0~142\ : std_logic;
SIGNAL \Mult0~143\ : std_logic;
SIGNAL \Mult0~144\ : std_logic;
SIGNAL \Mult0~145\ : std_logic;
SIGNAL \Mult0~146\ : std_logic;
SIGNAL \Mult0~147\ : std_logic;
SIGNAL \Mult0~148\ : std_logic;
SIGNAL \Mult0~149\ : std_logic;
SIGNAL \Mult0~150\ : std_logic;
SIGNAL \Mult0~151\ : std_logic;
SIGNAL \Mult0~152\ : std_logic;
SIGNAL \Mult0~153\ : std_logic;
SIGNAL \Mult0~154\ : std_logic;
SIGNAL \Mult0~155\ : std_logic;
SIGNAL \Mult0~156\ : std_logic;
SIGNAL \Mult0~157\ : std_logic;
SIGNAL \Mult0~158\ : std_logic;
SIGNAL \Mult0~159\ : std_logic;
SIGNAL \Mult0~160\ : std_logic;
SIGNAL \Mult0~161\ : std_logic;
SIGNAL \Mult0~162\ : std_logic;
SIGNAL \Mult0~163\ : std_logic;
SIGNAL \Mult1~mac_resulta\ : std_logic;
SIGNAL \Mult1~304\ : std_logic;
SIGNAL \Mult1~305\ : std_logic;
SIGNAL \Mult1~306\ : std_logic;
SIGNAL \Mult1~307\ : std_logic;
SIGNAL \Mult1~308\ : std_logic;
SIGNAL \Mult1~309\ : std_logic;
SIGNAL \Mult1~310\ : std_logic;
SIGNAL \Mult1~311\ : std_logic;
SIGNAL \Mult1~312\ : std_logic;
SIGNAL \Mult1~313\ : std_logic;
SIGNAL \Mult1~314\ : std_logic;
SIGNAL \Mult1~315\ : std_logic;
SIGNAL \Mult1~316\ : std_logic;
SIGNAL \Mult1~317\ : std_logic;
SIGNAL \Mult1~318\ : std_logic;
SIGNAL \Mult1~319\ : std_logic;
SIGNAL \Mult1~320\ : std_logic;
SIGNAL \Mult1~321\ : std_logic;
SIGNAL \Mult1~322\ : std_logic;
SIGNAL \Mult1~323\ : std_logic;
SIGNAL \Mult1~324\ : std_logic;
SIGNAL \Mult1~325\ : std_logic;
SIGNAL \Mult1~326\ : std_logic;
SIGNAL \Mult1~327\ : std_logic;
SIGNAL \Mult1~328\ : std_logic;
SIGNAL \Mult1~329\ : std_logic;
SIGNAL \Mult1~330\ : std_logic;
SIGNAL \Mult1~331\ : std_logic;
SIGNAL \Mult1~332\ : std_logic;
SIGNAL \Mult1~333\ : std_logic;
SIGNAL \Mult1~334\ : std_logic;
SIGNAL \Mult1~335\ : std_logic;
SIGNAL \Mult1~336\ : std_logic;
SIGNAL \Mult1~337\ : std_logic;
SIGNAL \Mult1~338\ : std_logic;
SIGNAL \Mult1~339\ : std_logic;
SIGNAL counter_sine_generator_out1 : std_logic_vector(15 DOWNTO 0);
SIGNAL Add_add_cast : std_logic_vector(36 DOWNTO 0);
SIGNAL Product_out1 : std_logic_vector(35 DOWNTO 0);
SIGNAL \ALT_INV_reset_x~input_o\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux4~6_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux8~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux6~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux5~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux4~6_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux3~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux4~5_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \Ureal_carrier_wave_1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~32_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[8]~8_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[9]~7_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[10]~6_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[7]~5_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[6]~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[13]~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux2~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux2~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux3~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux3~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux4~5_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux4~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux4~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux4~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux5~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux5~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux5~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux6~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux6~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux6~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux7~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux7~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux7~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux8~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux8~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux8~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux9~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux9~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux9~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux9~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux10~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux10~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux10~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux10~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux11~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux11~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux11~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux11~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux11~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux12~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux12~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux12~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux12~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux12~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux13~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux13~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux13~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux13~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux13~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux14~4_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux14~3_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux14~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux14~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Mux14~0_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[12]~2_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[5]~1_combout\ : std_logic;
SIGNAL \ALT_INV_scale_out1[11]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Add1~0_combout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\ : std_logic;
SIGNAL ALT_INV_counter_sine_generator_out1 : std_logic_vector(15 DOWNTO 0);
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset_x <= reset_x;
ww_clk_enable <= clk_enable;
ww_Real_rsvd <= Real_rsvd;
ww_Imag <= Imag;
ce_out <= ww_ce_out;
Baseband_Mixed_Signal <= ww_Baseband_Mixed_Signal;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Mult1~mac_AX_bus\ <= (\Imag[19]~input_o\ & \Imag[19]~input_o\ & \Imag[19]~input_o\ & \Imag[19]~input_o\ & \Imag[19]~input_o\ & \Imag[19]~input_o\ & \Imag[19]~input_o\ & \Imag[19]~input_o\ & \Imag[18]~input_o\ & \Imag[17]~input_o\ & \Imag[16]~input_o\ & 
\Imag[15]~input_o\ & \Imag[14]~input_o\ & \Imag[13]~input_o\ & \Imag[12]~input_o\ & \Imag[11]~input_o\ & \Imag[10]~input_o\ & \Imag[9]~input_o\ & \Imag[8]~input_o\ & \Imag[7]~input_o\ & \Imag[6]~input_o\ & \Imag[5]~input_o\ & \Imag[4]~input_o\ & 
\Imag[3]~input_o\ & \Imag[2]~input_o\ & \Imag[1]~input_o\ & \Imag[0]~input_o\);

\Mult1~mac_AY_bus\ <= (\Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & 
\Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~61_sumout\ & 
\Uimag_carrier_wave_1|Add2~61_sumout\ & \Uimag_carrier_wave_1|Add2~57_sumout\ & \Uimag_carrier_wave_1|Add2~53_sumout\ & \Uimag_carrier_wave_1|Add2~49_sumout\ & \Uimag_carrier_wave_1|Add2~45_sumout\ & \Uimag_carrier_wave_1|Add2~41_sumout\ & 
\Uimag_carrier_wave_1|Add2~37_sumout\ & \Uimag_carrier_wave_1|Add2~33_sumout\ & \Uimag_carrier_wave_1|Add2~29_sumout\ & \Uimag_carrier_wave_1|Add2~25_sumout\ & \Uimag_carrier_wave_1|Add2~21_sumout\ & \Uimag_carrier_wave_1|Add2~17_sumout\ & 
\Uimag_carrier_wave_1|Add2~13_sumout\ & \Uimag_carrier_wave_1|Add2~9_sumout\ & \Uimag_carrier_wave_1|Add2~5_sumout\ & \Uimag_carrier_wave_1|Add2~1_sumout\);

\Mult1~mac_CHAININ_bus\ <= (\Mult0~163\ & \Mult0~162\ & \Mult0~161\ & \Mult0~160\ & \Mult0~159\ & \Mult0~158\ & \Mult0~157\ & \Mult0~156\ & \Mult0~155\ & \Mult0~154\ & \Mult0~153\ & \Mult0~152\ & \Mult0~151\ & \Mult0~150\ & \Mult0~149\ & \Mult0~148\ & 
\Mult0~147\ & \Mult0~146\ & \Mult0~145\ & \Mult0~144\ & \Mult0~143\ & \Mult0~142\ & \Mult0~141\ & \Mult0~140\ & \Mult0~139\ & \Mult0~138\ & \Mult0~137\ & \Mult0~136\ & \Mult0~135\ & \Mult0~134\ & \Mult0~133\ & \Mult0~132\ & \Mult0~131\ & \Mult0~130\ & 
\Mult0~129\ & \Mult0~128\ & \Mult0~127\ & \Mult0~126\ & \Mult0~125\ & \Mult0~124\ & \Mult0~123\ & \Mult0~122\ & \Mult0~121\ & \Mult0~120\ & \Mult0~119\ & \Mult0~118\ & \Mult0~117\ & \Mult0~116\ & \Mult0~115\ & \Mult0~114\ & \Mult0~113\ & \Mult0~112\ & 
\Mult0~111\ & \Mult0~110\ & \Mult0~109\ & \Mult0~108\ & \Mult0~107\ & \Mult0~106\ & \Mult0~105\ & \Mult0~104\ & \Mult0~103\ & \Mult0~102\ & \Mult0~101\ & \Mult0~100\);

\Mult1~mac_resulta\ <= \Mult1~mac_RESULTA_bus\(0);
\Mult1~304\ <= \Mult1~mac_RESULTA_bus\(1);
\Mult1~305\ <= \Mult1~mac_RESULTA_bus\(2);
\Mult1~306\ <= \Mult1~mac_RESULTA_bus\(3);
\Mult1~307\ <= \Mult1~mac_RESULTA_bus\(4);
\Mult1~308\ <= \Mult1~mac_RESULTA_bus\(5);
\Mult1~309\ <= \Mult1~mac_RESULTA_bus\(6);
\Mult1~310\ <= \Mult1~mac_RESULTA_bus\(7);
\Mult1~311\ <= \Mult1~mac_RESULTA_bus\(8);
\Mult1~312\ <= \Mult1~mac_RESULTA_bus\(9);
\Mult1~313\ <= \Mult1~mac_RESULTA_bus\(10);
\Mult1~314\ <= \Mult1~mac_RESULTA_bus\(11);
\Mult1~315\ <= \Mult1~mac_RESULTA_bus\(12);
\Mult1~316\ <= \Mult1~mac_RESULTA_bus\(13);
\Mult1~317\ <= \Mult1~mac_RESULTA_bus\(14);
\Mult1~318\ <= \Mult1~mac_RESULTA_bus\(15);
\Mult1~319\ <= \Mult1~mac_RESULTA_bus\(16);
\Mult1~320\ <= \Mult1~mac_RESULTA_bus\(17);
\Mult1~321\ <= \Mult1~mac_RESULTA_bus\(18);
\Mult1~322\ <= \Mult1~mac_RESULTA_bus\(19);
\Mult1~323\ <= \Mult1~mac_RESULTA_bus\(20);
\Mult1~324\ <= \Mult1~mac_RESULTA_bus\(21);
\Mult1~325\ <= \Mult1~mac_RESULTA_bus\(22);
\Mult1~326\ <= \Mult1~mac_RESULTA_bus\(23);
\Mult1~327\ <= \Mult1~mac_RESULTA_bus\(24);
\Mult1~328\ <= \Mult1~mac_RESULTA_bus\(25);
\Mult1~329\ <= \Mult1~mac_RESULTA_bus\(26);
\Mult1~330\ <= \Mult1~mac_RESULTA_bus\(27);
\Mult1~331\ <= \Mult1~mac_RESULTA_bus\(28);
\Mult1~332\ <= \Mult1~mac_RESULTA_bus\(29);
\Mult1~333\ <= \Mult1~mac_RESULTA_bus\(30);
\Mult1~334\ <= \Mult1~mac_RESULTA_bus\(31);
\Mult1~335\ <= \Mult1~mac_RESULTA_bus\(32);
\Mult1~336\ <= \Mult1~mac_RESULTA_bus\(33);
\Mult1~337\ <= \Mult1~mac_RESULTA_bus\(34);
\Mult1~338\ <= \Mult1~mac_RESULTA_bus\(35);
\Mult1~339\ <= \Mult1~mac_RESULTA_bus\(36);
\Mult1~8\ <= \Mult1~mac_RESULTA_bus\(37);
\Mult1~9\ <= \Mult1~mac_RESULTA_bus\(38);
\Mult1~10\ <= \Mult1~mac_RESULTA_bus\(39);
\Mult1~11\ <= \Mult1~mac_RESULTA_bus\(40);
\Mult1~12\ <= \Mult1~mac_RESULTA_bus\(41);
\Mult1~13\ <= \Mult1~mac_RESULTA_bus\(42);
\Mult1~14\ <= \Mult1~mac_RESULTA_bus\(43);
\Mult1~15\ <= \Mult1~mac_RESULTA_bus\(44);
\Mult1~16\ <= \Mult1~mac_RESULTA_bus\(45);
\Mult1~17\ <= \Mult1~mac_RESULTA_bus\(46);
\Mult1~18\ <= \Mult1~mac_RESULTA_bus\(47);
\Mult1~19\ <= \Mult1~mac_RESULTA_bus\(48);
\Mult1~20\ <= \Mult1~mac_RESULTA_bus\(49);
\Mult1~21\ <= \Mult1~mac_RESULTA_bus\(50);
\Mult1~22\ <= \Mult1~mac_RESULTA_bus\(51);
\Mult1~23\ <= \Mult1~mac_RESULTA_bus\(52);
\Mult1~24\ <= \Mult1~mac_RESULTA_bus\(53);
\Mult1~25\ <= \Mult1~mac_RESULTA_bus\(54);
\Mult1~26\ <= \Mult1~mac_RESULTA_bus\(55);
\Mult1~27\ <= \Mult1~mac_RESULTA_bus\(56);
\Mult1~28\ <= \Mult1~mac_RESULTA_bus\(57);
\Mult1~29\ <= \Mult1~mac_RESULTA_bus\(58);
\Mult1~30\ <= \Mult1~mac_RESULTA_bus\(59);
\Mult1~31\ <= \Mult1~mac_RESULTA_bus\(60);
\Mult1~32\ <= \Mult1~mac_RESULTA_bus\(61);
\Mult1~33\ <= \Mult1~mac_RESULTA_bus\(62);
\Mult1~34\ <= \Mult1~mac_RESULTA_bus\(63);

\Mult0~mac_AX_bus\ <= (\Real_rsvd[19]~input_o\ & \Real_rsvd[19]~input_o\ & \Real_rsvd[19]~input_o\ & \Real_rsvd[19]~input_o\ & \Real_rsvd[19]~input_o\ & \Real_rsvd[19]~input_o\ & \Real_rsvd[19]~input_o\ & \Real_rsvd[19]~input_o\ & \Real_rsvd[18]~input_o\
& \Real_rsvd[17]~input_o\ & \Real_rsvd[16]~input_o\ & \Real_rsvd[15]~input_o\ & \Real_rsvd[14]~input_o\ & \Real_rsvd[13]~input_o\ & \Real_rsvd[12]~input_o\ & \Real_rsvd[11]~input_o\ & \Real_rsvd[10]~input_o\ & \Real_rsvd[9]~input_o\ & 
\Real_rsvd[8]~input_o\ & \Real_rsvd[7]~input_o\ & \Real_rsvd[6]~input_o\ & \Real_rsvd[5]~input_o\ & \Real_rsvd[4]~input_o\ & \Real_rsvd[3]~input_o\ & \Real_rsvd[2]~input_o\ & \Real_rsvd[1]~input_o\ & \Real_rsvd[0]~input_o\);

\Mult0~mac_AY_bus\ <= (\Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & 
\Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~61_sumout\ & 
\Ureal_carrier_wave_1|Add2~61_sumout\ & \Ureal_carrier_wave_1|Add2~57_sumout\ & \Ureal_carrier_wave_1|Add2~53_sumout\ & \Ureal_carrier_wave_1|Add2~49_sumout\ & \Ureal_carrier_wave_1|Add2~45_sumout\ & \Ureal_carrier_wave_1|Add2~41_sumout\ & 
\Ureal_carrier_wave_1|Add2~37_sumout\ & \Ureal_carrier_wave_1|Add2~33_sumout\ & \Ureal_carrier_wave_1|Add2~29_sumout\ & \Ureal_carrier_wave_1|Add2~25_sumout\ & \Ureal_carrier_wave_1|Add2~21_sumout\ & \Ureal_carrier_wave_1|Add2~17_sumout\ & 
\Ureal_carrier_wave_1|Add2~13_sumout\ & \Ureal_carrier_wave_1|Add2~9_sumout\ & \Ureal_carrier_wave_1|Add2~5_sumout\ & \Ureal_carrier_wave_1|Add2~1_sumout\);

Product_out1(0) <= \Mult0~mac_RESULTA_bus\(0);
Product_out1(1) <= \Mult0~mac_RESULTA_bus\(1);
Product_out1(2) <= \Mult0~mac_RESULTA_bus\(2);
Product_out1(3) <= \Mult0~mac_RESULTA_bus\(3);
Product_out1(4) <= \Mult0~mac_RESULTA_bus\(4);
Product_out1(5) <= \Mult0~mac_RESULTA_bus\(5);
Product_out1(6) <= \Mult0~mac_RESULTA_bus\(6);
Product_out1(7) <= \Mult0~mac_RESULTA_bus\(7);
Product_out1(8) <= \Mult0~mac_RESULTA_bus\(8);
Product_out1(9) <= \Mult0~mac_RESULTA_bus\(9);
Product_out1(10) <= \Mult0~mac_RESULTA_bus\(10);
Product_out1(11) <= \Mult0~mac_RESULTA_bus\(11);
Product_out1(12) <= \Mult0~mac_RESULTA_bus\(12);
Product_out1(13) <= \Mult0~mac_RESULTA_bus\(13);
Product_out1(14) <= \Mult0~mac_RESULTA_bus\(14);
Product_out1(15) <= \Mult0~mac_RESULTA_bus\(15);
Product_out1(16) <= \Mult0~mac_RESULTA_bus\(16);
Product_out1(17) <= \Mult0~mac_RESULTA_bus\(17);
Product_out1(18) <= \Mult0~mac_RESULTA_bus\(18);
Product_out1(19) <= \Mult0~mac_RESULTA_bus\(19);
Product_out1(20) <= \Mult0~mac_RESULTA_bus\(20);
Product_out1(21) <= \Mult0~mac_RESULTA_bus\(21);
Product_out1(22) <= \Mult0~mac_RESULTA_bus\(22);
Product_out1(23) <= \Mult0~mac_RESULTA_bus\(23);
Product_out1(24) <= \Mult0~mac_RESULTA_bus\(24);
Product_out1(25) <= \Mult0~mac_RESULTA_bus\(25);
Product_out1(26) <= \Mult0~mac_RESULTA_bus\(26);
Product_out1(27) <= \Mult0~mac_RESULTA_bus\(27);
Product_out1(28) <= \Mult0~mac_RESULTA_bus\(28);
Product_out1(29) <= \Mult0~mac_RESULTA_bus\(29);
Product_out1(30) <= \Mult0~mac_RESULTA_bus\(30);
Product_out1(31) <= \Mult0~mac_RESULTA_bus\(31);
Product_out1(32) <= \Mult0~mac_RESULTA_bus\(32);
Product_out1(33) <= \Mult0~mac_RESULTA_bus\(33);
Product_out1(34) <= \Mult0~mac_RESULTA_bus\(34);
Add_add_cast(35) <= \Mult0~mac_RESULTA_bus\(35);
\Mult0~8\ <= \Mult0~mac_RESULTA_bus\(36);
\Mult0~9\ <= \Mult0~mac_RESULTA_bus\(37);
\Mult0~10\ <= \Mult0~mac_RESULTA_bus\(38);
\Mult0~11\ <= \Mult0~mac_RESULTA_bus\(39);
\Mult0~12\ <= \Mult0~mac_RESULTA_bus\(40);
\Mult0~13\ <= \Mult0~mac_RESULTA_bus\(41);
\Mult0~14\ <= \Mult0~mac_RESULTA_bus\(42);
\Mult0~15\ <= \Mult0~mac_RESULTA_bus\(43);
\Mult0~16\ <= \Mult0~mac_RESULTA_bus\(44);
\Mult0~17\ <= \Mult0~mac_RESULTA_bus\(45);
\Mult0~18\ <= \Mult0~mac_RESULTA_bus\(46);
\Mult0~19\ <= \Mult0~mac_RESULTA_bus\(47);
\Mult0~20\ <= \Mult0~mac_RESULTA_bus\(48);
\Mult0~21\ <= \Mult0~mac_RESULTA_bus\(49);
\Mult0~22\ <= \Mult0~mac_RESULTA_bus\(50);
\Mult0~23\ <= \Mult0~mac_RESULTA_bus\(51);
\Mult0~24\ <= \Mult0~mac_RESULTA_bus\(52);
\Mult0~25\ <= \Mult0~mac_RESULTA_bus\(53);
\Mult0~26\ <= \Mult0~mac_RESULTA_bus\(54);
\Mult0~27\ <= \Mult0~mac_RESULTA_bus\(55);
\Mult0~28\ <= \Mult0~mac_RESULTA_bus\(56);
\Mult0~29\ <= \Mult0~mac_RESULTA_bus\(57);
\Mult0~30\ <= \Mult0~mac_RESULTA_bus\(58);
\Mult0~31\ <= \Mult0~mac_RESULTA_bus\(59);
\Mult0~32\ <= \Mult0~mac_RESULTA_bus\(60);
\Mult0~33\ <= \Mult0~mac_RESULTA_bus\(61);
\Mult0~34\ <= \Mult0~mac_RESULTA_bus\(62);
\Mult0~35\ <= \Mult0~mac_RESULTA_bus\(63);

\Mult0~100\ <= \Mult0~mac_CHAINOUT_bus\(0);
\Mult0~101\ <= \Mult0~mac_CHAINOUT_bus\(1);
\Mult0~102\ <= \Mult0~mac_CHAINOUT_bus\(2);
\Mult0~103\ <= \Mult0~mac_CHAINOUT_bus\(3);
\Mult0~104\ <= \Mult0~mac_CHAINOUT_bus\(4);
\Mult0~105\ <= \Mult0~mac_CHAINOUT_bus\(5);
\Mult0~106\ <= \Mult0~mac_CHAINOUT_bus\(6);
\Mult0~107\ <= \Mult0~mac_CHAINOUT_bus\(7);
\Mult0~108\ <= \Mult0~mac_CHAINOUT_bus\(8);
\Mult0~109\ <= \Mult0~mac_CHAINOUT_bus\(9);
\Mult0~110\ <= \Mult0~mac_CHAINOUT_bus\(10);
\Mult0~111\ <= \Mult0~mac_CHAINOUT_bus\(11);
\Mult0~112\ <= \Mult0~mac_CHAINOUT_bus\(12);
\Mult0~113\ <= \Mult0~mac_CHAINOUT_bus\(13);
\Mult0~114\ <= \Mult0~mac_CHAINOUT_bus\(14);
\Mult0~115\ <= \Mult0~mac_CHAINOUT_bus\(15);
\Mult0~116\ <= \Mult0~mac_CHAINOUT_bus\(16);
\Mult0~117\ <= \Mult0~mac_CHAINOUT_bus\(17);
\Mult0~118\ <= \Mult0~mac_CHAINOUT_bus\(18);
\Mult0~119\ <= \Mult0~mac_CHAINOUT_bus\(19);
\Mult0~120\ <= \Mult0~mac_CHAINOUT_bus\(20);
\Mult0~121\ <= \Mult0~mac_CHAINOUT_bus\(21);
\Mult0~122\ <= \Mult0~mac_CHAINOUT_bus\(22);
\Mult0~123\ <= \Mult0~mac_CHAINOUT_bus\(23);
\Mult0~124\ <= \Mult0~mac_CHAINOUT_bus\(24);
\Mult0~125\ <= \Mult0~mac_CHAINOUT_bus\(25);
\Mult0~126\ <= \Mult0~mac_CHAINOUT_bus\(26);
\Mult0~127\ <= \Mult0~mac_CHAINOUT_bus\(27);
\Mult0~128\ <= \Mult0~mac_CHAINOUT_bus\(28);
\Mult0~129\ <= \Mult0~mac_CHAINOUT_bus\(29);
\Mult0~130\ <= \Mult0~mac_CHAINOUT_bus\(30);
\Mult0~131\ <= \Mult0~mac_CHAINOUT_bus\(31);
\Mult0~132\ <= \Mult0~mac_CHAINOUT_bus\(32);
\Mult0~133\ <= \Mult0~mac_CHAINOUT_bus\(33);
\Mult0~134\ <= \Mult0~mac_CHAINOUT_bus\(34);
\Mult0~135\ <= \Mult0~mac_CHAINOUT_bus\(35);
\Mult0~136\ <= \Mult0~mac_CHAINOUT_bus\(36);
\Mult0~137\ <= \Mult0~mac_CHAINOUT_bus\(37);
\Mult0~138\ <= \Mult0~mac_CHAINOUT_bus\(38);
\Mult0~139\ <= \Mult0~mac_CHAINOUT_bus\(39);
\Mult0~140\ <= \Mult0~mac_CHAINOUT_bus\(40);
\Mult0~141\ <= \Mult0~mac_CHAINOUT_bus\(41);
\Mult0~142\ <= \Mult0~mac_CHAINOUT_bus\(42);
\Mult0~143\ <= \Mult0~mac_CHAINOUT_bus\(43);
\Mult0~144\ <= \Mult0~mac_CHAINOUT_bus\(44);
\Mult0~145\ <= \Mult0~mac_CHAINOUT_bus\(45);
\Mult0~146\ <= \Mult0~mac_CHAINOUT_bus\(46);
\Mult0~147\ <= \Mult0~mac_CHAINOUT_bus\(47);
\Mult0~148\ <= \Mult0~mac_CHAINOUT_bus\(48);
\Mult0~149\ <= \Mult0~mac_CHAINOUT_bus\(49);
\Mult0~150\ <= \Mult0~mac_CHAINOUT_bus\(50);
\Mult0~151\ <= \Mult0~mac_CHAINOUT_bus\(51);
\Mult0~152\ <= \Mult0~mac_CHAINOUT_bus\(52);
\Mult0~153\ <= \Mult0~mac_CHAINOUT_bus\(53);
\Mult0~154\ <= \Mult0~mac_CHAINOUT_bus\(54);
\Mult0~155\ <= \Mult0~mac_CHAINOUT_bus\(55);
\Mult0~156\ <= \Mult0~mac_CHAINOUT_bus\(56);
\Mult0~157\ <= \Mult0~mac_CHAINOUT_bus\(57);
\Mult0~158\ <= \Mult0~mac_CHAINOUT_bus\(58);
\Mult0~159\ <= \Mult0~mac_CHAINOUT_bus\(59);
\Mult0~160\ <= \Mult0~mac_CHAINOUT_bus\(60);
\Mult0~161\ <= \Mult0~mac_CHAINOUT_bus\(61);
\Mult0~162\ <= \Mult0~mac_CHAINOUT_bus\(62);
\Mult0~163\ <= \Mult0~mac_CHAINOUT_bus\(63);
\ALT_INV_reset_x~input_o\ <= NOT \reset_x~input_o\;
\Uimag_carrier_wave_1|ALT_INV_Mux8~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux8~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux6~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux6~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux5~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux5~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux4~6_combout\ <= NOT \Uimag_carrier_wave_1|Mux4~6_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux3~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux3~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux8~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux8~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux6~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux6~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux5~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux5~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux4~6_combout\ <= NOT \Ureal_carrier_wave_1|Mux4~6_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux3~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux3~3_combout\;
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_LessThan0~3_combout\ <= NOT \Uimag_carrier_wave_1|LessThan0~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\ <= NOT \Ureal_carrier_wave_1|LessThan1~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_LessThan1~0_combout\ <= NOT \Ureal_carrier_wave_1|LessThan1~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux1~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux1~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux2~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux2~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux2~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux2~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux2~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux2~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux2~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux2~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux3~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux3~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux3~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux3~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux3~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux3~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux4~5_combout\ <= NOT \Ureal_carrier_wave_1|Mux4~5_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux4~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux4~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux4~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux4~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux4~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux4~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux4~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux4~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux5~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux5~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux5~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux5~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux5~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux5~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux5~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux5~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux6~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux6~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux6~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux6~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux6~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux6~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux6~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux6~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux7~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux7~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux7~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux7~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux7~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux7~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux7~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux7~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux7~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux7~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux8~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux8~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux8~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux8~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux8~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux8~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux8~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux8~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux9~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux9~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux9~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux9~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux9~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux9~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux9~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux9~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux10~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux10~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux10~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux10~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux10~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux10~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux10~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux10~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux4~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\ <= NOT \Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux11~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux11~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\ <= NOT \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux11~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux11~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux11~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux11~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux11~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux11~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux11~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux11~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux12~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux12~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\ <= NOT \Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux12~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux12~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux12~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux12~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux12~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux12~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux12~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux12~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux13~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux13~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\ <= NOT \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux13~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux13~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux13~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux13~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux13~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux13~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux13~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux13~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux14~4_combout\ <= NOT \Ureal_carrier_wave_1|Mux14~4_combout\;
\Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\ <= NOT \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\ <= NOT \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux14~3_combout\ <= NOT \Ureal_carrier_wave_1|Mux14~3_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux14~2_combout\ <= NOT \Ureal_carrier_wave_1|Mux14~2_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux14~1_combout\ <= NOT \Ureal_carrier_wave_1|Mux14~1_combout\;
\Ureal_carrier_wave_1|ALT_INV_Mux14~0_combout\ <= NOT \Ureal_carrier_wave_1|Mux14~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\ <= NOT \Uimag_carrier_wave_1|LessThan0~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~32_combout\ <= NOT \Uimag_carrier_wave_1|Add1~32_combout\;
\ALT_INV_scale_out1[8]~8_combout\ <= NOT \scale_out1[8]~8_combout\;
\ALT_INV_scale_out1[9]~7_combout\ <= NOT \scale_out1[9]~7_combout\;
\ALT_INV_scale_out1[10]~6_combout\ <= NOT \scale_out1[10]~6_combout\;
\ALT_INV_scale_out1[7]~5_combout\ <= NOT \scale_out1[7]~5_combout\;
\ALT_INV_scale_out1[6]~4_combout\ <= NOT \scale_out1[6]~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_LessThan1~1_combout\ <= NOT \Uimag_carrier_wave_1|LessThan1~1_combout\;
\ALT_INV_scale_out1[13]~3_combout\ <= NOT \scale_out1[13]~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_LessThan1~0_combout\ <= NOT \Uimag_carrier_wave_1|LessThan1~0_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux1~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux1~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux2~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux2~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux2~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux2~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux2~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux2~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux2~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux2~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux3~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux3~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux3~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux3~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux3~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux3~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux4~5_combout\ <= NOT \Uimag_carrier_wave_1|Mux4~5_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux4~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux4~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux4~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux4~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux4~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux4~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux4~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux4~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux5~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux5~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux5~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux5~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux5~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux5~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux5~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux5~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux6~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux6~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux6~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux6~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux6~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux6~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux6~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux6~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux7~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux7~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux7~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux7~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux7~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux7~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux7~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux7~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux7~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux7~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux8~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux8~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux8~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux8~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux8~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux8~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux8~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux8~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux9~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux9~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux9~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux9~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux9~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux9~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux9~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux9~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux10~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux10~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux10~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux10~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux10~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux10~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux10~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux10~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux4~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\ <= NOT \Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux11~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux11~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\ <= NOT \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux11~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux11~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux11~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux11~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux11~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux11~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux11~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux11~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux12~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux12~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\ <= NOT \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux12~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux12~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux12~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux12~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux12~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux12~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux12~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux12~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux13~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux13~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\ <= NOT \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux13~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux13~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux13~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux13~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux13~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux13~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux13~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux13~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux14~4_combout\ <= NOT \Uimag_carrier_wave_1|Mux14~4_combout\;
\Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\ <= NOT \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\ <= NOT \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux14~3_combout\ <= NOT \Uimag_carrier_wave_1|Mux14~3_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux14~2_combout\ <= NOT \Uimag_carrier_wave_1|Mux14~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux14~1_combout\ <= NOT \Uimag_carrier_wave_1|Mux14~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_Mux14~0_combout\ <= NOT \Uimag_carrier_wave_1|Mux14~0_combout\;
\ALT_INV_scale_out1[12]~2_combout\ <= NOT \scale_out1[12]~2_combout\;
\Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\ <= NOT \Uimag_carrier_wave_1|LessThan0~1_combout\;
\Uimag_carrier_wave_1|ALT_INV_LessThan0~0_combout\ <= NOT \Uimag_carrier_wave_1|LessThan0~0_combout\;
\ALT_INV_scale_out1[5]~1_combout\ <= NOT \scale_out1[5]~1_combout\;
\ALT_INV_scale_out1[11]~0_combout\ <= NOT \scale_out1[11]~0_combout\;
\ALT_INV_Add1~0_combout\ <= NOT \Add1~0_combout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~62_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~58_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~54_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~50_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~46_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~42_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~38_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~34_sumout\;
ALT_INV_counter_sine_generator_out1(13) <= NOT counter_sine_generator_out1(13);
ALT_INV_counter_sine_generator_out1(14) <= NOT counter_sine_generator_out1(14);
ALT_INV_counter_sine_generator_out1(15) <= NOT counter_sine_generator_out1(15);
ALT_INV_counter_sine_generator_out1(9) <= NOT counter_sine_generator_out1(9);
\Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~29_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~25_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~21_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~17_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~13_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~9_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~5_sumout\;
\Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\ <= NOT \Uimag_carrier_wave_1|Add1~1_sumout\;
ALT_INV_counter_sine_generator_out1(7) <= NOT counter_sine_generator_out1(7);
ALT_INV_counter_sine_generator_out1(2) <= NOT counter_sine_generator_out1(2);
ALT_INV_counter_sine_generator_out1(1) <= NOT counter_sine_generator_out1(1);
ALT_INV_counter_sine_generator_out1(3) <= NOT counter_sine_generator_out1(3);
ALT_INV_counter_sine_generator_out1(4) <= NOT counter_sine_generator_out1(4);
ALT_INV_counter_sine_generator_out1(5) <= NOT counter_sine_generator_out1(5);
ALT_INV_counter_sine_generator_out1(0) <= NOT counter_sine_generator_out1(0);
ALT_INV_counter_sine_generator_out1(6) <= NOT counter_sine_generator_out1(6);
ALT_INV_counter_sine_generator_out1(8) <= NOT counter_sine_generator_out1(8);
ALT_INV_counter_sine_generator_out1(12) <= NOT counter_sine_generator_out1(12);
ALT_INV_counter_sine_generator_out1(11) <= NOT counter_sine_generator_out1(11);
ALT_INV_counter_sine_generator_out1(10) <= NOT counter_sine_generator_out1(10);

-- Location: IOOBUF_X89_Y6_N56
\ce_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \clk_enable~input_o\,
	devoe => ww_devoe,
	o => ww_ce_out);

-- Location: IOOBUF_X68_Y0_N19
\Baseband_Mixed_Signal[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~mac_resulta\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(0));

-- Location: IOOBUF_X34_Y0_N93
\Baseband_Mixed_Signal[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~304\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(1));

-- Location: IOOBUF_X66_Y0_N76
\Baseband_Mixed_Signal[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~305\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(2));

-- Location: IOOBUF_X70_Y0_N19
\Baseband_Mixed_Signal[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~306\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(3));

-- Location: IOOBUF_X30_Y0_N53
\Baseband_Mixed_Signal[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~307\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(4));

-- Location: IOOBUF_X70_Y0_N53
\Baseband_Mixed_Signal[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~308\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(5));

-- Location: IOOBUF_X68_Y0_N53
\Baseband_Mixed_Signal[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~309\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(6));

-- Location: IOOBUF_X62_Y0_N36
\Baseband_Mixed_Signal[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~310\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(7));

-- Location: IOOBUF_X68_Y0_N2
\Baseband_Mixed_Signal[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~311\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(8));

-- Location: IOOBUF_X72_Y0_N19
\Baseband_Mixed_Signal[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~312\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(9));

-- Location: IOOBUF_X60_Y0_N2
\Baseband_Mixed_Signal[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~313\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(10));

-- Location: IOOBUF_X60_Y0_N19
\Baseband_Mixed_Signal[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~314\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(11));

-- Location: IOOBUF_X36_Y0_N53
\Baseband_Mixed_Signal[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~315\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(12));

-- Location: IOOBUF_X64_Y0_N19
\Baseband_Mixed_Signal[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~316\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(13));

-- Location: IOOBUF_X34_Y0_N59
\Baseband_Mixed_Signal[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~317\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(14));

-- Location: IOOBUF_X62_Y0_N53
\Baseband_Mixed_Signal[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~318\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(15));

-- Location: IOOBUF_X62_Y0_N19
\Baseband_Mixed_Signal[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~319\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(16));

-- Location: IOOBUF_X70_Y0_N36
\Baseband_Mixed_Signal[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~320\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(17));

-- Location: IOOBUF_X60_Y0_N53
\Baseband_Mixed_Signal[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~321\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(18));

-- Location: IOOBUF_X36_Y0_N36
\Baseband_Mixed_Signal[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~322\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(19));

-- Location: IOOBUF_X34_Y0_N76
\Baseband_Mixed_Signal[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~323\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(20));

-- Location: IOOBUF_X62_Y0_N2
\Baseband_Mixed_Signal[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~324\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(21));

-- Location: IOOBUF_X32_Y0_N36
\Baseband_Mixed_Signal[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~325\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(22));

-- Location: IOOBUF_X32_Y0_N19
\Baseband_Mixed_Signal[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~326\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(23));

-- Location: IOOBUF_X66_Y0_N59
\Baseband_Mixed_Signal[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~327\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(24));

-- Location: IOOBUF_X70_Y0_N2
\Baseband_Mixed_Signal[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~328\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(25));

-- Location: IOOBUF_X72_Y0_N36
\Baseband_Mixed_Signal[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~329\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(26));

-- Location: IOOBUF_X66_Y0_N42
\Baseband_Mixed_Signal[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~330\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(27));

-- Location: IOOBUF_X64_Y0_N2
\Baseband_Mixed_Signal[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~331\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(28));

-- Location: IOOBUF_X36_Y0_N19
\Baseband_Mixed_Signal[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~332\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(29));

-- Location: IOOBUF_X64_Y0_N36
\Baseband_Mixed_Signal[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~333\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(30));

-- Location: IOOBUF_X68_Y0_N36
\Baseband_Mixed_Signal[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~334\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(31));

-- Location: IOOBUF_X66_Y0_N93
\Baseband_Mixed_Signal[32]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~335\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(32));

-- Location: IOOBUF_X36_Y0_N2
\Baseband_Mixed_Signal[33]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~336\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(33));

-- Location: IOOBUF_X72_Y0_N2
\Baseband_Mixed_Signal[34]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~337\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(34));

-- Location: IOOBUF_X32_Y0_N53
\Baseband_Mixed_Signal[35]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~338\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(35));

-- Location: IOOBUF_X64_Y0_N53
\Baseband_Mixed_Signal[36]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Mult1~339\,
	devoe => ww_devoe,
	o => ww_Baseband_Mixed_Signal(36));

-- Location: IOIBUF_X89_Y6_N38
\clk_enable~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_enable,
	o => \clk_enable~input_o\);

-- Location: IOIBUF_X50_Y0_N58
\Imag[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(0),
	o => \Imag[0]~input_o\);

-- Location: IOIBUF_X56_Y0_N18
\Imag[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(1),
	o => \Imag[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\Imag[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(2),
	o => \Imag[2]~input_o\);

-- Location: IOIBUF_X54_Y0_N18
\Imag[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(3),
	o => \Imag[3]~input_o\);

-- Location: IOIBUF_X50_Y0_N75
\Imag[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(4),
	o => \Imag[4]~input_o\);

-- Location: IOIBUF_X60_Y0_N35
\Imag[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(5),
	o => \Imag[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\Imag[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(6),
	o => \Imag[6]~input_o\);

-- Location: IOIBUF_X52_Y0_N18
\Imag[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(7),
	o => \Imag[7]~input_o\);

-- Location: IOIBUF_X50_Y0_N92
\Imag[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(8),
	o => \Imag[8]~input_o\);

-- Location: IOIBUF_X50_Y0_N41
\Imag[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(9),
	o => \Imag[9]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\Imag[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(10),
	o => \Imag[10]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\Imag[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(11),
	o => \Imag[11]~input_o\);

-- Location: IOIBUF_X52_Y0_N1
\Imag[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(12),
	o => \Imag[12]~input_o\);

-- Location: IOIBUF_X40_Y0_N35
\Imag[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(13),
	o => \Imag[13]~input_o\);

-- Location: IOIBUF_X56_Y0_N35
\Imag[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(14),
	o => \Imag[14]~input_o\);

-- Location: IOIBUF_X54_Y0_N52
\Imag[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(15),
	o => \Imag[15]~input_o\);

-- Location: IOIBUF_X56_Y0_N52
\Imag[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(16),
	o => \Imag[16]~input_o\);

-- Location: IOIBUF_X52_Y0_N52
\Imag[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(17),
	o => \Imag[17]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\Imag[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(18),
	o => \Imag[18]~input_o\);

-- Location: IOIBUF_X54_Y0_N35
\Imag[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Imag(19),
	o => \Imag[19]~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: LABCELL_X74_Y2_N0
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter_sine_generator_out1(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~22\ = CARRY(( counter_sine_generator_out1(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sine_generator_out1(0),
	cin => GND,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: IOIBUF_X72_Y0_N52
\reset_x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_x,
	o => \reset_x~input_o\);

-- Location: LABCELL_X74_Y2_N30
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter_sine_generator_out1(10) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~2\ = CARRY(( counter_sine_generator_out1(10) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sine_generator_out1(10),
	cin => \Add0~50\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X74_Y2_N33
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter_sine_generator_out1(11) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( counter_sine_generator_out1(11) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sine_generator_out1(11),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X74_Y2_N35
\counter_sine_generator_out1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(11));

-- Location: LABCELL_X74_Y2_N36
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter_sine_generator_out1(12) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( counter_sine_generator_out1(12) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sine_generator_out1(12),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X74_Y2_N38
\counter_sine_generator_out1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(12));

-- Location: LABCELL_X74_Y2_N39
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter_sine_generator_out1(13) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~62\ = CARRY(( counter_sine_generator_out1(13) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sine_generator_out1(13),
	cin => \Add0~10\,
	sumout => \Add0~61_sumout\,
	cout => \Add0~62\);

-- Location: FF_X74_Y2_N41
\counter_sine_generator_out1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(13));

-- Location: LABCELL_X74_Y2_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter_sine_generator_out1(14) ) + ( GND ) + ( \Add0~62\ ))
-- \Add0~58\ = CARRY(( counter_sine_generator_out1(14) ) + ( GND ) + ( \Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sine_generator_out1(14),
	cin => \Add0~62\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X74_Y2_N44
\counter_sine_generator_out1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(14));

-- Location: LABCELL_X74_Y2_N45
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter_sine_generator_out1(15) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sine_generator_out1(15),
	cin => \Add0~58\,
	sumout => \Add0~53_sumout\);

-- Location: FF_X74_Y2_N47
\counter_sine_generator_out1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(15));

-- Location: LABCELL_X74_Y2_N54
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( !counter_sine_generator_out1(13) & ( (!counter_sine_generator_out1(14) & (!counter_sine_generator_out1(9) & !counter_sine_generator_out1(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sine_generator_out1(14),
	datac => ALT_INV_counter_sine_generator_out1(9),
	datad => ALT_INV_counter_sine_generator_out1(15),
	dataf => ALT_INV_counter_sine_generator_out1(13),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X73_Y2_N12
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( counter_sine_generator_out1(3) & ( counter_sine_generator_out1(5) & ( (counter_sine_generator_out1(1) & (counter_sine_generator_out1(6) & (counter_sine_generator_out1(7) & counter_sine_generator_out1(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(1),
	datab => ALT_INV_counter_sine_generator_out1(6),
	datac => ALT_INV_counter_sine_generator_out1(7),
	datad => ALT_INV_counter_sine_generator_out1(2),
	datae => ALT_INV_counter_sine_generator_out1(3),
	dataf => ALT_INV_counter_sine_generator_out1(5),
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X74_Y2_N57
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( counter_sine_generator_out1(4) & ( (counter_sine_generator_out1(8) & counter_sine_generator_out1(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(8),
	datad => ALT_INV_counter_sine_generator_out1(0),
	dataf => ALT_INV_counter_sine_generator_out1(4),
	combout => \LessThan0~3_combout\);

-- Location: LABCELL_X74_Y2_N48
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \LessThan0~2_combout\ & ( \LessThan0~3_combout\ ) ) # ( !\LessThan0~2_combout\ & ( \LessThan0~3_combout\ & ( (((!\LessThan0~0_combout\) # (counter_sine_generator_out1(10))) # (counter_sine_generator_out1(11))) # 
-- (counter_sine_generator_out1(12)) ) ) ) # ( \LessThan0~2_combout\ & ( !\LessThan0~3_combout\ & ( (((!\LessThan0~0_combout\) # (counter_sine_generator_out1(10))) # (counter_sine_generator_out1(11))) # (counter_sine_generator_out1(12)) ) ) ) # ( 
-- !\LessThan0~2_combout\ & ( !\LessThan0~3_combout\ & ( (((!\LessThan0~0_combout\) # (counter_sine_generator_out1(10))) # (counter_sine_generator_out1(11))) # (counter_sine_generator_out1(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111111111111101111111111111110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(12),
	datab => ALT_INV_counter_sine_generator_out1(11),
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => ALT_INV_counter_sine_generator_out1(10),
	datae => \ALT_INV_LessThan0~2_combout\,
	dataf => \ALT_INV_LessThan0~3_combout\,
	combout => \LessThan0~1_combout\);

-- Location: FF_X74_Y2_N2
\counter_sine_generator_out1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(0));

-- Location: LABCELL_X74_Y2_N3
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter_sine_generator_out1(1) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~38\ = CARRY(( counter_sine_generator_out1(1) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sine_generator_out1(1),
	cin => \Add0~22\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X74_Y2_N5
\counter_sine_generator_out1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(1));

-- Location: LABCELL_X74_Y2_N6
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter_sine_generator_out1(2) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( counter_sine_generator_out1(2) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sine_generator_out1(2),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X74_Y2_N8
\counter_sine_generator_out1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(2));

-- Location: LABCELL_X74_Y2_N9
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter_sine_generator_out1(3) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~34\ = CARRY(( counter_sine_generator_out1(3) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sine_generator_out1(3),
	cin => \Add0~42\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X74_Y2_N11
\counter_sine_generator_out1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(3));

-- Location: LABCELL_X74_Y2_N12
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter_sine_generator_out1(4) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~30\ = CARRY(( counter_sine_generator_out1(4) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sine_generator_out1(4),
	cin => \Add0~34\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X74_Y2_N14
\counter_sine_generator_out1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(4));

-- Location: LABCELL_X74_Y2_N15
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter_sine_generator_out1(5) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~26\ = CARRY(( counter_sine_generator_out1(5) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sine_generator_out1(5),
	cin => \Add0~30\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X74_Y2_N17
\counter_sine_generator_out1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(5));

-- Location: LABCELL_X74_Y2_N18
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter_sine_generator_out1(6) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~18\ = CARRY(( counter_sine_generator_out1(6) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sine_generator_out1(6),
	cin => \Add0~26\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X74_Y2_N20
\counter_sine_generator_out1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(6));

-- Location: LABCELL_X74_Y2_N21
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter_sine_generator_out1(7) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~46\ = CARRY(( counter_sine_generator_out1(7) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sine_generator_out1(7),
	cin => \Add0~18\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X74_Y2_N23
\counter_sine_generator_out1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(7));

-- Location: LABCELL_X74_Y2_N24
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter_sine_generator_out1(8) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~14\ = CARRY(( counter_sine_generator_out1(8) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sine_generator_out1(8),
	cin => \Add0~46\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X74_Y2_N26
\counter_sine_generator_out1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(8));

-- Location: LABCELL_X74_Y2_N27
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter_sine_generator_out1(9) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~50\ = CARRY(( counter_sine_generator_out1(9) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter_sine_generator_out1(9),
	cin => \Add0~14\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X74_Y2_N29
\counter_sine_generator_out1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(9));

-- Location: FF_X74_Y2_N32
\counter_sine_generator_out1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	clrn => \ALT_INV_reset_x~input_o\,
	sclr => \LessThan0~1_combout\,
	ena => \clk_enable~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter_sine_generator_out1(10));

-- Location: LABCELL_X73_Y2_N48
\Add1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = ( !counter_sine_generator_out1(12) & ( !counter_sine_generator_out1(8) & ( (!counter_sine_generator_out1(10) & !counter_sine_generator_out1(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(10),
	datac => ALT_INV_counter_sine_generator_out1(11),
	datae => ALT_INV_counter_sine_generator_out1(12),
	dataf => ALT_INV_counter_sine_generator_out1(8),
	combout => \Add1~0_combout\);

-- Location: LABCELL_X67_Y2_N36
\Uimag_carrier_wave_1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|LessThan0~0_combout\ = ( !counter_sine_generator_out1(5) & ( !counter_sine_generator_out1(3) & ( (!counter_sine_generator_out1(2) & (!counter_sine_generator_out1(4) & !counter_sine_generator_out1(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(2),
	datab => ALT_INV_counter_sine_generator_out1(4),
	datac => ALT_INV_counter_sine_generator_out1(1),
	datae => ALT_INV_counter_sine_generator_out1(5),
	dataf => ALT_INV_counter_sine_generator_out1(3),
	combout => \Uimag_carrier_wave_1|LessThan0~0_combout\);

-- Location: LABCELL_X73_Y2_N0
\scale_out1[5]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[5]~1_combout\ = ( !counter_sine_generator_out1(0) & ( !counter_sine_generator_out1(10) & ( (!counter_sine_generator_out1(12) & !counter_sine_generator_out1(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sine_generator_out1(12),
	datac => ALT_INV_counter_sine_generator_out1(11),
	datae => ALT_INV_counter_sine_generator_out1(0),
	dataf => ALT_INV_counter_sine_generator_out1(10),
	combout => \scale_out1[5]~1_combout\);

-- Location: LABCELL_X73_Y2_N45
\scale_out1[11]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[11]~0_combout\ = ( !counter_sine_generator_out1(12) & ( !counter_sine_generator_out1(10) & ( (!counter_sine_generator_out1(11) & !counter_sine_generator_out1(6)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(11),
	datac => ALT_INV_counter_sine_generator_out1(6),
	datae => ALT_INV_counter_sine_generator_out1(12),
	dataf => ALT_INV_counter_sine_generator_out1(10),
	combout => \scale_out1[11]~0_combout\);

-- Location: LABCELL_X63_Y2_N51
\Uimag_carrier_wave_1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|LessThan0~1_combout\ = ( \scale_out1[11]~0_combout\ & ( (!\Uimag_carrier_wave_1|LessThan0~0_combout\) # (!\scale_out1[5]~1_combout\) ) ) # ( !\scale_out1[11]~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_scale_out1[5]~1_combout\,
	dataf => \ALT_INV_scale_out1[11]~0_combout\,
	combout => \Uimag_carrier_wave_1|LessThan0~1_combout\);

-- Location: LABCELL_X73_Y2_N57
\scale_out1[12]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[12]~2_combout\ = ( counter_sine_generator_out1(12) & ( counter_sine_generator_out1(10) ) ) # ( !counter_sine_generator_out1(12) & ( counter_sine_generator_out1(10) ) ) # ( counter_sine_generator_out1(12) & ( !counter_sine_generator_out1(10) ) 
-- ) # ( !counter_sine_generator_out1(12) & ( !counter_sine_generator_out1(10) & ( (counter_sine_generator_out1(11)) # (counter_sine_generator_out1(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(7),
	datad => ALT_INV_counter_sine_generator_out1(11),
	datae => ALT_INV_counter_sine_generator_out1(12),
	dataf => ALT_INV_counter_sine_generator_out1(10),
	combout => \scale_out1[12]~2_combout\);

-- Location: LABCELL_X63_Y2_N54
\Uimag_carrier_wave_1|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|LessThan1~0_combout\ = ( \Add1~0_combout\ & ( !\scale_out1[12]~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_scale_out1[12]~2_combout\,
	combout => \Uimag_carrier_wave_1|LessThan1~0_combout\);

-- Location: LABCELL_X73_Y2_N6
\scale_out1[13]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[13]~3_combout\ = ( counter_sine_generator_out1(8) ) # ( !counter_sine_generator_out1(8) & ( ((counter_sine_generator_out1(11)) # (counter_sine_generator_out1(12))) # (counter_sine_generator_out1(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(10),
	datab => ALT_INV_counter_sine_generator_out1(12),
	datac => ALT_INV_counter_sine_generator_out1(11),
	dataf => ALT_INV_counter_sine_generator_out1(8),
	combout => \scale_out1[13]~3_combout\);

-- Location: LABCELL_X63_Y2_N48
\Uimag_carrier_wave_1|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|LessThan1~1_combout\ = ( \scale_out1[12]~2_combout\ & ( (!\scale_out1[13]~3_combout\) # (!\Add1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111110011001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_scale_out1[13]~3_combout\,
	datad => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_scale_out1[12]~2_combout\,
	combout => \Uimag_carrier_wave_1|LessThan1~1_combout\);

-- Location: LABCELL_X73_Y2_N18
\scale_out1[10]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[10]~6_combout\ = ( counter_sine_generator_out1(5) ) # ( !counter_sine_generator_out1(5) & ( ((counter_sine_generator_out1(11)) # (counter_sine_generator_out1(12))) # (counter_sine_generator_out1(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(10),
	datab => ALT_INV_counter_sine_generator_out1(12),
	datac => ALT_INV_counter_sine_generator_out1(11),
	dataf => ALT_INV_counter_sine_generator_out1(5),
	combout => \scale_out1[10]~6_combout\);

-- Location: LABCELL_X73_Y2_N9
\scale_out1[9]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[9]~7_combout\ = ( counter_sine_generator_out1(11) ) # ( !counter_sine_generator_out1(11) & ( ((counter_sine_generator_out1(4)) # (counter_sine_generator_out1(12))) # (counter_sine_generator_out1(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(10),
	datab => ALT_INV_counter_sine_generator_out1(12),
	datac => ALT_INV_counter_sine_generator_out1(4),
	dataf => ALT_INV_counter_sine_generator_out1(11),
	combout => \scale_out1[9]~7_combout\);

-- Location: LABCELL_X73_Y2_N21
\scale_out1[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[8]~8_combout\ = ( counter_sine_generator_out1(11) ) # ( !counter_sine_generator_out1(11) & ( ((counter_sine_generator_out1(3)) # (counter_sine_generator_out1(12))) # (counter_sine_generator_out1(10)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011111111111011101111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(10),
	datab => ALT_INV_counter_sine_generator_out1(12),
	datad => ALT_INV_counter_sine_generator_out1(3),
	dataf => ALT_INV_counter_sine_generator_out1(11),
	combout => \scale_out1[8]~8_combout\);

-- Location: LABCELL_X73_Y2_N33
\scale_out1[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[7]~5_combout\ = ( counter_sine_generator_out1(12) & ( counter_sine_generator_out1(10) ) ) # ( !counter_sine_generator_out1(12) & ( counter_sine_generator_out1(10) ) ) # ( counter_sine_generator_out1(12) & ( !counter_sine_generator_out1(10) ) ) 
-- # ( !counter_sine_generator_out1(12) & ( !counter_sine_generator_out1(10) & ( (counter_sine_generator_out1(2)) # (counter_sine_generator_out1(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(11),
	datab => ALT_INV_counter_sine_generator_out1(2),
	datae => ALT_INV_counter_sine_generator_out1(12),
	dataf => ALT_INV_counter_sine_generator_out1(10),
	combout => \scale_out1[7]~5_combout\);

-- Location: LABCELL_X73_Y2_N39
\scale_out1[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \scale_out1[6]~4_combout\ = ( counter_sine_generator_out1(1) & ( counter_sine_generator_out1(10) ) ) # ( !counter_sine_generator_out1(1) & ( counter_sine_generator_out1(10) ) ) # ( counter_sine_generator_out1(1) & ( !counter_sine_generator_out1(10) ) ) # 
-- ( !counter_sine_generator_out1(1) & ( !counter_sine_generator_out1(10) & ( (counter_sine_generator_out1(12)) # (counter_sine_generator_out1(11)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter_sine_generator_out1(11),
	datac => ALT_INV_counter_sine_generator_out1(12),
	datae => ALT_INV_counter_sine_generator_out1(1),
	dataf => ALT_INV_counter_sine_generator_out1(10),
	combout => \scale_out1[6]~4_combout\);

-- Location: LABCELL_X63_Y2_N0
\Uimag_carrier_wave_1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~1_sumout\ = SUM(( (!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & ((\Uimag_carrier_wave_1|LessThan1~1_combout\))) ) + ( 
-- !\scale_out1[5]~1_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & ((\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( !VCC ))
-- \Uimag_carrier_wave_1|Add1~2\ = CARRY(( (!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & ((\Uimag_carrier_wave_1|LessThan1~1_combout\))) ) + ( 
-- !\scale_out1[5]~1_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & ((\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010001111011100000000000000000000100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_scale_out1[5]~1_combout\,
	cin => GND,
	sumout => \Uimag_carrier_wave_1|Add1~1_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~2\);

-- Location: LABCELL_X63_Y2_N3
\Uimag_carrier_wave_1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~5_sumout\ = SUM(( GND ) + ( !\scale_out1[6]~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( \Uimag_carrier_wave_1|Add1~2\ ))
-- \Uimag_carrier_wave_1|Add1~6\ = CARRY(( GND ) + ( !\scale_out1[6]~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( \Uimag_carrier_wave_1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101101001000011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[6]~4_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	cin => \Uimag_carrier_wave_1|Add1~2\,
	sumout => \Uimag_carrier_wave_1|Add1~5_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~6\);

-- Location: LABCELL_X63_Y2_N6
\Uimag_carrier_wave_1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~9_sumout\ = SUM(( GND ) + ( !\scale_out1[7]~5_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( \Uimag_carrier_wave_1|Add1~6\ ))
-- \Uimag_carrier_wave_1|Add1~10\ = CARRY(( GND ) + ( !\scale_out1[7]~5_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( \Uimag_carrier_wave_1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110000100011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_scale_out1[7]~5_combout\,
	cin => \Uimag_carrier_wave_1|Add1~6\,
	sumout => \Uimag_carrier_wave_1|Add1~9_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~10\);

-- Location: LABCELL_X63_Y2_N9
\Uimag_carrier_wave_1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~25_sumout\ = SUM(( GND ) + ( !\scale_out1[8]~8_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( \Uimag_carrier_wave_1|Add1~10\ ))
-- \Uimag_carrier_wave_1|Add1~26\ = CARRY(( GND ) + ( !\scale_out1[8]~8_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( \Uimag_carrier_wave_1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110000100011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_scale_out1[8]~8_combout\,
	cin => \Uimag_carrier_wave_1|Add1~10\,
	sumout => \Uimag_carrier_wave_1|Add1~25_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~26\);

-- Location: LABCELL_X63_Y2_N12
\Uimag_carrier_wave_1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~17_sumout\ = SUM(( GND ) + ( !\scale_out1[9]~7_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( \Uimag_carrier_wave_1|Add1~26\ ))
-- \Uimag_carrier_wave_1|Add1~18\ = CARRY(( GND ) + ( !\scale_out1[9]~7_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( \Uimag_carrier_wave_1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101110000100011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	dataf => \ALT_INV_scale_out1[9]~7_combout\,
	cin => \Uimag_carrier_wave_1|Add1~26\,
	sumout => \Uimag_carrier_wave_1|Add1~17_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~18\);

-- Location: LABCELL_X63_Y2_N15
\Uimag_carrier_wave_1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~13_sumout\ = SUM(( !\scale_out1[10]~6_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~18\ ))
-- \Uimag_carrier_wave_1|Add1~14\ = CARRY(( !\scale_out1[10]~6_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & (!\Uimag_carrier_wave_1|LessThan1~0_combout\)) # (\Uimag_carrier_wave_1|LessThan0~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|LessThan1~1_combout\))))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000100011110111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	datad => \ALT_INV_scale_out1[10]~6_combout\,
	cin => \Uimag_carrier_wave_1|Add1~18\,
	sumout => \Uimag_carrier_wave_1|Add1~13_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~14\);

-- Location: LABCELL_X63_Y2_N36
\Uimag_carrier_wave_1|Add1~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~32_combout\ = ( \Add1~0_combout\ & ( \scale_out1[12]~2_combout\ & ( (!\scale_out1[11]~0_combout\ & (((\scale_out1[13]~3_combout\)))) # (\scale_out1[11]~0_combout\ & (!\scale_out1[13]~3_combout\ & ((!\scale_out1[5]~1_combout\) # 
-- (!\Uimag_carrier_wave_1|LessThan0~0_combout\)))) ) ) ) # ( !\Add1~0_combout\ & ( \scale_out1[12]~2_combout\ & ( (\scale_out1[11]~0_combout\ & ((!\scale_out1[5]~1_combout\) # (!\Uimag_carrier_wave_1|LessThan0~0_combout\))) ) ) ) # ( \Add1~0_combout\ & ( 
-- !\scale_out1[12]~2_combout\ & ( (!\scale_out1[11]~0_combout\) # ((\scale_out1[5]~1_combout\ & \Uimag_carrier_wave_1|LessThan0~0_combout\)) ) ) ) # ( !\Add1~0_combout\ & ( !\scale_out1[12]~2_combout\ & ( !\scale_out1[11]~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010111010101101010100010101000101010010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_scale_out1[11]~0_combout\,
	datab => \ALT_INV_scale_out1[5]~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_scale_out1[13]~3_combout\,
	datae => \ALT_INV_Add1~0_combout\,
	dataf => \ALT_INV_scale_out1[12]~2_combout\,
	combout => \Uimag_carrier_wave_1|Add1~32_combout\);

-- Location: LABCELL_X63_Y2_N18
\Uimag_carrier_wave_1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~29_sumout\ = SUM(( \Uimag_carrier_wave_1|Add1~32_combout\ ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~14\ ))
-- \Uimag_carrier_wave_1|Add1~30\ = CARRY(( \Uimag_carrier_wave_1|Add1~32_combout\ ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~32_combout\,
	cin => \Uimag_carrier_wave_1|Add1~14\,
	sumout => \Uimag_carrier_wave_1|Add1~29_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~30\);

-- Location: LABCELL_X63_Y2_N21
\Uimag_carrier_wave_1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~21_sumout\ = SUM(( (!\scale_out1[12]~2_combout\ & (((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & \Add1~0_combout\)))) # (\scale_out1[12]~2_combout\ & ((!\Uimag_carrier_wave_1|LessThan0~1_combout\) # 
-- ((\scale_out1[13]~3_combout\ & \Add1~0_combout\)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_scale_out1[12]~2_combout\,
	datab => \ALT_INV_scale_out1[13]~3_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_Add1~0_combout\,
	cin => \Uimag_carrier_wave_1|Add1~30\,
	sumout => \Uimag_carrier_wave_1|Add1~21_sumout\);

-- Location: LABCELL_X56_Y2_N24
\Uimag_carrier_wave_1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux14~0_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\ & (((!\Uimag_carrier_wave_1|Add1~5_sumout\)) # (\Uimag_carrier_wave_1|Add1~13_sumout\))) 
-- # (\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~5_sumout\) # (\Uimag_carrier_wave_1|Add1~9_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (!\Uimag_carrier_wave_1|Add1~9_sumout\)))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ (((\Uimag_carrier_wave_1|Add1~5_sumout\ & \Uimag_carrier_wave_1|Add1~9_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010100001110101101101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux14~0_combout\);

-- Location: LABCELL_X60_Y2_N27
\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ = (!\Uimag_carrier_wave_1|Add1~21_sumout\ & !\Uimag_carrier_wave_1|Add1~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	combout => \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\);

-- Location: LABCELL_X56_Y2_N54
\Uimag_carrier_wave_1|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux14~1_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~5_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~13_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\))))) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & 
-- (\Uimag_carrier_wave_1|Add1~13_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (\Uimag_carrier_wave_1|Add1~9_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~5_sumout\) # (\Uimag_carrier_wave_1|Add1~17_sumout\)))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ & ((\Uimag_carrier_wave_1|Add1~9_sumout\))) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~17_sumout\ & !\Uimag_carrier_wave_1|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010001111010010100111100010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux14~1_combout\);

-- Location: LABCELL_X56_Y2_N42
\Uimag_carrier_wave_1|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux14~3_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~5_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\))))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\)) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~9_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~17_sumout\ & !\Uimag_carrier_wave_1|Add1~9_sumout\)) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & ((\Uimag_carrier_wave_1|Add1~9_sumout\))))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ 
-- (((!\Uimag_carrier_wave_1|Add1~17_sumout\) # (!\Uimag_carrier_wave_1|Add1~5_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000101011110011010000111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux14~3_combout\);

-- Location: LABCELL_X61_Y2_N27
\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ = (!\Uimag_carrier_wave_1|Add1~21_sumout\ & !\Uimag_carrier_wave_1|Add1~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	combout => \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\);

-- Location: LABCELL_X56_Y2_N12
\Uimag_carrier_wave_1|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux14~2_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # ((\Uimag_carrier_wave_1|Add1~9_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~5_sumout\)))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ & \Uimag_carrier_wave_1|Add1~9_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ 
-- & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (!\Uimag_carrier_wave_1|Add1~5_sumout\)) # (\Uimag_carrier_wave_1|Add1~9_sumout\))) # 
-- (\Uimag_carrier_wave_1|Add1~13_sumout\ & (((\Uimag_carrier_wave_1|Add1~17_sumout\ & !\Uimag_carrier_wave_1|Add1~9_sumout\)) # (\Uimag_carrier_wave_1|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110110101111100010101110101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux14~2_combout\);

-- Location: LABCELL_X56_Y2_N36
\Uimag_carrier_wave_1|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux14~4_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Uimag_carrier_wave_1|Mux14~2_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((!\Uimag_carrier_wave_1|Mux14~1_combout\))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (\Uimag_carrier_wave_1|Mux14~0_combout\)) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Uimag_carrier_wave_1|Mux14~2_combout\ & ( 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & \Uimag_carrier_wave_1|Mux14~3_combout\) ) ) ) # ( \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Uimag_carrier_wave_1|Mux14~2_combout\ & ( 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((!\Uimag_carrier_wave_1|Mux14~1_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (\Uimag_carrier_wave_1|Mux14~0_combout\)) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Uimag_carrier_wave_1|Mux14~2_combout\ & ( (\Uimag_carrier_wave_1|Mux14~3_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111111111110100011101000100000000110011001101000111010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Mux14~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux14~1_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux14~3_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux14~2_combout\,
	combout => \Uimag_carrier_wave_1|Mux14~4_combout\);

-- Location: LABCELL_X55_Y2_N0
\Uimag_carrier_wave_1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~1_sumout\ = SUM(( !\Uimag_carrier_wave_1|Mux14~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( (\Add1~0_combout\ & ((\scale_out1[12]~2_combout\) # 
-- (\Uimag_carrier_wave_1|LessThan0~1_combout\))) ) + ( !VCC ))
-- \Uimag_carrier_wave_1|Add2~2\ = CARRY(( !\Uimag_carrier_wave_1|Mux14~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( (\Add1~0_combout\ & ((\scale_out1[12]~2_combout\) # 
-- (\Uimag_carrier_wave_1|LessThan0~1_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010101110101000000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux14~4_combout\,
	cin => GND,
	sumout => \Uimag_carrier_wave_1|Add2~1_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~2\);

-- Location: LABCELL_X61_Y2_N45
\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ = (!\Uimag_carrier_wave_1|Add1~21_sumout\ & !\Uimag_carrier_wave_1|Add1~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	combout => \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\);

-- Location: LABCELL_X62_Y2_N6
\Uimag_carrier_wave_1|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux13~3_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\) # (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (\Uimag_carrier_wave_1|Add1~25_sumout\)) ) ) 
-- ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~9_sumout\ & (((!\Uimag_carrier_wave_1|Add1~5_sumout\) # (\Uimag_carrier_wave_1|Add1~25_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (!\Uimag_carrier_wave_1|Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110011111111110111011101101110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux13~3_combout\);

-- Location: LABCELL_X62_Y2_N48
\Uimag_carrier_wave_1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux13~0_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~9_sumout\) # ((!\Uimag_carrier_wave_1|Add1~17_sumout\ & ((\Uimag_carrier_wave_1|Add1~25_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~5_sumout\))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (\Uimag_carrier_wave_1|Add1~5_sumout\)) # (\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~5_sumout\) # (!\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101011011101011101111111110111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux13~0_combout\);

-- Location: LABCELL_X62_Y2_N36
\Uimag_carrier_wave_1|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux13~2_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~5_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((\Uimag_carrier_wave_1|Add1~25_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~17_sumout\ & \Uimag_carrier_wave_1|Add1~25_sumout\)))) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & (((!\Uimag_carrier_wave_1|Add1~25_sumout\)))) 
-- ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (\Uimag_carrier_wave_1|Add1~5_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (((!\Uimag_carrier_wave_1|Add1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001011111010001011111011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux13~2_combout\);

-- Location: LABCELL_X62_Y2_N42
\Uimag_carrier_wave_1|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux13~1_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~5_sumout\ & 
-- \Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\))) # (\Uimag_carrier_wave_1|Add1~25_sumout\ & (\Uimag_carrier_wave_1|Add1~9_sumout\)))) 
-- ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~25_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\))))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & (\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\) # (!\Uimag_carrier_wave_1|Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110110010100001100000001100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux13~1_combout\);

-- Location: LABCELL_X62_Y2_N12
\Uimag_carrier_wave_1|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux13~4_combout\ = ( \Uimag_carrier_wave_1|Mux13~2_combout\ & ( \Uimag_carrier_wave_1|Mux13~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (\Uimag_carrier_wave_1|Mux13~3_combout\ & 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (((!\Uimag_carrier_wave_1|Mux13~0_combout\) # (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Mux13~2_combout\ & ( \Uimag_carrier_wave_1|Mux13~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (\Uimag_carrier_wave_1|Mux13~3_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (((!\Uimag_carrier_wave_1|Mux13~0_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Mux13~2_combout\ & ( !\Uimag_carrier_wave_1|Mux13~1_combout\ & ( 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (((\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)) # (\Uimag_carrier_wave_1|Mux13~3_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- (((!\Uimag_carrier_wave_1|Mux13~0_combout\) # (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Mux13~2_combout\ & ( !\Uimag_carrier_wave_1|Mux13~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ 
-- & (((\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)) # (\Uimag_carrier_wave_1|Mux13~3_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (((!\Uimag_carrier_wave_1|Mux13~0_combout\ & 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011111010011101111111101000100010010100000111011101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux13~3_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux13~0_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux13~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux13~1_combout\,
	combout => \Uimag_carrier_wave_1|Mux13~4_combout\);

-- Location: LABCELL_X55_Y2_N3
\Uimag_carrier_wave_1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~5_sumout\ = SUM(( !\Uimag_carrier_wave_1|Mux13~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add2~2\ ))
-- \Uimag_carrier_wave_1|Add2~6\ = CARRY(( !\Uimag_carrier_wave_1|Mux13~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux13~4_combout\,
	cin => \Uimag_carrier_wave_1|Add2~2\,
	sumout => \Uimag_carrier_wave_1|Add2~5_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~6\);

-- Location: LABCELL_X55_Y2_N51
\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ = ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	combout => \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\);

-- Location: LABCELL_X57_Y2_N12
\Uimag_carrier_wave_1|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux12~2_combout\ = ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~25_sumout\ & (((!\Uimag_carrier_wave_1|Add1~13_sumout\ & \Uimag_carrier_wave_1|Add1~17_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\))) # (\Uimag_carrier_wave_1|Add1~25_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ ((!\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (((!\Uimag_carrier_wave_1|Add1~9_sumout\)) # (\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (\Uimag_carrier_wave_1|Add1~25_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~17_sumout\ & !\Uimag_carrier_wave_1|Add1~9_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101000100010000110101101111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux12~2_combout\);

-- Location: LABCELL_X57_Y2_N18
\Uimag_carrier_wave_1|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux12~3_combout\ = ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~17_sumout\)))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (!\Uimag_carrier_wave_1|Add1~9_sumout\)) # (\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (((!\Uimag_carrier_wave_1|Add1~25_sumout\ & \Uimag_carrier_wave_1|Add1~9_sumout\)) # (\Uimag_carrier_wave_1|Add1~17_sumout\))) # 
-- (\Uimag_carrier_wave_1|Add1~13_sumout\ & (\Uimag_carrier_wave_1|Add1~25_sumout\ & ((\Uimag_carrier_wave_1|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010011011100111110101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux12~3_combout\);

-- Location: LABCELL_X57_Y2_N30
\Uimag_carrier_wave_1|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux12~1_combout\ = ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~13_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~25_sumout\))))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ & !\Uimag_carrier_wave_1|Add1~9_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\ & (((!\Uimag_carrier_wave_1|Add1~9_sumout\) # (\Uimag_carrier_wave_1|Add1~25_sumout\)))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ 
-- & ((!\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((\Uimag_carrier_wave_1|Add1~9_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100000111101011110001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux12~1_combout\);

-- Location: LABCELL_X57_Y2_N36
\Uimag_carrier_wave_1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux12~0_combout\ = ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((\Uimag_carrier_wave_1|Add1~17_sumout\))) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~25_sumout\)))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (((\Uimag_carrier_wave_1|Add1~25_sumout\ & !\Uimag_carrier_wave_1|Add1~9_sumout\))))) ) 
-- ) ) # ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ 
-- (!\Uimag_carrier_wave_1|Add1~25_sumout\)))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ ((\Uimag_carrier_wave_1|Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010011001010010110111001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux12~0_combout\);

-- Location: LABCELL_X57_Y2_N48
\Uimag_carrier_wave_1|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux12~4_combout\ = ( \Uimag_carrier_wave_1|Mux12~0_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( (!\Uimag_carrier_wave_1|Mux12~1_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Mux12~0_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & !\Uimag_carrier_wave_1|Mux12~1_combout\) ) ) ) # ( \Uimag_carrier_wave_1|Mux12~0_combout\ & ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((\Uimag_carrier_wave_1|Mux12~3_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- (!\Uimag_carrier_wave_1|Mux12~2_combout\)) ) ) ) # ( !\Uimag_carrier_wave_1|Mux12~0_combout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((\Uimag_carrier_wave_1|Mux12~3_combout\))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Uimag_carrier_wave_1|Mux12~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111001001110010011100100111010101010000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux12~2_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux12~3_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux12~1_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux12~0_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	combout => \Uimag_carrier_wave_1|Mux12~4_combout\);

-- Location: LABCELL_X55_Y2_N6
\Uimag_carrier_wave_1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~9_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux12~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~6\ ))
-- \Uimag_carrier_wave_1|Add2~10\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux12~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux12~4_combout\,
	cin => \Uimag_carrier_wave_1|Add2~6\,
	sumout => \Uimag_carrier_wave_1|Add2~9_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~10\);

-- Location: MLABCELL_X59_Y2_N48
\Uimag_carrier_wave_1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux11~0_combout\ = ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~21_sumout\ ) ) ) # ( !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (((\Uimag_carrier_wave_1|Add1~5_sumout\ & 
-- \Uimag_carrier_wave_1|Add1~17_sumout\)) # (\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000101010101010101010101000101000100000101000101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	combout => \Uimag_carrier_wave_1|Mux11~0_combout\);

-- Location: MLABCELL_X59_Y2_N6
\Uimag_carrier_wave_1|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux11~1_combout\ = ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ 
-- (!\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~25_sumout\ & (\Uimag_carrier_wave_1|Add1~5_sumout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (!\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~17_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010001010001010001000000010101000100010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	combout => \Uimag_carrier_wave_1|Mux11~1_combout\);

-- Location: LABCELL_X60_Y2_N21
\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ = ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( !\Uimag_carrier_wave_1|Add1~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\);

-- Location: MLABCELL_X59_Y2_N36
\Uimag_carrier_wave_1|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux11~2_combout\ = ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~25_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~5_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\) # (!\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~25_sumout\ 
-- & ((\Uimag_carrier_wave_1|Add1~17_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\ & 
-- (\Uimag_carrier_wave_1|Add1~5_sumout\ & \Uimag_carrier_wave_1|Add1~17_sumout\)) # (\Uimag_carrier_wave_1|Add1~25_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000100000101000001000101010100010100000100000100010100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	combout => \Uimag_carrier_wave_1|Mux11~2_combout\);

-- Location: MLABCELL_X59_Y2_N18
\Uimag_carrier_wave_1|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux11~3_combout\ = ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ & (\Uimag_carrier_wave_1|Add1~25_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~17_sumout\)) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (\Uimag_carrier_wave_1|Add1~17_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( 
-- \Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (!\Uimag_carrier_wave_1|Add1~17_sumout\))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010100010100000000010000000100010100010000010100000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	combout => \Uimag_carrier_wave_1|Mux11~3_combout\);

-- Location: MLABCELL_X59_Y2_N0
\Uimag_carrier_wave_1|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux11~4_combout\ = ( \Uimag_carrier_wave_1|Mux11~2_combout\ & ( \Uimag_carrier_wave_1|Mux11~3_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (((!\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\)))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ((!\Uimag_carrier_wave_1|Mux11~1_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & 
-- (\Uimag_carrier_wave_1|Mux11~0_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Mux11~2_combout\ & ( \Uimag_carrier_wave_1|Mux11~3_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # ((!\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & 
-- ((!\Uimag_carrier_wave_1|Mux11~1_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & (\Uimag_carrier_wave_1|Mux11~0_combout\))) ) ) ) # ( \Uimag_carrier_wave_1|Mux11~2_combout\ & ( !\Uimag_carrier_wave_1|Mux11~3_combout\ & ( 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ((!\Uimag_carrier_wave_1|Mux11~1_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & 
-- (\Uimag_carrier_wave_1|Mux11~0_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Mux11~2_combout\ & ( !\Uimag_carrier_wave_1|Mux11~3_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- (((\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ((!\Uimag_carrier_wave_1|Mux11~1_combout\))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & (\Uimag_carrier_wave_1|Mux11~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011110101000011000000010111111100111101011111110000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Mux11~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux11~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux11~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux11~3_combout\,
	combout => \Uimag_carrier_wave_1|Mux11~4_combout\);

-- Location: LABCELL_X55_Y2_N9
\Uimag_carrier_wave_1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~13_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux11~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~10\ ))
-- \Uimag_carrier_wave_1|Add2~14\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux11~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux11~4_combout\,
	cin => \Uimag_carrier_wave_1|Add2~10\,
	sumout => \Uimag_carrier_wave_1|Add2~13_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~14\);

-- Location: LABCELL_X60_Y2_N24
\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ = (!\Uimag_carrier_wave_1|Add1~21_sumout\ & !\Uimag_carrier_wave_1|Add1~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	combout => \Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\);

-- Location: LABCELL_X57_Y1_N48
\Uimag_carrier_wave_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux4~0_combout\ = ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( !\Uimag_carrier_wave_1|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux4~0_combout\);

-- Location: LABCELL_X60_Y2_N54
\Uimag_carrier_wave_1|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux10~1_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) # 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ $ (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ (((!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & !\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ $ 
-- (((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101001010100110100000001010011010000001010011111111001001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux10~1_combout\);

-- Location: LABCELL_X60_Y2_N36
\Uimag_carrier_wave_1|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux10~2_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ 
-- (((\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & !\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ (((!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- ((\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- ((\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- ((\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111011010000010110000011100001100010100111011000101001110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux10~2_combout\);

-- Location: LABCELL_X60_Y2_N12
\Uimag_carrier_wave_1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux10~0_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (((\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ $ (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (((!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ $ (((\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( ((\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- ((\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101110111110001101001000001010000101001100110101000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux10~0_combout\);

-- Location: LABCELL_X60_Y2_N42
\Uimag_carrier_wave_1|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux10~3_combout\ = ( \Uimag_carrier_wave_1|Mux10~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\) # ((!\Uimag_carrier_wave_1|Mux10~1_combout\)))) # 
-- (\Uimag_carrier_wave_1|Add1~21_sumout\ & (((\Uimag_carrier_wave_1|Mux10~2_combout\)))) ) ) # ( !\Uimag_carrier_wave_1|Mux10~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (\Uimag_carrier_wave_1|Add1~25_sumout\ & 
-- (!\Uimag_carrier_wave_1|Mux10~1_combout\))) # (\Uimag_carrier_wave_1|Add1~21_sumout\ & (((\Uimag_carrier_wave_1|Mux10~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101001000000111010110101000111111011010100011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux10~1_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux10~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux10~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux10~3_combout\);

-- Location: LABCELL_X55_Y2_N12
\Uimag_carrier_wave_1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~17_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux10~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~14\ ))
-- \Uimag_carrier_wave_1|Add2~18\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux10~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux10~3_combout\,
	cin => \Uimag_carrier_wave_1|Add2~14\,
	sumout => \Uimag_carrier_wave_1|Add2~17_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~18\);

-- Location: LABCELL_X60_Y2_N30
\Uimag_carrier_wave_1|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux9~1_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ 
-- ((\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) ) ) ) # ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (((\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) # ((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & !\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101110011100100101000000101100010110111100111111001001010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux9~1_combout\);

-- Location: LABCELL_X60_Y2_N0
\Uimag_carrier_wave_1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux9~0_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ $ 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- ((\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ (((!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ 
-- (((\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100000110100110001000010100000000001000101110110110001101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux9~0_combout\);

-- Location: LABCELL_X60_Y2_N48
\Uimag_carrier_wave_1|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux9~2_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- \Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- ((!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ 
-- (((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101000001000010010000111010010000111111001101010100000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux9~2_combout\);

-- Location: LABCELL_X60_Y2_N45
\Uimag_carrier_wave_1|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux9~3_combout\ = ( \Uimag_carrier_wave_1|Mux9~2_combout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\ & ((\Uimag_carrier_wave_1|Mux9~0_combout\))) # (\Uimag_carrier_wave_1|Add1~25_sumout\ & 
-- (\Uimag_carrier_wave_1|Mux9~1_combout\)))) ) ) # ( !\Uimag_carrier_wave_1|Mux9~2_combout\ & ( ((!\Uimag_carrier_wave_1|Add1~25_sumout\ & ((\Uimag_carrier_wave_1|Mux9~0_combout\))) # (\Uimag_carrier_wave_1|Add1~25_sumout\ & 
-- (\Uimag_carrier_wave_1|Mux9~1_combout\))) # (\Uimag_carrier_wave_1|Add1~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111011111010101111101111100000010100010100000001010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux9~1_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux9~0_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux9~2_combout\,
	combout => \Uimag_carrier_wave_1|Mux9~3_combout\);

-- Location: LABCELL_X55_Y2_N15
\Uimag_carrier_wave_1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~21_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux9~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~18\ ))
-- \Uimag_carrier_wave_1|Add2~22\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux9~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux9~3_combout\,
	cin => \Uimag_carrier_wave_1|Add2~18\,
	sumout => \Uimag_carrier_wave_1|Add2~21_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~22\);

-- Location: LABCELL_X56_Y2_N48
\Uimag_carrier_wave_1|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux8~1_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\))))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (((\Uimag_carrier_wave_1|Add1~17_sumout\ & !\Uimag_carrier_wave_1|Add1~5_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~5_sumout\ & ((!\Uimag_carrier_wave_1|Add1~13_sumout\) # ((\Uimag_carrier_wave_1|Add1~9_sumout\) # (\Uimag_carrier_wave_1|Add1~17_sumout\)))) 
-- # (\Uimag_carrier_wave_1|Add1~5_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~13_sumout\ & \Uimag_carrier_wave_1|Add1~9_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011110011110110110110000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux8~1_combout\);

-- Location: LABCELL_X56_Y2_N30
\Uimag_carrier_wave_1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux8~0_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (\Uimag_carrier_wave_1|Add1~17_sumout\)) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & 
-- (((!\Uimag_carrier_wave_1|Add1~9_sumout\) # (\Uimag_carrier_wave_1|Add1~5_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~17_sumout\)) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ & ((\Uimag_carrier_wave_1|Add1~9_sumout\))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & (\Uimag_carrier_wave_1|Add1~5_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~9_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100111001100011101110010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux8~0_combout\);

-- Location: LABCELL_X56_Y2_N6
\Uimag_carrier_wave_1|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux8~2_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~17_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~5_sumout\))))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (!\Uimag_carrier_wave_1|Add1~9_sumout\)) # (\Uimag_carrier_wave_1|Add1~17_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~13_sumout\) # (\Uimag_carrier_wave_1|Add1~5_sumout\))))) 
-- # (\Uimag_carrier_wave_1|Add1~17_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ & ((\Uimag_carrier_wave_1|Add1~9_sumout\))) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & (\Uimag_carrier_wave_1|Add1~13_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110111101001101011101101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux8~2_combout\);

-- Location: LABCELL_X56_Y2_N18
\Uimag_carrier_wave_1|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux8~4_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (((!\Uimag_carrier_wave_1|Add1~5_sumout\) # (!\Uimag_carrier_wave_1|Add1~9_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\) # (\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (\Uimag_carrier_wave_1|Add1~13_sumout\ & (((!\Uimag_carrier_wave_1|Add1~17_sumout\ & \Uimag_carrier_wave_1|Add1~9_sumout\)) # (\Uimag_carrier_wave_1|Add1~5_sumout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101000101111110101011001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux8~4_combout\);

-- Location: LABCELL_X56_Y2_N0
\Uimag_carrier_wave_1|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux8~3_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Uimag_carrier_wave_1|Mux8~4_combout\ & ( (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) # (\Uimag_carrier_wave_1|Mux8~1_combout\) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Uimag_carrier_wave_1|Mux8~4_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((\Uimag_carrier_wave_1|Mux8~2_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (\Uimag_carrier_wave_1|Mux8~0_combout\)) ) ) ) # ( \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( !\Uimag_carrier_wave_1|Mux8~4_combout\ & ( (\Uimag_carrier_wave_1|Mux8~1_combout\ & !\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( !\Uimag_carrier_wave_1|Mux8~4_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((\Uimag_carrier_wave_1|Mux8~2_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (\Uimag_carrier_wave_1|Mux8~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011010100000101000000000011111100110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Mux8~1_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux8~0_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux8~2_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux8~4_combout\,
	combout => \Uimag_carrier_wave_1|Mux8~3_combout\);

-- Location: LABCELL_X55_Y2_N18
\Uimag_carrier_wave_1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~25_sumout\ = SUM(( !\Uimag_carrier_wave_1|Mux8~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add2~22\ ))
-- \Uimag_carrier_wave_1|Add2~26\ = CARRY(( !\Uimag_carrier_wave_1|Mux8~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux8~3_combout\,
	cin => \Uimag_carrier_wave_1|Add2~22\,
	sumout => \Uimag_carrier_wave_1|Add2~25_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~26\);

-- Location: MLABCELL_X59_Y2_N30
\Uimag_carrier_wave_1|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux7~2_combout\ = ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~29_sumout\ & ((!\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ 
-- (\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~5_sumout\))))) # (\Uimag_carrier_wave_1|Add1~29_sumout\ & 
-- (((!\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~5_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~29_sumout\) # (\Uimag_carrier_wave_1|Add1~13_sumout\)))) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ & ((\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010000100010100111110111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux7~2_combout\);

-- Location: MLABCELL_X59_Y2_N24
\Uimag_carrier_wave_1|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux7~3_combout\ = ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~29_sumout\) # (\Uimag_carrier_wave_1|Add1~17_sumout\)))) 
-- # (\Uimag_carrier_wave_1|Add1~5_sumout\) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~29_sumout\ & 
-- (\Uimag_carrier_wave_1|Add1~5_sumout\)) # (\Uimag_carrier_wave_1|Add1~29_sumout\ & ((\Uimag_carrier_wave_1|Add1~17_sumout\))))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (((!\Uimag_carrier_wave_1|Add1~5_sumout\ & !\Uimag_carrier_wave_1|Add1~17_sumout\)) 
-- # (\Uimag_carrier_wave_1|Add1~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010100101111011110110111011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux7~3_combout\);

-- Location: MLABCELL_X59_Y2_N12
\Uimag_carrier_wave_1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux7~1_combout\ = ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~13_sumout\ & (((!\Uimag_carrier_wave_1|Add1~5_sumout\ & \Uimag_carrier_wave_1|Add1~17_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~29_sumout\))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (!\Uimag_carrier_wave_1|Add1~29_sumout\ $ (!\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~29_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~13_sumout\ & !\Uimag_carrier_wave_1|Add1~17_sumout\))))) 
-- # (\Uimag_carrier_wave_1|Add1~29_sumout\ & (\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~5_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010111000001010010111001111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux7~1_combout\);

-- Location: MLABCELL_X59_Y2_N54
\Uimag_carrier_wave_1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux7~0_combout\ = ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~5_sumout\ & (((!\Uimag_carrier_wave_1|Add1~17_sumout\)) # (\Uimag_carrier_wave_1|Add1~13_sumout\))) 
-- # (\Uimag_carrier_wave_1|Add1~5_sumout\ & (((!\Uimag_carrier_wave_1|Add1~29_sumout\ & \Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~13_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (\Uimag_carrier_wave_1|Add1~17_sumout\)) # (\Uimag_carrier_wave_1|Add1~29_sumout\))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (\Uimag_carrier_wave_1|Add1~29_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000111000101011110011000111010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux7~0_combout\);

-- Location: MLABCELL_X59_Y2_N42
\Uimag_carrier_wave_1|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux7~4_combout\ = ( \Uimag_carrier_wave_1|Mux7~0_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & !\Uimag_carrier_wave_1|Mux7~2_combout\) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Mux7~0_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ( (!\Uimag_carrier_wave_1|Mux7~2_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\) ) ) ) # ( \Uimag_carrier_wave_1|Mux7~0_combout\ & ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (\Uimag_carrier_wave_1|Mux7~3_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((!\Uimag_carrier_wave_1|Mux7~1_combout\))) 
-- ) ) ) # ( !\Uimag_carrier_wave_1|Mux7~0_combout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (\Uimag_carrier_wave_1|Mux7~3_combout\)) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((!\Uimag_carrier_wave_1|Mux7~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101011011101110111011000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux7~2_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux7~3_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux7~1_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux7~0_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	combout => \Uimag_carrier_wave_1|Mux7~4_combout\);

-- Location: LABCELL_X55_Y2_N21
\Uimag_carrier_wave_1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~29_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux7~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~26\ ))
-- \Uimag_carrier_wave_1|Add2~30\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux7~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux7~4_combout\,
	cin => \Uimag_carrier_wave_1|Add2~26\,
	sumout => \Uimag_carrier_wave_1|Add2~29_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~30\);

-- Location: LABCELL_X62_Y2_N18
\Uimag_carrier_wave_1|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux6~2_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (\Uimag_carrier_wave_1|Add1~5_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (((\Uimag_carrier_wave_1|Add1~5_sumout\ & !\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~17_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # ((\Uimag_carrier_wave_1|Add1~25_sumout\) # (\Uimag_carrier_wave_1|Add1~5_sumout\)))) 
-- # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~17_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001101110111011100101111011101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux6~2_combout\);

-- Location: LABCELL_X62_Y2_N30
\Uimag_carrier_wave_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux6~0_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~5_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~9_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~17_sumout\))))) # (\Uimag_carrier_wave_1|Add1~5_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (\Uimag_carrier_wave_1|Add1~17_sumout\)) # (\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~17_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\)) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~25_sumout\) # (\Uimag_carrier_wave_1|Add1~5_sumout\))))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (\Uimag_carrier_wave_1|Add1~25_sumout\)))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011011100101011110011000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux6~0_combout\);

-- Location: LABCELL_X62_Y2_N0
\Uimag_carrier_wave_1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux6~1_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (!\Uimag_carrier_wave_1|Add1~25_sumout\)))) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ & (!\Uimag_carrier_wave_1|Add1~5_sumout\ $ (\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & ((\Uimag_carrier_wave_1|Add1~25_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~5_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( !\Uimag_carrier_wave_1|Add1~5_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~17_sumout\) # 
-- (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (\Uimag_carrier_wave_1|Add1~25_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000101101010010111011010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux6~1_combout\);

-- Location: LABCELL_X62_Y2_N54
\Uimag_carrier_wave_1|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux6~4_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( !\Uimag_carrier_wave_1|Add1~9_sumout\ $ ((((!\Uimag_carrier_wave_1|Add1~17_sumout\ & !\Uimag_carrier_wave_1|Add1~25_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~5_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ & ( !\Uimag_carrier_wave_1|Add1~9_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~5_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~17_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101100101011001011001011010010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	combout => \Uimag_carrier_wave_1|Mux6~4_combout\);

-- Location: LABCELL_X62_Y2_N24
\Uimag_carrier_wave_1|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux6~3_combout\ = ( \Uimag_carrier_wave_1|Mux6~4_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ( (!\Uimag_carrier_wave_1|Mux6~1_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Mux6~4_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ( (!\Uimag_carrier_wave_1|Mux6~1_combout\ & !\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) ) ) ) # ( \Uimag_carrier_wave_1|Mux6~4_combout\ & ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Uimag_carrier_wave_1|Mux6~2_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Uimag_carrier_wave_1|Mux6~0_combout\))) 
-- ) ) ) # ( !\Uimag_carrier_wave_1|Mux6~4_combout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Uimag_carrier_wave_1|Mux6~2_combout\)) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Uimag_carrier_wave_1|Mux6~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111001100010101011100110011110000000000001111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Mux6~2_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux6~0_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux6~1_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux6~4_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	combout => \Uimag_carrier_wave_1|Mux6~3_combout\);

-- Location: LABCELL_X55_Y2_N24
\Uimag_carrier_wave_1|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~33_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux6~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~30\ ))
-- \Uimag_carrier_wave_1|Add2~34\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux6~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux6~3_combout\,
	cin => \Uimag_carrier_wave_1|Add2~30\,
	sumout => \Uimag_carrier_wave_1|Add2~33_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~34\);

-- Location: LABCELL_X57_Y2_N24
\Uimag_carrier_wave_1|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux5~1_combout\ = ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~13_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~13_sumout\) # (!\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~9_sumout\ & \Uimag_carrier_wave_1|Add1~13_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~13_sumout\) # (!\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (((\Uimag_carrier_wave_1|Add1~13_sumout\ & !\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010001000001000100010100010100010000010000010101000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	combout => \Uimag_carrier_wave_1|Mux5~1_combout\);

-- Location: LABCELL_X57_Y2_N6
\Uimag_carrier_wave_1|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux5~2_combout\ = ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (\Uimag_carrier_wave_1|Add1~25_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~13_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((\Uimag_carrier_wave_1|Add1~13_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (((!\Uimag_carrier_wave_1|Add1~25_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~13_sumout\)) # (\Uimag_carrier_wave_1|Add1~9_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & 
-- (((\Uimag_carrier_wave_1|Add1~9_sumout\ & !\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~13_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000001010101010100010101000101010001010101000101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	combout => \Uimag_carrier_wave_1|Mux5~2_combout\);

-- Location: LABCELL_X57_Y2_N54
\Uimag_carrier_wave_1|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux5~4_combout\ = ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (!\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) ) 
-- # ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ 
-- & (\Uimag_carrier_wave_1|Add1~13_sumout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & !\Uimag_carrier_wave_1|Add1~25_sumout\) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ $ (\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100000100010101010100000000010001010000000100010001010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	combout => \Uimag_carrier_wave_1|Mux5~4_combout\);

-- Location: LABCELL_X57_Y2_N42
\Uimag_carrier_wave_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux5~0_combout\ = ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ & \Uimag_carrier_wave_1|Add1~25_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( 
-- \Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~13_sumout\ & ((\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~13_sumout\ & (\Uimag_carrier_wave_1|Add1~9_sumout\)))) ) 
-- ) ) # ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ (!\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~13_sumout\ $ (!\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~25_sumout\) # (\Uimag_carrier_wave_1|Add1~13_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010000010100000100010000000000010101000101000000000101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	combout => \Uimag_carrier_wave_1|Mux5~0_combout\);

-- Location: LABCELL_X57_Y2_N0
\Uimag_carrier_wave_1|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux5~3_combout\ = ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Uimag_carrier_wave_1|Mux5~4_combout\ ) ) ) # ( !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Uimag_carrier_wave_1|Mux5~0_combout\ ) ) ) # ( \Uimag_carrier_wave_1|Mux4~0_combout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Uimag_carrier_wave_1|Mux5~1_combout\ ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Mux4~0_combout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Uimag_carrier_wave_1|Mux5~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011101010101010101000000000111111111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Mux5~1_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux5~2_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux5~4_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux5~0_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	combout => \Uimag_carrier_wave_1|Mux5~3_combout\);

-- Location: LABCELL_X55_Y2_N27
\Uimag_carrier_wave_1|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~37_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux5~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~34\ ))
-- \Uimag_carrier_wave_1|Add2~38\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux5~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux5~3_combout\,
	cin => \Uimag_carrier_wave_1|Add2~34\,
	sumout => \Uimag_carrier_wave_1|Add2~37_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~38\);

-- Location: LABCELL_X61_Y2_N18
\Uimag_carrier_wave_1|Mux4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux4~6_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~25_sumout\ & !\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (((\Uimag_carrier_wave_1|Add1~9_sumout\ & !\Uimag_carrier_wave_1|Add1~17_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~25_sumout\ & (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\) # (\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~25_sumout\ & !\Uimag_carrier_wave_1|Add1~21_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000100011000000000010011100000000001001100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	combout => \Uimag_carrier_wave_1|Mux4~6_combout\);

-- Location: LABCELL_X61_Y2_N6
\Uimag_carrier_wave_1|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux4~2_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (!\Uimag_carrier_wave_1|Add1~17_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( 
-- \Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\ & !\Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (((\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~9_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\) # (\Uimag_carrier_wave_1|Add1~17_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101101100000000100100110000000010010010000000001011011000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	combout => \Uimag_carrier_wave_1|Mux4~2_combout\);

-- Location: LABCELL_X61_Y2_N0
\Uimag_carrier_wave_1|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux4~3_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (((\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~9_sumout\))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (((\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~9_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (((\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~25_sumout\)) # (\Uimag_carrier_wave_1|Add1~9_sumout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100000000011111110000000001111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	combout => \Uimag_carrier_wave_1|Mux4~3_combout\);

-- Location: LABCELL_X61_Y2_N12
\Uimag_carrier_wave_1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux4~1_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~9_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~17_sumout\) # (\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (\Uimag_carrier_wave_1|Add1~17_sumout\))))) ) ) ) # ( 
-- \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~9_sumout\ & (!\Uimag_carrier_wave_1|Add1~25_sumout\ $ (!\Uimag_carrier_wave_1|Add1~17_sumout\))) # 
-- (\Uimag_carrier_wave_1|Add1~9_sumout\ & (\Uimag_carrier_wave_1|Add1~25_sumout\ & \Uimag_carrier_wave_1|Add1~17_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~5_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~25_sumout\) # (\Uimag_carrier_wave_1|Add1~9_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110100000000001010010000000001101011000000000100101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	combout => \Uimag_carrier_wave_1|Mux4~1_combout\);

-- Location: LABCELL_X61_Y2_N54
\Uimag_carrier_wave_1|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux4~4_combout\ = ( \Uimag_carrier_wave_1|Mux4~3_combout\ & ( \Uimag_carrier_wave_1|Mux4~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)) # 
-- (\Uimag_carrier_wave_1|Mux4~6_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((!\Uimag_carrier_wave_1|Mux4~2_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Mux4~3_combout\ & ( 
-- \Uimag_carrier_wave_1|Mux4~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Uimag_carrier_wave_1|Mux4~6_combout\ & ((\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (((!\Uimag_carrier_wave_1|Mux4~2_combout\) # (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Mux4~3_combout\ & ( !\Uimag_carrier_wave_1|Mux4~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (((!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)) # (\Uimag_carrier_wave_1|Mux4~6_combout\))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((!\Uimag_carrier_wave_1|Mux4~2_combout\ & 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Mux4~3_combout\ & ( !\Uimag_carrier_wave_1|Mux4~1_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Uimag_carrier_wave_1|Mux4~6_combout\ & 
-- ((\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((!\Uimag_carrier_wave_1|Mux4~2_combout\ & !\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010000111111000101000000001100010111111111110001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Mux4~6_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux4~2_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux4~3_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~1_combout\,
	combout => \Uimag_carrier_wave_1|Mux4~4_combout\);

-- Location: LABCELL_X55_Y2_N30
\Uimag_carrier_wave_1|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~41_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux4~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~38\ ))
-- \Uimag_carrier_wave_1|Add2~42\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux4~4_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~4_combout\,
	cin => \Uimag_carrier_wave_1|Add2~38\,
	sumout => \Uimag_carrier_wave_1|Add2~41_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~42\);

-- Location: LABCELL_X63_Y2_N42
\Uimag_carrier_wave_1|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux3~3_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # ((!\Uimag_carrier_wave_1|Add1~5_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~25_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~25_sumout\) # (\Uimag_carrier_wave_1|Add1~5_sumout\))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (!\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~17_sumout\ $ (!\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010001000001000101000100000101010100010001010100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	combout => \Uimag_carrier_wave_1|Mux3~3_combout\);

-- Location: LABCELL_X63_Y2_N30
\Uimag_carrier_wave_1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux3~1_combout\ = ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\) # (\Uimag_carrier_wave_1|Add1~17_sumout\))) ) ) 
-- ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ & ((!\Uimag_carrier_wave_1|Add1~25_sumout\))) # 
-- (\Uimag_carrier_wave_1|Add1~17_sumout\ & ((\Uimag_carrier_wave_1|Add1~25_sumout\) # (\Uimag_carrier_wave_1|Add1~5_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\) # (!\Uimag_carrier_wave_1|Add1~25_sumout\))) # (\Uimag_carrier_wave_1|Add1~17_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~25_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~1_sumout\ & ( !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~17_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~25_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010101010100010001010001010001010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	combout => \Uimag_carrier_wave_1|Mux3~1_combout\);

-- Location: LABCELL_X61_Y2_N42
\Uimag_carrier_wave_1|Mux4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux4~5_combout\ = (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (!\Uimag_carrier_wave_1|Add1~9_sumout\ & ((!\Uimag_carrier_wave_1|Add1~5_sumout\) # (!\Uimag_carrier_wave_1|Add1~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000010000000110000001000000011000000100000001100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	combout => \Uimag_carrier_wave_1|Mux4~5_combout\);

-- Location: LABCELL_X60_Y2_N6
\Uimag_carrier_wave_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux3~0_combout\ = ( \Uimag_carrier_wave_1|Mux4~5_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ( (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & !\Uimag_carrier_wave_1|Mux4~0_combout\) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Mux4~5_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ $ (!\Uimag_carrier_wave_1|Mux4~0_combout\) ) ) ) # ( \Uimag_carrier_wave_1|Mux4~5_combout\ & ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ( (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (!\Uimag_carrier_wave_1|Mux4~0_combout\ & ((\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Mux4~5_combout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & 
-- (((\Uimag_carrier_wave_1|Mux4~0_combout\)))) # (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (!\Uimag_carrier_wave_1|Mux4~0_combout\ & ((\Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # 
-- (\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110000111100000100000011000000111100001111000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux4~5_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	combout => \Uimag_carrier_wave_1|Mux3~0_combout\);

-- Location: LABCELL_X63_Y2_N24
\Uimag_carrier_wave_1|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux3~2_combout\ = ( \Uimag_carrier_wave_1|Mux3~0_combout\ & ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & \Uimag_carrier_wave_1|Add1~29_sumout\) ) ) ) # ( !\Uimag_carrier_wave_1|Mux3~0_combout\ 
-- & ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ ) ) ) # ( \Uimag_carrier_wave_1|Mux3~0_combout\ & ( !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~29_sumout\ & ((!\Uimag_carrier_wave_1|Mux3~1_combout\))) # (\Uimag_carrier_wave_1|Add1~29_sumout\ & (!\Uimag_carrier_wave_1|Mux3~3_combout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Mux3~0_combout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((!\Uimag_carrier_wave_1|Add1~29_sumout\ & ((!\Uimag_carrier_wave_1|Mux3~1_combout\))) # (\Uimag_carrier_wave_1|Add1~29_sumout\ & 
-- (!\Uimag_carrier_wave_1|Mux3~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000001000101010000000100010101010101010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Mux3~3_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux3~1_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Mux3~0_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	combout => \Uimag_carrier_wave_1|Mux3~2_combout\);

-- Location: LABCELL_X55_Y2_N33
\Uimag_carrier_wave_1|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~45_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux3~2_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~42\ ))
-- \Uimag_carrier_wave_1|Add2~46\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux3~2_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux3~2_combout\,
	cin => \Uimag_carrier_wave_1|Add2~42\,
	sumout => \Uimag_carrier_wave_1|Add2~45_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~46\);

-- Location: LABCELL_X61_Y2_N48
\Uimag_carrier_wave_1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux2~1_combout\ = ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (((\Uimag_carrier_wave_1|Add1~21_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~1_sumout\)) # (\Uimag_carrier_wave_1|Add1~5_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( (\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- \Uimag_carrier_wave_1|Add1~21_sumout\) ) ) ) # ( \Uimag_carrier_wave_1|Add1~9_sumout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) ) # ( !\Uimag_carrier_wave_1|Add1~9_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000001100110001001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~5_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~1_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~9_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux2~1_combout\);

-- Location: LABCELL_X61_Y2_N24
\Uimag_carrier_wave_1|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux2~2_combout\ = ( \Uimag_carrier_wave_1|Mux4~5_combout\ & ( !\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) # ( !\Uimag_carrier_wave_1|Mux4~5_combout\ & ( (!\Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux4~5_combout\,
	combout => \Uimag_carrier_wave_1|Mux2~2_combout\);

-- Location: LABCELL_X60_Y2_N18
\Uimag_carrier_wave_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux2~0_combout\ = ( \Uimag_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ( (\Uimag_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (((\Uimag_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- \Uimag_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)) # (\Uimag_carrier_wave_1|Look_Up_Table_k[4]~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000100110000001100010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	combout => \Uimag_carrier_wave_1|Mux2~0_combout\);

-- Location: LABCELL_X61_Y2_N30
\Uimag_carrier_wave_1|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux2~3_combout\ = ( \Uimag_carrier_wave_1|Add1~17_sumout\ & ( \Uimag_carrier_wave_1|Mux2~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((\Uimag_carrier_wave_1|Add1~29_sumout\) # (\Uimag_carrier_wave_1|Mux2~1_combout\))) ) 
-- ) ) # ( !\Uimag_carrier_wave_1|Add1~17_sumout\ & ( \Uimag_carrier_wave_1|Mux2~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (\Uimag_carrier_wave_1|Mux2~2_combout\ & !\Uimag_carrier_wave_1|Add1~29_sumout\)) ) ) ) # ( 
-- \Uimag_carrier_wave_1|Add1~17_sumout\ & ( !\Uimag_carrier_wave_1|Mux2~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((\Uimag_carrier_wave_1|Add1~29_sumout\) # (\Uimag_carrier_wave_1|Mux2~1_combout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~17_sumout\ & ( !\Uimag_carrier_wave_1|Mux2~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & ((\Uimag_carrier_wave_1|Add1~29_sumout\) # (\Uimag_carrier_wave_1|Mux2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100010001001100110000001100000000000100010011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Mux2~1_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Mux2~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux2~0_combout\,
	combout => \Uimag_carrier_wave_1|Mux2~3_combout\);

-- Location: LABCELL_X55_Y2_N36
\Uimag_carrier_wave_1|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~49_sumout\ = SUM(( !\Uimag_carrier_wave_1|Mux2~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add2~46\ ))
-- \Uimag_carrier_wave_1|Add2~50\ = CARRY(( !\Uimag_carrier_wave_1|Mux2~3_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001010111101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux2~3_combout\,
	cin => \Uimag_carrier_wave_1|Add2~46\,
	sumout => \Uimag_carrier_wave_1|Add2~49_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~50\);

-- Location: LABCELL_X61_Y2_N36
\Uimag_carrier_wave_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Mux1~0_combout\ = ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( \Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ ) ) ) # ( !\Uimag_carrier_wave_1|Add1~29_sumout\ & ( \Uimag_carrier_wave_1|Add1~13_sumout\ 
-- & ( (!\Uimag_carrier_wave_1|Add1~21_sumout\ & (((\Uimag_carrier_wave_1|Add1~25_sumout\ & !\Uimag_carrier_wave_1|Mux4~5_combout\)) # (\Uimag_carrier_wave_1|Add1~17_sumout\))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~29_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~13_sumout\ & ( !\Uimag_carrier_wave_1|Add1~21_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000101010000010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~25_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~17_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Mux4~5_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~29_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~13_sumout\,
	combout => \Uimag_carrier_wave_1|Mux1~0_combout\);

-- Location: LABCELL_X55_Y2_N39
\Uimag_carrier_wave_1|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~53_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Mux1~0_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~50\ ))
-- \Uimag_carrier_wave_1|Add2~54\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Mux1~0_combout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Mux1~0_combout\,
	cin => \Uimag_carrier_wave_1|Add2~50\,
	sumout => \Uimag_carrier_wave_1|Add2~53_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~54\);

-- Location: LABCELL_X55_Y2_N42
\Uimag_carrier_wave_1|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~57_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Add1~21_sumout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~54\ ))
-- \Uimag_carrier_wave_1|Add2~58\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Add1~21_sumout\ $ (((!\Add1~0_combout\) # ((!\Uimag_carrier_wave_1|LessThan0~1_combout\ & !\scale_out1[12]~2_combout\)))) ) + ( \Uimag_carrier_wave_1|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010100001010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~21_sumout\,
	cin => \Uimag_carrier_wave_1|Add2~54\,
	sumout => \Uimag_carrier_wave_1|Add2~57_sumout\,
	cout => \Uimag_carrier_wave_1|Add2~58\);

-- Location: LABCELL_X73_Y2_N24
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( !counter_sine_generator_out1(12) & ( !counter_sine_generator_out1(10) & ( !counter_sine_generator_out1(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter_sine_generator_out1(11),
	datae => ALT_INV_counter_sine_generator_out1(12),
	dataf => ALT_INV_counter_sine_generator_out1(10),
	combout => \Equal1~0_combout\);

-- Location: LABCELL_X55_Y2_N45
\Uimag_carrier_wave_1|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add2~61_sumout\ = SUM(( (\Add1~0_combout\ & (((!\Equal1~0_combout\) # (counter_sine_generator_out1(7))) # (\Uimag_carrier_wave_1|LessThan0~1_combout\))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add1~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_Equal1~0_combout\,
	datad => ALT_INV_counter_sine_generator_out1(7),
	cin => \Uimag_carrier_wave_1|Add2~58\,
	sumout => \Uimag_carrier_wave_1|Add2~61_sumout\);

-- Location: IOIBUF_X89_Y6_N4
\Real_rsvd[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(0),
	o => \Real_rsvd[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\Real_rsvd[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(1),
	o => \Real_rsvd[1]~input_o\);

-- Location: IOIBUF_X38_Y0_N18
\Real_rsvd[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(2),
	o => \Real_rsvd[2]~input_o\);

-- Location: IOIBUF_X89_Y4_N95
\Real_rsvd[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(3),
	o => \Real_rsvd[3]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\Real_rsvd[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(4),
	o => \Real_rsvd[4]~input_o\);

-- Location: IOIBUF_X89_Y4_N78
\Real_rsvd[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(5),
	o => \Real_rsvd[5]~input_o\);

-- Location: IOIBUF_X58_Y0_N58
\Real_rsvd[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(6),
	o => \Real_rsvd[6]~input_o\);

-- Location: IOIBUF_X32_Y0_N1
\Real_rsvd[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(7),
	o => \Real_rsvd[7]~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\Real_rsvd[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(8),
	o => \Real_rsvd[8]~input_o\);

-- Location: IOIBUF_X40_Y0_N52
\Real_rsvd[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(9),
	o => \Real_rsvd[9]~input_o\);

-- Location: IOIBUF_X58_Y0_N41
\Real_rsvd[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(10),
	o => \Real_rsvd[10]~input_o\);

-- Location: IOIBUF_X38_Y0_N35
\Real_rsvd[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(11),
	o => \Real_rsvd[11]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\Real_rsvd[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(12),
	o => \Real_rsvd[12]~input_o\);

-- Location: IOIBUF_X34_Y0_N41
\Real_rsvd[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(13),
	o => \Real_rsvd[13]~input_o\);

-- Location: IOIBUF_X58_Y0_N92
\Real_rsvd[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(14),
	o => \Real_rsvd[14]~input_o\);

-- Location: IOIBUF_X58_Y0_N75
\Real_rsvd[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(15),
	o => \Real_rsvd[15]~input_o\);

-- Location: IOIBUF_X89_Y4_N61
\Real_rsvd[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(16),
	o => \Real_rsvd[16]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\Real_rsvd[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(17),
	o => \Real_rsvd[17]~input_o\);

-- Location: IOIBUF_X89_Y4_N44
\Real_rsvd[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(18),
	o => \Real_rsvd[18]~input_o\);

-- Location: IOIBUF_X28_Y0_N18
\Real_rsvd[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Real_rsvd(19),
	o => \Real_rsvd[19]~input_o\);

-- Location: LABCELL_X60_Y4_N48
\Uimag_carrier_wave_1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|LessThan0~2_combout\ = ( \scale_out1[12]~2_combout\ & ( \Uimag_carrier_wave_1|LessThan0~1_combout\ ) ) # ( !\scale_out1[12]~2_combout\ & ( \Uimag_carrier_wave_1|LessThan0~1_combout\ ) ) # ( \scale_out1[12]~2_combout\ & ( 
-- !\Uimag_carrier_wave_1|LessThan0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	combout => \Uimag_carrier_wave_1|LessThan0~2_combout\);

-- Location: LABCELL_X67_Y2_N57
\Ureal_carrier_wave_1|LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|LessThan1~0_combout\ = ( counter_sine_generator_out1(8) & ( !counter_sine_generator_out1(7) $ (counter_sine_generator_out1(6)) ) ) # ( !counter_sine_generator_out1(8) & ( (counter_sine_generator_out1(7) & 
-- counter_sine_generator_out1(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111000011110000111100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter_sine_generator_out1(7),
	datac => ALT_INV_counter_sine_generator_out1(6),
	dataf => ALT_INV_counter_sine_generator_out1(8),
	combout => \Ureal_carrier_wave_1|LessThan1~0_combout\);

-- Location: LABCELL_X67_Y2_N51
\Ureal_carrier_wave_1|LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|LessThan1~1_combout\ = ( \Uimag_carrier_wave_1|LessThan0~0_combout\ & ( \scale_out1[5]~1_combout\ & ( \Ureal_carrier_wave_1|LessThan1~0_combout\ ) ) ) # ( !\Uimag_carrier_wave_1|LessThan0~0_combout\ & ( \scale_out1[5]~1_combout\ & ( 
-- counter_sine_generator_out1(7) ) ) ) # ( \Uimag_carrier_wave_1|LessThan0~0_combout\ & ( !\scale_out1[5]~1_combout\ & ( counter_sine_generator_out1(7) ) ) ) # ( !\Uimag_carrier_wave_1|LessThan0~0_combout\ & ( !\scale_out1[5]~1_combout\ & ( 
-- counter_sine_generator_out1(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Ureal_carrier_wave_1|ALT_INV_LessThan1~0_combout\,
	datac => ALT_INV_counter_sine_generator_out1(7),
	datae => \Uimag_carrier_wave_1|ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_scale_out1[5]~1_combout\,
	combout => \Ureal_carrier_wave_1|LessThan1~1_combout\);

-- Location: LABCELL_X67_Y2_N0
\Uimag_carrier_wave_1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~34_sumout\ = SUM(( (!\Equal1~0_combout\) # (\Ureal_carrier_wave_1|LessThan1~1_combout\) ) + ( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(0)))) ) + ( !VCC ))
-- \Uimag_carrier_wave_1|Add1~35\ = CARRY(( (!\Equal1~0_combout\) # (\Ureal_carrier_wave_1|LessThan1~1_combout\) ) + ( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(0)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011011110110100000000000000001101110111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => ALT_INV_counter_sine_generator_out1(0),
	cin => GND,
	sumout => \Uimag_carrier_wave_1|Add1~34_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~35\);

-- Location: LABCELL_X67_Y2_N3
\Uimag_carrier_wave_1|Add1~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~38_sumout\ = SUM(( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(1)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~35\ ))
-- \Uimag_carrier_wave_1|Add1~39\ = CARRY(( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(1)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~35\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datad => ALT_INV_counter_sine_generator_out1(1),
	cin => \Uimag_carrier_wave_1|Add1~35\,
	sumout => \Uimag_carrier_wave_1|Add1~38_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~39\);

-- Location: LABCELL_X67_Y2_N6
\Uimag_carrier_wave_1|Add1~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~42_sumout\ = SUM(( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(2)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~39\ ))
-- \Uimag_carrier_wave_1|Add1~43\ = CARRY(( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(2)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~39\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	datad => ALT_INV_counter_sine_generator_out1(2),
	cin => \Uimag_carrier_wave_1|Add1~39\,
	sumout => \Uimag_carrier_wave_1|Add1~42_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~43\);

-- Location: LABCELL_X67_Y2_N9
\Uimag_carrier_wave_1|Add1~58\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~58_sumout\ = SUM(( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(3)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~43\ ))
-- \Uimag_carrier_wave_1|Add1~59\ = CARRY(( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(3)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~43\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datac => ALT_INV_counter_sine_generator_out1(3),
	cin => \Uimag_carrier_wave_1|Add1~43\,
	sumout => \Uimag_carrier_wave_1|Add1~58_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~59\);

-- Location: LABCELL_X67_Y2_N12
\Uimag_carrier_wave_1|Add1~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~50_sumout\ = SUM(( GND ) + ( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(4)))) ) + ( \Uimag_carrier_wave_1|Add1~59\ ))
-- \Uimag_carrier_wave_1|Add1~51\ = CARRY(( GND ) + ( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(4)))) ) + ( \Uimag_carrier_wave_1|Add1~59\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111001100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal1~0_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	dataf => ALT_INV_counter_sine_generator_out1(4),
	cin => \Uimag_carrier_wave_1|Add1~59\,
	sumout => \Uimag_carrier_wave_1|Add1~50_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~51\);

-- Location: LABCELL_X67_Y2_N15
\Uimag_carrier_wave_1|Add1~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~46_sumout\ = SUM(( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(5)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~51\ ))
-- \Uimag_carrier_wave_1|Add1~47\ = CARRY(( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(5)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~51\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	datab => \ALT_INV_Equal1~0_combout\,
	datad => ALT_INV_counter_sine_generator_out1(5),
	cin => \Uimag_carrier_wave_1|Add1~51\,
	sumout => \Uimag_carrier_wave_1|Add1~46_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~47\);

-- Location: LABCELL_X67_Y2_N45
\Uimag_carrier_wave_1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|LessThan0~3_combout\ = ( !\Uimag_carrier_wave_1|LessThan0~0_combout\ & ( \scale_out1[5]~1_combout\ ) ) # ( \Uimag_carrier_wave_1|LessThan0~0_combout\ & ( !\scale_out1[5]~1_combout\ ) ) # ( !\Uimag_carrier_wave_1|LessThan0~0_combout\ 
-- & ( !\scale_out1[5]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Uimag_carrier_wave_1|ALT_INV_LessThan0~0_combout\,
	dataf => \ALT_INV_scale_out1[5]~1_combout\,
	combout => \Uimag_carrier_wave_1|LessThan0~3_combout\);

-- Location: LABCELL_X67_Y2_N18
\Uimag_carrier_wave_1|Add1~62\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~62_sumout\ = SUM(( GND ) + ( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(6)))) ) + ( \Uimag_carrier_wave_1|Add1~47\ ))
-- \Uimag_carrier_wave_1|Add1~63\ = CARRY(( GND ) + ( (\Equal1~0_combout\ & (!\Ureal_carrier_wave_1|LessThan1~1_combout\ $ (!counter_sine_generator_out1(6)))) ) + ( \Uimag_carrier_wave_1|Add1~47\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101010111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_LessThan1~1_combout\,
	dataf => ALT_INV_counter_sine_generator_out1(6),
	cin => \Uimag_carrier_wave_1|Add1~47\,
	sumout => \Uimag_carrier_wave_1|Add1~62_sumout\,
	cout => \Uimag_carrier_wave_1|Add1~63\);

-- Location: LABCELL_X67_Y2_N21
\Uimag_carrier_wave_1|Add1~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \Uimag_carrier_wave_1|Add1~54_sumout\ = SUM(( (\Equal1~0_combout\ & (!\Uimag_carrier_wave_1|LessThan0~3_combout\ & (!counter_sine_generator_out1(7) $ (!\Ureal_carrier_wave_1|LessThan1~0_combout\)))) ) + ( GND ) + ( \Uimag_carrier_wave_1|Add1~63\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000001000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => ALT_INV_counter_sine_generator_out1(7),
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan0~3_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_LessThan1~0_combout\,
	cin => \Uimag_carrier_wave_1|Add1~63\,
	sumout => \Uimag_carrier_wave_1|Add1~54_sumout\);

-- Location: LABCELL_X63_Y4_N0
\Ureal_carrier_wave_1|Mux14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux14~0_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~46_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~38_sumout\ & (\Uimag_carrier_wave_1|Add1~34_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((\Uimag_carrier_wave_1|Add1~42_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~46_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~38_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~34_sumout\ & !\Uimag_carrier_wave_1|Add1~42_sumout\))))) # (\Uimag_carrier_wave_1|Add1~46_sumout\ & (\Uimag_carrier_wave_1|Add1~34_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111100001010101101011000101001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux14~0_combout\);

-- Location: LABCELL_X63_Y4_N12
\Ureal_carrier_wave_1|Mux14~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux14~2_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (!\Uimag_carrier_wave_1|Add1~34_sumout\ $ (((\Uimag_carrier_wave_1|Add1~38_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~46_sumout\))))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # ((!\Uimag_carrier_wave_1|Add1~34_sumout\ & \Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & (((\Uimag_carrier_wave_1|Add1~42_sumout\ & !\Uimag_carrier_wave_1|Add1~46_sumout\)) # (\Uimag_carrier_wave_1|Add1~38_sumout\))) 
-- # (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # ((\Uimag_carrier_wave_1|Add1~42_sumout\ & !\Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111100011010101101111000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux14~2_combout\);

-- Location: LABCELL_X67_Y4_N0
\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ = ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\);

-- Location: LABCELL_X63_Y4_N54
\Ureal_carrier_wave_1|Mux14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux14~1_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~38_sumout\)))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & (!\Uimag_carrier_wave_1|Add1~34_sumout\ $ (((\Uimag_carrier_wave_1|Add1~38_sumout\ & \Uimag_carrier_wave_1|Add1~46_sumout\))))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (\Uimag_carrier_wave_1|Add1~46_sumout\ & (!\Uimag_carrier_wave_1|Add1~34_sumout\ $ (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) 
-- # (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~34_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\ $ (!\Uimag_carrier_wave_1|Add1~46_sumout\))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) 
-- # (\Uimag_carrier_wave_1|Add1~46_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001111001001001100110010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux14~1_combout\);

-- Location: LABCELL_X66_Y3_N48
\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ = ( !\Uimag_carrier_wave_1|Add1~62_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\);

-- Location: LABCELL_X63_Y4_N30
\Ureal_carrier_wave_1|Mux14~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux14~3_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\ & (\Uimag_carrier_wave_1|Add1~34_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~46_sumout\ & ((\Uimag_carrier_wave_1|Add1~42_sumout\))))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~46_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~34_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ 
-- (((\Uimag_carrier_wave_1|Add1~46_sumout\) # (\Uimag_carrier_wave_1|Add1~38_sumout\))))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\))) # 
-- (\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ & !\Uimag_carrier_wave_1|Add1~46_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000011001110010010100110011100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux14~3_combout\);

-- Location: LABCELL_X63_Y4_N24
\Ureal_carrier_wave_1|Mux14~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux14~4_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux14~3_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((!\Ureal_carrier_wave_1|Mux14~1_combout\))) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (\Ureal_carrier_wave_1|Mux14~0_combout\)) ) ) ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux14~3_combout\ & ( (!\Ureal_carrier_wave_1|Mux14~2_combout\) # 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\) ) ) ) # ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux14~3_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & 
-- ((!\Ureal_carrier_wave_1|Mux14~1_combout\))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (\Ureal_carrier_wave_1|Mux14~0_combout\)) ) ) ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux14~3_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Mux14~2_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111101010000010111111100111111001111010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux14~0_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Mux14~2_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux14~1_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux14~3_combout\,
	combout => \Ureal_carrier_wave_1|Mux14~4_combout\);

-- Location: LABCELL_X60_Y4_N0
\Ureal_carrier_wave_1|Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~1_sumout\ = SUM(( (\Uimag_carrier_wave_1|LessThan0~2_combout\ & ((!\Equal1~0_combout\) # (counter_sine_generator_out1(8)))) ) + ( !\Ureal_carrier_wave_1|Mux14~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # 
-- ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( !VCC ))
-- \Ureal_carrier_wave_1|Add2~2\ = CARRY(( (\Uimag_carrier_wave_1|LessThan0~2_combout\ & ((!\Equal1~0_combout\) # (counter_sine_generator_out1(8)))) ) + ( !\Ureal_carrier_wave_1|Mux14~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # 
-- ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux14~4_combout\,
	cin => GND,
	sumout => \Ureal_carrier_wave_1|Add2~1_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~2\);

-- Location: LABCELL_X66_Y3_N12
\Ureal_carrier_wave_1|Mux13~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux13~1_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~58_sumout\) # 
-- (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~58_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\))) # (\Uimag_carrier_wave_1|Add1~58_sumout\ & 
-- (\Uimag_carrier_wave_1|Add1~42_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\ $ 
-- (((!\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~42_sumout\))))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & (\Uimag_carrier_wave_1|Add1~58_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ & \Uimag_carrier_wave_1|Add1~38_sumout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010011010010011110000100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux13~1_combout\);

-- Location: LABCELL_X66_Y3_N18
\Ureal_carrier_wave_1|Mux13~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux13~2_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~34_sumout\ $ (!\Uimag_carrier_wave_1|Add1~42_sumout\)) 
-- # (\Uimag_carrier_wave_1|Add1~58_sumout\))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~58_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # 
-- ((\Uimag_carrier_wave_1|Add1~58_sumout\ & !\Uimag_carrier_wave_1|Add1~42_sumout\)))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~58_sumout\ & ((\Uimag_carrier_wave_1|Add1~38_sumout\))) # (\Uimag_carrier_wave_1|Add1~58_sumout\ 
-- & (!\Uimag_carrier_wave_1|Add1~42_sumout\ & !\Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101001100100011110111110010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux13~2_combout\);

-- Location: MLABCELL_X65_Y3_N24
\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~46_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\);

-- Location: LABCELL_X66_Y3_N36
\Ureal_carrier_wave_1|Mux13~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux13~3_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\) # (!\Uimag_carrier_wave_1|Add1~58_sumout\ $ 
-- (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & (!\Uimag_carrier_wave_1|Add1~58_sumout\ $ ((\Uimag_carrier_wave_1|Add1~42_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (((!\Uimag_carrier_wave_1|Add1~38_sumout\) # (\Uimag_carrier_wave_1|Add1~42_sumout\)) # (\Uimag_carrier_wave_1|Add1~58_sumout\)) # (\Uimag_carrier_wave_1|Add1~34_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101111111111000111110100100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux13~3_combout\);

-- Location: LABCELL_X66_Y3_N6
\Ureal_carrier_wave_1|Mux13~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux13~0_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~58_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (!\Uimag_carrier_wave_1|Add1~38_sumout\)) 
-- # (\Uimag_carrier_wave_1|Add1~34_sumout\))) # (\Uimag_carrier_wave_1|Add1~58_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\) # ((!\Uimag_carrier_wave_1|Add1~34_sumout\ & \Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # (!\Uimag_carrier_wave_1|Add1~58_sumout\ $ 
-- (!\Uimag_carrier_wave_1|Add1~42_sumout\)))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & (((!\Uimag_carrier_wave_1|Add1~42_sumout\) # (\Uimag_carrier_wave_1|Add1~38_sumout\)) # (\Uimag_carrier_wave_1|Add1~58_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101101111101011111001111011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux13~0_combout\);

-- Location: LABCELL_X66_Y3_N30
\Ureal_carrier_wave_1|Mux13~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux13~4_combout\ = ( \Ureal_carrier_wave_1|Mux13~3_combout\ & ( \Ureal_carrier_wave_1|Mux13~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # 
-- (\Ureal_carrier_wave_1|Mux13~2_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Ureal_carrier_wave_1|Mux13~1_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux13~3_combout\ & 
-- ( \Ureal_carrier_wave_1|Mux13~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((\Ureal_carrier_wave_1|Mux13~2_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ 
-- & (!\Ureal_carrier_wave_1|Mux13~1_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( \Ureal_carrier_wave_1|Mux13~3_combout\ & ( !\Ureal_carrier_wave_1|Mux13~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ 
-- & (((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Ureal_carrier_wave_1|Mux13~2_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Ureal_carrier_wave_1|Mux13~1_combout\) # 
-- ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux13~3_combout\ & ( !\Ureal_carrier_wave_1|Mux13~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((\Ureal_carrier_wave_1|Mux13~2_combout\ & 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Ureal_carrier_wave_1|Mux13~1_combout\) # ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001011111111011100101111101000100000010101110111000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Mux13~1_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux13~2_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux13~3_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux13~0_combout\,
	combout => \Ureal_carrier_wave_1|Mux13~4_combout\);

-- Location: LABCELL_X60_Y4_N3
\Ureal_carrier_wave_1|Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~5_sumout\ = SUM(( !\Ureal_carrier_wave_1|Mux13~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( GND ) + ( \Ureal_carrier_wave_1|Add2~2\ ))
-- \Ureal_carrier_wave_1|Add2~6\ = CARRY(( !\Ureal_carrier_wave_1|Mux13~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( GND ) + ( \Ureal_carrier_wave_1|Add2~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101000110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux13~4_combout\,
	cin => \Ureal_carrier_wave_1|Add2~2\,
	sumout => \Ureal_carrier_wave_1|Add2~5_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~6\);

-- Location: LABCELL_X64_Y4_N36
\Ureal_carrier_wave_1|Mux12~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux12~2_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # ((!\Uimag_carrier_wave_1|Add1~42_sumout\ 
-- & !\Uimag_carrier_wave_1|Add1~50_sumout\)))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\ $ (!\Uimag_carrier_wave_1|Add1~50_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # (\Uimag_carrier_wave_1|Add1~50_sumout\)))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ 
-- & (\Uimag_carrier_wave_1|Add1~38_sumout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000111010001000000000000000010101101111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux12~2_combout\);

-- Location: LABCELL_X66_Y4_N48
\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ = (!\Uimag_carrier_wave_1|Add1~54_sumout\ & !\Uimag_carrier_wave_1|Add1~34_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	combout => \Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\);

-- Location: LABCELL_X64_Y4_N54
\Ureal_carrier_wave_1|Mux12~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux12~1_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (((!\Uimag_carrier_wave_1|Add1~50_sumout\)))) # 
-- (\Uimag_carrier_wave_1|Add1~42_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~50_sumout\) # (\Uimag_carrier_wave_1|Add1~46_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (((\Uimag_carrier_wave_1|Add1~38_sumout\ & !\Uimag_carrier_wave_1|Add1~46_sumout\))))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ 
-- & ((!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001110011100010000000000000000011101110000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux12~1_combout\);

-- Location: LABCELL_X64_Y4_N6
\Ureal_carrier_wave_1|Mux12~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux12~3_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~46_sumout\ & (\Uimag_carrier_wave_1|Add1~50_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # 
-- (!\Uimag_carrier_wave_1|Add1~42_sumout\)))) # (\Uimag_carrier_wave_1|Add1~46_sumout\ & (((\Uimag_carrier_wave_1|Add1~42_sumout\)) # (\Uimag_carrier_wave_1|Add1~38_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ & ((\Uimag_carrier_wave_1|Add1~50_sumout\) # (\Uimag_carrier_wave_1|Add1~42_sumout\)))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (((\Uimag_carrier_wave_1|Add1~46_sumout\ & !\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000111100100000000000000000000000111111001110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux12~3_combout\);

-- Location: LABCELL_X64_Y4_N24
\Ureal_carrier_wave_1|Mux12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux12~0_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~46_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((\Uimag_carrier_wave_1|Add1~50_sumout\))) 
-- # (\Uimag_carrier_wave_1|Add1~42_sumout\ & (\Uimag_carrier_wave_1|Add1~38_sumout\)))) # (\Uimag_carrier_wave_1|Add1~46_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~38_sumout\) # 
-- (!\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\ & 
-- (\Uimag_carrier_wave_1|Add1~46_sumout\ & \Uimag_carrier_wave_1|Add1~50_sumout\)) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\)))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~42_sumout\ & \Uimag_carrier_wave_1|Add1~50_sumout\)) # (\Uimag_carrier_wave_1|Add1~46_sumout\ & ((!\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010101101000000000000000000000010011110101100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux12~0_combout\);

-- Location: LABCELL_X64_Y4_N12
\Ureal_carrier_wave_1|Mux12~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux12~4_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux12~0_combout\ & ( (!\Ureal_carrier_wave_1|Mux12~1_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux12~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((\Ureal_carrier_wave_1|Mux12~3_combout\))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ 
-- & (!\Ureal_carrier_wave_1|Mux12~2_combout\)) ) ) ) # ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux12~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & !\Ureal_carrier_wave_1|Mux12~1_combout\) ) ) 
-- ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux12~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((\Ureal_carrier_wave_1|Mux12~3_combout\))) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Ureal_carrier_wave_1|Mux12~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001011101110110000001100000000100010111011101111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux12~2_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux12~1_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux12~3_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux12~0_combout\,
	combout => \Ureal_carrier_wave_1|Mux12~4_combout\);

-- Location: LABCELL_X60_Y4_N6
\Ureal_carrier_wave_1|Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~9_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux12~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~6\ ))
-- \Ureal_carrier_wave_1|Add2~10\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux12~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux12~4_combout\,
	cin => \Ureal_carrier_wave_1|Add2~6\,
	sumout => \Ureal_carrier_wave_1|Add2~9_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~10\);

-- Location: LABCELL_X62_Y4_N18
\Ureal_carrier_wave_1|Mux11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux11~1_combout\ = ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # ((!\Uimag_carrier_wave_1|Add1~62_sumout\ & 
-- \Uimag_carrier_wave_1|Add1~50_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ $ 
-- (((!\Uimag_carrier_wave_1|Add1~62_sumout\) # (!\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~62_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (\Uimag_carrier_wave_1|Add1~46_sumout\ & !\Uimag_carrier_wave_1|Add1~50_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (((!\Uimag_carrier_wave_1|Add1~62_sumout\ & !\Uimag_carrier_wave_1|Add1~46_sumout\)) # (\Uimag_carrier_wave_1|Add1~50_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000011001100000010000000000000001100010010001100000011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Mux11~1_combout\);

-- Location: LABCELL_X62_Y4_N6
\Ureal_carrier_wave_1|Mux11~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux11~3_combout\ = ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ $ (((\Uimag_carrier_wave_1|Add1~62_sumout\ & 
-- \Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (!\Uimag_carrier_wave_1|Add1~62_sumout\ $ 
-- (!\Uimag_carrier_wave_1|Add1~50_sumout\))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (\Uimag_carrier_wave_1|Add1~62_sumout\ & (!\Uimag_carrier_wave_1|Add1~54_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~46_sumout\ $ (!\Uimag_carrier_wave_1|Add1~50_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~62_sumout\)) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011000000000001000100000001000100100010001100000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Mux11~3_combout\);

-- Location: LABCELL_X62_Y4_N36
\Ureal_carrier_wave_1|Mux11~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux11~0_combout\ = ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~62_sumout\) # (!\Uimag_carrier_wave_1|Add1~46_sumout\ $ 
-- (!\Uimag_carrier_wave_1|Add1~50_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (!\Uimag_carrier_wave_1|Add1~62_sumout\ $ 
-- (((!\Uimag_carrier_wave_1|Add1~46_sumout\ & !\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~62_sumout\) # (!\Uimag_carrier_wave_1|Add1~50_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & 
-- (((\Uimag_carrier_wave_1|Add1~62_sumout\ & \Uimag_carrier_wave_1|Add1~50_sumout\)) # (\Uimag_carrier_wave_1|Add1~46_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001001100110011001000100001001000100010001000110011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Mux11~0_combout\);

-- Location: LABCELL_X62_Y4_N24
\Ureal_carrier_wave_1|Mux11~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux11~2_combout\ = ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\ & ((!\Uimag_carrier_wave_1|Add1~50_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~62_sumout\))) # (\Uimag_carrier_wave_1|Add1~46_sumout\ & ((\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (!\Uimag_carrier_wave_1|Add1~62_sumout\ $ (!\Uimag_carrier_wave_1|Add1~46_sumout\ $ (\Uimag_carrier_wave_1|Add1~50_sumout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~62_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ $ (\Uimag_carrier_wave_1|Add1~50_sumout\))) # (\Uimag_carrier_wave_1|Add1~62_sumout\ & 
-- (\Uimag_carrier_wave_1|Add1~46_sumout\ & !\Uimag_carrier_wave_1|Add1~50_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~62_sumout\ & (\Uimag_carrier_wave_1|Add1~46_sumout\)) # (\Uimag_carrier_wave_1|Add1~62_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # (\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001100100001000000100001001000100001001100000001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Mux11~2_combout\);

-- Location: LABCELL_X66_Y4_N51
\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ = (!\Uimag_carrier_wave_1|Add1~54_sumout\ & !\Uimag_carrier_wave_1|Add1~42_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	combout => \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\);

-- Location: LABCELL_X62_Y4_N12
\Ureal_carrier_wave_1|Mux11~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux11~4_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ( \Ureal_carrier_wave_1|Mux11~0_combout\ ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ( !\Ureal_carrier_wave_1|Mux11~1_combout\ ) ) ) # ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ( !\Ureal_carrier_wave_1|Mux11~2_combout\ ) ) ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ( 
-- \Ureal_carrier_wave_1|Mux11~3_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011111111110000000010101010101010100000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux11~1_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Mux11~3_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux11~0_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux11~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	combout => \Ureal_carrier_wave_1|Mux11~4_combout\);

-- Location: LABCELL_X60_Y4_N9
\Ureal_carrier_wave_1|Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~13_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux11~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~10\ ))
-- \Ureal_carrier_wave_1|Add2~14\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux11~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux11~4_combout\,
	cin => \Ureal_carrier_wave_1|Add2~10\,
	sumout => \Ureal_carrier_wave_1|Add2~13_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~14\);

-- Location: LABCELL_X66_Y4_N33
\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ = (!\Uimag_carrier_wave_1|Add1~54_sumout\ & !\Uimag_carrier_wave_1|Add1~38_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\);

-- Location: LABCELL_X66_Y4_N27
\Ureal_carrier_wave_1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux4~0_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~50_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010000000000000000010101010101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux4~0_combout\);

-- Location: LABCELL_X66_Y4_N42
\Ureal_carrier_wave_1|Mux10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux10~2_combout\ = ( \Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ 
-- (((\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- ((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- ((\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))) ) ) ) # ( 
-- \Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ (((!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))))) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110111100000011010010010110101010011100010001000011110100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux10~2_combout\);

-- Location: LABCELL_X66_Y4_N36
\Ureal_carrier_wave_1|Mux10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux10~1_combout\ = ( \Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # 
-- ((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) # 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ $ (((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) ) ) ) # ( 
-- \Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ 
-- (((!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- ((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010110100100110100100000100111010001000001001111010011101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux10~1_combout\);

-- Location: LABCELL_X66_Y4_N6
\Ureal_carrier_wave_1|Mux10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux10~0_combout\ = ( \Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (((!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ $ (((!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( 
-- \Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- ((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( ((\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011101110111010110100000011011001001011000000110001010100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux10~0_combout\);

-- Location: LABCELL_X66_Y4_N12
\Ureal_carrier_wave_1|Mux10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux10~3_combout\ = ( \Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Ureal_carrier_wave_1|Mux10~2_combout\ ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( 
-- \Uimag_carrier_wave_1|Add1~58_sumout\ & ( !\Ureal_carrier_wave_1|Mux10~1_combout\ ) ) ) # ( \Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Ureal_carrier_wave_1|Mux10~2_combout\ ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( \Ureal_carrier_wave_1|Mux10~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111001100110011001111110000111100000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Ureal_carrier_wave_1|ALT_INV_Mux10~2_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux10~1_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux10~0_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux10~3_combout\);

-- Location: LABCELL_X60_Y4_N12
\Ureal_carrier_wave_1|Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~17_sumout\ = SUM(( !\Ureal_carrier_wave_1|Mux10~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( GND ) + ( \Ureal_carrier_wave_1|Add2~14\ ))
-- \Ureal_carrier_wave_1|Add2~18\ = CARRY(( !\Ureal_carrier_wave_1|Mux10~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( GND ) + ( \Ureal_carrier_wave_1|Add2~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101000110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux10~3_combout\,
	cin => \Ureal_carrier_wave_1|Add2~14\,
	sumout => \Ureal_carrier_wave_1|Add2~17_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~18\);

-- Location: LABCELL_X66_Y4_N18
\Ureal_carrier_wave_1|Mux9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux9~0_combout\ = ( \Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ $ 
-- (((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ (((!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) ) ) ) # ( \Ureal_carrier_wave_1|Mux4~0_combout\ & ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ $ 
-- (((\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001110000100000000010001011111000010010010000110011011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux9~0_combout\);

-- Location: LABCELL_X66_Y4_N0
\Ureal_carrier_wave_1|Mux9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux9~1_combout\ = ( \Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ 
-- ((\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (((\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) ) ) ) # ( \Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\))) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- ((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) # ((!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111011000100101110010111111110100101000010001001100100100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux9~1_combout\);

-- Location: LABCELL_X66_Y4_N54
\Ureal_carrier_wave_1|Mux9~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux9~2_combout\ = ( \Ureal_carrier_wave_1|Mux4~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) ) # ( 
-- \Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- ((!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))))) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux4~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\ $ (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000010101000100011100111011001000111100001001010001010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux9~2_combout\);

-- Location: LABCELL_X66_Y4_N30
\Ureal_carrier_wave_1|Mux9~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux9~3_combout\ = ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (\Ureal_carrier_wave_1|Mux9~1_combout\)) # (\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Ureal_carrier_wave_1|Mux9~2_combout\))) ) 
-- ) # ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (\Ureal_carrier_wave_1|Mux9~0_combout\)) # (\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Ureal_carrier_wave_1|Mux9~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101000100011101110100010000111111000011000011111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux9~0_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux9~1_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux9~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux9~3_combout\);

-- Location: LABCELL_X60_Y4_N15
\Ureal_carrier_wave_1|Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~21_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux9~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~18\ ))
-- \Ureal_carrier_wave_1|Add2~22\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux9~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux9~3_combout\,
	cin => \Ureal_carrier_wave_1|Add2~18\,
	sumout => \Ureal_carrier_wave_1|Add2~21_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~22\);

-- Location: LABCELL_X63_Y4_N6
\Ureal_carrier_wave_1|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux8~0_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (\Uimag_carrier_wave_1|Add1~38_sumout\ & 
-- \Uimag_carrier_wave_1|Add1~46_sumout\))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\) # ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # (\Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & (((!\Uimag_carrier_wave_1|Add1~46_sumout\)) # (\Uimag_carrier_wave_1|Add1~42_sumout\))) # 
-- (\Uimag_carrier_wave_1|Add1~34_sumout\ & (\Uimag_carrier_wave_1|Add1~46_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\) # (\Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001100111010101010100110100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux8~0_combout\);

-- Location: LABCELL_X66_Y3_N24
\Ureal_carrier_wave_1|Mux8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux8~4_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~46_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # ((!\Uimag_carrier_wave_1|Add1~42_sumout\) 
-- # (\Uimag_carrier_wave_1|Add1~50_sumout\)))) # (\Uimag_carrier_wave_1|Add1~46_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\) # (\Uimag_carrier_wave_1|Add1~50_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (\Uimag_carrier_wave_1|Add1~46_sumout\ & (((!\Uimag_carrier_wave_1|Add1~50_sumout\ & \Uimag_carrier_wave_1|Add1~42_sumout\)) # (\Uimag_carrier_wave_1|Add1~38_sumout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010001111011101000111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux8~4_combout\);

-- Location: LABCELL_X63_Y4_N36
\Ureal_carrier_wave_1|Mux8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux8~1_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # ((\Uimag_carrier_wave_1|Add1~42_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~46_sumout\)))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\) # (\Uimag_carrier_wave_1|Add1~42_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # (!\Uimag_carrier_wave_1|Add1~34_sumout\ $ 
-- (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & (!\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # (\Uimag_carrier_wave_1|Add1~46_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110001101010101100101111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux8~1_combout\);

-- Location: LABCELL_X63_Y4_N42
\Ureal_carrier_wave_1|Mux8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux8~2_combout\ = ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ & (\Uimag_carrier_wave_1|Add1~42_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\))))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (\Uimag_carrier_wave_1|Add1~38_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~46_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~42_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~46_sumout\) # 
-- (!\Uimag_carrier_wave_1|Add1~34_sumout\ $ (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110010110011000010111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux8~2_combout\);

-- Location: LABCELL_X63_Y4_N48
\Ureal_carrier_wave_1|Mux8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux8~3_combout\ = ( \Ureal_carrier_wave_1|Mux8~1_combout\ & ( \Ureal_carrier_wave_1|Mux8~2_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\) # ((!\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & 
-- (\Ureal_carrier_wave_1|Mux8~0_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((\Ureal_carrier_wave_1|Mux8~4_combout\)))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux8~1_combout\ & ( \Ureal_carrier_wave_1|Mux8~2_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((!\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & 
-- (\Ureal_carrier_wave_1|Mux8~0_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((\Ureal_carrier_wave_1|Mux8~4_combout\))))) ) ) ) # ( \Ureal_carrier_wave_1|Mux8~1_combout\ & ( !\Ureal_carrier_wave_1|Mux8~2_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & (((\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\)))) # (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & 
-- (\Ureal_carrier_wave_1|Mux8~0_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((\Ureal_carrier_wave_1|Mux8~4_combout\))))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux8~1_combout\ & ( !\Ureal_carrier_wave_1|Mux8~2_combout\ & ( 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ((!\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & (\Ureal_carrier_wave_1|Mux8~0_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ((\Ureal_carrier_wave_1|Mux8~4_combout\))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010101000110100001111110110000101101011011101010111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Mux8~0_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux8~4_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux8~1_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux8~2_combout\,
	combout => \Ureal_carrier_wave_1|Mux8~3_combout\);

-- Location: LABCELL_X60_Y4_N18
\Ureal_carrier_wave_1|Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~25_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux8~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~22\ ))
-- \Ureal_carrier_wave_1|Add2~26\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux8~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux8~3_combout\,
	cin => \Ureal_carrier_wave_1|Add2~22\,
	sumout => \Ureal_carrier_wave_1|Add2~25_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~26\);

-- Location: LABCELL_X62_Y4_N42
\Ureal_carrier_wave_1|Mux7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux7~3_combout\ = ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ ) ) ) # ( !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ 
-- & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~62_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\)) # (\Uimag_carrier_wave_1|Add1~62_sumout\ & ((\Uimag_carrier_wave_1|Add1~50_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~46_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ $ 
-- (((!\Uimag_carrier_wave_1|Add1~62_sumout\) # (\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~50_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & (\Uimag_carrier_wave_1|Add1~62_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100010010000000110010000100110001001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Mux7~3_combout\);

-- Location: LABCELL_X62_Y4_N48
\Ureal_carrier_wave_1|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux7~1_combout\ = ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & (!\Uimag_carrier_wave_1|Add1~62_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~46_sumout\) # 
-- (!\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~62_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~46_sumout\ & !\Uimag_carrier_wave_1|Add1~50_sumout\)) # (\Uimag_carrier_wave_1|Add1~62_sumout\ & (\Uimag_carrier_wave_1|Add1~46_sumout\)))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~62_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ $ (!\Uimag_carrier_wave_1|Add1~50_sumout\))) # (\Uimag_carrier_wave_1|Add1~62_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # (\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~50_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~62_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110010001000010010001100010010000100000001000100010001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Mux7~1_combout\);

-- Location: LABCELL_X62_Y4_N30
\Ureal_carrier_wave_1|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux7~0_combout\ = ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~62_sumout\ & (!\Uimag_carrier_wave_1|Add1~54_sumout\ & \Uimag_carrier_wave_1|Add1~50_sumout\)) ) ) ) 
-- # ( !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~62_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ & \Uimag_carrier_wave_1|Add1~50_sumout\)) 
-- # (\Uimag_carrier_wave_1|Add1~62_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # (\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~50_sumout\) # (\Uimag_carrier_wave_1|Add1~46_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Uimag_carrier_wave_1|Add1~62_sumout\ & (!\Uimag_carrier_wave_1|Add1~46_sumout\ & !\Uimag_carrier_wave_1|Add1~50_sumout\)) # (\Uimag_carrier_wave_1|Add1~62_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\) # 
-- (!\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010001000000110011000000110001000000110001000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Mux7~0_combout\);

-- Location: LABCELL_X67_Y4_N45
\Ureal_carrier_wave_1|Mux7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux7~2_combout\ = ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ $ (\Uimag_carrier_wave_1|Add1~46_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~62_sumout\))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~62_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\) # (\Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~62_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~46_sumout\)))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000110001000100110100111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux7~2_combout\);

-- Location: LABCELL_X62_Y4_N0
\Ureal_carrier_wave_1|Mux7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux7~4_combout\ = ( \Ureal_carrier_wave_1|Mux7~2_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Ureal_carrier_wave_1|Mux7~1_combout\)) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Ureal_carrier_wave_1|Mux7~0_combout\))) ) ) ) # ( !\Ureal_carrier_wave_1|Mux7~2_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & (!\Ureal_carrier_wave_1|Mux7~1_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & ((!\Ureal_carrier_wave_1|Mux7~0_combout\))) ) ) ) # ( \Ureal_carrier_wave_1|Mux7~2_combout\ & ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & \Ureal_carrier_wave_1|Mux7~3_combout\) ) ) ) # ( !\Ureal_carrier_wave_1|Mux7~2_combout\ & ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( (\Ureal_carrier_wave_1|Mux7~3_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001000100010001011110101101000001111010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Mux7~3_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux7~1_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux7~0_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux7~2_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	combout => \Ureal_carrier_wave_1|Mux7~4_combout\);

-- Location: LABCELL_X60_Y4_N21
\Ureal_carrier_wave_1|Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~29_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux7~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~26\ ))
-- \Ureal_carrier_wave_1|Add2~30\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux7~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux7~4_combout\,
	cin => \Ureal_carrier_wave_1|Add2~26\,
	sumout => \Ureal_carrier_wave_1|Add2~29_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~30\);

-- Location: MLABCELL_X65_Y4_N36
\Ureal_carrier_wave_1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux6~0_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~58_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~50_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~42_sumout\))))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~50_sumout\ $ (\Uimag_carrier_wave_1|Add1~42_sumout\)) # (\Uimag_carrier_wave_1|Add1~58_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~58_sumout\))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & (\Uimag_carrier_wave_1|Add1~42_sumout\)))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\ $ (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ 
-- (\Uimag_carrier_wave_1|Add1~58_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001011010101101011010111101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux6~0_combout\);

-- Location: MLABCELL_X65_Y4_N48
\Ureal_carrier_wave_1|Mux6~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux6~2_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (((\Uimag_carrier_wave_1|Add1~38_sumout\ & 
-- !\Uimag_carrier_wave_1|Add1~58_sumout\))))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & (((\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~42_sumout\)) # (\Uimag_carrier_wave_1|Add1~38_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & (((!\Uimag_carrier_wave_1|Add1~42_sumout\)))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & 
-- (((\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~42_sumout\)) # (\Uimag_carrier_wave_1|Add1~38_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001111110011100101111111001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux6~2_combout\);

-- Location: MLABCELL_X65_Y4_N30
\Ureal_carrier_wave_1|Mux6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux6~1_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~58_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~42_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~50_sumout\))))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~58_sumout\))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~50_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ $ 
-- (((!\Uimag_carrier_wave_1|Add1~50_sumout\) # (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (\Uimag_carrier_wave_1|Add1~58_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011001100101010110011010011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux6~1_combout\);

-- Location: MLABCELL_X65_Y4_N18
\Ureal_carrier_wave_1|Mux6~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux6~4_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~42_sumout\ $ ((((!\Uimag_carrier_wave_1|Add1~50_sumout\ & !\Uimag_carrier_wave_1|Add1~58_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~38_sumout\))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~42_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~38_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~50_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100101101001011001011011010010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux6~4_combout\);

-- Location: MLABCELL_X65_Y4_N54
\Ureal_carrier_wave_1|Mux6~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux6~3_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux6~4_combout\ & ( (!\Ureal_carrier_wave_1|Mux6~0_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux6~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (\Ureal_carrier_wave_1|Mux6~2_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & 
-- ((!\Ureal_carrier_wave_1|Mux6~1_combout\))) ) ) ) # ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux6~4_combout\ & ( (!\Ureal_carrier_wave_1|Mux6~0_combout\ & !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) ) ) ) 
-- # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux6~4_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (\Ureal_carrier_wave_1|Mux6~2_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ 
-- & ((!\Ureal_carrier_wave_1|Mux6~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100100010001000100000111111000011001011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux6~0_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux6~2_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux6~1_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux6~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux6~3_combout\);

-- Location: LABCELL_X60_Y4_N24
\Ureal_carrier_wave_1|Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~33_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux6~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~30\ ))
-- \Ureal_carrier_wave_1|Add2~34\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux6~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux6~3_combout\,
	cin => \Ureal_carrier_wave_1|Add2~30\,
	sumout => \Ureal_carrier_wave_1|Add2~33_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~34\);

-- Location: LABCELL_X64_Y4_N42
\Ureal_carrier_wave_1|Mux5~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux5~2_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( ((\Uimag_carrier_wave_1|Add1~42_sumout\ & ((\Uimag_carrier_wave_1|Add1~38_sumout\) # (\Uimag_carrier_wave_1|Add1~34_sumout\)))) 
-- # (\Uimag_carrier_wave_1|Add1~46_sumout\) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( ((!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((\Uimag_carrier_wave_1|Add1~38_sumout\))) # 
-- (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~34_sumout\) # (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) # (\Uimag_carrier_wave_1|Add1~46_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111011111111000000000000000000010011111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux5~2_combout\);

-- Location: LABCELL_X64_Y4_N48
\Ureal_carrier_wave_1|Mux5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux5~1_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (((!\Uimag_carrier_wave_1|Add1~34_sumout\ & !\Uimag_carrier_wave_1|Add1~38_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~46_sumout\))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & (((\Uimag_carrier_wave_1|Add1~38_sumout\ & !\Uimag_carrier_wave_1|Add1~46_sumout\)))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ $ (((\Uimag_carrier_wave_1|Add1~46_sumout\) # (\Uimag_carrier_wave_1|Add1~38_sumout\))))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ 
-- & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ $ (\Uimag_carrier_wave_1|Add1~46_sumout\)) # (\Uimag_carrier_wave_1|Add1~42_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101001100110111000000000000000010000011110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux5~1_combout\);

-- Location: LABCELL_X64_Y4_N30
\Ureal_carrier_wave_1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux5~0_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\))) 
-- # (\Uimag_carrier_wave_1|Add1~38_sumout\ & (\Uimag_carrier_wave_1|Add1~34_sumout\ & \Uimag_carrier_wave_1|Add1~46_sumout\)))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~34_sumout\))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( 
-- (!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~34_sumout\ & \Uimag_carrier_wave_1|Add1~46_sumout\)) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~46_sumout\))))) 
-- # (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~34_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # (\Uimag_carrier_wave_1|Add1~46_sumout\))) # (\Uimag_carrier_wave_1|Add1~34_sumout\ & (!\Uimag_carrier_wave_1|Add1~38_sumout\ 
-- & \Uimag_carrier_wave_1|Add1~46_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010110010110010000000000000000011010011001101000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux5~0_combout\);

-- Location: LABCELL_X67_Y4_N51
\Ureal_carrier_wave_1|Mux5~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux5~4_combout\ = ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~34_sumout\ & (\Uimag_carrier_wave_1|Add1~58_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~34_sumout\ & ((\Uimag_carrier_wave_1|Add1~46_sumout\))))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~58_sumout\)) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( 
-- !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~58_sumout\ $ (((\Uimag_carrier_wave_1|Add1~34_sumout\ & \Uimag_carrier_wave_1|Add1~38_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100110101001010010100111101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux5~4_combout\);

-- Location: LABCELL_X64_Y4_N0
\Ureal_carrier_wave_1|Mux5~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux5~3_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux5~4_combout\ & ( (!\Ureal_carrier_wave_1|Mux4~0_combout\ & \Ureal_carrier_wave_1|Mux5~0_combout\) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux5~4_combout\ & ( (!\Ureal_carrier_wave_1|Mux4~0_combout\ & (\Ureal_carrier_wave_1|Mux5~2_combout\)) # (\Ureal_carrier_wave_1|Mux4~0_combout\ & 
-- ((!\Ureal_carrier_wave_1|Mux5~1_combout\))) ) ) ) # ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux5~4_combout\ & ( (\Ureal_carrier_wave_1|Mux5~0_combout\) # (\Ureal_carrier_wave_1|Mux4~0_combout\) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux5~4_combout\ & ( (!\Ureal_carrier_wave_1|Mux4~0_combout\ & (\Ureal_carrier_wave_1|Mux5~2_combout\)) # (\Ureal_carrier_wave_1|Mux4~0_combout\ & 
-- ((!\Ureal_carrier_wave_1|Mux5~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010010101011111111101110010011100100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Mux5~2_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux5~1_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux5~0_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux5~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux5~3_combout\);

-- Location: LABCELL_X60_Y4_N27
\Ureal_carrier_wave_1|Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~37_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux5~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~34\ ))
-- \Ureal_carrier_wave_1|Add2~38\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux5~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux5~3_combout\,
	cin => \Ureal_carrier_wave_1|Add2~34\,
	sumout => \Ureal_carrier_wave_1|Add2~37_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~38\);

-- Location: MLABCELL_X65_Y4_N0
\Ureal_carrier_wave_1|Mux4~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux4~6_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (((!\Uimag_carrier_wave_1|Add1~58_sumout\)))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ 
-- & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ & (\Uimag_carrier_wave_1|Add1~50_sumout\ & !\Uimag_carrier_wave_1|Add1~58_sumout\)) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~50_sumout\ & \Uimag_carrier_wave_1|Add1~58_sumout\)))) ) 
-- ) ) # ( !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~58_sumout\ $ (((\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~50_sumout\ & 
-- \Uimag_carrier_wave_1|Add1~42_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101100000100111100100000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux4~6_combout\);

-- Location: MLABCELL_X65_Y4_N6
\Ureal_carrier_wave_1|Mux4~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux4~2_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~58_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~38_sumout\))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((\Uimag_carrier_wave_1|Add1~58_sumout\))))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~58_sumout\ $ 
-- (((!\Uimag_carrier_wave_1|Add1~38_sumout\) # (!\Uimag_carrier_wave_1|Add1~42_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & 
-- ((!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~58_sumout\))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\) # (\Uimag_carrier_wave_1|Add1~58_sumout\))))) # 
-- (\Uimag_carrier_wave_1|Add1~50_sumout\ & ((!\Uimag_carrier_wave_1|Add1~38_sumout\ & ((!\Uimag_carrier_wave_1|Add1~42_sumout\) # (\Uimag_carrier_wave_1|Add1~58_sumout\))) # (\Uimag_carrier_wave_1|Add1~38_sumout\ & (!\Uimag_carrier_wave_1|Add1~42_sumout\ & 
-- \Uimag_carrier_wave_1|Add1~58_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100000111110110000010111111000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux4~2_combout\);

-- Location: MLABCELL_X65_Y4_N24
\Ureal_carrier_wave_1|Mux4~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux4~1_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & (!\Uimag_carrier_wave_1|Add1~50_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~58_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~38_sumout\))))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~50_sumout\ & (\Uimag_carrier_wave_1|Add1~38_sumout\ & !\Uimag_carrier_wave_1|Add1~58_sumout\)) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~58_sumout\))))) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~50_sumout\ & 
-- ((\Uimag_carrier_wave_1|Add1~58_sumout\))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & ((!\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~38_sumout\))))) # (\Uimag_carrier_wave_1|Add1~42_sumout\ & 
-- (!\Uimag_carrier_wave_1|Add1~50_sumout\ $ (((!\Uimag_carrier_wave_1|Add1~38_sumout\) # (\Uimag_carrier_wave_1|Add1~58_sumout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011010011001101001001001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux4~1_combout\);

-- Location: MLABCELL_X65_Y4_N12
\Ureal_carrier_wave_1|Mux4~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux4~3_combout\ = ( \Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (((\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~42_sumout\)) # (\Uimag_carrier_wave_1|Add1~50_sumout\)) 
-- # (\Uimag_carrier_wave_1|Add1~38_sumout\) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~34_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( ((\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~42_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~50_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111111111111011111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux4~3_combout\);

-- Location: MLABCELL_X65_Y4_N42
\Ureal_carrier_wave_1|Mux4~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux4~4_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux4~3_combout\ & ( (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Ureal_carrier_wave_1|Mux4~2_combout\)) # 
-- (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ((\Ureal_carrier_wave_1|Mux4~1_combout\))) ) ) ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( \Ureal_carrier_wave_1|Mux4~3_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) # (\Ureal_carrier_wave_1|Mux4~6_combout\) ) ) ) # ( \Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux4~3_combout\ & ( 
-- (!\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (!\Ureal_carrier_wave_1|Mux4~2_combout\)) # (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ((\Ureal_carrier_wave_1|Mux4~1_combout\))) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[8]~1_combout\ & ( !\Ureal_carrier_wave_1|Mux4~3_combout\ & ( (\Ureal_carrier_wave_1|Mux4~6_combout\ & \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101110011000000111111111111010101011100110000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux4~6_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Mux4~2_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux4~1_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[8]~1_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux4~3_combout\,
	combout => \Ureal_carrier_wave_1|Mux4~4_combout\);

-- Location: LABCELL_X60_Y4_N30
\Ureal_carrier_wave_1|Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~41_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux4~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~38\ ))
-- \Ureal_carrier_wave_1|Add2~42\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux4~4_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux4~4_combout\,
	cin => \Ureal_carrier_wave_1|Add2~38\,
	sumout => \Ureal_carrier_wave_1|Add2~41_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~42\);

-- Location: LABCELL_X67_Y4_N57
\Ureal_carrier_wave_1|Mux3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux3~3_combout\ = ( \Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\ & (((\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~38_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~34_sumout\))) # (\Uimag_carrier_wave_1|Add1~50_sumout\ & (!\Uimag_carrier_wave_1|Add1~58_sumout\ & ((!\Uimag_carrier_wave_1|Add1~34_sumout\) # (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~50_sumout\ $ (!\Uimag_carrier_wave_1|Add1~58_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010011111101010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux3~3_combout\);

-- Location: LABCELL_X64_Y4_N18
\Ureal_carrier_wave_1|Mux3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux3~1_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~58_sumout\ & ( ((!\Uimag_carrier_wave_1|Add1~42_sumout\ & ((!\Uimag_carrier_wave_1|Add1~34_sumout\) # 
-- (!\Uimag_carrier_wave_1|Add1~38_sumout\)))) # (\Uimag_carrier_wave_1|Add1~50_sumout\) ) ) ) # ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~58_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~50_sumout\) # 
-- ((\Uimag_carrier_wave_1|Add1~42_sumout\ & ((\Uimag_carrier_wave_1|Add1~38_sumout\) # (\Uimag_carrier_wave_1|Add1~34_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100010011000000000000000011001000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	combout => \Ureal_carrier_wave_1|Mux3~1_combout\);

-- Location: LABCELL_X66_Y3_N3
\Ureal_carrier_wave_1|Mux4~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux4~5_combout\ = ( !\Uimag_carrier_wave_1|Add1~42_sumout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~34_sumout\) # (!\Uimag_carrier_wave_1|Add1~38_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux4~5_combout\);

-- Location: LABCELL_X67_Y4_N15
\Ureal_carrier_wave_1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux3~0_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( !\Ureal_carrier_wave_1|Mux4~0_combout\ ) ) ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ 
-- & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Mux4~5_combout\ & \Ureal_carrier_wave_1|Mux4~0_combout\) ) ) ) # ( \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Mux4~0_combout\ & ((\Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\) # (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\))) ) ) ) # ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (!\Ureal_carrier_wave_1|Mux4~5_combout\ & \Ureal_carrier_wave_1|Mux4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010001111110000000000000000101010101111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux4~5_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux4~0_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux3~0_combout\);

-- Location: LABCELL_X63_Y4_N18
\Ureal_carrier_wave_1|Mux3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux3~2_combout\ = ( \Uimag_carrier_wave_1|Add1~62_sumout\ & ( \Ureal_carrier_wave_1|Mux3~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Ureal_carrier_wave_1|Mux3~3_combout\) # (\Uimag_carrier_wave_1|Add1~46_sumout\))) ) 
-- ) ) # ( !\Uimag_carrier_wave_1|Add1~62_sumout\ & ( \Ureal_carrier_wave_1|Mux3~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~46_sumout\ & (!\Uimag_carrier_wave_1|Add1~54_sumout\ & !\Ureal_carrier_wave_1|Mux3~1_combout\)) ) ) ) # ( 
-- \Uimag_carrier_wave_1|Add1~62_sumout\ & ( !\Ureal_carrier_wave_1|Mux3~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Ureal_carrier_wave_1|Mux3~3_combout\) # (\Uimag_carrier_wave_1|Add1~46_sumout\))) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~62_sumout\ & ( !\Ureal_carrier_wave_1|Mux3~0_combout\ & ( (!\Uimag_carrier_wave_1|Add1~54_sumout\ & ((!\Ureal_carrier_wave_1|Mux3~1_combout\) # (\Uimag_carrier_wave_1|Add1~46_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000101100001011000011000000000000001011000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux3~3_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux3~1_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux3~0_combout\,
	combout => \Ureal_carrier_wave_1|Mux3~2_combout\);

-- Location: LABCELL_X60_Y4_N33
\Ureal_carrier_wave_1|Add2~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~45_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux3~2_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~42\ ))
-- \Ureal_carrier_wave_1|Add2~46\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux3~2_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux3~2_combout\,
	cin => \Ureal_carrier_wave_1|Add2~42\,
	sumout => \Ureal_carrier_wave_1|Add2~45_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~46\);

-- Location: LABCELL_X67_Y4_N24
\Ureal_carrier_wave_1|Mux2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux2~1_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & ((\Uimag_carrier_wave_1|Add1~54_sumout\) # 
-- (\Uimag_carrier_wave_1|Add1~42_sumout\))) ) ) ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Uimag_carrier_wave_1|Add1~38_sumout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) ) # ( 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (((\Uimag_carrier_wave_1|Add1~34_sumout\ & \Uimag_carrier_wave_1|Add1~42_sumout\)) # 
-- (\Uimag_carrier_wave_1|Add1~54_sumout\))) ) ) ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( !\Uimag_carrier_wave_1|Add1~38_sumout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000010101010101010101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~34_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~42_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~38_sumout\,
	combout => \Ureal_carrier_wave_1|Mux2~1_combout\);

-- Location: LABCELL_X67_Y4_N18
\Ureal_carrier_wave_1|Mux2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux2~2_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Ureal_carrier_wave_1|Mux4~5_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) ) # ( !\Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ 
-- & ( \Ureal_carrier_wave_1|Mux4~5_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) ) # ( \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( !\Ureal_carrier_wave_1|Mux4~5_combout\ & ( 
-- !\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux4~5_combout\,
	combout => \Ureal_carrier_wave_1|Mux2~2_combout\);

-- Location: LABCELL_X67_Y4_N9
\Ureal_carrier_wave_1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux2~0_combout\ = ( \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( \Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ ) ) ) # ( 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[5]~0_combout\ & ( !\Ureal_carrier_wave_1|Look_Up_Table_k[4]~4_combout\ & ( (\Ureal_carrier_wave_1|Look_Up_Table_k[7]~2_combout\ & (\Ureal_carrier_wave_1|Look_Up_Table_k[2]~3_combout\ & 
-- \Ureal_carrier_wave_1|Look_Up_Table_k[3]~5_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[7]~2_combout\,
	datab => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[2]~3_combout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[3]~5_combout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[5]~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Look_Up_Table_k[4]~4_combout\,
	combout => \Ureal_carrier_wave_1|Mux2~0_combout\);

-- Location: LABCELL_X67_Y4_N36
\Ureal_carrier_wave_1|Mux2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux2~3_combout\ = ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( \Uimag_carrier_wave_1|Add1~50_sumout\ & ( (\Uimag_carrier_wave_1|Add1~62_sumout\) # (\Ureal_carrier_wave_1|Mux2~1_combout\) ) ) ) # ( 
-- !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( !\Uimag_carrier_wave_1|Add1~50_sumout\ & ( (!\Uimag_carrier_wave_1|Add1~62_sumout\ & (\Ureal_carrier_wave_1|Mux2~2_combout\)) # (\Uimag_carrier_wave_1|Add1~62_sumout\ & ((!\Ureal_carrier_wave_1|Mux2~0_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100000000000000000001110111011101110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Ureal_carrier_wave_1|ALT_INV_Mux2~1_combout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datac => \Ureal_carrier_wave_1|ALT_INV_Mux2~2_combout\,
	datad => \Ureal_carrier_wave_1|ALT_INV_Mux2~0_combout\,
	datae => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	combout => \Ureal_carrier_wave_1|Mux2~3_combout\);

-- Location: LABCELL_X60_Y4_N36
\Ureal_carrier_wave_1|Add2~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~49_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux2~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~46\ ))
-- \Ureal_carrier_wave_1|Add2~50\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux2~3_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux2~3_combout\,
	cin => \Ureal_carrier_wave_1|Add2~46\,
	sumout => \Ureal_carrier_wave_1|Add2~49_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~50\);

-- Location: LABCELL_X66_Y3_N42
\Ureal_carrier_wave_1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Mux1~0_combout\ = ( \Ureal_carrier_wave_1|Mux4~5_combout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( ((\Uimag_carrier_wave_1|Add1~50_sumout\ & \Uimag_carrier_wave_1|Add1~46_sumout\)) # (\Uimag_carrier_wave_1|Add1~62_sumout\) ) ) 
-- ) # ( !\Ureal_carrier_wave_1|Mux4~5_combout\ & ( !\Uimag_carrier_wave_1|Add1~54_sumout\ & ( ((\Uimag_carrier_wave_1|Add1~46_sumout\ & ((\Uimag_carrier_wave_1|Add1~58_sumout\) # (\Uimag_carrier_wave_1|Add1~50_sumout\)))) # 
-- (\Uimag_carrier_wave_1|Add1~62_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011100111111001101110011011100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_Add1~50_sumout\,
	datab => \Uimag_carrier_wave_1|ALT_INV_Add1~62_sumout\,
	datac => \Uimag_carrier_wave_1|ALT_INV_Add1~46_sumout\,
	datad => \Uimag_carrier_wave_1|ALT_INV_Add1~58_sumout\,
	datae => \Ureal_carrier_wave_1|ALT_INV_Mux4~5_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	combout => \Ureal_carrier_wave_1|Mux1~0_combout\);

-- Location: LABCELL_X60_Y4_N39
\Ureal_carrier_wave_1|Add2~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~53_sumout\ = SUM(( GND ) + ( !\Ureal_carrier_wave_1|Mux1~0_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~50\ ))
-- \Ureal_carrier_wave_1|Add2~54\ = CARRY(( GND ) + ( !\Ureal_carrier_wave_1|Mux1~0_combout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((!counter_sine_generator_out1(8) & \Equal1~0_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011100101000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_Equal1~0_combout\,
	dataf => \Ureal_carrier_wave_1|ALT_INV_Mux1~0_combout\,
	cin => \Ureal_carrier_wave_1|Add2~50\,
	sumout => \Ureal_carrier_wave_1|Add2~53_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~54\);

-- Location: LABCELL_X60_Y4_N42
\Ureal_carrier_wave_1|Add2~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~57_sumout\ = SUM(( GND ) + ( !\Uimag_carrier_wave_1|Add1~54_sumout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((\Equal1~0_combout\ & !counter_sine_generator_out1(8))))) ) + ( \Ureal_carrier_wave_1|Add2~54\ ))
-- \Ureal_carrier_wave_1|Add2~58\ = CARRY(( GND ) + ( !\Uimag_carrier_wave_1|Add1~54_sumout\ $ (((!\Uimag_carrier_wave_1|LessThan0~2_combout\) # ((\Equal1~0_combout\ & !counter_sine_generator_out1(8))))) ) + ( \Ureal_carrier_wave_1|Add2~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101000000101100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \Uimag_carrier_wave_1|ALT_INV_LessThan0~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_Add1~54_sumout\,
	cin => \Ureal_carrier_wave_1|Add2~54\,
	sumout => \Ureal_carrier_wave_1|Add2~57_sumout\,
	cout => \Ureal_carrier_wave_1|Add2~58\);

-- Location: LABCELL_X60_Y4_N45
\Ureal_carrier_wave_1|Add2~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ureal_carrier_wave_1|Add2~61_sumout\ = SUM(( GND ) + ( (!\Equal1~0_combout\ & (((\Uimag_carrier_wave_1|LessThan0~1_combout\) # (\scale_out1[12]~2_combout\)))) # (\Equal1~0_combout\ & (counter_sine_generator_out1(8) & 
-- ((\Uimag_carrier_wave_1|LessThan0~1_combout\) # (\scale_out1[12]~2_combout\)))) ) + ( \Ureal_carrier_wave_1|Add2~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101000100010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => ALT_INV_counter_sine_generator_out1(8),
	datac => \ALT_INV_scale_out1[12]~2_combout\,
	dataf => \Uimag_carrier_wave_1|ALT_INV_LessThan0~1_combout\,
	cin => \Ureal_carrier_wave_1|Add2~58\,
	sumout => \Ureal_carrier_wave_1|Add2~61_sumout\);

-- Location: DSP_X54_Y4_N0
\Mult0~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 27,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 27,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult0~mac_AX_bus\,
	ay => \Mult0~mac_AY_bus\,
	resulta => \Mult0~mac_RESULTA_bus\,
	chainout => \Mult0~mac_CHAINOUT_bus\);

-- Location: DSP_X54_Y2_N0
\Mult1~mac\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 27,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 27,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	by_clock => "none",
	by_use_scan_in => "false",
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m27x27",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "false",
	signed_mby => "false",
	sub_clock => "none",
	use_chainadder => "true")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Mult1~mac_AX_bus\,
	ay => \Mult1~mac_AY_bus\,
	chainin => \Mult1~mac_CHAININ_bus\,
	resulta => \Mult1~mac_RESULTA_bus\);

-- Location: LABCELL_X42_Y3_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


