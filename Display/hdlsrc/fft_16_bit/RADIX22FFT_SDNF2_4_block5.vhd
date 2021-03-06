-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc/fft_16_bit/RADIX22FFT_SDNF2_4_block5.vhd
-- Created: 2017-03-27 23:13:58
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: RADIX22FFT_SDNF2_4_block5
-- Source Path: fft_16_bit/FFT HDL Optimized/RADIX22FFT_SDNF2_4
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY RADIX22FFT_SDNF2_4_block5 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        rotate_13                         :   IN    std_logic;  -- ufix1
        dout_13_re                        :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
        dout_13_im                        :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
        dout_15_re                        :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
        dout_15_im                        :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
        dout_1_vld                        :   IN    std_logic;
        softReset                         :   IN    std_logic;
        dout_13_re_1                      :   OUT   std_logic_vector(20 DOWNTO 0);  -- sfix21
        dout_13_im_1                      :   OUT   std_logic_vector(20 DOWNTO 0);  -- sfix21
        dout_14_re                        :   OUT   std_logic_vector(20 DOWNTO 0);  -- sfix21
        dout_14_im                        :   OUT   std_logic_vector(20 DOWNTO 0);  -- sfix21
        dout_4_vld                        :   OUT   std_logic
        );
END RADIX22FFT_SDNF2_4_block5;


ARCHITECTURE rtl OF RADIX22FFT_SDNF2_4_block5 IS

  -- Signals
  SIGNAL dout_13_re_signed                : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re                          : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL dout_13_im_signed                : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im                          : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL dout_15_re_signed                : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din2_re                          : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL dout_15_im_signed                : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din2_im                          : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG2_NF_din_vld_dly : std_logic;
  SIGNAL Radix22ButterflyG2_NF_btf1_re_reg : signed(21 DOWNTO 0);  -- sfix22
  SIGNAL Radix22ButterflyG2_NF_btf1_im_reg : signed(21 DOWNTO 0);  -- sfix22
  SIGNAL Radix22ButterflyG2_NF_btf2_re_reg : signed(21 DOWNTO 0);  -- sfix22
  SIGNAL Radix22ButterflyG2_NF_btf2_im_reg : signed(21 DOWNTO 0);  -- sfix22
  SIGNAL Radix22ButterflyG2_NF_din_vld_dly_next : std_logic;
  SIGNAL Radix22ButterflyG2_NF_btf1_re_reg_next : signed(21 DOWNTO 0);  -- sfix22
  SIGNAL Radix22ButterflyG2_NF_btf1_im_reg_next : signed(21 DOWNTO 0);  -- sfix22
  SIGNAL Radix22ButterflyG2_NF_btf2_re_reg_next : signed(21 DOWNTO 0);  -- sfix22
  SIGNAL Radix22ButterflyG2_NF_btf2_im_reg_next : signed(21 DOWNTO 0);  -- sfix22
  SIGNAL dout_13_re_tmp                   : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL dout_13_im_tmp                   : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL dout_14_re_tmp                   : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL dout_14_im_tmp                   : signed(20 DOWNTO 0);  -- sfix21

BEGIN
  dout_13_re_signed <= signed(dout_13_re);

  din1_re <= resize(dout_13_re_signed, 21);

  dout_13_im_signed <= signed(dout_13_im);

  din1_im <= resize(dout_13_im_signed, 21);

  dout_15_re_signed <= signed(dout_15_re);

  din2_re <= resize(dout_15_re_signed, 21);

  dout_15_im_signed <= signed(dout_15_im);

  din2_im <= resize(dout_15_im_signed, 21);

  -- Radix22ButterflyG2_NF
  Radix22ButterflyG2_NF_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Radix22ButterflyG2_NF_din_vld_dly <= '0';
      Radix22ButterflyG2_NF_btf1_re_reg <= to_signed(16#000000#, 22);
      Radix22ButterflyG2_NF_btf1_im_reg <= to_signed(16#000000#, 22);
      Radix22ButterflyG2_NF_btf2_re_reg <= to_signed(16#000000#, 22);
      Radix22ButterflyG2_NF_btf2_im_reg <= to_signed(16#000000#, 22);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
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
       dout_1_vld, rotate_13)
  BEGIN
    Radix22ButterflyG2_NF_btf1_re_reg_next <= Radix22ButterflyG2_NF_btf1_re_reg;
    Radix22ButterflyG2_NF_btf1_im_reg_next <= Radix22ButterflyG2_NF_btf1_im_reg;
    Radix22ButterflyG2_NF_btf2_re_reg_next <= Radix22ButterflyG2_NF_btf2_re_reg;
    Radix22ButterflyG2_NF_btf2_im_reg_next <= Radix22ButterflyG2_NF_btf2_im_reg;
    Radix22ButterflyG2_NF_din_vld_dly_next <= dout_1_vld;
    IF rotate_13 /= '0' THEN 
      IF dout_1_vld = '1' THEN 
        Radix22ButterflyG2_NF_btf1_re_reg_next <= resize(din1_re, 22) + resize(din2_im, 22);
        Radix22ButterflyG2_NF_btf2_re_reg_next <= resize(din1_re, 22) - resize(din2_im, 22);
        Radix22ButterflyG2_NF_btf2_im_reg_next <= resize(din1_im, 22) + resize(din2_re, 22);
        Radix22ButterflyG2_NF_btf1_im_reg_next <= resize(din1_im, 22) - resize(din2_re, 22);
      END IF;
    ELSIF dout_1_vld = '1' THEN 
      Radix22ButterflyG2_NF_btf1_re_reg_next <= resize(din1_re, 22) + resize(din2_re, 22);
      Radix22ButterflyG2_NF_btf2_re_reg_next <= resize(din1_re, 22) - resize(din2_re, 22);
      Radix22ButterflyG2_NF_btf1_im_reg_next <= resize(din1_im, 22) + resize(din2_im, 22);
      Radix22ButterflyG2_NF_btf2_im_reg_next <= resize(din1_im, 22) - resize(din2_im, 22);
    END IF;
    dout_13_re_tmp <= Radix22ButterflyG2_NF_btf1_re_reg(20 DOWNTO 0);
    dout_13_im_tmp <= Radix22ButterflyG2_NF_btf1_im_reg(20 DOWNTO 0);
    dout_14_re_tmp <= Radix22ButterflyG2_NF_btf2_re_reg(20 DOWNTO 0);
    dout_14_im_tmp <= Radix22ButterflyG2_NF_btf2_im_reg(20 DOWNTO 0);
    dout_4_vld <= Radix22ButterflyG2_NF_din_vld_dly;
  END PROCESS Radix22ButterflyG2_NF_output;


  dout_14_re <= std_logic_vector(dout_14_re_tmp);

  dout_14_im <= std_logic_vector(dout_14_im_tmp);

  dout_13_re_1 <= std_logic_vector(dout_13_re_tmp);

  dout_13_im_1 <= std_logic_vector(dout_13_im_tmp);

END rtl;

