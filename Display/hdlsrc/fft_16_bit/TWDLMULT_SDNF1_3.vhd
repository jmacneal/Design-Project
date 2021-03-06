-- -------------------------------------------------------------
-- 
-- File Name: hdlsrc/fft_16_bit/TWDLMULT_SDNF1_3.vhd
-- Created: 2017-03-27 23:13:58
-- 
-- Generated by MATLAB 9.1 and HDL Coder 3.9
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: TWDLMULT_SDNF1_3
-- Source Path: fft_16_bit/FFT HDL Optimized/TWDLMULT_SDNF1_3
-- Hierarchy Level: 2
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY TWDLMULT_SDNF1_3 IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        dout_1_re                         :   IN    std_logic_vector(18 DOWNTO 0);  -- sfix19
        dout_1_im                         :   IN    std_logic_vector(18 DOWNTO 0);  -- sfix19
        dout_3_re                         :   IN    std_logic_vector(18 DOWNTO 0);  -- sfix19
        dout_3_im                         :   IN    std_logic_vector(18 DOWNTO 0);  -- sfix19
        dout_2_vld                        :   IN    std_logic;
        twdl_3_1_re                       :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En15
        twdl_3_1_im                       :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En15
        twdl_3_2_re                       :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En15
        twdl_3_2_im                       :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En15
        twdl_3_2_vld                      :   IN    std_logic;
        softReset                         :   IN    std_logic;
        twdlXdin_1_re                     :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
        twdlXdin_1_im                     :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
        twdlXdin_2_re                     :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
        twdlXdin_2_im                     :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
        twdlXdin_1_vld                    :   OUT   std_logic
        );
END TWDLMULT_SDNF1_3;


ARCHITECTURE rtl OF TWDLMULT_SDNF1_3 IS

  -- Component Declarations
  COMPONENT Complex3Multiply
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          din2_re_dly3                    :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
          din2_im_dly3                    :   IN    std_logic_vector(19 DOWNTO 0);  -- sfix20
          di2_vld_dly3                    :   IN    std_logic;
          twdl_3_2_re                     :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En15
          twdl_3_2_im                     :   IN    std_logic_vector(16 DOWNTO 0);  -- sfix17_En15
          softReset                       :   IN    std_logic;
          twdlXdin_2_re                   :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
          twdlXdin_2_im                   :   OUT   std_logic_vector(19 DOWNTO 0);  -- sfix20
          twdlXdin2_vld                   :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Complex3Multiply
    USE ENTITY work.Complex3Multiply(rtl);

  -- Signals
  SIGNAL dout_1_re_signed                 : signed(18 DOWNTO 0);  -- sfix19
  SIGNAL din_re                           : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly1                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly2                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly3                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly4                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly5                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly6                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly7                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly8                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_re_dly9                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL dout_1_im_signed                 : signed(18 DOWNTO 0);  -- sfix19
  SIGNAL din_im                           : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly1                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly2                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly3                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly4                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly5                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly6                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly7                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly8                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din1_im_dly9                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL dout_3_re_signed                 : signed(18 DOWNTO 0);  -- sfix19
  SIGNAL din_re_1                         : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din2_re_dly1                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din2_re_dly2                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL dout_3_im_signed                 : signed(18 DOWNTO 0);  -- sfix19
  SIGNAL din_im_1                         : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din2_im_dly1                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din2_im_dly2                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din2_re_dly3                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL din2_im_dly3                     : signed(19 DOWNTO 0);  -- sfix20
  SIGNAL di2_vld_dly1                     : std_logic;
  SIGNAL di2_vld_dly2                     : std_logic;
  SIGNAL di2_vld_dly3                     : std_logic;
  SIGNAL twdlXdin_2_re_tmp                : std_logic_vector(19 DOWNTO 0);  -- ufix20
  SIGNAL twdlXdin_2_im_tmp                : std_logic_vector(19 DOWNTO 0);  -- ufix20

BEGIN
  u_MUL3_2 : Complex3Multiply
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              din2_re_dly3 => std_logic_vector(din2_re_dly3),  -- sfix20
              din2_im_dly3 => std_logic_vector(din2_im_dly3),  -- sfix20
              di2_vld_dly3 => di2_vld_dly3,
              twdl_3_2_re => twdl_3_2_re,  -- sfix17_En15
              twdl_3_2_im => twdl_3_2_im,  -- sfix17_En15
              softReset => softReset,
              twdlXdin_2_re => twdlXdin_2_re_tmp,  -- sfix20
              twdlXdin_2_im => twdlXdin_2_im_tmp,  -- sfix20
              twdlXdin2_vld => twdlXdin_1_vld
              );

  dout_1_re_signed <= signed(dout_1_re);

  din_re <= resize(dout_1_re_signed, 20);

  intdelay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly1 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly1 <= din_re;
      END IF;
    END IF;
  END PROCESS intdelay_process;


  intdelay_1_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly2 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly2 <= din1_re_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_1_process;


  intdelay_2_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly3 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly3 <= din1_re_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_2_process;


  intdelay_3_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly4 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly4 <= din1_re_dly3;
      END IF;
    END IF;
  END PROCESS intdelay_3_process;


  intdelay_4_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly5 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly5 <= din1_re_dly4;
      END IF;
    END IF;
  END PROCESS intdelay_4_process;


  intdelay_5_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly6 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly6 <= din1_re_dly5;
      END IF;
    END IF;
  END PROCESS intdelay_5_process;


  intdelay_6_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly7 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly7 <= din1_re_dly6;
      END IF;
    END IF;
  END PROCESS intdelay_6_process;


  intdelay_7_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly8 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly8 <= din1_re_dly7;
      END IF;
    END IF;
  END PROCESS intdelay_7_process;


  intdelay_8_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_re_dly9 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_re_dly9 <= din1_re_dly8;
      END IF;
    END IF;
  END PROCESS intdelay_8_process;


  twdlXdin_1_re <= std_logic_vector(din1_re_dly9);

  dout_1_im_signed <= signed(dout_1_im);

  din_im <= resize(dout_1_im_signed, 20);

  intdelay_9_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly1 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly1 <= din_im;
      END IF;
    END IF;
  END PROCESS intdelay_9_process;


  intdelay_10_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly2 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly2 <= din1_im_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_10_process;


  intdelay_11_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly3 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly3 <= din1_im_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_11_process;


  intdelay_12_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly4 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly4 <= din1_im_dly3;
      END IF;
    END IF;
  END PROCESS intdelay_12_process;


  intdelay_13_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly5 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly5 <= din1_im_dly4;
      END IF;
    END IF;
  END PROCESS intdelay_13_process;


  intdelay_14_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly6 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly6 <= din1_im_dly5;
      END IF;
    END IF;
  END PROCESS intdelay_14_process;


  intdelay_15_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly7 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly7 <= din1_im_dly6;
      END IF;
    END IF;
  END PROCESS intdelay_15_process;


  intdelay_16_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly8 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly8 <= din1_im_dly7;
      END IF;
    END IF;
  END PROCESS intdelay_16_process;


  intdelay_17_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din1_im_dly9 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din1_im_dly9 <= din1_im_dly8;
      END IF;
    END IF;
  END PROCESS intdelay_17_process;


  twdlXdin_1_im <= std_logic_vector(din1_im_dly9);

  dout_3_re_signed <= signed(dout_3_re);

  din_re_1 <= resize(dout_3_re_signed, 20);

  intdelay_18_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_re_dly1 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din2_re_dly1 <= din_re_1;
      END IF;
    END IF;
  END PROCESS intdelay_18_process;


  intdelay_19_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_re_dly2 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din2_re_dly2 <= din2_re_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_19_process;


  dout_3_im_signed <= signed(dout_3_im);

  din_im_1 <= resize(dout_3_im_signed, 20);

  intdelay_20_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_im_dly1 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din2_im_dly1 <= din_im_1;
      END IF;
    END IF;
  END PROCESS intdelay_20_process;


  intdelay_21_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_im_dly2 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din2_im_dly2 <= din2_im_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_21_process;


  intdelay_22_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_re_dly3 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din2_re_dly3 <= din2_re_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_22_process;


  intdelay_23_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      din2_im_dly3 <= to_signed(16#00000#, 20);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        din2_im_dly3 <= din2_im_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_23_process;


  intdelay_24_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      di2_vld_dly1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        di2_vld_dly1 <= dout_2_vld;
      END IF;
    END IF;
  END PROCESS intdelay_24_process;


  intdelay_25_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      di2_vld_dly2 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        di2_vld_dly2 <= di2_vld_dly1;
      END IF;
    END IF;
  END PROCESS intdelay_25_process;


  intdelay_26_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      di2_vld_dly3 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        di2_vld_dly3 <= di2_vld_dly2;
      END IF;
    END IF;
  END PROCESS intdelay_26_process;


  twdlXdin_2_re <= twdlXdin_2_re_tmp;

  twdlXdin_2_im <= twdlXdin_2_im_tmp;

END rtl;

