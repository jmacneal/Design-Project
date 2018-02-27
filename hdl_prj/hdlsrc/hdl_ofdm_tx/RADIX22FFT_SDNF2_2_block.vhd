-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/hdl_ofdm_tx/RADIX22FFT_SDNF2_2_block.vhd
-- Created: 2018-02-27 13:25:18
-- 
-- Generated by MATLAB 9.3 and HDL Coder 3.11
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: RADIX22FFT_SDNF2_2_block
-- Source Path: hdl_ofdm_tx/ifft/RADIX22FFT_SDNF2_2
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.hdl_ofdm_tx_pkg.ALL;

ENTITY RADIX22FFT_SDNF2_2_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_16_0                        :   IN    std_logic;
        rotate_3                          :   IN    std_logic;  -- ufix1
        dout_2_re                         :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        dout_2_im                         :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        dout_4_re                         :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        dout_4_im                         :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En13
        dout_1_vld                        :   IN    std_logic;
        softReset                         :   IN    std_logic;
        dout_3_re                         :   OUT   std_logic_vector(17 DOWNTO 0);  -- sfix18_En13
        dout_3_im                         :   OUT   std_logic_vector(17 DOWNTO 0);  -- sfix18_En13
        dout_4_re_1                       :   OUT   std_logic_vector(17 DOWNTO 0);  -- sfix18_En13
        dout_4_im_1                       :   OUT   std_logic_vector(17 DOWNTO 0);  -- sfix18_En13
        dout_2_vld                        :   OUT   std_logic
        );
END RADIX22FFT_SDNF2_2_block;


ARCHITECTURE rtl OF RADIX22FFT_SDNF2_2_block IS

  -- Signals
  SIGNAL dout_2_re_signed                 : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL din1_re                          : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL dout_2_im_signed                 : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL din1_im                          : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL dout_4_re_signed                 : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL din2_re                          : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL dout_4_im_signed                 : signed(16 DOWNTO 0);  -- sfix17_En13
  SIGNAL din2_im                          : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL Radix22ButterflyG2_NF_din_vld_dly : std_logic;
  SIGNAL Radix22ButterflyG2_NF_btf1_re_reg : signed(18 DOWNTO 0);  -- sfix19
  SIGNAL Radix22ButterflyG2_NF_btf1_im_reg : signed(18 DOWNTO 0);  -- sfix19
  SIGNAL Radix22ButterflyG2_NF_btf2_re_reg : signed(18 DOWNTO 0);  -- sfix19
  SIGNAL Radix22ButterflyG2_NF_btf2_im_reg : signed(18 DOWNTO 0);  -- sfix19
  SIGNAL Radix22ButterflyG2_NF_din_vld_dly_next : std_logic;
  SIGNAL Radix22ButterflyG2_NF_btf1_re_reg_next : signed(18 DOWNTO 0);  -- sfix19_En13
  SIGNAL Radix22ButterflyG2_NF_btf1_im_reg_next : signed(18 DOWNTO 0);  -- sfix19_En13
  SIGNAL Radix22ButterflyG2_NF_btf2_re_reg_next : signed(18 DOWNTO 0);  -- sfix19_En13
  SIGNAL Radix22ButterflyG2_NF_btf2_im_reg_next : signed(18 DOWNTO 0);  -- sfix19_En13
  SIGNAL dout_3_re_tmp                    : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL dout_3_im_tmp                    : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL dout_4_re_tmp                    : signed(17 DOWNTO 0);  -- sfix18_En13
  SIGNAL dout_4_im_tmp                    : signed(17 DOWNTO 0);  -- sfix18_En13

BEGIN
  dout_2_re_signed <= signed(dout_2_re);

  din1_re <= resize(dout_2_re_signed, 18);

  dout_2_im_signed <= signed(dout_2_im);

  din1_im <= resize(dout_2_im_signed, 18);

  dout_4_re_signed <= signed(dout_4_re);

  din2_re <= resize(dout_4_re_signed, 18);

  dout_4_im_signed <= signed(dout_4_im);

  din2_im <= resize(dout_4_im_signed, 18);

  -- Radix22ButterflyG2_NF
  Radix22ButterflyG2_NF_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Radix22ButterflyG2_NF_din_vld_dly <= '0';
      Radix22ButterflyG2_NF_btf1_re_reg <= to_signed(16#00000#, 19);
      Radix22ButterflyG2_NF_btf1_im_reg <= to_signed(16#00000#, 19);
      Radix22ButterflyG2_NF_btf2_re_reg <= to_signed(16#00000#, 19);
      Radix22ButterflyG2_NF_btf2_im_reg <= to_signed(16#00000#, 19);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_1_16_0 = '1' THEN
        Radix22ButterflyG2_NF_din_vld_dly <= Radix22ButterflyG2_NF_din_vld_dly_next;
        Radix22ButterflyG2_NF_btf1_re_reg <= Radix22ButterflyG2_NF_btf1_re_reg_next;
        Radix22ButterflyG2_NF_btf1_im_reg <= Radix22ButterflyG2_NF_btf1_im_reg_next;
        Radix22ButterflyG2_NF_btf2_re_reg <= Radix22ButterflyG2_NF_btf2_re_reg_next;
        Radix22ButterflyG2_NF_btf2_im_reg <= Radix22ButterflyG2_NF_btf2_im_reg_next;
      END IF;
    END IF;
  END PROCESS Radix22ButterflyG2_NF_process;

  Radix22ButterflyG2_NF_output : PROCESS (Radix22ButterflyG2_NF_din_vld_dly, Radix22ButterflyG2_NF_btf1_re_reg,
       Radix22ButterflyG2_NF_btf1_im_reg, Radix22ButterflyG2_NF_btf2_re_reg,
       Radix22ButterflyG2_NF_btf2_im_reg, din1_re, din1_im, din2_re, din2_im,
       dout_1_vld, rotate_3)
    VARIABLE add_cast : signed(18 DOWNTO 0);
    VARIABLE add_cast_0 : signed(18 DOWNTO 0);
    VARIABLE add_cast_1 : signed(18 DOWNTO 0);
    VARIABLE add_cast_2 : signed(18 DOWNTO 0);
    VARIABLE sub_cast : signed(18 DOWNTO 0);
    VARIABLE sub_cast_0 : signed(18 DOWNTO 0);
    VARIABLE sub_cast_1 : signed(18 DOWNTO 0);
    VARIABLE sub_cast_2 : signed(18 DOWNTO 0);
    VARIABLE add_cast_3 : signed(18 DOWNTO 0);
    VARIABLE add_cast_4 : signed(18 DOWNTO 0);
    VARIABLE add_cast_5 : signed(18 DOWNTO 0);
    VARIABLE add_cast_6 : signed(18 DOWNTO 0);
    VARIABLE sub_cast_3 : signed(18 DOWNTO 0);
    VARIABLE sub_cast_4 : signed(18 DOWNTO 0);
    VARIABLE sub_cast_5 : signed(18 DOWNTO 0);
    VARIABLE sub_cast_6 : signed(18 DOWNTO 0);
  BEGIN
    Radix22ButterflyG2_NF_btf1_re_reg_next <= Radix22ButterflyG2_NF_btf1_re_reg;
    Radix22ButterflyG2_NF_btf1_im_reg_next <= Radix22ButterflyG2_NF_btf1_im_reg;
    Radix22ButterflyG2_NF_btf2_re_reg_next <= Radix22ButterflyG2_NF_btf2_re_reg;
    Radix22ButterflyG2_NF_btf2_im_reg_next <= Radix22ButterflyG2_NF_btf2_im_reg;
    Radix22ButterflyG2_NF_din_vld_dly_next <= dout_1_vld;
    IF rotate_3 /= '0' THEN 
      IF dout_1_vld = '1' THEN 
        add_cast_1 := resize(din1_re, 19);
        add_cast_2 := resize(din2_im, 19);
        Radix22ButterflyG2_NF_btf1_re_reg_next <= add_cast_1 + add_cast_2;
        sub_cast_1 := resize(din1_re, 19);
        sub_cast_2 := resize(din2_im, 19);
        Radix22ButterflyG2_NF_btf2_re_reg_next <= sub_cast_1 - sub_cast_2;
        add_cast_5 := resize(din1_im, 19);
        add_cast_6 := resize(din2_re, 19);
        Radix22ButterflyG2_NF_btf2_im_reg_next <= add_cast_5 + add_cast_6;
        sub_cast_5 := resize(din1_im, 19);
        sub_cast_6 := resize(din2_re, 19);
        Radix22ButterflyG2_NF_btf1_im_reg_next <= sub_cast_5 - sub_cast_6;
      END IF;
    ELSIF dout_1_vld = '1' THEN 
      add_cast := resize(din1_re, 19);
      add_cast_0 := resize(din2_re, 19);
      Radix22ButterflyG2_NF_btf1_re_reg_next <= add_cast + add_cast_0;
      sub_cast := resize(din1_re, 19);
      sub_cast_0 := resize(din2_re, 19);
      Radix22ButterflyG2_NF_btf2_re_reg_next <= sub_cast - sub_cast_0;
      add_cast_3 := resize(din1_im, 19);
      add_cast_4 := resize(din2_im, 19);
      Radix22ButterflyG2_NF_btf1_im_reg_next <= add_cast_3 + add_cast_4;
      sub_cast_3 := resize(din1_im, 19);
      sub_cast_4 := resize(din2_im, 19);
      Radix22ButterflyG2_NF_btf2_im_reg_next <= sub_cast_3 - sub_cast_4;
    END IF;
    dout_3_re_tmp <= Radix22ButterflyG2_NF_btf1_re_reg(17 DOWNTO 0);
    dout_3_im_tmp <= Radix22ButterflyG2_NF_btf1_im_reg(17 DOWNTO 0);
    dout_4_re_tmp <= Radix22ButterflyG2_NF_btf2_re_reg(17 DOWNTO 0);
    dout_4_im_tmp <= Radix22ButterflyG2_NF_btf2_im_reg(17 DOWNTO 0);
    dout_2_vld <= Radix22ButterflyG2_NF_din_vld_dly;
  END PROCESS Radix22ButterflyG2_NF_output;


  dout_3_re <= std_logic_vector(dout_3_re_tmp);

  dout_3_im <= std_logic_vector(dout_3_im_tmp);

  dout_4_re_1 <= std_logic_vector(dout_4_re_tmp);

  dout_4_im_1 <= std_logic_vector(dout_4_im_tmp);

END rtl;

