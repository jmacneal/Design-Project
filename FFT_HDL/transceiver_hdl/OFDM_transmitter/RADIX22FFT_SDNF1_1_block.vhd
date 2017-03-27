-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/OFDM_transmitter/RADIX22FFT_SDNF1_1_block.vhd
-- Created: 2017-03-27 15:50:06
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: RADIX22FFT_SDNF1_1_block
-- Source Path: OFDM_transmitter/IFFT HDL Optimized/RADIX22FFT_SDNF1_1
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY RADIX22FFT_SDNF1_1_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_16_0                        :   IN    std_logic;
        twdlXdin_2_re                     :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        twdlXdin_2_im                     :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        twdlXdin_10_re                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        twdlXdin_10_im                    :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        twdlXdin_1_vld                    :   IN    std_logic;
        softReset                         :   IN    std_logic;
        dout_3_re                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        dout_3_im                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        dout_4_re                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        dout_4_im                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En13
        dout_3_vld                        :   OUT   std_logic
        );
END RADIX22FFT_SDNF1_1_block;


ARCHITECTURE rtl OF RADIX22FFT_SDNF1_1_block IS

  -- Signals
  SIGNAL twdlXdin_2_re_signed             : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL twdlXdin_2_im_signed             : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL twdlXdin_10_re_signed            : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL twdlXdin_10_im_signed            : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL Radix22ButterflyG1_NF_btf1_re_reg : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Radix22ButterflyG1_NF_btf1_im_reg : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Radix22ButterflyG1_NF_btf2_re_reg : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Radix22ButterflyG1_NF_btf2_im_reg : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 : std_logic;
  SIGNAL Radix22ButterflyG1_NF_btf1_re_reg_next : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL Radix22ButterflyG1_NF_btf1_im_reg_next : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL Radix22ButterflyG1_NF_btf2_re_reg_next : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL Radix22ButterflyG1_NF_btf2_im_reg_next : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next : std_logic;
  SIGNAL dout_3_re_tmp                    : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL dout_3_im_tmp                    : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL dout_4_re_tmp                    : signed(15 DOWNTO 0);  -- sfix16_En13
  SIGNAL dout_4_im_tmp                    : signed(15 DOWNTO 0);  -- sfix16_En13

BEGIN
  twdlXdin_2_re_signed <= signed(twdlXdin_2_re);

  twdlXdin_2_im_signed <= signed(twdlXdin_2_im);

  twdlXdin_10_re_signed <= signed(twdlXdin_10_re);

  twdlXdin_10_im_signed <= signed(twdlXdin_10_im);

  -- Radix22ButterflyG1_NF
  Radix22ButterflyG1_NF_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Radix22ButterflyG1_NF_btf1_re_reg <= to_signed(16#00000#, 17);
      Radix22ButterflyG1_NF_btf1_im_reg <= to_signed(16#00000#, 17);
      Radix22ButterflyG1_NF_btf2_re_reg <= to_signed(16#00000#, 17);
      Radix22ButterflyG1_NF_btf2_im_reg <= to_signed(16#00000#, 17);
      Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_16_0 = '1' THEN
        Radix22ButterflyG1_NF_btf1_re_reg <= Radix22ButterflyG1_NF_btf1_re_reg_next;
        Radix22ButterflyG1_NF_btf1_im_reg <= Radix22ButterflyG1_NF_btf1_im_reg_next;
        Radix22ButterflyG1_NF_btf2_re_reg <= Radix22ButterflyG1_NF_btf2_re_reg_next;
        Radix22ButterflyG1_NF_btf2_im_reg <= Radix22ButterflyG1_NF_btf2_im_reg_next;
        Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 <= Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next;
      END IF;
    END IF;
  END PROCESS Radix22ButterflyG1_NF_process;

  Radix22ButterflyG1_NF_output : PROCESS (Radix22ButterflyG1_NF_btf1_re_reg, Radix22ButterflyG1_NF_btf1_im_reg,
       Radix22ButterflyG1_NF_btf2_re_reg, Radix22ButterflyG1_NF_btf2_im_reg,
       Radix22ButterflyG1_NF_dinXtwdl_vld_dly1, twdlXdin_2_re_signed,
       twdlXdin_2_im_signed, twdlXdin_10_re_signed, twdlXdin_10_im_signed,
       twdlXdin_1_vld)
    VARIABLE add_cast : signed(16 DOWNTO 0);
    VARIABLE add_cast_0 : signed(16 DOWNTO 0);
    VARIABLE sra_temp : signed(16 DOWNTO 0);
    VARIABLE sub_cast : signed(16 DOWNTO 0);
    VARIABLE sub_cast_0 : signed(16 DOWNTO 0);
    VARIABLE sra_temp_0 : signed(16 DOWNTO 0);
    VARIABLE add_cast_1 : signed(16 DOWNTO 0);
    VARIABLE add_cast_2 : signed(16 DOWNTO 0);
    VARIABLE sra_temp_1 : signed(16 DOWNTO 0);
    VARIABLE sub_cast_1 : signed(16 DOWNTO 0);
    VARIABLE sub_cast_2 : signed(16 DOWNTO 0);
    VARIABLE sra_temp_2 : signed(16 DOWNTO 0);
  BEGIN
    Radix22ButterflyG1_NF_btf1_re_reg_next <= Radix22ButterflyG1_NF_btf1_re_reg;
    Radix22ButterflyG1_NF_btf1_im_reg_next <= Radix22ButterflyG1_NF_btf1_im_reg;
    Radix22ButterflyG1_NF_btf2_re_reg_next <= Radix22ButterflyG1_NF_btf2_re_reg;
    Radix22ButterflyG1_NF_btf2_im_reg_next <= Radix22ButterflyG1_NF_btf2_im_reg;
    Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next <= twdlXdin_1_vld;
    IF twdlXdin_1_vld = '1' THEN 
      add_cast := resize(twdlXdin_2_re_signed, 17);
      add_cast_0 := resize(twdlXdin_10_re_signed, 17);
      Radix22ButterflyG1_NF_btf1_re_reg_next <= add_cast + add_cast_0;
      sub_cast := resize(twdlXdin_2_re_signed, 17);
      sub_cast_0 := resize(twdlXdin_10_re_signed, 17);
      Radix22ButterflyG1_NF_btf2_re_reg_next <= sub_cast - sub_cast_0;
      add_cast_1 := resize(twdlXdin_2_im_signed, 17);
      add_cast_2 := resize(twdlXdin_10_im_signed, 17);
      Radix22ButterflyG1_NF_btf1_im_reg_next <= add_cast_1 + add_cast_2;
      sub_cast_1 := resize(twdlXdin_2_im_signed, 17);
      sub_cast_2 := resize(twdlXdin_10_im_signed, 17);
      Radix22ButterflyG1_NF_btf2_im_reg_next <= sub_cast_1 - sub_cast_2;
    END IF;
    sra_temp := SHIFT_RIGHT(Radix22ButterflyG1_NF_btf1_re_reg, 1);
    dout_3_re_tmp <= sra_temp(15 DOWNTO 0);
    sra_temp_0 := SHIFT_RIGHT(Radix22ButterflyG1_NF_btf1_im_reg, 1);
    dout_3_im_tmp <= sra_temp_0(15 DOWNTO 0);
    sra_temp_1 := SHIFT_RIGHT(Radix22ButterflyG1_NF_btf2_re_reg, 1);
    dout_4_re_tmp <= sra_temp_1(15 DOWNTO 0);
    sra_temp_2 := SHIFT_RIGHT(Radix22ButterflyG1_NF_btf2_im_reg, 1);
    dout_4_im_tmp <= sra_temp_2(15 DOWNTO 0);
    dout_3_vld <= Radix22ButterflyG1_NF_dinXtwdl_vld_dly1;
  END PROCESS Radix22ButterflyG1_NF_output;


  dout_3_re <= std_logic_vector(dout_3_re_tmp);

  dout_3_im <= std_logic_vector(dout_3_im_tmp);

  dout_4_re <= std_logic_vector(dout_4_re_tmp);

  dout_4_im <= std_logic_vector(dout_4_im_tmp);

END rtl;

