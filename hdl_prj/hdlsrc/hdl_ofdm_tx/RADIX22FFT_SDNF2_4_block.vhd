-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/hdl_ofdm_tx/RADIX22FFT_SDNF2_4_block.vhd
-- Created: 2018-02-27 13:25:18
-- 
-- Generated by MATLAB 9.3 and HDL Coder 3.11
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: RADIX22FFT_SDNF2_4_block
-- Source Path: hdl_ofdm_tx/ifft/RADIX22FFT_SDNF2_4
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.hdl_ofdm_tx_pkg.ALL;

ENTITY RADIX22FFT_SDNF2_4_block IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb_1_16_0                        :   IN    std_logic;
        rotate_3                          :   IN    std_logic;  -- ufix1
        dout_3_re                         :   IN    std_logic_vector(18 DOWNTO 0);  -- sfix19_En13
        dout_3_im                         :   IN    std_logic_vector(18 DOWNTO 0);  -- sfix19_En13
        dout_11_re                        :   IN    std_logic_vector(18 DOWNTO 0);  -- sfix19_En13
        dout_11_im                        :   IN    std_logic_vector(18 DOWNTO 0);  -- sfix19_En13
        dout_1_vld                        :   IN    std_logic;
        softReset                         :   IN    std_logic;
        dout_3_re_1                       :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20_En13
        dout_3_im_1                       :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20_En13
        dout_4_re                         :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20_En13
        dout_4_im                         :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20_En13
        dout_4_vld                        :   OUT   std_logic
        );
END RADIX22FFT_SDNF2_4_block;


ARCHITECTURE rtl OF RADIX22FFT_SDNF2_4_block IS

  -- Signals
  SIGNAL dout_3_re_signed                 : signed(18 DOWNTO 0);  -- sfix19_En13
  SIGNAL din1_re                          : signed(19 DOWNTO 0);  -- sfix20_En13
  SIGNAL dout_3_im_signed                 : signed(18 DOWNTO 0);  -- sfix19_En13
  SIGNAL din1_im                          : signed(19 DOWNTO 0);  -- sfix20_En13
  SIGNAL dout_11_re_signed                : signed(18 DOWNTO 0);  -- sfix19_En13
  SIGNAL din2_re                          : signed(19 DOWNTO 0);  -- sfix20_En13
  SIGNAL dout_11_im_signed                : signed(18 DOWNTO 0);  -- sfix19_En13
  SIGNAL din2_im                          : signed(19 DOWNTO 0);  -- sfix20_En13
  SIGNAL Radix22ButterflyG2_NF_din_vld_dly : std_logic;
  SIGNAL Radix22ButterflyG2_NF_btf1_re_reg : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG2_NF_btf1_im_reg : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG2_NF_btf2_re_reg : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG2_NF_btf2_im_reg : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG2_NF_din_vld_dly_next : std_logic;
  SIGNAL Radix22ButterflyG2_NF_btf1_re_reg_next : signed(20 DOWNTO 0);  -- sfix21_En13
  SIGNAL Radix22ButterflyG2_NF_btf1_im_reg_next : signed(20 DOWNTO 0);  -- sfix21_En13
  SIGNAL Radix22ButterflyG2_NF_btf2_re_reg_next : signed(20 DOWNTO 0);  -- sfix21_En13
  SIGNAL Radix22ButterflyG2_NF_btf2_im_reg_next : signed(20 DOWNTO 0);  -- sfix21_En13
  SIGNAL dout_3_re_tmp                    : signed(19 DOWNTO 0);  -- sfix20_En13
  SIGNAL dout_3_im_tmp                    : signed(19 DOWNTO 0);  -- sfix20_En13
  SIGNAL dout_4_re_tmp                    : signed(19 DOWNTO 0);  -- sfix20_En13
  SIGNAL dout_4_im_tmp                    : signed(19 DOWNTO 0);  -- sfix20_En13

BEGIN
  dout_3_re_signed <= signed(dout_3_re);

  din1_re <= resize(dout_3_re_signed, 20);

  dout_3_im_signed <= signed(dout_3_im);

  din1_im <= resize(dout_3_im_signed, 20);

  dout_11_re_signed <= signed(dout_11_re);

  din2_re <= resize(dout_11_re_signed, 20);

  dout_11_im_signed <= signed(dout_11_im);

  din2_im <= resize(dout_11_im_signed, 20);

  -- Radix22ButterflyG2_NF
  Radix22ButterflyG2_NF_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Radix22ButterflyG2_NF_din_vld_dly <= '0';
      Radix22ButterflyG2_NF_btf1_re_reg <= to_signed(16#000000#, 21);
      Radix22ButterflyG2_NF_btf1_im_reg <= to_signed(16#000000#, 21);
      Radix22ButterflyG2_NF_btf2_re_reg <= to_signed(16#000000#, 21);
      Radix22ButterflyG2_NF_btf2_im_reg <= to_signed(16#000000#, 21);
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
    VARIABLE add_cast : signed(20 DOWNTO 0);
    VARIABLE add_cast_0 : signed(20 DOWNTO 0);
    VARIABLE add_cast_1 : signed(20 DOWNTO 0);
    VARIABLE add_cast_2 : signed(20 DOWNTO 0);
    VARIABLE sub_cast : signed(20 DOWNTO 0);
    VARIABLE sub_cast_0 : signed(20 DOWNTO 0);
    VARIABLE sub_cast_1 : signed(20 DOWNTO 0);
    VARIABLE sub_cast_2 : signed(20 DOWNTO 0);
    VARIABLE add_cast_3 : signed(20 DOWNTO 0);
    VARIABLE add_cast_4 : signed(20 DOWNTO 0);
    VARIABLE add_cast_5 : signed(20 DOWNTO 0);
    VARIABLE add_cast_6 : signed(20 DOWNTO 0);
    VARIABLE sub_cast_3 : signed(20 DOWNTO 0);
    VARIABLE sub_cast_4 : signed(20 DOWNTO 0);
    VARIABLE sub_cast_5 : signed(20 DOWNTO 0);
    VARIABLE sub_cast_6 : signed(20 DOWNTO 0);
  BEGIN
    Radix22ButterflyG2_NF_btf1_re_reg_next <= Radix22ButterflyG2_NF_btf1_re_reg;
    Radix22ButterflyG2_NF_btf1_im_reg_next <= Radix22ButterflyG2_NF_btf1_im_reg;
    Radix22ButterflyG2_NF_btf2_re_reg_next <= Radix22ButterflyG2_NF_btf2_re_reg;
    Radix22ButterflyG2_NF_btf2_im_reg_next <= Radix22ButterflyG2_NF_btf2_im_reg;
    Radix22ButterflyG2_NF_din_vld_dly_next <= dout_1_vld;
    IF rotate_3 /= '0' THEN 
      IF dout_1_vld = '1' THEN 
        add_cast_1 := resize(din1_re, 21);
        add_cast_2 := resize(din2_im, 21);
        Radix22ButterflyG2_NF_btf1_re_reg_next <= add_cast_1 + add_cast_2;
        sub_cast_1 := resize(din1_re, 21);
        sub_cast_2 := resize(din2_im, 21);
        Radix22ButterflyG2_NF_btf2_re_reg_next <= sub_cast_1 - sub_cast_2;
        add_cast_5 := resize(din1_im, 21);
        add_cast_6 := resize(din2_re, 21);
        Radix22ButterflyG2_NF_btf2_im_reg_next <= add_cast_5 + add_cast_6;
        sub_cast_5 := resize(din1_im, 21);
        sub_cast_6 := resize(din2_re, 21);
        Radix22ButterflyG2_NF_btf1_im_reg_next <= sub_cast_5 - sub_cast_6;
      END IF;
    ELSIF dout_1_vld = '1' THEN 
      add_cast := resize(din1_re, 21);
      add_cast_0 := resize(din2_re, 21);
      Radix22ButterflyG2_NF_btf1_re_reg_next <= add_cast + add_cast_0;
      sub_cast := resize(din1_re, 21);
      sub_cast_0 := resize(din2_re, 21);
      Radix22ButterflyG2_NF_btf2_re_reg_next <= sub_cast - sub_cast_0;
      add_cast_3 := resize(din1_im, 21);
      add_cast_4 := resize(din2_im, 21);
      Radix22ButterflyG2_NF_btf1_im_reg_next <= add_cast_3 + add_cast_4;
      sub_cast_3 := resize(din1_im, 21);
      sub_cast_4 := resize(din2_im, 21);
      Radix22ButterflyG2_NF_btf2_im_reg_next <= sub_cast_3 - sub_cast_4;
    END IF;
    dout_3_re_tmp <= Radix22ButterflyG2_NF_btf1_re_reg(19 DOWNTO 0);
    dout_3_im_tmp <= Radix22ButterflyG2_NF_btf1_im_reg(19 DOWNTO 0);
    dout_4_re_tmp <= Radix22ButterflyG2_NF_btf2_re_reg(19 DOWNTO 0);
    dout_4_im_tmp <= Radix22ButterflyG2_NF_btf2_im_reg(19 DOWNTO 0);
    dout_4_vld <= Radix22ButterflyG2_NF_din_vld_dly;
  END PROCESS Radix22ButterflyG2_NF_output;


  dout_4_re <= std_logic_vector(dout_4_re_tmp);

  dout_4_im <= std_logic_vector(dout_4_im_tmp);

  dout_3_re_1 <= std_logic_vector(dout_3_re_tmp);

  dout_3_im_1 <= std_logic_vector(dout_3_im_tmp);

END rtl;
