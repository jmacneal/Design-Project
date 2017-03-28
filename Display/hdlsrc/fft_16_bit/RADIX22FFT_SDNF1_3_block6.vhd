-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc/fft_16_bit/RADIX22FFT_SDNF1_3_block6.vhd
-- Created: 2017-03-27 23:13:58
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: RADIX22FFT_SDNF1_3_block6
-- Source Path: fft_16_bit/FFT HDL Optimized/RADIX22FFT_SDNF1_3
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY RADIX22FFT_SDNF1_3_block6 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        twdlXdin_14_re                    :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
        twdlXdin_14_im                    :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
        twdlXdin_16_re                    :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
        twdlXdin_16_im                    :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
        twdlXdin_1_vld                    :   IN    std_logic;
        softReset                         :   IN    std_logic;
        dout_15_re                        :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
        dout_15_im                        :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
        dout_16_re                        :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
        dout_16_im                        :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
        dout_15_vld                       :   OUT   std_logic
        );
END RADIX22FFT_SDNF1_3_block6;


ARCHITECTURE rtl OF RADIX22FFT_SDNF1_3_block6 IS

  -- Signals
  SIGNAL twdlXdin_14_re_signed            : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL twdlXdin_14_im_signed            : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL twdlXdin_16_re_signed            : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL twdlXdin_16_im_signed            : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL Radix22ButterflyG1_NF_btf1_re_reg : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG1_NF_btf1_im_reg : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG1_NF_btf2_re_reg : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG1_NF_btf2_im_reg : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 : std_logic;
  SIGNAL Radix22ButterflyG1_NF_btf1_re_reg_next : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG1_NF_btf1_im_reg_next : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG1_NF_btf2_re_reg_next : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG1_NF_btf2_im_reg_next : signed(20 DOWNTO 0);  -- sfix21
  SIGNAL Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next : std_logic;
  SIGNAL dout_15_re_tmp                   : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL dout_15_im_tmp                   : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL dout_16_re_tmp                   : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL dout_16_im_tmp                   : signed(19 DOWNTO 0);  -- sfix20

BEGIN
  twdlXdin_14_re_signed <= signed(twdlXdin_14_re);

  twdlXdin_14_im_signed <= signed(twdlXdin_14_im);

  twdlXdin_16_re_signed <= signed(twdlXdin_16_re);

  twdlXdin_16_im_signed <= signed(twdlXdin_16_im);

  -- Radix22ButterflyG1_NF
  Radix22ButterflyG1_NF_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Radix22ButterflyG1_NF_btf1_re_reg <= to_signed(16#000000#, 21);
      Radix22ButterflyG1_NF_btf1_im_reg <= to_signed(16#000000#, 21);
      Radix22ButterflyG1_NF_btf2_re_reg <= to_signed(16#000000#, 21);
      Radix22ButterflyG1_NF_btf2_im_reg <= to_signed(16#000000#, 21);
      Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
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
       Radix22ButterflyG1_NF_dinXtwdl_vld_dly1, twdlXdin_14_re_signed,
       twdlXdin_14_im_signed, twdlXdin_16_re_signed, twdlXdin_16_im_signed,
       twdlXdin_1_vld)
  BEGIN
    Radix22ButterflyG1_NF_btf1_re_reg_next <= Radix22ButterflyG1_NF_btf1_re_reg;
    Radix22ButterflyG1_NF_btf1_im_reg_next <= Radix22ButterflyG1_NF_btf1_im_reg;
    Radix22ButterflyG1_NF_btf2_re_reg_next <= Radix22ButterflyG1_NF_btf2_re_reg;
    Radix22ButterflyG1_NF_btf2_im_reg_next <= Radix22ButterflyG1_NF_btf2_im_reg;
    Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next <= twdlXdin_1_vld;
    IF twdlXdin_1_vld = '1' THEN 
      Radix22ButterflyG1_NF_btf1_re_reg_next <= resize(twdlXdin_14_re_signed, 21) + resize(twdlXdin_16_re_signed, 21);
      Radix22ButterflyG1_NF_btf2_re_reg_next <= resize(twdlXdin_14_re_signed, 21) - resize(twdlXdin_16_re_signed, 21);
      Radix22ButterflyG1_NF_btf1_im_reg_next <= resize(twdlXdin_14_im_signed, 21) + resize(twdlXdin_16_im_signed, 21);
      Radix22ButterflyG1_NF_btf2_im_reg_next <= resize(twdlXdin_14_im_signed, 21) - resize(twdlXdin_16_im_signed, 21);
    END IF;
    dout_15_re_tmp <= Radix22ButterflyG1_NF_btf1_re_reg(19 DOWNTO 0);
    dout_15_im_tmp <= Radix22ButterflyG1_NF_btf1_im_reg(19 DOWNTO 0);
    dout_16_re_tmp <= Radix22ButterflyG1_NF_btf2_re_reg(19 DOWNTO 0);
    dout_16_im_tmp <= Radix22ButterflyG1_NF_btf2_im_reg(19 DOWNTO 0);
    dout_15_vld <= Radix22ButterflyG1_NF_dinXtwdl_vld_dly1;
  END PROCESS Radix22ButterflyG1_NF_output;


  dout_15_re <= std_logic_vector(dout_15_re_tmp);

  dout_15_im <= std_logic_vector(dout_15_im_tmp);

  dout_16_re <= std_logic_vector(dout_16_re_tmp);

  dout_16_im <= std_logic_vector(dout_16_im_tmp);

END rtl;
