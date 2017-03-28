-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc/ifft_16_bit/RADIX22FFT_SDNF1_3.vhd
-- Created: 2017-03-28 01:00:37
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: RADIX22FFT_SDNF1_3
-- Source Path: ifft_16_bit/IFFT HDL Optimized/RADIX22FFT_SDNF1_3
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY RADIX22FFT_SDNF1_3 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        twdlXdin_1_re                     :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17
        twdlXdin_1_im                     :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17
        twdlXdin_3_re                     :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17
        twdlXdin_3_im                     :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17
        twdlXdin_1_vld                    :   IN    std_logic;
        softReset                         :   IN    std_logic;
        dout_1_re                         :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_1_im                         :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_2_re                         :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_2_im                         :   OUT   std_logic_vector(16 DOWNTO 0);  -- sfix17
        dout_1_vld                        :   OUT   std_logic
        );
END RADIX22FFT_SDNF1_3;


ARCHITECTURE rtl OF RADIX22FFT_SDNF1_3 IS

  -- Signals
  SIGNAL twdlXdin_1_re_signed             : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL twdlXdin_1_im_signed             : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL twdlXdin_3_re_signed             : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL twdlXdin_3_im_signed             : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL Radix22ButterflyG1_NF_btf1_re_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf1_im_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf2_re_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf2_im_reg : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_dinXtwdl_vld_dly1 : std_logic;
  SIGNAL Radix22ButterflyG1_NF_btf1_re_reg_next : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf1_im_reg_next : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf2_re_reg_next : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_btf2_im_reg_next : signed(17 DOWNTO 0);  -- sfix18
  SIGNAL Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next : std_logic;
  SIGNAL dout_1_re_tmp                    : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_1_im_tmp                    : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_2_re_tmp                    : signed(16 DOWNTO 0);  -- sfix17
  SIGNAL dout_2_im_tmp                    : signed(16 DOWNTO 0);  -- sfix17

BEGIN
  twdlXdin_1_re_signed <= signed(twdlXdin_1_re);

  twdlXdin_1_im_signed <= signed(twdlXdin_1_im);

  twdlXdin_3_re_signed <= signed(twdlXdin_3_re);

  twdlXdin_3_im_signed <= signed(twdlXdin_3_im);

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
       Radix22ButterflyG1_NF_dinXtwdl_vld_dly1, twdlXdin_1_re_signed,
       twdlXdin_1_im_signed, twdlXdin_3_re_signed, twdlXdin_3_im_signed,
       twdlXdin_1_vld)
    VARIABLE sra_temp : signed(17 DOWNTO 0);
    VARIABLE sra_temp_0 : signed(17 DOWNTO 0);
    VARIABLE sra_temp_1 : signed(17 DOWNTO 0);
    VARIABLE sra_temp_2 : signed(17 DOWNTO 0);
  BEGIN
    Radix22ButterflyG1_NF_btf1_re_reg_next <= Radix22ButterflyG1_NF_btf1_re_reg;
    Radix22ButterflyG1_NF_btf1_im_reg_next <= Radix22ButterflyG1_NF_btf1_im_reg;
    Radix22ButterflyG1_NF_btf2_re_reg_next <= Radix22ButterflyG1_NF_btf2_re_reg;
    Radix22ButterflyG1_NF_btf2_im_reg_next <= Radix22ButterflyG1_NF_btf2_im_reg;
    Radix22ButterflyG1_NF_dinXtwdl_vld_dly1_next <= twdlXdin_1_vld;
    IF twdlXdin_1_vld = '1' THEN 
      Radix22ButterflyG1_NF_btf1_re_reg_next <= resize(twdlXdin_1_re_signed, 18) + resize(twdlXdin_3_re_signed, 18);
      Radix22ButterflyG1_NF_btf2_re_reg_next <= resize(twdlXdin_1_re_signed, 18) - resize(twdlXdin_3_re_signed, 18);
      Radix22ButterflyG1_NF_btf1_im_reg_next <= resize(twdlXdin_1_im_signed, 18) + resize(twdlXdin_3_im_signed, 18);
      Radix22ButterflyG1_NF_btf2_im_reg_next <= resize(twdlXdin_1_im_signed, 18) - resize(twdlXdin_3_im_signed, 18);
    END IF;
    sra_temp := SHIFT_RIGHT(Radix22ButterflyG1_NF_btf1_re_reg, 1);
    dout_1_re_tmp <= sra_temp(16 DOWNTO 0);
    sra_temp_0 := SHIFT_RIGHT(Radix22ButterflyG1_NF_btf1_im_reg, 1);
    dout_1_im_tmp <= sra_temp_0(16 DOWNTO 0);
    sra_temp_1 := SHIFT_RIGHT(Radix22ButterflyG1_NF_btf2_re_reg, 1);
    dout_2_re_tmp <= sra_temp_1(16 DOWNTO 0);
    sra_temp_2 := SHIFT_RIGHT(Radix22ButterflyG1_NF_btf2_im_reg, 1);
    dout_2_im_tmp <= sra_temp_2(16 DOWNTO 0);
    dout_1_vld <= Radix22ButterflyG1_NF_dinXtwdl_vld_dly1;
  END PROCESS Radix22ButterflyG1_NF_output;


  dout_1_re <= std_logic_vector(dout_1_re_tmp);

  dout_1_im <= std_logic_vector(dout_1_im_tmp);

  dout_2_re <= std_logic_vector(dout_2_re_tmp);

  dout_2_im <= std_logic_vector(dout_2_im_tmp);

END rtl;

