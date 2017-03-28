-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc/ifft_16_bit/RADIX22FFT_SDNF2_2_block2.vhd
-- Created: 2017-03-28 01:00:37
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: RADIX22FFT_SDNF2_2_block2
-- Source Path: ifft_16_bit/IFFT HDL Optimized/RADIX22FFT_SDNF2_2
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY RADIX22FFT_SDNF2_2_block2 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        rotate_7                          :   IN    std_logic;  -- ufix1
        dout_7_re                         :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_7_im                         :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_15_re                        :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_15_im                        :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_1_vld                        :   IN    std_logic;
        softReset                         :   IN    std_logic;
        dout_7_re_1                       :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_7_im_1                       :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_8_re                         :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_8_im                         :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_2_vld                        :   OUT   std_logic
        );
END RADIX22FFT_SDNF2_2_block2;


ARCHITECTURE rtl OF RADIX22FFT_SDNF2_2_block2 IS

  -- Signals
  SIGNAL dout_7_re_signed                 : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_7_im_signed                 : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_15_re_signed                : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_15_im_signed                : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Radix22ButterflyG2_NF_din_vld_dly : std_logic;
  SIGNAL Radix22ButterflyG2_NF_btf1_re_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG2_NF_btf1_im_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG2_NF_btf2_re_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG2_NF_btf2_im_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG2_NF_din_vld_dly_next : std_logic;
  SIGNAL Radix22ButterflyG2_NF_btf1_re_reg_next : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG2_NF_btf1_im_reg_next : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG2_NF_btf2_re_reg_next : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG2_NF_btf2_im_reg_next : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL dout_7_re_tmp                    : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_7_im_tmp                    : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_8_re_tmp                    : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_8_im_tmp                    : signed(16 DOWNTO 0);  -- sfix17

BEGIN
  dout_7_re_signed <= signed(dout_7_re);

  dout_7_im_signed <= signed(dout_7_im);

  dout_15_re_signed <= signed(dout_15_re);

  dout_15_im_signed <= signed(dout_15_im);

  -- Radix22ButterflyG2_NF
  Radix22ButterflyG2_NF_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Radix22ButterflyG2_NF_din_vld_dly <= '0';
      Radix22ButterflyG2_NF_btf1_re_reg <= to_signed(16#00000#, 18);
      Radix22ButterflyG2_NF_btf1_im_reg <= to_signed(16#00000#, 18);
      Radix22ButterflyG2_NF_btf2_re_reg <= to_signed(16#00000#, 18);
      Radix22ButterflyG2_NF_btf2_im_reg <= to_signed(16#00000#, 18);
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
       Radix22ButterflyG2_NF_btf2_im_reg, dout_7_re_signed, dout_7_im_signed,
       dout_15_re_signed, dout_15_im_signed, dout_1_vld, rotate_7)
    VARIABLE sra_temp : signed(17 DOWNTO 0);
    VARIABLE sra_temp_0 : signed(17 DOWNTO 0);
    VARIABLE sra_temp_1 : signed(17 DOWNTO 0);
    VARIABLE sra_temp_2 : signed(17 DOWNTO 0);
  BEGIN
    Radix22ButterflyG2_NF_btf1_re_reg_next <= Radix22ButterflyG2_NF_btf1_re_reg;
    Radix22ButterflyG2_NF_btf1_im_reg_next <= Radix22ButterflyG2_NF_btf1_im_reg;
    Radix22ButterflyG2_NF_btf2_re_reg_next <= Radix22ButterflyG2_NF_btf2_re_reg;
    Radix22ButterflyG2_NF_btf2_im_reg_next <= Radix22ButterflyG2_NF_btf2_im_reg;
    Radix22ButterflyG2_NF_din_vld_dly_next <= dout_1_vld;
    IF rotate_7 /= '0' THEN 
      IF dout_1_vld = '1' THEN 
        Radix22ButterflyG2_NF_btf1_re_reg_next <= resize(dout_7_re_signed, 18) + resize(dout_15_im_signed, 18);
        Radix22ButterflyG2_NF_btf2_re_reg_next <= resize(dout_7_re_signed, 18) - resize(dout_15_im_signed, 18);
        Radix22ButterflyG2_NF_btf2_im_reg_next <= resize(dout_7_im_signed, 18) + resize(dout_15_re_signed, 18);
        Radix22ButterflyG2_NF_btf1_im_reg_next <= resize(dout_7_im_signed, 18) - resize(dout_15_re_signed, 18);
      END IF;
    ELSIF dout_1_vld = '1' THEN 
      Radix22ButterflyG2_NF_btf1_re_reg_next <= resize(dout_7_re_signed, 18) + resize(dout_15_re_signed, 18);
      Radix22ButterflyG2_NF_btf2_re_reg_next <= resize(dout_7_re_signed, 18) - resize(dout_15_re_signed, 18);
      Radix22ButterflyG2_NF_btf1_im_reg_next <= resize(dout_7_im_signed, 18) + resize(dout_15_im_signed, 18);
      Radix22ButterflyG2_NF_btf2_im_reg_next <= resize(dout_7_im_signed, 18) - resize(dout_15_im_signed, 18);
    END IF;
    sra_temp := SHIFT_RIGHT(Radix22ButterflyG2_NF_btf1_re_reg, 1);
    dout_7_re_tmp <= sra_temp(16 DOWNTO 0);
    sra_temp_0 := SHIFT_RIGHT(Radix22ButterflyG2_NF_btf1_im_reg, 1);
    dout_7_im_tmp <= sra_temp_0(16 DOWNTO 0);
    sra_temp_1 := SHIFT_RIGHT(Radix22ButterflyG2_NF_btf2_re_reg, 1);
    dout_8_re_tmp <= sra_temp_1(16 DOWNTO 0);
    sra_temp_2 := SHIFT_RIGHT(Radix22ButterflyG2_NF_btf2_im_reg, 1);
    dout_8_im_tmp <= sra_temp_2(16 DOWNTO 0);
    dout_2_vld <= Radix22ButterflyG2_NF_din_vld_dly;
  END PROCESS Radix22ButterflyG2_NF_output;


  dout_8_re <= std_logic_vector(dout_8_re_tmp);

  dout_8_im <= std_logic_vector(dout_8_im_tmp);

  dout_7_re_1 <= std_logic_vector(dout_7_re_tmp);

  dout_7_im_1 <= std_logic_vector(dout_7_im_tmp);

END rtl;

