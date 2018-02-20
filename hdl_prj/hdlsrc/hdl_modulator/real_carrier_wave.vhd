-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj/hdlsrc/hdl_modulator/real_carrier_wave.vhd
-- Created: 2018-02-07 20:06:23
-- 
-- Generated by MATLAB 9.3 and HDL Coder 3.11
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: real_carrier_wave
-- Source Path: hdl_modulator/real_carrier_wave
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.hdl_modulator_pac.ALL;

ENTITY real_carrier_wave IS
  PORT( u_u                               :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        x_x                               :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END real_carrier_wave;


ARCHITECTURE rtl OF real_carrier_wave IS

  -- Constants
  CONSTANT nc                             : vector_of_signed16(0 TO 511) := 
    (to_signed(16#0000#, 16), to_signed(16#0032#, 16), to_signed(16#0065#, 16), to_signed(16#0097#, 16), 
      to_signed(16#00C9#, 16), to_signed(16#00FC#, 16), to_signed(16#012E#, 16), to_signed(16#0161#, 16), 
      to_signed(16#0193#, 16), to_signed(16#01C5#, 16), to_signed(16#01F8#, 16), to_signed(16#022A#, 16), 
      to_signed(16#025C#, 16), to_signed(16#028F#, 16), to_signed(16#02C1#, 16), to_signed(16#02F3#, 16), 
      to_signed(16#0325#, 16), to_signed(16#0358#, 16), to_signed(16#038A#, 16), to_signed(16#03BC#, 16), 
      to_signed(16#03EF#, 16), to_signed(16#0421#, 16), to_signed(16#0453#, 16), to_signed(16#0485#, 16), 
      to_signed(16#04B8#, 16), to_signed(16#04EA#, 16), to_signed(16#051C#, 16), to_signed(16#054E#, 16), 
      to_signed(16#0580#, 16), to_signed(16#05B3#, 16), to_signed(16#05E5#, 16), to_signed(16#0617#, 16), 
      to_signed(16#0649#, 16), to_signed(16#067B#, 16), to_signed(16#06AD#, 16), to_signed(16#06DF#, 16), 
      to_signed(16#0711#, 16), to_signed(16#0743#, 16), to_signed(16#0775#, 16), to_signed(16#07A7#, 16), 
      to_signed(16#07D9#, 16), to_signed(16#080B#, 16), to_signed(16#083D#, 16), to_signed(16#086F#, 16), 
      to_signed(16#08A1#, 16), to_signed(16#08D3#, 16), to_signed(16#0905#, 16), to_signed(16#0937#, 16), 
      to_signed(16#0969#, 16), to_signed(16#099B#, 16), to_signed(16#09CC#, 16), to_signed(16#09FE#, 16), 
      to_signed(16#0A30#, 16), to_signed(16#0A61#, 16), to_signed(16#0A93#, 16), to_signed(16#0AC5#, 16), 
      to_signed(16#0AF6#, 16), to_signed(16#0B28#, 16), to_signed(16#0B5A#, 16), to_signed(16#0B8B#, 16), 
      to_signed(16#0BBD#, 16), to_signed(16#0BEE#, 16), to_signed(16#0C20#, 16), to_signed(16#0C51#, 16), 
      to_signed(16#0C83#, 16), to_signed(16#0CB4#, 16), to_signed(16#0CE5#, 16), to_signed(16#0D17#, 16), 
      to_signed(16#0D48#, 16), to_signed(16#0D79#, 16), to_signed(16#0DAA#, 16), to_signed(16#0DDC#, 16), 
      to_signed(16#0E0D#, 16), to_signed(16#0E3E#, 16), to_signed(16#0E6F#, 16), to_signed(16#0EA0#, 16), 
      to_signed(16#0ED1#, 16), to_signed(16#0F02#, 16), to_signed(16#0F33#, 16), to_signed(16#0F64#, 16), 
      to_signed(16#0F95#, 16), to_signed(16#0FC5#, 16), to_signed(16#0FF6#, 16), to_signed(16#1027#, 16), 
      to_signed(16#1058#, 16), to_signed(16#1088#, 16), to_signed(16#10B9#, 16), to_signed(16#10EA#, 16), 
      to_signed(16#111A#, 16), to_signed(16#114B#, 16), to_signed(16#117B#, 16), to_signed(16#11AC#, 16), 
      to_signed(16#11DC#, 16), to_signed(16#120C#, 16), to_signed(16#123D#, 16), to_signed(16#126D#, 16), 
      to_signed(16#129D#, 16), to_signed(16#12CD#, 16), to_signed(16#12FD#, 16), to_signed(16#132D#, 16), 
      to_signed(16#135D#, 16), to_signed(16#138D#, 16), to_signed(16#13BD#, 16), to_signed(16#13ED#, 16), 
      to_signed(16#141D#, 16), to_signed(16#144D#, 16), to_signed(16#147D#, 16), to_signed(16#14AC#, 16), 
      to_signed(16#14DC#, 16), to_signed(16#150C#, 16), to_signed(16#153B#, 16), to_signed(16#156B#, 16), 
      to_signed(16#159A#, 16), to_signed(16#15C9#, 16), to_signed(16#15F9#, 16), to_signed(16#1628#, 16), 
      to_signed(16#1657#, 16), to_signed(16#1686#, 16), to_signed(16#16B5#, 16), to_signed(16#16E5#, 16), 
      to_signed(16#1714#, 16), to_signed(16#1742#, 16), to_signed(16#1771#, 16), to_signed(16#17A0#, 16), 
      to_signed(16#17CF#, 16), to_signed(16#17FE#, 16), to_signed(16#182C#, 16), to_signed(16#185B#, 16), 
      to_signed(16#188A#, 16), to_signed(16#18B8#, 16), to_signed(16#18E6#, 16), to_signed(16#1915#, 16), 
      to_signed(16#1943#, 16), to_signed(16#1971#, 16), to_signed(16#19A0#, 16), to_signed(16#19CE#, 16), 
      to_signed(16#19FC#, 16), to_signed(16#1A2A#, 16), to_signed(16#1A58#, 16), to_signed(16#1A85#, 16), 
      to_signed(16#1AB3#, 16), to_signed(16#1AE1#, 16), to_signed(16#1B0F#, 16), to_signed(16#1B3C#, 16), 
      to_signed(16#1B6A#, 16), to_signed(16#1B97#, 16), to_signed(16#1BC5#, 16), to_signed(16#1BF2#, 16), 
      to_signed(16#1C1F#, 16), to_signed(16#1C4D#, 16), to_signed(16#1C7A#, 16), to_signed(16#1CA7#, 16), 
      to_signed(16#1CD4#, 16), to_signed(16#1D01#, 16), to_signed(16#1D2E#, 16), to_signed(16#1D5A#, 16), 
      to_signed(16#1D87#, 16), to_signed(16#1DB4#, 16), to_signed(16#1DE0#, 16), to_signed(16#1E0D#, 16), 
      to_signed(16#1E39#, 16), to_signed(16#1E66#, 16), to_signed(16#1E92#, 16), to_signed(16#1EBE#, 16), 
      to_signed(16#1EEA#, 16), to_signed(16#1F16#, 16), to_signed(16#1F42#, 16), to_signed(16#1F6E#, 16), 
      to_signed(16#1F9A#, 16), to_signed(16#1FC6#, 16), to_signed(16#1FF1#, 16), to_signed(16#201D#, 16), 
      to_signed(16#2049#, 16), to_signed(16#2074#, 16), to_signed(16#209F#, 16), to_signed(16#20CB#, 16), 
      to_signed(16#20F6#, 16), to_signed(16#2121#, 16), to_signed(16#214C#, 16), to_signed(16#2177#, 16), 
      to_signed(16#21A2#, 16), to_signed(16#21CD#, 16), to_signed(16#21F7#, 16), to_signed(16#2222#, 16), 
      to_signed(16#224D#, 16), to_signed(16#2277#, 16), to_signed(16#22A2#, 16), to_signed(16#22CC#, 16), 
      to_signed(16#22F6#, 16), to_signed(16#2320#, 16), to_signed(16#234A#, 16), to_signed(16#2374#, 16), 
      to_signed(16#239E#, 16), to_signed(16#23C8#, 16), to_signed(16#23F2#, 16), to_signed(16#241B#, 16), 
      to_signed(16#2445#, 16), to_signed(16#246E#, 16), to_signed(16#2498#, 16), to_signed(16#24C1#, 16), 
      to_signed(16#24EA#, 16), to_signed(16#2513#, 16), to_signed(16#253C#, 16), to_signed(16#2565#, 16), 
      to_signed(16#258E#, 16), to_signed(16#25B7#, 16), to_signed(16#25DF#, 16), to_signed(16#2608#, 16), 
      to_signed(16#2630#, 16), to_signed(16#2659#, 16), to_signed(16#2681#, 16), to_signed(16#26A9#, 16), 
      to_signed(16#26D1#, 16), to_signed(16#26F9#, 16), to_signed(16#2721#, 16), to_signed(16#2749#, 16), 
      to_signed(16#2771#, 16), to_signed(16#2798#, 16), to_signed(16#27C0#, 16), to_signed(16#27E7#, 16), 
      to_signed(16#280F#, 16), to_signed(16#2836#, 16), to_signed(16#285D#, 16), to_signed(16#2884#, 16), 
      to_signed(16#28AB#, 16), to_signed(16#28D2#, 16), to_signed(16#28F9#, 16), to_signed(16#291F#, 16), 
      to_signed(16#2946#, 16), to_signed(16#296C#, 16), to_signed(16#2992#, 16), to_signed(16#29B9#, 16), 
      to_signed(16#29DF#, 16), to_signed(16#2A05#, 16), to_signed(16#2A2B#, 16), to_signed(16#2A51#, 16), 
      to_signed(16#2A76#, 16), to_signed(16#2A9C#, 16), to_signed(16#2AC2#, 16), to_signed(16#2AE7#, 16), 
      to_signed(16#2B0C#, 16), to_signed(16#2B32#, 16), to_signed(16#2B57#, 16), to_signed(16#2B7C#, 16), 
      to_signed(16#2BA1#, 16), to_signed(16#2BC5#, 16), to_signed(16#2BEA#, 16), to_signed(16#2C0F#, 16), 
      to_signed(16#2C33#, 16), to_signed(16#2C57#, 16), to_signed(16#2C7C#, 16), to_signed(16#2CA0#, 16), 
      to_signed(16#2CC4#, 16), to_signed(16#2CE8#, 16), to_signed(16#2D0C#, 16), to_signed(16#2D2F#, 16), 
      to_signed(16#2D53#, 16), to_signed(16#2D77#, 16), to_signed(16#2D9A#, 16), to_signed(16#2DBD#, 16), 
      to_signed(16#2DE0#, 16), to_signed(16#2E03#, 16), to_signed(16#2E26#, 16), to_signed(16#2E49#, 16), 
      to_signed(16#2E6C#, 16), to_signed(16#2E8F#, 16), to_signed(16#2EB1#, 16), to_signed(16#2ED3#, 16), 
      to_signed(16#2EF6#, 16), to_signed(16#2F18#, 16), to_signed(16#2F3A#, 16), to_signed(16#2F5C#, 16), 
      to_signed(16#2F7E#, 16), to_signed(16#2F9F#, 16), to_signed(16#2FC1#, 16), to_signed(16#2FE2#, 16), 
      to_signed(16#3004#, 16), to_signed(16#3025#, 16), to_signed(16#3046#, 16), to_signed(16#3067#, 16), 
      to_signed(16#3088#, 16), to_signed(16#30A9#, 16), to_signed(16#30CA#, 16), to_signed(16#30EA#, 16), 
      to_signed(16#310A#, 16), to_signed(16#312B#, 16), to_signed(16#314B#, 16), to_signed(16#316B#, 16), 
      to_signed(16#318B#, 16), to_signed(16#31AB#, 16), to_signed(16#31CA#, 16), to_signed(16#31EA#, 16), 
      to_signed(16#320A#, 16), to_signed(16#3229#, 16), to_signed(16#3248#, 16), to_signed(16#3267#, 16), 
      to_signed(16#3286#, 16), to_signed(16#32A5#, 16), to_signed(16#32C4#, 16), to_signed(16#32E2#, 16), 
      to_signed(16#3301#, 16), to_signed(16#331F#, 16), to_signed(16#333D#, 16), to_signed(16#335C#, 16), 
      to_signed(16#337A#, 16), to_signed(16#3397#, 16), to_signed(16#33B5#, 16), to_signed(16#33D3#, 16), 
      to_signed(16#33F0#, 16), to_signed(16#340E#, 16), to_signed(16#342B#, 16), to_signed(16#3448#, 16), 
      to_signed(16#3465#, 16), to_signed(16#3482#, 16), to_signed(16#349F#, 16), to_signed(16#34BB#, 16), 
      to_signed(16#34D8#, 16), to_signed(16#34F4#, 16), to_signed(16#3510#, 16), to_signed(16#352C#, 16), 
      to_signed(16#3548#, 16), to_signed(16#3564#, 16), to_signed(16#3580#, 16), to_signed(16#359B#, 16), 
      to_signed(16#35B7#, 16), to_signed(16#35D2#, 16), to_signed(16#35ED#, 16), to_signed(16#3608#, 16), 
      to_signed(16#3623#, 16), to_signed(16#363E#, 16), to_signed(16#3659#, 16), to_signed(16#3673#, 16), 
      to_signed(16#368E#, 16), to_signed(16#36A8#, 16), to_signed(16#36C2#, 16), to_signed(16#36DC#, 16), 
      to_signed(16#36F6#, 16), to_signed(16#3710#, 16), to_signed(16#3729#, 16), to_signed(16#3743#, 16), 
      to_signed(16#375C#, 16), to_signed(16#3775#, 16), to_signed(16#378E#, 16), to_signed(16#37A7#, 16), 
      to_signed(16#37C0#, 16), to_signed(16#37D9#, 16), to_signed(16#37F1#, 16), to_signed(16#380A#, 16), 
      to_signed(16#3822#, 16), to_signed(16#383A#, 16), to_signed(16#3852#, 16), to_signed(16#386A#, 16), 
      to_signed(16#3882#, 16), to_signed(16#3899#, 16), to_signed(16#38B1#, 16), to_signed(16#38C8#, 16), 
      to_signed(16#38DF#, 16), to_signed(16#38F6#, 16), to_signed(16#390D#, 16), to_signed(16#3924#, 16), 
      to_signed(16#393A#, 16), to_signed(16#3951#, 16), to_signed(16#3967#, 16), to_signed(16#397D#, 16), 
      to_signed(16#3994#, 16), to_signed(16#39A9#, 16), to_signed(16#39BF#, 16), to_signed(16#39D5#, 16), 
      to_signed(16#39EA#, 16), to_signed(16#3A00#, 16), to_signed(16#3A15#, 16), to_signed(16#3A2A#, 16), 
      to_signed(16#3A3F#, 16), to_signed(16#3A54#, 16), to_signed(16#3A68#, 16), to_signed(16#3A7D#, 16), 
      to_signed(16#3A91#, 16), to_signed(16#3AA6#, 16), to_signed(16#3ABA#, 16), to_signed(16#3ACE#, 16), 
      to_signed(16#3AE1#, 16), to_signed(16#3AF5#, 16), to_signed(16#3B09#, 16), to_signed(16#3B1C#, 16), 
      to_signed(16#3B2F#, 16), to_signed(16#3B42#, 16), to_signed(16#3B55#, 16), to_signed(16#3B68#, 16), 
      to_signed(16#3B7B#, 16), to_signed(16#3B8D#, 16), to_signed(16#3BA0#, 16), to_signed(16#3BB2#, 16), 
      to_signed(16#3BC4#, 16), to_signed(16#3BD6#, 16), to_signed(16#3BE8#, 16), to_signed(16#3BF9#, 16), 
      to_signed(16#3C0B#, 16), to_signed(16#3C1C#, 16), to_signed(16#3C2D#, 16), to_signed(16#3C3F#, 16), 
      to_signed(16#3C4F#, 16), to_signed(16#3C60#, 16), to_signed(16#3C71#, 16), to_signed(16#3C81#, 16), 
      to_signed(16#3C92#, 16), to_signed(16#3CA2#, 16), to_signed(16#3CB2#, 16), to_signed(16#3CC2#, 16), 
      to_signed(16#3CD2#, 16), to_signed(16#3CE1#, 16), to_signed(16#3CF1#, 16), to_signed(16#3D00#, 16), 
      to_signed(16#3D0F#, 16), to_signed(16#3D1E#, 16), to_signed(16#3D2D#, 16), to_signed(16#3D3C#, 16), 
      to_signed(16#3D4A#, 16), to_signed(16#3D59#, 16), to_signed(16#3D67#, 16), to_signed(16#3D75#, 16), 
      to_signed(16#3D83#, 16), to_signed(16#3D91#, 16), to_signed(16#3D9F#, 16), to_signed(16#3DAC#, 16), 
      to_signed(16#3DBA#, 16), to_signed(16#3DC7#, 16), to_signed(16#3DD4#, 16), to_signed(16#3DE1#, 16), 
      to_signed(16#3DEE#, 16), to_signed(16#3DFA#, 16), to_signed(16#3E07#, 16), to_signed(16#3E13#, 16), 
      to_signed(16#3E1F#, 16), to_signed(16#3E2B#, 16), to_signed(16#3E37#, 16), to_signed(16#3E43#, 16), 
      to_signed(16#3E4F#, 16), to_signed(16#3E5A#, 16), to_signed(16#3E65#, 16), to_signed(16#3E70#, 16), 
      to_signed(16#3E7B#, 16), to_signed(16#3E86#, 16), to_signed(16#3E91#, 16), to_signed(16#3E9B#, 16), 
      to_signed(16#3EA6#, 16), to_signed(16#3EB0#, 16), to_signed(16#3EBA#, 16), to_signed(16#3EC4#, 16), 
      to_signed(16#3ECE#, 16), to_signed(16#3ED7#, 16), to_signed(16#3EE1#, 16), to_signed(16#3EEA#, 16), 
      to_signed(16#3EF3#, 16), to_signed(16#3EFC#, 16), to_signed(16#3F05#, 16), to_signed(16#3F0E#, 16), 
      to_signed(16#3F16#, 16), to_signed(16#3F1F#, 16), to_signed(16#3F27#, 16), to_signed(16#3F2F#, 16), 
      to_signed(16#3F37#, 16), to_signed(16#3F3F#, 16), to_signed(16#3F46#, 16), to_signed(16#3F4E#, 16), 
      to_signed(16#3F55#, 16), to_signed(16#3F5C#, 16), to_signed(16#3F63#, 16), to_signed(16#3F6A#, 16), 
      to_signed(16#3F71#, 16), to_signed(16#3F78#, 16), to_signed(16#3F7E#, 16), to_signed(16#3F84#, 16), 
      to_signed(16#3F8A#, 16), to_signed(16#3F90#, 16), to_signed(16#3F96#, 16), to_signed(16#3F9C#, 16), 
      to_signed(16#3FA1#, 16), to_signed(16#3FA7#, 16), to_signed(16#3FAC#, 16), to_signed(16#3FB1#, 16), 
      to_signed(16#3FB6#, 16), to_signed(16#3FBA#, 16), to_signed(16#3FBF#, 16), to_signed(16#3FC3#, 16), 
      to_signed(16#3FC8#, 16), to_signed(16#3FCC#, 16), to_signed(16#3FD0#, 16), to_signed(16#3FD3#, 16), 
      to_signed(16#3FD7#, 16), to_signed(16#3FDB#, 16), to_signed(16#3FDE#, 16), to_signed(16#3FE1#, 16), 
      to_signed(16#3FE4#, 16), to_signed(16#3FE7#, 16), to_signed(16#3FEA#, 16), to_signed(16#3FEC#, 16), 
      to_signed(16#3FEF#, 16), to_signed(16#3FF1#, 16), to_signed(16#3FF3#, 16), to_signed(16#3FF5#, 16), 
      to_signed(16#3FF7#, 16), to_signed(16#3FF8#, 16), to_signed(16#3FFA#, 16), to_signed(16#3FFB#, 16), 
      to_signed(16#3FFC#, 16), to_signed(16#3FFD#, 16), to_signed(16#3FFE#, 16), to_signed(16#3FFF#, 16), 
      to_signed(16#3FFF#, 16), to_signed(16#4000#, 16), to_signed(16#4000#, 16), to_signed(16#4000#, 16)); 
-- sfix16 [512]

  -- Signals
  SIGNAL u_signed                         : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL insig_out1                       : unsigned(8 DOWNTO 0);  -- ufix9_En9
  SIGNAL Point50_out1                     : unsigned(15 DOWNTO 0);  -- ufix16_En16
  SIGNAL LTEp50_1_cast                    : unsigned(15 DOWNTO 0);  -- ufix16_En16
  SIGNAL LTEp50_relop1                    : std_logic;
  SIGNAL pow2switch_out1                  : std_logic;
  SIGNAL Amp50_sub_cast                   : signed(16 DOWNTO 0);  -- sfix17_En16
  SIGNAL Amp50_sub_cast_1                 : signed(16 DOWNTO 0);  -- sfix17_En16
  SIGNAL Amp50_out1                       : signed(16 DOWNTO 0);  -- sfix17_En16
  SIGNAL insig_out1_dtc                   : signed(16 DOWNTO 0);  -- sfix17_En16
  SIGNAL QuadHandle1_out1                 : signed(16 DOWNTO 0);  -- sfix17_En16
  SIGNAL Point25_out1                     : unsigned(15 DOWNTO 0);  -- ufix16_En16
  SIGNAL LTEp25_1_cast                    : signed(16 DOWNTO 0);  -- sfix17_En16
  SIGNAL LTEp25_relop1                    : std_logic;
  SIGNAL p50mA_sub_cast                   : signed(17 DOWNTO 0);  -- sfix18_En16
  SIGNAL p50mA_sub_cast_1                 : signed(17 DOWNTO 0);  -- sfix18_En16
  SIGNAL p50mA_out1                       : signed(17 DOWNTO 0);  -- sfix18_En16
  SIGNAL p50mA_out1_dtc                   : unsigned(8 DOWNTO 0);  -- ufix9_En9
  SIGNAL QuadHandle1_out1_dtc             : unsigned(8 DOWNTO 0);  -- ufix9_En9
  SIGNAL QuadHandle2_out1                 : unsigned(8 DOWNTO 0);  -- ufix9_En9
  SIGNAL CastU16En2_out1                  : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL CastU16En4_out1                  : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL x4_out1                          : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL CastU16En3_out1                  : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL Switch_out1                      : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL Look_Up_Table_k                  : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL Look_Up_Table_out1               : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Negate_cast                      : signed(16 DOWNTO 0);  -- sfix17_En14
  SIGNAL Negate_cast_1                    : signed(16 DOWNTO 0);  -- sfix17_En14
  SIGNAL Negate_out1                      : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Sine                             : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Sine_1                           : signed(15 DOWNTO 0);  -- sfix16_En14

BEGIN
  -- (C) 2016 Mathworks, Inc

  u_signed <= signed(u_u);

  insig_out1 <= unsigned(u_signed(13 DOWNTO 5));

  Point50_out1 <= to_unsigned(16#8000#, 16);

  LTEp50_1_cast <= insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0';
  
  LTEp50_relop1 <= '1' WHEN LTEp50_1_cast <= Point50_out1 ELSE
      '0';

  pow2switch_out1 <= '0';

  Amp50_sub_cast <= signed(resize(insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0', 17));
  Amp50_sub_cast_1 <= signed(resize(Point50_out1, 17));
  Amp50_out1 <= Amp50_sub_cast - Amp50_sub_cast_1;

  insig_out1_dtc <= signed(resize(insig_out1 & '0' & '0' & '0' & '0' & '0' & '0' & '0', 17));

  
  QuadHandle1_out1 <= Amp50_out1 WHEN LTEp50_relop1 = '0' ELSE
      insig_out1_dtc;

  Point25_out1 <= to_unsigned(16#4000#, 16);

  LTEp25_1_cast <= signed(resize(Point25_out1, 17));
  
  LTEp25_relop1 <= '1' WHEN QuadHandle1_out1 <= LTEp25_1_cast ELSE
      '0';

  p50mA_sub_cast <= signed(resize(Point50_out1, 18));
  p50mA_sub_cast_1 <= resize(QuadHandle1_out1, 18);
  p50mA_out1 <= p50mA_sub_cast - p50mA_sub_cast_1;

  p50mA_out1_dtc <= unsigned(p50mA_out1(15 DOWNTO 7));

  QuadHandle1_out1_dtc <= unsigned(QuadHandle1_out1(15 DOWNTO 7));

  
  QuadHandle2_out1 <= p50mA_out1_dtc WHEN LTEp25_relop1 = '0' ELSE
      QuadHandle1_out1_dtc;

  CastU16En2_out1 <= QuadHandle2_out1;

  CastU16En4_out1 <= resize(CastU16En2_out1, 10);

  -- equivalent to multiply
  -- by 4 with saturation
  x4_out1 <= CastU16En4_out1 sll 2;

  -- saturation block maybe optimized away
  -- if the NumDataPoints is a power of 2
  
  CastU16En3_out1 <= "111111111" WHEN x4_out1(9) /= '0' ELSE
      x4_out1(8 DOWNTO 0);

  
  Switch_out1 <= CastU16En3_out1 WHEN pow2switch_out1 = '0' ELSE
      CastU16En3_out1;

  
  Look_Up_Table_k <= to_unsigned(16#000#, 9) WHEN Switch_out1 = to_unsigned(16#000#, 9) ELSE
      to_unsigned(16#1FF#, 9) WHEN Switch_out1 = to_unsigned(16#1FF#, 9) ELSE
      Switch_out1;
  Look_Up_Table_out1 <= nc(to_integer(Look_Up_Table_k));

  Negate_cast <= resize(Look_Up_Table_out1, 17);
  Negate_cast_1 <=  - (Negate_cast);
  Negate_out1 <= Negate_cast_1(15 DOWNTO 0);

  
  Sine <= Negate_out1 WHEN LTEp50_relop1 = '0' ELSE
      Look_Up_Table_out1;

  Sine_1 <= Sine;

  x_x <= std_logic_vector(Sine_1);

END rtl;
