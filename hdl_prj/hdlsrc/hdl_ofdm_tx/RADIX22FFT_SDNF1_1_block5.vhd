-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/hdl_ofdm_tx/RADIX22FFT_SDNF1_1_block5.vhd
-- Created: 2018-02-27 13:25:18
-- 
-- Generated by MATLAB 9.3 and HDL Coder 3.11
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: RADIX22FFT_SDNF1_1_block5
-- Source Path: hdl_ofdm_tx/ifft/RADIX22FFT_SDNF1_1
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.hdl_ofdm_tx_pkg.ALL;

ENTITY RADIX22FFT_SDNF1_1_block5 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_16_0                        :   IN    std_logic;
        twdlXdin_13_re                    :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        twdlXdin_13_im                    :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        twdlXdin_14_re                    :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        twdlXdin_14_im                    :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        twdlXdin_1_vld                    :   IN    std_logic;
        softReset                         :   IN    std_logic;
        dout_13_re                        :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        dout_13_im                        :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        dout_14_re                        :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        dout_14_im                        :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        dout_13_vld                       :   OUT   std_logic
        );
END RADIX22FFT_SDNF1_1_block5;


ARCHITECTURE rtl OF RADIX22FFT_SDNF1_1_block5 IS

  -- Signals
  SIGNAL twdlXdin_13_re_signed            : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL twdlXdin_13_im_signed            : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL twdlXdin_14_re_signed            : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL twdlXdin_14_im_signed            : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL Radix22ButterflyG1_NF_btf1_re_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf1_im_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf2_re_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf2_im_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 : std_logic;
  SIGNAL Radix22ButterflyG1_NF_btf1_re_reg_next : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL Radix22ButterflyG1_NF_btf1_im_reg_next : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL Radix22ButterflyG1_NF_btf2_re_reg_next : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL Radix22ButterflyG1_NF_btf2_im_reg_next : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next : std_logic;
  SIGNAL dout_13_re_tmp                   : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL dout_13_im_tmp                   : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL dout_14_re_tmp                   : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL dout_14_im_tmp                   : signed(16 DOWNTO 0);  -- sfix17_En13

BEGIN
  twdlXdin_13_re_signed <= signed(twdlXdin_13_re);

  twdlXdin_13_im_signed <= signed(twdlXdin_13_im);

  twdlXdin_14_re_signed <= signed(twdlXdin_14_re);

  twdlXdin_14_im_signed <= signed(twdlXdin_14_im);

  -- Radix22ButterflyG1_NF
  Radix22ButterflyG1_NF_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Radix22ButterflyG1_NF_btf1_re_reg <= to_signed(16#00000#, 18);
      Radix22ButterflyG1_NF_btf1_im_reg <= to_signed(16#00000#, 18);
      Radix22ButterflyG1_NF_btf2_re_reg <= to_signed(16#00000#, 18);
      Radix22ButterflyG1_NF_btf2_im_reg <= to_signed(16#00000#, 18);
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
       Radix22ButterflyG1_NF_dinXtwdl_vld_dly1, twdlXdin_13_re_signed,
       twdlXdin_13_im_signed, twdlXdin_14_re_signed, twdlXdin_14_im_signed,
       twdlXdin_1_vld)
    VARIABLE add_cast : signed(17 DOWNTO 0);
    VARIABLE add_cast_0 : signed(17 DOWNTO 0);
    VARIABLE sub_cast : signed(17 DOWNTO 0);
    VARIABLE sub_cast_0 : signed(17 DOWNTO 0);
    VARIABLE add_cast_1 : signed(17 DOWNTO 0);
    VARIABLE add_cast_2 : signed(17 DOWNTO 0);
    VARIABLE sub_cast_1 : signed(17 DOWNTO 0);
    VARIABLE sub_cast_2 : signed(17 DOWNTO 0);
  BEGIN
    Radix22ButterflyG1_NF_btf1_re_reg_next <= Radix22ButterflyG1_NF_btf1_re_reg;
    Radix22ButterflyG1_NF_btf1_im_reg_next <= Radix22ButterflyG1_NF_btf1_im_reg;
    Radix22ButterflyG1_NF_btf2_re_reg_next <= Radix22ButterflyG1_NF_btf2_re_reg;
    Radix22ButterflyG1_NF_btf2_im_reg_next <= Radix22ButterflyG1_NF_btf2_im_reg;
    Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next <= twdlXdin_1_vld;
    IF twdlXdin_1_vld = '1' THEN 
      add_cast := resize(twdlXdin_13_re_signed, 18);
      add_cast_0 := resize(twdlXdin_14_re_signed, 18);
      Radix22ButterflyG1_NF_btf1_re_reg_next <= add_cast + add_cast_0;
      sub_cast := resize(twdlXdin_13_re_signed, 18);
      sub_cast_0 := resize(twdlXdin_14_re_signed, 18);
      Radix22ButterflyG1_NF_btf2_re_reg_next <= sub_cast - sub_cast_0;
      add_cast_1 := resize(twdlXdin_13_im_signed, 18);
      add_cast_2 := resize(twdlXdin_14_im_signed, 18);
      Radix22ButterflyG1_NF_btf1_im_reg_next <= add_cast_1 + add_cast_2;
      sub_cast_1 := resize(twdlXdin_13_im_signed, 18);
      sub_cast_2 := resize(twdlXdin_14_im_signed, 18);
      Radix22ButterflyG1_NF_btf2_im_reg_next <= sub_cast_1 - sub_cast_2;
    END IF;
    dout_13_re_tmp <= Radix22ButterflyG1_NF_btf1_re_reg(16 DOWNTO 0);
    dout_13_im_tmp <= Radix22ButterflyG1_NF_btf1_im_reg(16 DOWNTO 0);
    dout_14_re_tmp <= Radix22ButterflyG1_NF_btf2_re_reg(16 DOWNTO 0);
    dout_14_im_tmp <= Radix22ButterflyG1_NF_btf2_im_reg(16 DOWNTO 0);
    dout_13_vld <= Radix22ButterflyG1_NF_dinXtwdl_vld_dly1;
  END PROCESS Radix22ButterflyG1_NF_output;


  dout_13_re <= std_logic_vector(dout_13_re_tmp);

  dout_13_im <= std_logic_vector(dout_13_im_tmp);

  dout_14_re <= std_logic_vector(dout_14_re_tmp);

  dout_14_im <= std_logic_vector(dout_14_im_tmp);

END rtl;

