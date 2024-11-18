--- VHLD for roadsets/Users/ievgenlavrukhin/work/SpinQuest/Trigger_RoadSets/2024/136/pos_bot.txt and /Users/ievgenlavrukhin/work/SpinQuest/Trigger_RoadSets/2024/136/neg_bot.txt
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.std_logic_unsigned.all;
ENTITY code_470 IS
   PORT( 
      --*************************************************
      -- V1495 Front Panel Ports (PORT A,B,C,G)
      --*************************************************
      A_DIN_L       : IN     std_logic_vector (31 DOWNTO 0);  -- In A (32 x LVDS/ECL)
      B_DIN_L       : IN     std_logic_vector (31 DOWNTO 0);  -- In B (32 x LVDS/ECL)
      D_DIN_L       : IN     std_logic_vector (31 DOWNTO 0);  -- In D (32 x LVDS/ECL)
      E_DIN_L       : IN     std_logic_vector (31 DOWNTO 0);  -- In E (32 x LVDS/ECL)
      F_DOUT_L      : OUT    std_logic_vector (31 DOWNTO 0);  -- OUT F (32 x LVDS/ECL)
      C_DOUT_L      : OUT    std_logic_vector (31 DOWNTO 0);  -- Out C (32 x LVDS)
      c1            : IN STD_LOGIC                            -- the PLL1 output
   );
END code_470 ;
ARCHITECTURE rtl OF code_470 IS
signal A     : std_logic_vector(31 downto 0);
signal Aa     : std_logic_vector(31 downto 0);
signal B     : std_logic_vector(31 downto 0);
signal Ba     : std_logic_vector(31 downto 0);
signal C     : std_logic_vector(31 downto 0);
signal D     : std_logic_vector(31 downto 0);
signal Da     : std_logic_vector(31 downto 0);
signal E     : std_logic_vector(31 downto 0);
signal Ea     : std_logic_vector(31 downto 0);
signal Eb     : std_logic_vector(31 downto 0);
signal F     : std_logic_vector(31 downto 0);
signal G     : std_logic_vector(1 downto 0);
        signal PF_temp_lv1_00: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_01: std_logic_vector( 102 downto 0);
        signal PF_temp_lv1_02: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_03: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_04: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_05: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_06: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_07: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_08: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_09: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_10: std_logic_vector(   0 downto 0);
        signal PF_temp_lv1_11: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_00: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_01: std_logic_vector(  25 downto 0);
        signal PF_temp_lv2_02: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_03: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_04: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_05: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_06: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_07: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_08: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_09: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_10: std_logic_vector(   0 downto 0);
        signal PF_temp_lv2_11: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_00: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_01: std_logic_vector(   6 downto 0);
        signal PF_temp_lv3_02: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_03: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_04: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_05: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_06: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_07: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_08: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_09: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_10: std_logic_vector(   0 downto 0);
        signal PF_temp_lv3_11: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_00: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_01: std_logic_vector(   1 downto 0);
        signal PF_temp_lv4_02: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_03: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_04: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_05: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_06: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_07: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_08: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_09: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_10: std_logic_vector(   0 downto 0);
        signal PF_temp_lv4_11: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_00: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_01: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_02: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_03: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_04: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_05: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_06: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_07: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_08: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_09: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_10: std_logic_vector(   0 downto 0);
        signal PF_temp_lv5_11: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_00: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_01: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_02: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_03: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_04: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_05: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_06: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_07: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_08: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_09: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_10: std_logic_vector(   0 downto 0);
        signal PF_temp_lv6_11: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_00: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_01: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_02: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_03: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_04: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_05: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_06: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_07: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_08: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_09: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_10: std_logic_vector(   0 downto 0);
        signal PF_temp_lv7_11: std_logic_vector(   0 downto 0);
        signal PF_temp_lv8: std_logic_vector(  11 downto 0);
        signal NF_temp_lv1_00: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_01: std_logic_vector( 102 downto 0);
        signal NF_temp_lv1_02: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_03: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_04: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_05: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_06: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_07: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_08: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_09: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_10: std_logic_vector(   0 downto 0);
        signal NF_temp_lv1_11: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_00: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_01: std_logic_vector(  25 downto 0);
        signal NF_temp_lv2_02: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_03: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_04: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_05: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_06: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_07: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_08: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_09: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_10: std_logic_vector(   0 downto 0);
        signal NF_temp_lv2_11: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_00: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_01: std_logic_vector(   6 downto 0);
        signal NF_temp_lv3_02: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_03: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_04: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_05: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_06: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_07: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_08: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_09: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_10: std_logic_vector(   0 downto 0);
        signal NF_temp_lv3_11: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_00: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_01: std_logic_vector(   1 downto 0);
        signal NF_temp_lv4_02: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_03: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_04: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_05: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_06: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_07: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_08: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_09: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_10: std_logic_vector(   0 downto 0);
        signal NF_temp_lv4_11: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_00: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_01: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_02: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_03: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_04: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_05: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_06: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_07: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_08: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_09: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_10: std_logic_vector(   0 downto 0);
        signal NF_temp_lv5_11: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_00: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_01: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_02: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_03: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_04: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_05: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_06: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_07: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_08: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_09: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_10: std_logic_vector(   0 downto 0);
        signal NF_temp_lv6_11: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_00: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_01: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_02: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_03: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_04: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_05: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_06: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_07: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_08: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_09: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_10: std_logic_vector(   0 downto 0);
        signal NF_temp_lv7_11: std_logic_vector(   0 downto 0);
        signal NF_temp_lv8: std_logic_vector(  11 downto 0);
BEGIN
   Aa (14 downto 0) <= A_DIN_L (30 downto 16);
   Ba (15 downto 0) <= B_DIN_L (15 downto 0);
   Da (15 downto 0) <= B_DIN_L (31 downto 16);
   Ea (7 downto 0) <= D_DIN_L (23 downto 16);
   Ea (15 downto 8) <= D_DIN_L (7 downto 0);
   Eb (7 downto 0) <= D_DIN_L (31 downto 24);
   Eb (15 downto 8) <= D_DIN_L (15 downto 8);
   F_DOUT_L(11 downto 0) <=PF_temp_lv8( 11 downto 0);
   C_DOUT_L(11 downto 0) <=PF_temp_lv8( 11 downto 0);
   F_DOUT_L(23 downto 12) <=NF_temp_lv8( 11 downto 0);
   C_DOUT_L(23 downto 12) <=NF_temp_lv8( 11 downto 0);
lookuptable_LV0 : process(c1)
begin
 if c1'event and c1='1' then
        if(Ea( 0)='1' OR Eb( 0)='1' )then
          E( 0)<='1';
          else
          E( 0)<='0';
          end if;
        if(Ea( 1)='1' OR Eb( 1)='1' )then
          E( 1)<='1';
          else
          E( 1)<='0';
          end if;
        if(Ea( 2)='1' OR Eb( 2)='1' )then
          E( 2)<='1';
          else
          E( 2)<='0';
          end if;
        if(Ea( 3)='1' OR Eb( 3)='1' )then
          E( 3)<='1';
          else
          E( 3)<='0';
          end if;
        if(Ea( 4)='1' OR Eb( 4)='1' )then
          E( 4)<='1';
          else
          E( 4)<='0';
          end if;
        if(Ea( 5)='1' OR Eb( 5)='1' )then
          E( 5)<='1';
          else
          E( 5)<='0';
          end if;
        if(Ea( 6)='1' OR Eb( 6)='1' )then
          E( 6)<='1';
          else
          E( 6)<='0';
          end if;
        if(Ea( 7)='1' OR Eb( 7)='1' )then
          E( 7)<='1';
          else
          E( 7)<='0';
          end if;
        if(Ea( 8)='1' OR Eb( 8)='1' )then
          E( 8)<='1';
          else
          E( 8)<='0';
          end if;
        if(Ea( 9)='1' OR Eb( 9)='1' )then
          E( 9)<='1';
          else
          E( 9)<='0';
          end if;
        if(Ea(10)='1' OR Eb(10)='1' )then
          E(10)<='1';
          else
          E(10)<='0';
          end if;
        if(Ea(11)='1' OR Eb(11)='1' )then
          E(11)<='1';
          else
          E(11)<='0';
          end if;
        if(Ea(12)='1' OR Eb(12)='1' )then
          E(12)<='1';
          else
          E(12)<='0';
          end if;
        if(Ea(13)='1' OR Eb(13)='1' )then
          E(13)<='1';
          else
          E(13)<='0';
          end if;
        if(Ea(14)='1' OR Eb(14)='1' )then
          E(14)<='1';
          else
          E(14)<='0';
          end if;
        if(Ea(15)='1' OR Eb(15)='1' )then
          E(15)<='1';
          else
          E(15)<='0';
          end if;
        if(Da( 0)='1' )then
          D( 0)<='1';
          else
          D( 0)<='0';
          end if;
        if(Da( 1)='1' )then
          D( 1)<='1';
          else
          D( 1)<='0';
          end if;
        if(Da( 2)='1' )then
          D( 2)<='1';
          else
          D( 2)<='0';
          end if;
        if(Da( 3)='1' )then
          D( 3)<='1';
          else
          D( 3)<='0';
          end if;
        if(Da( 4)='1' )then
          D( 4)<='1';
          else
          D( 4)<='0';
          end if;
        if(Da( 5)='1' )then
          D( 5)<='1';
          else
          D( 5)<='0';
          end if;
        if(Da( 6)='1' )then
          D( 6)<='1';
          else
          D( 6)<='0';
          end if;
        if(Da( 7)='1' )then
          D( 7)<='1';
          else
          D( 7)<='0';
          end if;
        if(Da( 8)='1' )then
          D( 8)<='1';
          else
          D( 8)<='0';
          end if;
        if(Da( 9)='1' )then
          D( 9)<='1';
          else
          D( 9)<='0';
          end if;
        if(Da(10)='1' )then
          D(10)<='1';
          else
          D(10)<='0';
          end if;
        if(Da(11)='1' )then
          D(11)<='1';
          else
          D(11)<='0';
          end if;
        if(Da(12)='1' )then
          D(12)<='1';
          else
          D(12)<='0';
          end if;
        if(Da(13)='1' )then
          D(13)<='1';
          else
          D(13)<='0';
          end if;
        if(Da(14)='1' )then
          D(14)<='1';
          else
          D(14)<='0';
          end if;
        if(Da(15)='1' )then
          D(15)<='1';
          else
          D(15)<='0';
          end if;
        if(Ba( 0)='1' )then
          B( 0)<='1';
          else
          B( 0)<='0';
          end if;
        if(Ba( 1)='1' )then
          B( 1)<='1';
          else
          B( 1)<='0';
          end if;
        if(Ba( 2)='1' )then
          B( 2)<='1';
          else
          B( 2)<='0';
          end if;
        if(Ba( 3)='1' )then
          B( 3)<='1';
          else
          B( 3)<='0';
          end if;
        if(Ba( 4)='1' )then
          B( 4)<='1';
          else
          B( 4)<='0';
          end if;
        if(Ba( 5)='1' )then
          B( 5)<='1';
          else
          B( 5)<='0';
          end if;
        if(Ba( 6)='1' )then
          B( 6)<='1';
          else
          B( 6)<='0';
          end if;
        if(Ba( 7)='1' )then
          B( 7)<='1';
          else
          B( 7)<='0';
          end if;
        if(Ba( 8)='1' )then
          B( 8)<='1';
          else
          B( 8)<='0';
          end if;
        if(Ba( 9)='1' )then
          B( 9)<='1';
          else
          B( 9)<='0';
          end if;
        if(Ba(10)='1' )then
          B(10)<='1';
          else
          B(10)<='0';
          end if;
        if(Ba(11)='1' )then
          B(11)<='1';
          else
          B(11)<='0';
          end if;
        if(Ba(12)='1' )then
          B(12)<='1';
          else
          B(12)<='0';
          end if;
        if(Ba(13)='1' )then
          B(13)<='1';
          else
          B(13)<='0';
          end if;
        if(Ba(14)='1' )then
          B(14)<='1';
          else
          B(14)<='0';
          end if;
        if(Ba(15)='1' )then
          B(15)<='1';
          else
          B(15)<='0';
          end if;
        if(Aa( 0)='1' )then
          A( 0)<='1';
          else
          A( 0)<='0';
          end if;
        if(Aa( 1)='1' )then
          A( 1)<='1';
          else
          A( 1)<='0';
          end if;
        if(Aa( 2)='1' )then
          A( 2)<='1';
          else
          A( 2)<='0';
          end if;
        if(Aa( 3)='1' )then
          A( 3)<='1';
          else
          A( 3)<='0';
          end if;
        if(Aa( 4)='1' )then
          A( 4)<='1';
          else
          A( 4)<='0';
          end if;
        if(Aa( 5)='1' )then
          A( 5)<='1';
          else
          A( 5)<='0';
          end if;
        if(Aa( 6)='1' )then
          A( 6)<='1';
          else
          A( 6)<='0';
          end if;
        if(Aa( 7)='1' )then
          A( 7)<='1';
          else
          A( 7)<='0';
          end if;
        if(Aa( 8)='1' )then
          A( 8)<='1';
          else
          A( 8)<='0';
          end if;
        if(Aa( 9)='1' )then
          A( 9)<='1';
          else
          A( 9)<='0';
          end if;
        if(Aa(10)='1' )then
          A(10)<='1';
          else
          A(10)<='0';
          end if;
        if(Aa(11)='1' )then
          A(11)<='1';
          else
          A(11)<='0';
          end if;
        if(Aa(12)='1' )then
          A(12)<='1';
          else
          A(12)<='0';
          end if;
        if(Aa(13)='1' )then
          A(13)<='1';
          else
          A(13)<='0';
          end if;
        if(Aa(14)='1' )then
          A(14)<='1';
          else
          A(14)<='0';
          end if;
        if(Aa(15)='1' )then
          A(15)<='1';
          else
          A(15)<='0';
          end if;
        if(Aa(16)='1' )then
          A(16)<='1';
          else
          A(16)<='0';
          end if;
        if(Aa(17)='1' )then
          A(17)<='1';
          else
          A(17)<='0';
          end if;
        if(Aa(18)='1' )then
          A(18)<='1';
          else
          A(18)<='0';
          end if;
        if(Aa(19)='1' )then
          A(19)<='1';
          else
          A(19)<='0';
          end if;
        if(Aa(20)='1' )then
          A(20)<='1';
          else
          A(20)<='0';
          end if;
        if(Aa(21)='1' )then
          A(21)<='1';
          else
          A(21)<='0';
          end if;
        if(Aa(22)='1' )then
          A(22)<='1';
          else
          A(22)<='0';
          end if;
 end if;
end process;
lookuptable_LV1 : process(c1)
begin
 if c1'event and c1='1' then
        if(A( 4)='1' AND B( 2)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(   0)<='1';
          else
          PF_temp_lv1_01(   0)<='0';
          end if;
        if(A( 5)='1' AND B( 2)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(   1)<='1';
          else
          PF_temp_lv1_01(   1)<='0';
          end if;
        if(A( 5)='1' AND B( 3)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(   2)<='1';
          else
          PF_temp_lv1_01(   2)<='0';
          end if;
        if(A( 5)='1' AND B( 3)='1' AND D( 1)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(   3)<='1';
          else
          PF_temp_lv1_01(   3)<='0';
          end if;
        if(A( 5)='1' AND B( 3)='1' AND D( 1)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(   4)<='1';
          else
          PF_temp_lv1_01(   4)<='0';
          end if;
        if(A( 6)='1' AND B( 2)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(   5)<='1';
          else
          PF_temp_lv1_01(   5)<='0';
          end if;
        if(A( 6)='1' AND B( 3)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(   6)<='1';
          else
          PF_temp_lv1_01(   6)<='0';
          end if;
        if(A( 6)='1' AND B( 3)='1' AND D( 1)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(   7)<='1';
          else
          PF_temp_lv1_01(   7)<='0';
          end if;
        if(A( 6)='1' AND B( 3)='1' AND D( 1)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(   8)<='1';
          else
          PF_temp_lv1_01(   8)<='0';
          end if;
        if(A( 6)='1' AND B( 4)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(   9)<='1';
          else
          PF_temp_lv1_01(   9)<='0';
          end if;
        if(A( 6)='1' AND B( 4)='1' AND D( 2)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  10)<='1';
          else
          PF_temp_lv1_01(  10)<='0';
          end if;
        if(A( 6)='1' AND B( 4)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  11)<='1';
          else
          PF_temp_lv1_01(  11)<='0';
          end if;
        if(A( 7)='1' AND B( 2)='1' AND D( 0)='1' AND E( 0)='1' )then
          PF_temp_lv1_01(  12)<='1';
          else
          PF_temp_lv1_01(  12)<='0';
          end if;
        if(A( 7)='1' AND B( 3)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  13)<='1';
          else
          PF_temp_lv1_01(  13)<='0';
          end if;
        if(A( 7)='1' AND B( 3)='1' AND D( 1)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  14)<='1';
          else
          PF_temp_lv1_01(  14)<='0';
          end if;
        if(A( 7)='1' AND B( 3)='1' AND D( 1)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  15)<='1';
          else
          PF_temp_lv1_01(  15)<='0';
          end if;
        if(A( 7)='1' AND B( 4)='1' AND D( 1)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  16)<='1';
          else
          PF_temp_lv1_01(  16)<='0';
          end if;
        if(A( 7)='1' AND B( 4)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  17)<='1';
          else
          PF_temp_lv1_01(  17)<='0';
          end if;
        if(A( 7)='1' AND B( 4)='1' AND D( 2)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  18)<='1';
          else
          PF_temp_lv1_01(  18)<='0';
          end if;
        if(A( 7)='1' AND B( 4)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  19)<='1';
          else
          PF_temp_lv1_01(  19)<='0';
          end if;
        if(A( 7)='1' AND B( 5)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  20)<='1';
          else
          PF_temp_lv1_01(  20)<='0';
          end if;
        if(A( 7)='1' AND B( 5)='1' AND D( 3)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  21)<='1';
          else
          PF_temp_lv1_01(  21)<='0';
          end if;
        if(A( 7)='1' AND B( 5)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  22)<='1';
          else
          PF_temp_lv1_01(  22)<='0';
          end if;
        if(A( 7)='1' AND B( 6)='1' AND D( 4)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  23)<='1';
          else
          PF_temp_lv1_01(  23)<='0';
          end if;
        if(A( 7)='1' AND B( 6)='1' AND D( 5)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  24)<='1';
          else
          PF_temp_lv1_01(  24)<='0';
          end if;
        if(A( 8)='1' AND B( 3)='1' AND D( 0)='1' AND E( 0)='1' )then
          PF_temp_lv1_01(  25)<='1';
          else
          PF_temp_lv1_01(  25)<='0';
          end if;
        if(A( 8)='1' AND B( 3)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  26)<='1';
          else
          PF_temp_lv1_01(  26)<='0';
          end if;
        if(A( 8)='1' AND B( 3)='1' AND D( 1)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  27)<='1';
          else
          PF_temp_lv1_01(  27)<='0';
          end if;
        if(A( 8)='1' AND B( 4)='1' AND D( 1)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  28)<='1';
          else
          PF_temp_lv1_01(  28)<='0';
          end if;
        if(A( 8)='1' AND B( 4)='1' AND D( 1)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  29)<='1';
          else
          PF_temp_lv1_01(  29)<='0';
          end if;
        if(A( 8)='1' AND B( 4)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  30)<='1';
          else
          PF_temp_lv1_01(  30)<='0';
          end if;
        if(A( 8)='1' AND B( 4)='1' AND D( 2)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  31)<='1';
          else
          PF_temp_lv1_01(  31)<='0';
          end if;
        if(A( 8)='1' AND B( 5)='1' AND D( 2)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  32)<='1';
          else
          PF_temp_lv1_01(  32)<='0';
          end if;
        if(A( 8)='1' AND B( 5)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  33)<='1';
          else
          PF_temp_lv1_01(  33)<='0';
          end if;
        if(A( 8)='1' AND B( 5)='1' AND D( 3)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  34)<='1';
          else
          PF_temp_lv1_01(  34)<='0';
          end if;
        if(A( 8)='1' AND B( 5)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  35)<='1';
          else
          PF_temp_lv1_01(  35)<='0';
          end if;
        if(A( 8)='1' AND B( 6)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  36)<='1';
          else
          PF_temp_lv1_01(  36)<='0';
          end if;
        if(A( 8)='1' AND B( 6)='1' AND D( 5)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  37)<='1';
          else
          PF_temp_lv1_01(  37)<='0';
          end if;
        if(A( 9)='1' AND B( 3)='1' AND D( 0)='1' AND E( 0)='1' )then
          PF_temp_lv1_01(  38)<='1';
          else
          PF_temp_lv1_01(  38)<='0';
          end if;
        if(A( 9)='1' AND B( 3)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  39)<='1';
          else
          PF_temp_lv1_01(  39)<='0';
          end if;
        if(A( 9)='1' AND B( 4)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  40)<='1';
          else
          PF_temp_lv1_01(  40)<='0';
          end if;
        if(A( 9)='1' AND B( 4)='1' AND D( 1)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  41)<='1';
          else
          PF_temp_lv1_01(  41)<='0';
          end if;
        if(A( 9)='1' AND B( 4)='1' AND D( 1)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  42)<='1';
          else
          PF_temp_lv1_01(  42)<='0';
          end if;
        if(A( 9)='1' AND B( 4)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  43)<='1';
          else
          PF_temp_lv1_01(  43)<='0';
          end if;
        if(A( 9)='1' AND B( 5)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  44)<='1';
          else
          PF_temp_lv1_01(  44)<='0';
          end if;
        if(A( 9)='1' AND B( 5)='1' AND D( 2)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  45)<='1';
          else
          PF_temp_lv1_01(  45)<='0';
          end if;
        if(A( 9)='1' AND B( 5)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  46)<='1';
          else
          PF_temp_lv1_01(  46)<='0';
          end if;
        if(A( 9)='1' AND B( 6)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  47)<='1';
          else
          PF_temp_lv1_01(  47)<='0';
          end if;
        if(A( 9)='1' AND B( 6)='1' AND D( 4)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  48)<='1';
          else
          PF_temp_lv1_01(  48)<='0';
          end if;
        if(A( 9)='1' AND B( 6)='1' AND D( 5)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  49)<='1';
          else
          PF_temp_lv1_01(  49)<='0';
          end if;
        if(A( 9)='1' AND B( 7)='1' AND D( 5)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  50)<='1';
          else
          PF_temp_lv1_01(  50)<='0';
          end if;
        if(A( 9)='1' AND B( 7)='1' AND D( 6)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  51)<='1';
          else
          PF_temp_lv1_01(  51)<='0';
          end if;
        if(A(10)='1' AND B( 4)='1' AND D( 0)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  52)<='1';
          else
          PF_temp_lv1_01(  52)<='0';
          end if;
        if(A(10)='1' AND B( 4)='1' AND D( 1)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  53)<='1';
          else
          PF_temp_lv1_01(  53)<='0';
          end if;
        if(A(10)='1' AND B( 5)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  54)<='1';
          else
          PF_temp_lv1_01(  54)<='0';
          end if;
        if(A(10)='1' AND B( 5)='1' AND D( 2)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  55)<='1';
          else
          PF_temp_lv1_01(  55)<='0';
          end if;
        if(A(10)='1' AND B( 5)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  56)<='1';
          else
          PF_temp_lv1_01(  56)<='0';
          end if;
        if(A(10)='1' AND B( 6)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  57)<='1';
          else
          PF_temp_lv1_01(  57)<='0';
          end if;
        if(A(10)='1' AND B( 6)='1' AND D( 3)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  58)<='1';
          else
          PF_temp_lv1_01(  58)<='0';
          end if;
        if(A(10)='1' AND B( 6)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  59)<='1';
          else
          PF_temp_lv1_01(  59)<='0';
          end if;
        if(A(10)='1' AND B( 6)='1' AND D( 5)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  60)<='1';
          else
          PF_temp_lv1_01(  60)<='0';
          end if;
        if(A(10)='1' AND B( 7)='1' AND D( 5)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  61)<='1';
          else
          PF_temp_lv1_01(  61)<='0';
          end if;
        if(A(10)='1' AND B( 7)='1' AND D( 6)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  62)<='1';
          else
          PF_temp_lv1_01(  62)<='0';
          end if;
        if(A(10)='1' AND B( 7)='1' AND D( 6)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  63)<='1';
          else
          PF_temp_lv1_01(  63)<='0';
          end if;
        if(A(10)='1' AND B( 8)='1' AND D( 6)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  64)<='1';
          else
          PF_temp_lv1_01(  64)<='0';
          end if;
        if(A(10)='1' AND B( 8)='1' AND D( 7)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  65)<='1';
          else
          PF_temp_lv1_01(  65)<='0';
          end if;
        if(A(10)='1' AND B( 8)='1' AND D( 7)='1' AND E( 7)='1' )then
          PF_temp_lv1_01(  66)<='1';
          else
          PF_temp_lv1_01(  66)<='0';
          end if;
        if(A(10)='1' AND B( 8)='1' AND D( 8)='1' AND E( 7)='1' )then
          PF_temp_lv1_01(  67)<='1';
          else
          PF_temp_lv1_01(  67)<='0';
          end if;
        if(A(10)='1' AND B( 9)='1' AND D( 8)='1' AND E( 8)='1' )then
          PF_temp_lv1_01(  68)<='1';
          else
          PF_temp_lv1_01(  68)<='0';
          end if;
        if(A(11)='1' AND B( 4)='1' AND D( 0)='1' AND E( 0)='1' )then
          PF_temp_lv1_01(  69)<='1';
          else
          PF_temp_lv1_01(  69)<='0';
          end if;
        if(A(11)='1' AND B( 4)='1' AND D( 1)='1' AND E( 1)='1' )then
          PF_temp_lv1_01(  70)<='1';
          else
          PF_temp_lv1_01(  70)<='0';
          end if;
        if(A(11)='1' AND B( 5)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  71)<='1';
          else
          PF_temp_lv1_01(  71)<='0';
          end if;
        if(A(11)='1' AND B( 5)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  72)<='1';
          else
          PF_temp_lv1_01(  72)<='0';
          end if;
        if(A(11)='1' AND B( 6)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  73)<='1';
          else
          PF_temp_lv1_01(  73)<='0';
          end if;
        if(A(11)='1' AND B( 6)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  74)<='1';
          else
          PF_temp_lv1_01(  74)<='0';
          end if;
        if(A(11)='1' AND B( 7)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  75)<='1';
          else
          PF_temp_lv1_01(  75)<='0';
          end if;
        if(A(11)='1' AND B( 7)='1' AND D( 5)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  76)<='1';
          else
          PF_temp_lv1_01(  76)<='0';
          end if;
        if(A(11)='1' AND B( 7)='1' AND D( 5)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  77)<='1';
          else
          PF_temp_lv1_01(  77)<='0';
          end if;
        if(A(11)='1' AND B( 7)='1' AND D( 6)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  78)<='1';
          else
          PF_temp_lv1_01(  78)<='0';
          end if;
        if(A(11)='1' AND B( 7)='1' AND D( 6)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  79)<='1';
          else
          PF_temp_lv1_01(  79)<='0';
          end if;
        if(A(11)='1' AND B( 8)='1' AND D( 6)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  80)<='1';
          else
          PF_temp_lv1_01(  80)<='0';
          end if;
        if(A(11)='1' AND B( 8)='1' AND D( 7)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  81)<='1';
          else
          PF_temp_lv1_01(  81)<='0';
          end if;
        if(A(11)='1' AND B( 8)='1' AND D( 7)='1' AND E( 7)='1' )then
          PF_temp_lv1_01(  82)<='1';
          else
          PF_temp_lv1_01(  82)<='0';
          end if;
        if(A(11)='1' AND B( 9)='1' AND D( 8)='1' AND E( 7)='1' )then
          PF_temp_lv1_01(  83)<='1';
          else
          PF_temp_lv1_01(  83)<='0';
          end if;
        if(A(11)='1' AND B( 9)='1' AND D( 9)='1' AND E( 8)='1' )then
          PF_temp_lv1_01(  84)<='1';
          else
          PF_temp_lv1_01(  84)<='0';
          end if;
        if(A(12)='1' AND B( 4)='1' AND D( 0)='1' AND E( 0)='1' )then
          PF_temp_lv1_01(  85)<='1';
          else
          PF_temp_lv1_01(  85)<='0';
          end if;
        if(A(12)='1' AND B( 5)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  86)<='1';
          else
          PF_temp_lv1_01(  86)<='0';
          end if;
        if(A(12)='1' AND B( 6)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  87)<='1';
          else
          PF_temp_lv1_01(  87)<='0';
          end if;
        if(A(12)='1' AND B( 7)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  88)<='1';
          else
          PF_temp_lv1_01(  88)<='0';
          end if;
        if(A(12)='1' AND B( 7)='1' AND D( 5)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  89)<='1';
          else
          PF_temp_lv1_01(  89)<='0';
          end if;
        if(A(12)='1' AND B( 8)='1' AND D( 6)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  90)<='1';
          else
          PF_temp_lv1_01(  90)<='0';
          end if;
        if(A(12)='1' AND B( 8)='1' AND D( 7)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  91)<='1';
          else
          PF_temp_lv1_01(  91)<='0';
          end if;
        if(A(12)='1' AND B( 9)='1' AND D( 8)='1' AND E( 7)='1' )then
          PF_temp_lv1_01(  92)<='1';
          else
          PF_temp_lv1_01(  92)<='0';
          end if;
        if(A(12)='1' AND B( 9)='1' AND D( 8)='1' AND E( 8)='1' )then
          PF_temp_lv1_01(  93)<='1';
          else
          PF_temp_lv1_01(  93)<='0';
          end if;
        if(A(12)='1' AND B(10)='1' AND D( 9)='1' AND E( 8)='1' )then
          PF_temp_lv1_01(  94)<='1';
          else
          PF_temp_lv1_01(  94)<='0';
          end if;
        if(A(13)='1' AND B( 6)='1' AND D( 2)='1' AND E( 2)='1' )then
          PF_temp_lv1_01(  95)<='1';
          else
          PF_temp_lv1_01(  95)<='0';
          end if;
        if(A(13)='1' AND B( 6)='1' AND D( 3)='1' AND E( 3)='1' )then
          PF_temp_lv1_01(  96)<='1';
          else
          PF_temp_lv1_01(  96)<='0';
          end if;
        if(A(13)='1' AND B( 7)='1' AND D( 4)='1' AND E( 4)='1' )then
          PF_temp_lv1_01(  97)<='1';
          else
          PF_temp_lv1_01(  97)<='0';
          end if;
        if(A(13)='1' AND B( 8)='1' AND D( 6)='1' AND E( 5)='1' )then
          PF_temp_lv1_01(  98)<='1';
          else
          PF_temp_lv1_01(  98)<='0';
          end if;
        if(A(13)='1' AND B( 9)='1' AND D( 7)='1' AND E( 6)='1' )then
          PF_temp_lv1_01(  99)<='1';
          else
          PF_temp_lv1_01(  99)<='0';
          end if;
        if(A(13)='1' AND B( 9)='1' AND D( 7)='1' AND E( 7)='1' )then
          PF_temp_lv1_01( 100)<='1';
          else
          PF_temp_lv1_01( 100)<='0';
          end if;
        if(A(13)='1' AND B( 9)='1' AND D( 8)='1' AND E( 7)='1' )then
          PF_temp_lv1_01( 101)<='1';
          else
          PF_temp_lv1_01( 101)<='0';
          end if;
        if(A(13)='1' AND B(10)='1' AND D( 9)='1' AND E( 8)='1' )then
          PF_temp_lv1_01( 102)<='1';
          else
          PF_temp_lv1_01( 102)<='0';
          end if;
		  PF_temp_lv1_00(   0)<='0';
		  PF_temp_lv1_02(   0)<='0';
		  PF_temp_lv1_03(   0)<='0';
		  PF_temp_lv1_04(   0)<='0';
		  PF_temp_lv1_05(   0)<='0';
		  PF_temp_lv1_06(   0)<='0';
		  PF_temp_lv1_07(   0)<='0';
		  PF_temp_lv1_08(   0)<='0';
		  PF_temp_lv1_09(   0)<='0';
		  PF_temp_lv1_10(   0)<='0';
		  PF_temp_lv1_11(   0)<='0';
        if(A( 1)='1' AND B( 5)='1' AND D( 6)='1' AND E( 7)='1' )then
          NF_temp_lv1_01(   0)<='1';
          else
          NF_temp_lv1_01(   0)<='0';
          end if;
        if(A( 1)='1' AND B( 6)='1' AND D( 7)='1' AND E( 8)='1' )then
          NF_temp_lv1_01(   1)<='1';
          else
          NF_temp_lv1_01(   1)<='0';
          end if;
        if(A( 1)='1' AND B( 6)='1' AND D( 8)='1' AND E( 8)='1' )then
          NF_temp_lv1_01(   2)<='1';
          else
          NF_temp_lv1_01(   2)<='0';
          end if;
        if(A( 1)='1' AND B( 6)='1' AND D( 8)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(   3)<='1';
          else
          NF_temp_lv1_01(   3)<='0';
          end if;
        if(A( 1)='1' AND B( 7)='1' AND D( 9)='1' AND E(10)='1' )then
          NF_temp_lv1_01(   4)<='1';
          else
          NF_temp_lv1_01(   4)<='0';
          end if;
        if(A( 1)='1' AND B( 8)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(   5)<='1';
          else
          NF_temp_lv1_01(   5)<='0';
          end if;
        if(A( 1)='1' AND B( 9)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(   6)<='1';
          else
          NF_temp_lv1_01(   6)<='0';
          end if;
        if(A( 1)='1' AND B( 9)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(   7)<='1';
          else
          NF_temp_lv1_01(   7)<='0';
          end if;
        if(A( 2)='1' AND B( 5)='1' AND D( 6)='1' AND E( 7)='1' )then
          NF_temp_lv1_01(   8)<='1';
          else
          NF_temp_lv1_01(   8)<='0';
          end if;
        if(A( 2)='1' AND B( 6)='1' AND D( 7)='1' AND E( 7)='1' )then
          NF_temp_lv1_01(   9)<='1';
          else
          NF_temp_lv1_01(   9)<='0';
          end if;
        if(A( 2)='1' AND B( 6)='1' AND D( 7)='1' AND E( 8)='1' )then
          NF_temp_lv1_01(  10)<='1';
          else
          NF_temp_lv1_01(  10)<='0';
          end if;
        if(A( 2)='1' AND B( 7)='1' AND D( 8)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(  11)<='1';
          else
          NF_temp_lv1_01(  11)<='0';
          end if;
        if(A( 2)='1' AND B( 7)='1' AND D( 9)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  12)<='1';
          else
          NF_temp_lv1_01(  12)<='0';
          end if;
        if(A( 2)='1' AND B( 8)='1' AND D(10)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  13)<='1';
          else
          NF_temp_lv1_01(  13)<='0';
          end if;
        if(A( 2)='1' AND B( 8)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  14)<='1';
          else
          NF_temp_lv1_01(  14)<='0';
          end if;
        if(A( 2)='1' AND B( 9)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  15)<='1';
          else
          NF_temp_lv1_01(  15)<='0';
          end if;
        if(A( 2)='1' AND B(10)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  16)<='1';
          else
          NF_temp_lv1_01(  16)<='0';
          end if;
        if(A( 2)='1' AND B(11)='1' AND D(15)='1' AND E(15)='1' )then
          NF_temp_lv1_01(  17)<='1';
          else
          NF_temp_lv1_01(  17)<='0';
          end if;
        if(A( 3)='1' AND B( 6)='1' AND D( 6)='1' AND E( 7)='1' )then
          NF_temp_lv1_01(  18)<='1';
          else
          NF_temp_lv1_01(  18)<='0';
          end if;
        if(A( 3)='1' AND B( 6)='1' AND D( 7)='1' AND E( 8)='1' )then
          NF_temp_lv1_01(  19)<='1';
          else
          NF_temp_lv1_01(  19)<='0';
          end if;
        if(A( 3)='1' AND B( 7)='1' AND D( 8)='1' AND E( 8)='1' )then
          NF_temp_lv1_01(  20)<='1';
          else
          NF_temp_lv1_01(  20)<='0';
          end if;
        if(A( 3)='1' AND B( 7)='1' AND D( 8)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(  21)<='1';
          else
          NF_temp_lv1_01(  21)<='0';
          end if;
        if(A( 3)='1' AND B( 7)='1' AND D( 9)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(  22)<='1';
          else
          NF_temp_lv1_01(  22)<='0';
          end if;
        if(A( 3)='1' AND B( 8)='1' AND D( 9)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(  23)<='1';
          else
          NF_temp_lv1_01(  23)<='0';
          end if;
        if(A( 3)='1' AND B( 8)='1' AND D( 9)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  24)<='1';
          else
          NF_temp_lv1_01(  24)<='0';
          end if;
        if(A( 3)='1' AND B( 8)='1' AND D(10)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  25)<='1';
          else
          NF_temp_lv1_01(  25)<='0';
          end if;
        if(A( 3)='1' AND B( 8)='1' AND D(10)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  26)<='1';
          else
          NF_temp_lv1_01(  26)<='0';
          end if;
        if(A( 3)='1' AND B( 8)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  27)<='1';
          else
          NF_temp_lv1_01(  27)<='0';
          end if;
        if(A( 3)='1' AND B( 9)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  28)<='1';
          else
          NF_temp_lv1_01(  28)<='0';
          end if;
        if(A( 3)='1' AND B( 9)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  29)<='1';
          else
          NF_temp_lv1_01(  29)<='0';
          end if;
        if(A( 3)='1' AND B(10)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  30)<='1';
          else
          NF_temp_lv1_01(  30)<='0';
          end if;
        if(A( 3)='1' AND B(10)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  31)<='1';
          else
          NF_temp_lv1_01(  31)<='0';
          end if;
        if(A( 3)='1' AND B(11)='1' AND D(14)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  32)<='1';
          else
          NF_temp_lv1_01(  32)<='0';
          end if;
        if(A( 3)='1' AND B(11)='1' AND D(15)='1' AND E(15)='1' )then
          NF_temp_lv1_01(  33)<='1';
          else
          NF_temp_lv1_01(  33)<='0';
          end if;
        if(A( 4)='1' AND B( 6)='1' AND D( 7)='1' AND E( 7)='1' )then
          NF_temp_lv1_01(  34)<='1';
          else
          NF_temp_lv1_01(  34)<='0';
          end if;
        if(A( 4)='1' AND B( 7)='1' AND D( 7)='1' AND E( 8)='1' )then
          NF_temp_lv1_01(  35)<='1';
          else
          NF_temp_lv1_01(  35)<='0';
          end if;
        if(A( 4)='1' AND B( 7)='1' AND D( 8)='1' AND E( 8)='1' )then
          NF_temp_lv1_01(  36)<='1';
          else
          NF_temp_lv1_01(  36)<='0';
          end if;
        if(A( 4)='1' AND B( 7)='1' AND D( 8)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(  37)<='1';
          else
          NF_temp_lv1_01(  37)<='0';
          end if;
        if(A( 4)='1' AND B( 7)='1' AND D( 9)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(  38)<='1';
          else
          NF_temp_lv1_01(  38)<='0';
          end if;
        if(A( 4)='1' AND B( 8)='1' AND D( 9)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(  39)<='1';
          else
          NF_temp_lv1_01(  39)<='0';
          end if;
        if(A( 4)='1' AND B( 8)='1' AND D( 9)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  40)<='1';
          else
          NF_temp_lv1_01(  40)<='0';
          end if;
        if(A( 4)='1' AND B( 8)='1' AND D(10)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  41)<='1';
          else
          NF_temp_lv1_01(  41)<='0';
          end if;
        if(A( 4)='1' AND B( 9)='1' AND D(10)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  42)<='1';
          else
          NF_temp_lv1_01(  42)<='0';
          end if;
        if(A( 4)='1' AND B( 9)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  43)<='1';
          else
          NF_temp_lv1_01(  43)<='0';
          end if;
        if(A( 4)='1' AND B( 9)='1' AND D(12)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  44)<='1';
          else
          NF_temp_lv1_01(  44)<='0';
          end if;
        if(A( 4)='1' AND B( 9)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  45)<='1';
          else
          NF_temp_lv1_01(  45)<='0';
          end if;
        if(A( 4)='1' AND B(10)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  46)<='1';
          else
          NF_temp_lv1_01(  46)<='0';
          end if;
        if(A( 4)='1' AND B(10)='1' AND D(13)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  47)<='1';
          else
          NF_temp_lv1_01(  47)<='0';
          end if;
        if(A( 4)='1' AND B(10)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  48)<='1';
          else
          NF_temp_lv1_01(  48)<='0';
          end if;
        if(A( 4)='1' AND B(11)='1' AND D(14)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  49)<='1';
          else
          NF_temp_lv1_01(  49)<='0';
          end if;
        if(A( 4)='1' AND B(11)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  50)<='1';
          else
          NF_temp_lv1_01(  50)<='0';
          end if;
        if(A( 5)='1' AND B( 8)='1' AND D( 9)='1' AND E( 9)='1' )then
          NF_temp_lv1_01(  51)<='1';
          else
          NF_temp_lv1_01(  51)<='0';
          end if;
        if(A( 5)='1' AND B( 8)='1' AND D(10)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  52)<='1';
          else
          NF_temp_lv1_01(  52)<='0';
          end if;
        if(A( 5)='1' AND B( 9)='1' AND D(10)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  53)<='1';
          else
          NF_temp_lv1_01(  53)<='0';
          end if;
        if(A( 5)='1' AND B( 9)='1' AND D(11)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  54)<='1';
          else
          NF_temp_lv1_01(  54)<='0';
          end if;
        if(A( 5)='1' AND B( 9)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  55)<='1';
          else
          NF_temp_lv1_01(  55)<='0';
          end if;
        if(A( 5)='1' AND B(10)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  56)<='1';
          else
          NF_temp_lv1_01(  56)<='0';
          end if;
        if(A( 5)='1' AND B(10)='1' AND D(13)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  57)<='1';
          else
          NF_temp_lv1_01(  57)<='0';
          end if;
        if(A( 5)='1' AND B(10)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  58)<='1';
          else
          NF_temp_lv1_01(  58)<='0';
          end if;
        if(A( 5)='1' AND B(11)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  59)<='1';
          else
          NF_temp_lv1_01(  59)<='0';
          end if;
        if(A( 5)='1' AND B(11)='1' AND D(14)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  60)<='1';
          else
          NF_temp_lv1_01(  60)<='0';
          end if;
        if(A( 5)='1' AND B(11)='1' AND D(14)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  61)<='1';
          else
          NF_temp_lv1_01(  61)<='0';
          end if;
        if(A( 5)='1' AND B(11)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  62)<='1';
          else
          NF_temp_lv1_01(  62)<='0';
          end if;
        if(A( 5)='1' AND B(12)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  63)<='1';
          else
          NF_temp_lv1_01(  63)<='0';
          end if;
        if(A( 5)='1' AND B(12)='1' AND D(15)='1' AND E(15)='1' )then
          NF_temp_lv1_01(  64)<='1';
          else
          NF_temp_lv1_01(  64)<='0';
          end if;
        if(A( 6)='1' AND B( 9)='1' AND D(10)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  65)<='1';
          else
          NF_temp_lv1_01(  65)<='0';
          end if;
        if(A( 6)='1' AND B( 9)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  66)<='1';
          else
          NF_temp_lv1_01(  66)<='0';
          end if;
        if(A( 6)='1' AND B(10)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  67)<='1';
          else
          NF_temp_lv1_01(  67)<='0';
          end if;
        if(A( 6)='1' AND B(10)='1' AND D(12)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  68)<='1';
          else
          NF_temp_lv1_01(  68)<='0';
          end if;
        if(A( 6)='1' AND B(10)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  69)<='1';
          else
          NF_temp_lv1_01(  69)<='0';
          end if;
        if(A( 6)='1' AND B(10)='1' AND D(13)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  70)<='1';
          else
          NF_temp_lv1_01(  70)<='0';
          end if;
        if(A( 6)='1' AND B(11)='1' AND D(13)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  71)<='1';
          else
          NF_temp_lv1_01(  71)<='0';
          end if;
        if(A( 6)='1' AND B(11)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  72)<='1';
          else
          NF_temp_lv1_01(  72)<='0';
          end if;
        if(A( 6)='1' AND B(11)='1' AND D(14)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  73)<='1';
          else
          NF_temp_lv1_01(  73)<='0';
          end if;
        if(A( 6)='1' AND B(11)='1' AND D(14)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  74)<='1';
          else
          NF_temp_lv1_01(  74)<='0';
          end if;
        if(A( 6)='1' AND B(12)='1' AND D(14)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  75)<='1';
          else
          NF_temp_lv1_01(  75)<='0';
          end if;
        if(A( 6)='1' AND B(12)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  76)<='1';
          else
          NF_temp_lv1_01(  76)<='0';
          end if;
        if(A( 6)='1' AND B(12)='1' AND D(15)='1' AND E(15)='1' )then
          NF_temp_lv1_01(  77)<='1';
          else
          NF_temp_lv1_01(  77)<='0';
          end if;
        if(A( 7)='1' AND B( 9)='1' AND D(10)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  78)<='1';
          else
          NF_temp_lv1_01(  78)<='0';
          end if;
        if(A( 7)='1' AND B( 9)='1' AND D(11)='1' AND E(10)='1' )then
          NF_temp_lv1_01(  79)<='1';
          else
          NF_temp_lv1_01(  79)<='0';
          end if;
        if(A( 7)='1' AND B(10)='1' AND D(11)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  80)<='1';
          else
          NF_temp_lv1_01(  80)<='0';
          end if;
        if(A( 7)='1' AND B(10)='1' AND D(12)='1' AND E(11)='1' )then
          NF_temp_lv1_01(  81)<='1';
          else
          NF_temp_lv1_01(  81)<='0';
          end if;
        if(A( 7)='1' AND B(10)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  82)<='1';
          else
          NF_temp_lv1_01(  82)<='0';
          end if;
        if(A( 7)='1' AND B(11)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  83)<='1';
          else
          NF_temp_lv1_01(  83)<='0';
          end if;
        if(A( 7)='1' AND B(11)='1' AND D(13)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  84)<='1';
          else
          NF_temp_lv1_01(  84)<='0';
          end if;
        if(A( 7)='1' AND B(11)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  85)<='1';
          else
          NF_temp_lv1_01(  85)<='0';
          end if;
        if(A( 7)='1' AND B(11)='1' AND D(14)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  86)<='1';
          else
          NF_temp_lv1_01(  86)<='0';
          end if;
        if(A( 7)='1' AND B(12)='1' AND D(14)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  87)<='1';
          else
          NF_temp_lv1_01(  87)<='0';
          end if;
        if(A( 7)='1' AND B(12)='1' AND D(14)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  88)<='1';
          else
          NF_temp_lv1_01(  88)<='0';
          end if;
        if(A( 7)='1' AND B(12)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  89)<='1';
          else
          NF_temp_lv1_01(  89)<='0';
          end if;
        if(A( 7)='1' AND B(13)='1' AND D(15)='1' AND E(15)='1' )then
          NF_temp_lv1_01(  90)<='1';
          else
          NF_temp_lv1_01(  90)<='0';
          end if;
        if(A( 8)='1' AND B(11)='1' AND D(12)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  91)<='1';
          else
          NF_temp_lv1_01(  91)<='0';
          end if;
        if(A( 8)='1' AND B(11)='1' AND D(13)='1' AND E(12)='1' )then
          NF_temp_lv1_01(  92)<='1';
          else
          NF_temp_lv1_01(  92)<='0';
          end if;
        if(A( 8)='1' AND B(11)='1' AND D(13)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  93)<='1';
          else
          NF_temp_lv1_01(  93)<='0';
          end if;
        if(A( 8)='1' AND B(12)='1' AND D(14)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  94)<='1';
          else
          NF_temp_lv1_01(  94)<='0';
          end if;
        if(A( 8)='1' AND B(12)='1' AND D(14)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  95)<='1';
          else
          NF_temp_lv1_01(  95)<='0';
          end if;
        if(A( 8)='1' AND B(12)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  96)<='1';
          else
          NF_temp_lv1_01(  96)<='0';
          end if;
        if(A( 8)='1' AND B(13)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  97)<='1';
          else
          NF_temp_lv1_01(  97)<='0';
          end if;
        if(A( 9)='1' AND B(12)='1' AND D(14)='1' AND E(13)='1' )then
          NF_temp_lv1_01(  98)<='1';
          else
          NF_temp_lv1_01(  98)<='0';
          end if;
        if(A( 9)='1' AND B(12)='1' AND D(14)='1' AND E(14)='1' )then
          NF_temp_lv1_01(  99)<='1';
          else
          NF_temp_lv1_01(  99)<='0';
          end if;
        if(A( 9)='1' AND B(12)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01( 100)<='1';
          else
          NF_temp_lv1_01( 100)<='0';
          end if;
        if(A( 9)='1' AND B(13)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01( 101)<='1';
          else
          NF_temp_lv1_01( 101)<='0';
          end if;
        if(A(10)='1' AND B(13)='1' AND D(15)='1' AND E(14)='1' )then
          NF_temp_lv1_01( 102)<='1';
          else
          NF_temp_lv1_01( 102)<='0';
          end if;
		  NF_temp_lv1_00(   0)<='0';
		  NF_temp_lv1_02(   0)<='0';
		  NF_temp_lv1_03(   0)<='0';
		  NF_temp_lv1_04(   0)<='0';
		  NF_temp_lv1_05(   0)<='0';
		  NF_temp_lv1_06(   0)<='0';
		  NF_temp_lv1_07(   0)<='0';
		  NF_temp_lv1_08(   0)<='0';
		  NF_temp_lv1_09(   0)<='0';
		  NF_temp_lv1_10(   0)<='0';
		  NF_temp_lv1_11(   0)<='0';
 end if;
end process;
lookuptable_LV2 : process(c1)
begin
 if c1'event and c1='1' then
      if(PF_temp_lv1_00(   0)='1' )then
		  PF_temp_lv2_00(   0)<='1';
		  else
		  PF_temp_lv2_00(   0)<='0';
		  end if;
      if(PF_temp_lv1_01(   0)='1' OR PF_temp_lv1_01(   1)='1' OR PF_temp_lv1_01(   2)='1' OR PF_temp_lv1_01(   3)='1' )then
		  PF_temp_lv2_01(   0)<='1';
		  else
		  PF_temp_lv2_01(   0)<='0';
		  end if;
      if(PF_temp_lv1_01(   4)='1' OR PF_temp_lv1_01(   5)='1' OR PF_temp_lv1_01(   6)='1' OR PF_temp_lv1_01(   7)='1' )then
		  PF_temp_lv2_01(   1)<='1';
		  else
		  PF_temp_lv2_01(   1)<='0';
		  end if;
      if(PF_temp_lv1_01(   8)='1' OR PF_temp_lv1_01(   9)='1' OR PF_temp_lv1_01(  10)='1' OR PF_temp_lv1_01(  11)='1' )then
		  PF_temp_lv2_01(   2)<='1';
		  else
		  PF_temp_lv2_01(   2)<='0';
		  end if;
      if(PF_temp_lv1_01(  12)='1' OR PF_temp_lv1_01(  13)='1' OR PF_temp_lv1_01(  14)='1' OR PF_temp_lv1_01(  15)='1' )then
		  PF_temp_lv2_01(   3)<='1';
		  else
		  PF_temp_lv2_01(   3)<='0';
		  end if;
      if(PF_temp_lv1_01(  16)='1' OR PF_temp_lv1_01(  17)='1' OR PF_temp_lv1_01(  18)='1' OR PF_temp_lv1_01(  19)='1' )then
		  PF_temp_lv2_01(   4)<='1';
		  else
		  PF_temp_lv2_01(   4)<='0';
		  end if;
      if(PF_temp_lv1_01(  20)='1' OR PF_temp_lv1_01(  21)='1' OR PF_temp_lv1_01(  22)='1' OR PF_temp_lv1_01(  23)='1' )then
		  PF_temp_lv2_01(   5)<='1';
		  else
		  PF_temp_lv2_01(   5)<='0';
		  end if;
      if(PF_temp_lv1_01(  24)='1' OR PF_temp_lv1_01(  25)='1' OR PF_temp_lv1_01(  26)='1' OR PF_temp_lv1_01(  27)='1' )then
		  PF_temp_lv2_01(   6)<='1';
		  else
		  PF_temp_lv2_01(   6)<='0';
		  end if;
      if(PF_temp_lv1_01(  28)='1' OR PF_temp_lv1_01(  29)='1' OR PF_temp_lv1_01(  30)='1' OR PF_temp_lv1_01(  31)='1' )then
		  PF_temp_lv2_01(   7)<='1';
		  else
		  PF_temp_lv2_01(   7)<='0';
		  end if;
      if(PF_temp_lv1_01(  32)='1' OR PF_temp_lv1_01(  33)='1' OR PF_temp_lv1_01(  34)='1' OR PF_temp_lv1_01(  35)='1' )then
		  PF_temp_lv2_01(   8)<='1';
		  else
		  PF_temp_lv2_01(   8)<='0';
		  end if;
      if(PF_temp_lv1_01(  36)='1' OR PF_temp_lv1_01(  37)='1' OR PF_temp_lv1_01(  38)='1' OR PF_temp_lv1_01(  39)='1' )then
		  PF_temp_lv2_01(   9)<='1';
		  else
		  PF_temp_lv2_01(   9)<='0';
		  end if;
      if(PF_temp_lv1_01(  40)='1' OR PF_temp_lv1_01(  41)='1' OR PF_temp_lv1_01(  42)='1' OR PF_temp_lv1_01(  43)='1' )then
		  PF_temp_lv2_01(  10)<='1';
		  else
		  PF_temp_lv2_01(  10)<='0';
		  end if;
      if(PF_temp_lv1_01(  44)='1' OR PF_temp_lv1_01(  45)='1' OR PF_temp_lv1_01(  46)='1' OR PF_temp_lv1_01(  47)='1' )then
		  PF_temp_lv2_01(  11)<='1';
		  else
		  PF_temp_lv2_01(  11)<='0';
		  end if;
      if(PF_temp_lv1_01(  48)='1' OR PF_temp_lv1_01(  49)='1' OR PF_temp_lv1_01(  50)='1' OR PF_temp_lv1_01(  51)='1' )then
		  PF_temp_lv2_01(  12)<='1';
		  else
		  PF_temp_lv2_01(  12)<='0';
		  end if;
      if(PF_temp_lv1_01(  52)='1' OR PF_temp_lv1_01(  53)='1' OR PF_temp_lv1_01(  54)='1' OR PF_temp_lv1_01(  55)='1' )then
		  PF_temp_lv2_01(  13)<='1';
		  else
		  PF_temp_lv2_01(  13)<='0';
		  end if;
      if(PF_temp_lv1_01(  56)='1' OR PF_temp_lv1_01(  57)='1' OR PF_temp_lv1_01(  58)='1' OR PF_temp_lv1_01(  59)='1' )then
		  PF_temp_lv2_01(  14)<='1';
		  else
		  PF_temp_lv2_01(  14)<='0';
		  end if;
      if(PF_temp_lv1_01(  60)='1' OR PF_temp_lv1_01(  61)='1' OR PF_temp_lv1_01(  62)='1' OR PF_temp_lv1_01(  63)='1' )then
		  PF_temp_lv2_01(  15)<='1';
		  else
		  PF_temp_lv2_01(  15)<='0';
		  end if;
      if(PF_temp_lv1_01(  64)='1' OR PF_temp_lv1_01(  65)='1' OR PF_temp_lv1_01(  66)='1' OR PF_temp_lv1_01(  67)='1' )then
		  PF_temp_lv2_01(  16)<='1';
		  else
		  PF_temp_lv2_01(  16)<='0';
		  end if;
      if(PF_temp_lv1_01(  68)='1' OR PF_temp_lv1_01(  69)='1' OR PF_temp_lv1_01(  70)='1' OR PF_temp_lv1_01(  71)='1' )then
		  PF_temp_lv2_01(  17)<='1';
		  else
		  PF_temp_lv2_01(  17)<='0';
		  end if;
      if(PF_temp_lv1_01(  72)='1' OR PF_temp_lv1_01(  73)='1' OR PF_temp_lv1_01(  74)='1' OR PF_temp_lv1_01(  75)='1' )then
		  PF_temp_lv2_01(  18)<='1';
		  else
		  PF_temp_lv2_01(  18)<='0';
		  end if;
      if(PF_temp_lv1_01(  76)='1' OR PF_temp_lv1_01(  77)='1' OR PF_temp_lv1_01(  78)='1' OR PF_temp_lv1_01(  79)='1' )then
		  PF_temp_lv2_01(  19)<='1';
		  else
		  PF_temp_lv2_01(  19)<='0';
		  end if;
      if(PF_temp_lv1_01(  80)='1' OR PF_temp_lv1_01(  81)='1' OR PF_temp_lv1_01(  82)='1' OR PF_temp_lv1_01(  83)='1' )then
		  PF_temp_lv2_01(  20)<='1';
		  else
		  PF_temp_lv2_01(  20)<='0';
		  end if;
      if(PF_temp_lv1_01(  84)='1' OR PF_temp_lv1_01(  85)='1' OR PF_temp_lv1_01(  86)='1' OR PF_temp_lv1_01(  87)='1' )then
		  PF_temp_lv2_01(  21)<='1';
		  else
		  PF_temp_lv2_01(  21)<='0';
		  end if;
      if(PF_temp_lv1_01(  88)='1' OR PF_temp_lv1_01(  89)='1' OR PF_temp_lv1_01(  90)='1' OR PF_temp_lv1_01(  91)='1' )then
		  PF_temp_lv2_01(  22)<='1';
		  else
		  PF_temp_lv2_01(  22)<='0';
		  end if;
      if(PF_temp_lv1_01(  92)='1' OR PF_temp_lv1_01(  93)='1' OR PF_temp_lv1_01(  94)='1' OR PF_temp_lv1_01(  95)='1' )then
		  PF_temp_lv2_01(  23)<='1';
		  else
		  PF_temp_lv2_01(  23)<='0';
		  end if;
      if(PF_temp_lv1_01(  96)='1' OR PF_temp_lv1_01(  97)='1' OR PF_temp_lv1_01(  98)='1' OR PF_temp_lv1_01(  99)='1' )then
		  PF_temp_lv2_01(  24)<='1';
		  else
		  PF_temp_lv2_01(  24)<='0';
		  end if;
      if(PF_temp_lv1_01( 100)='1' OR PF_temp_lv1_01( 101)='1' OR PF_temp_lv1_01( 102)='1' )then
		  PF_temp_lv2_01(  25)<='1';
		  else
		  PF_temp_lv2_01(  25)<='0';
		  end if;
      if(PF_temp_lv1_02(   0)='1' )then
		  PF_temp_lv2_02(   0)<='1';
		  else
		  PF_temp_lv2_02(   0)<='0';
		  end if;
      if(PF_temp_lv1_03(   0)='1' )then
		  PF_temp_lv2_03(   0)<='1';
		  else
		  PF_temp_lv2_03(   0)<='0';
		  end if;
      if(PF_temp_lv1_04(   0)='1' )then
		  PF_temp_lv2_04(   0)<='1';
		  else
		  PF_temp_lv2_04(   0)<='0';
		  end if;
      if(PF_temp_lv1_05(   0)='1' )then
		  PF_temp_lv2_05(   0)<='1';
		  else
		  PF_temp_lv2_05(   0)<='0';
		  end if;
      if(PF_temp_lv1_06(   0)='1' )then
		  PF_temp_lv2_06(   0)<='1';
		  else
		  PF_temp_lv2_06(   0)<='0';
		  end if;
      if(PF_temp_lv1_07(   0)='1' )then
		  PF_temp_lv2_07(   0)<='1';
		  else
		  PF_temp_lv2_07(   0)<='0';
		  end if;
      if(PF_temp_lv1_08(   0)='1' )then
		  PF_temp_lv2_08(   0)<='1';
		  else
		  PF_temp_lv2_08(   0)<='0';
		  end if;
      if(PF_temp_lv1_09(   0)='1' )then
		  PF_temp_lv2_09(   0)<='1';
		  else
		  PF_temp_lv2_09(   0)<='0';
		  end if;
      if(PF_temp_lv1_10(   0)='1' )then
		  PF_temp_lv2_10(   0)<='1';
		  else
		  PF_temp_lv2_10(   0)<='0';
		  end if;
      if(PF_temp_lv1_11(   0)='1' )then
		  PF_temp_lv2_11(   0)<='1';
		  else
		  PF_temp_lv2_11(   0)<='0';
		  end if;
      if(NF_temp_lv1_00(   0)='1' )then
		  NF_temp_lv2_00(   0)<='1';
		  else
		  NF_temp_lv2_00(   0)<='0';
		  end if;
      if(NF_temp_lv1_01(   0)='1' OR NF_temp_lv1_01(   1)='1' OR NF_temp_lv1_01(   2)='1' OR NF_temp_lv1_01(   3)='1' )then
		  NF_temp_lv2_01(   0)<='1';
		  else
		  NF_temp_lv2_01(   0)<='0';
		  end if;
      if(NF_temp_lv1_01(   4)='1' OR NF_temp_lv1_01(   5)='1' OR NF_temp_lv1_01(   6)='1' OR NF_temp_lv1_01(   7)='1' )then
		  NF_temp_lv2_01(   1)<='1';
		  else
		  NF_temp_lv2_01(   1)<='0';
		  end if;
      if(NF_temp_lv1_01(   8)='1' OR NF_temp_lv1_01(   9)='1' OR NF_temp_lv1_01(  10)='1' OR NF_temp_lv1_01(  11)='1' )then
		  NF_temp_lv2_01(   2)<='1';
		  else
		  NF_temp_lv2_01(   2)<='0';
		  end if;
      if(NF_temp_lv1_01(  12)='1' OR NF_temp_lv1_01(  13)='1' OR NF_temp_lv1_01(  14)='1' OR NF_temp_lv1_01(  15)='1' )then
		  NF_temp_lv2_01(   3)<='1';
		  else
		  NF_temp_lv2_01(   3)<='0';
		  end if;
      if(NF_temp_lv1_01(  16)='1' OR NF_temp_lv1_01(  17)='1' OR NF_temp_lv1_01(  18)='1' OR NF_temp_lv1_01(  19)='1' )then
		  NF_temp_lv2_01(   4)<='1';
		  else
		  NF_temp_lv2_01(   4)<='0';
		  end if;
      if(NF_temp_lv1_01(  20)='1' OR NF_temp_lv1_01(  21)='1' OR NF_temp_lv1_01(  22)='1' OR NF_temp_lv1_01(  23)='1' )then
		  NF_temp_lv2_01(   5)<='1';
		  else
		  NF_temp_lv2_01(   5)<='0';
		  end if;
      if(NF_temp_lv1_01(  24)='1' OR NF_temp_lv1_01(  25)='1' OR NF_temp_lv1_01(  26)='1' OR NF_temp_lv1_01(  27)='1' )then
		  NF_temp_lv2_01(   6)<='1';
		  else
		  NF_temp_lv2_01(   6)<='0';
		  end if;
      if(NF_temp_lv1_01(  28)='1' OR NF_temp_lv1_01(  29)='1' OR NF_temp_lv1_01(  30)='1' OR NF_temp_lv1_01(  31)='1' )then
		  NF_temp_lv2_01(   7)<='1';
		  else
		  NF_temp_lv2_01(   7)<='0';
		  end if;
      if(NF_temp_lv1_01(  32)='1' OR NF_temp_lv1_01(  33)='1' OR NF_temp_lv1_01(  34)='1' OR NF_temp_lv1_01(  35)='1' )then
		  NF_temp_lv2_01(   8)<='1';
		  else
		  NF_temp_lv2_01(   8)<='0';
		  end if;
      if(NF_temp_lv1_01(  36)='1' OR NF_temp_lv1_01(  37)='1' OR NF_temp_lv1_01(  38)='1' OR NF_temp_lv1_01(  39)='1' )then
		  NF_temp_lv2_01(   9)<='1';
		  else
		  NF_temp_lv2_01(   9)<='0';
		  end if;
      if(NF_temp_lv1_01(  40)='1' OR NF_temp_lv1_01(  41)='1' OR NF_temp_lv1_01(  42)='1' OR NF_temp_lv1_01(  43)='1' )then
		  NF_temp_lv2_01(  10)<='1';
		  else
		  NF_temp_lv2_01(  10)<='0';
		  end if;
      if(NF_temp_lv1_01(  44)='1' OR NF_temp_lv1_01(  45)='1' OR NF_temp_lv1_01(  46)='1' OR NF_temp_lv1_01(  47)='1' )then
		  NF_temp_lv2_01(  11)<='1';
		  else
		  NF_temp_lv2_01(  11)<='0';
		  end if;
      if(NF_temp_lv1_01(  48)='1' OR NF_temp_lv1_01(  49)='1' OR NF_temp_lv1_01(  50)='1' OR NF_temp_lv1_01(  51)='1' )then
		  NF_temp_lv2_01(  12)<='1';
		  else
		  NF_temp_lv2_01(  12)<='0';
		  end if;
      if(NF_temp_lv1_01(  52)='1' OR NF_temp_lv1_01(  53)='1' OR NF_temp_lv1_01(  54)='1' OR NF_temp_lv1_01(  55)='1' )then
		  NF_temp_lv2_01(  13)<='1';
		  else
		  NF_temp_lv2_01(  13)<='0';
		  end if;
      if(NF_temp_lv1_01(  56)='1' OR NF_temp_lv1_01(  57)='1' OR NF_temp_lv1_01(  58)='1' OR NF_temp_lv1_01(  59)='1' )then
		  NF_temp_lv2_01(  14)<='1';
		  else
		  NF_temp_lv2_01(  14)<='0';
		  end if;
      if(NF_temp_lv1_01(  60)='1' OR NF_temp_lv1_01(  61)='1' OR NF_temp_lv1_01(  62)='1' OR NF_temp_lv1_01(  63)='1' )then
		  NF_temp_lv2_01(  15)<='1';
		  else
		  NF_temp_lv2_01(  15)<='0';
		  end if;
      if(NF_temp_lv1_01(  64)='1' OR NF_temp_lv1_01(  65)='1' OR NF_temp_lv1_01(  66)='1' OR NF_temp_lv1_01(  67)='1' )then
		  NF_temp_lv2_01(  16)<='1';
		  else
		  NF_temp_lv2_01(  16)<='0';
		  end if;
      if(NF_temp_lv1_01(  68)='1' OR NF_temp_lv1_01(  69)='1' OR NF_temp_lv1_01(  70)='1' OR NF_temp_lv1_01(  71)='1' )then
		  NF_temp_lv2_01(  17)<='1';
		  else
		  NF_temp_lv2_01(  17)<='0';
		  end if;
      if(NF_temp_lv1_01(  72)='1' OR NF_temp_lv1_01(  73)='1' OR NF_temp_lv1_01(  74)='1' OR NF_temp_lv1_01(  75)='1' )then
		  NF_temp_lv2_01(  18)<='1';
		  else
		  NF_temp_lv2_01(  18)<='0';
		  end if;
      if(NF_temp_lv1_01(  76)='1' OR NF_temp_lv1_01(  77)='1' OR NF_temp_lv1_01(  78)='1' OR NF_temp_lv1_01(  79)='1' )then
		  NF_temp_lv2_01(  19)<='1';
		  else
		  NF_temp_lv2_01(  19)<='0';
		  end if;
      if(NF_temp_lv1_01(  80)='1' OR NF_temp_lv1_01(  81)='1' OR NF_temp_lv1_01(  82)='1' OR NF_temp_lv1_01(  83)='1' )then
		  NF_temp_lv2_01(  20)<='1';
		  else
		  NF_temp_lv2_01(  20)<='0';
		  end if;
      if(NF_temp_lv1_01(  84)='1' OR NF_temp_lv1_01(  85)='1' OR NF_temp_lv1_01(  86)='1' OR NF_temp_lv1_01(  87)='1' )then
		  NF_temp_lv2_01(  21)<='1';
		  else
		  NF_temp_lv2_01(  21)<='0';
		  end if;
      if(NF_temp_lv1_01(  88)='1' OR NF_temp_lv1_01(  89)='1' OR NF_temp_lv1_01(  90)='1' OR NF_temp_lv1_01(  91)='1' )then
		  NF_temp_lv2_01(  22)<='1';
		  else
		  NF_temp_lv2_01(  22)<='0';
		  end if;
      if(NF_temp_lv1_01(  92)='1' OR NF_temp_lv1_01(  93)='1' OR NF_temp_lv1_01(  94)='1' OR NF_temp_lv1_01(  95)='1' )then
		  NF_temp_lv2_01(  23)<='1';
		  else
		  NF_temp_lv2_01(  23)<='0';
		  end if;
      if(NF_temp_lv1_01(  96)='1' OR NF_temp_lv1_01(  97)='1' OR NF_temp_lv1_01(  98)='1' OR NF_temp_lv1_01(  99)='1' )then
		  NF_temp_lv2_01(  24)<='1';
		  else
		  NF_temp_lv2_01(  24)<='0';
		  end if;
      if(NF_temp_lv1_01( 100)='1' OR NF_temp_lv1_01( 101)='1' OR NF_temp_lv1_01( 102)='1' )then
		  NF_temp_lv2_01(  25)<='1';
		  else
		  NF_temp_lv2_01(  25)<='0';
		  end if;
      if(NF_temp_lv1_02(   0)='1' )then
		  NF_temp_lv2_02(   0)<='1';
		  else
		  NF_temp_lv2_02(   0)<='0';
		  end if;
      if(NF_temp_lv1_03(   0)='1' )then
		  NF_temp_lv2_03(   0)<='1';
		  else
		  NF_temp_lv2_03(   0)<='0';
		  end if;
      if(NF_temp_lv1_04(   0)='1' )then
		  NF_temp_lv2_04(   0)<='1';
		  else
		  NF_temp_lv2_04(   0)<='0';
		  end if;
      if(NF_temp_lv1_05(   0)='1' )then
		  NF_temp_lv2_05(   0)<='1';
		  else
		  NF_temp_lv2_05(   0)<='0';
		  end if;
      if(NF_temp_lv1_06(   0)='1' )then
		  NF_temp_lv2_06(   0)<='1';
		  else
		  NF_temp_lv2_06(   0)<='0';
		  end if;
      if(NF_temp_lv1_07(   0)='1' )then
		  NF_temp_lv2_07(   0)<='1';
		  else
		  NF_temp_lv2_07(   0)<='0';
		  end if;
      if(NF_temp_lv1_08(   0)='1' )then
		  NF_temp_lv2_08(   0)<='1';
		  else
		  NF_temp_lv2_08(   0)<='0';
		  end if;
      if(NF_temp_lv1_09(   0)='1' )then
		  NF_temp_lv2_09(   0)<='1';
		  else
		  NF_temp_lv2_09(   0)<='0';
		  end if;
      if(NF_temp_lv1_10(   0)='1' )then
		  NF_temp_lv2_10(   0)<='1';
		  else
		  NF_temp_lv2_10(   0)<='0';
		  end if;
      if(NF_temp_lv1_11(   0)='1' )then
		  NF_temp_lv2_11(   0)<='1';
		  else
		  NF_temp_lv2_11(   0)<='0';
		  end if;
 end if;
end process;
lookuptable_LV3 : process(c1)
begin
 if c1'event and c1='1' then
      if(PF_temp_lv2_00(   0)='1' )then
		  PF_temp_lv3_00(   0)<='1';
		  else
		  PF_temp_lv3_00(   0)<='0';
		  end if;
      if(PF_temp_lv2_01(   0)='1' OR PF_temp_lv2_01(   1)='1' OR PF_temp_lv2_01(   2)='1' OR PF_temp_lv2_01(   3)='1' )then
		  PF_temp_lv3_01(   0)<='1';
		  else
		  PF_temp_lv3_01(   0)<='0';
		  end if;
      if(PF_temp_lv2_01(   4)='1' OR PF_temp_lv2_01(   5)='1' OR PF_temp_lv2_01(   6)='1' OR PF_temp_lv2_01(   7)='1' )then
		  PF_temp_lv3_01(   1)<='1';
		  else
		  PF_temp_lv3_01(   1)<='0';
		  end if;
      if(PF_temp_lv2_01(   8)='1' OR PF_temp_lv2_01(   9)='1' OR PF_temp_lv2_01(  10)='1' OR PF_temp_lv2_01(  11)='1' )then
		  PF_temp_lv3_01(   2)<='1';
		  else
		  PF_temp_lv3_01(   2)<='0';
		  end if;
      if(PF_temp_lv2_01(  12)='1' OR PF_temp_lv2_01(  13)='1' OR PF_temp_lv2_01(  14)='1' OR PF_temp_lv2_01(  15)='1' )then
		  PF_temp_lv3_01(   3)<='1';
		  else
		  PF_temp_lv3_01(   3)<='0';
		  end if;
      if(PF_temp_lv2_01(  16)='1' OR PF_temp_lv2_01(  17)='1' OR PF_temp_lv2_01(  18)='1' OR PF_temp_lv2_01(  19)='1' )then
		  PF_temp_lv3_01(   4)<='1';
		  else
		  PF_temp_lv3_01(   4)<='0';
		  end if;
      if(PF_temp_lv2_01(  20)='1' OR PF_temp_lv2_01(  21)='1' OR PF_temp_lv2_01(  22)='1' OR PF_temp_lv2_01(  23)='1' )then
		  PF_temp_lv3_01(   5)<='1';
		  else
		  PF_temp_lv3_01(   5)<='0';
		  end if;
      if(PF_temp_lv2_01(  24)='1' OR PF_temp_lv2_01(  25)='1' )then
		  PF_temp_lv3_01(   6)<='1';
		  else
		  PF_temp_lv3_01(   6)<='0';
		  end if;
      if(PF_temp_lv2_02(   0)='1' )then
		  PF_temp_lv3_02(   0)<='1';
		  else
		  PF_temp_lv3_02(   0)<='0';
		  end if;
      if(PF_temp_lv2_03(   0)='1' )then
		  PF_temp_lv3_03(   0)<='1';
		  else
		  PF_temp_lv3_03(   0)<='0';
		  end if;
      if(PF_temp_lv2_04(   0)='1' )then
		  PF_temp_lv3_04(   0)<='1';
		  else
		  PF_temp_lv3_04(   0)<='0';
		  end if;
      if(PF_temp_lv2_05(   0)='1' )then
		  PF_temp_lv3_05(   0)<='1';
		  else
		  PF_temp_lv3_05(   0)<='0';
		  end if;
      if(PF_temp_lv2_06(   0)='1' )then
		  PF_temp_lv3_06(   0)<='1';
		  else
		  PF_temp_lv3_06(   0)<='0';
		  end if;
      if(PF_temp_lv2_07(   0)='1' )then
		  PF_temp_lv3_07(   0)<='1';
		  else
		  PF_temp_lv3_07(   0)<='0';
		  end if;
      if(PF_temp_lv2_08(   0)='1' )then
		  PF_temp_lv3_08(   0)<='1';
		  else
		  PF_temp_lv3_08(   0)<='0';
		  end if;
      if(PF_temp_lv2_09(   0)='1' )then
		  PF_temp_lv3_09(   0)<='1';
		  else
		  PF_temp_lv3_09(   0)<='0';
		  end if;
      if(PF_temp_lv2_10(   0)='1' )then
		  PF_temp_lv3_10(   0)<='1';
		  else
		  PF_temp_lv3_10(   0)<='0';
		  end if;
      if(PF_temp_lv2_11(   0)='1' )then
		  PF_temp_lv3_11(   0)<='1';
		  else
		  PF_temp_lv3_11(   0)<='0';
		  end if;
      if(NF_temp_lv2_00(   0)='1' )then
		  NF_temp_lv3_00(   0)<='1';
		  else
		  NF_temp_lv3_00(   0)<='0';
		  end if;
      if(NF_temp_lv2_01(   0)='1' OR NF_temp_lv2_01(   1)='1' OR NF_temp_lv2_01(   2)='1' OR NF_temp_lv2_01(   3)='1' )then
		  NF_temp_lv3_01(   0)<='1';
		  else
		  NF_temp_lv3_01(   0)<='0';
		  end if;
      if(NF_temp_lv2_01(   4)='1' OR NF_temp_lv2_01(   5)='1' OR NF_temp_lv2_01(   6)='1' OR NF_temp_lv2_01(   7)='1' )then
		  NF_temp_lv3_01(   1)<='1';
		  else
		  NF_temp_lv3_01(   1)<='0';
		  end if;
      if(NF_temp_lv2_01(   8)='1' OR NF_temp_lv2_01(   9)='1' OR NF_temp_lv2_01(  10)='1' OR NF_temp_lv2_01(  11)='1' )then
		  NF_temp_lv3_01(   2)<='1';
		  else
		  NF_temp_lv3_01(   2)<='0';
		  end if;
      if(NF_temp_lv2_01(  12)='1' OR NF_temp_lv2_01(  13)='1' OR NF_temp_lv2_01(  14)='1' OR NF_temp_lv2_01(  15)='1' )then
		  NF_temp_lv3_01(   3)<='1';
		  else
		  NF_temp_lv3_01(   3)<='0';
		  end if;
      if(NF_temp_lv2_01(  16)='1' OR NF_temp_lv2_01(  17)='1' OR NF_temp_lv2_01(  18)='1' OR NF_temp_lv2_01(  19)='1' )then
		  NF_temp_lv3_01(   4)<='1';
		  else
		  NF_temp_lv3_01(   4)<='0';
		  end if;
      if(NF_temp_lv2_01(  20)='1' OR NF_temp_lv2_01(  21)='1' OR NF_temp_lv2_01(  22)='1' OR NF_temp_lv2_01(  23)='1' )then
		  NF_temp_lv3_01(   5)<='1';
		  else
		  NF_temp_lv3_01(   5)<='0';
		  end if;
      if(NF_temp_lv2_01(  24)='1' OR NF_temp_lv2_01(  25)='1' )then
		  NF_temp_lv3_01(   6)<='1';
		  else
		  NF_temp_lv3_01(   6)<='0';
		  end if;
      if(NF_temp_lv2_02(   0)='1' )then
		  NF_temp_lv3_02(   0)<='1';
		  else
		  NF_temp_lv3_02(   0)<='0';
		  end if;
      if(NF_temp_lv2_03(   0)='1' )then
		  NF_temp_lv3_03(   0)<='1';
		  else
		  NF_temp_lv3_03(   0)<='0';
		  end if;
      if(NF_temp_lv2_04(   0)='1' )then
		  NF_temp_lv3_04(   0)<='1';
		  else
		  NF_temp_lv3_04(   0)<='0';
		  end if;
      if(NF_temp_lv2_05(   0)='1' )then
		  NF_temp_lv3_05(   0)<='1';
		  else
		  NF_temp_lv3_05(   0)<='0';
		  end if;
      if(NF_temp_lv2_06(   0)='1' )then
		  NF_temp_lv3_06(   0)<='1';
		  else
		  NF_temp_lv3_06(   0)<='0';
		  end if;
      if(NF_temp_lv2_07(   0)='1' )then
		  NF_temp_lv3_07(   0)<='1';
		  else
		  NF_temp_lv3_07(   0)<='0';
		  end if;
      if(NF_temp_lv2_08(   0)='1' )then
		  NF_temp_lv3_08(   0)<='1';
		  else
		  NF_temp_lv3_08(   0)<='0';
		  end if;
      if(NF_temp_lv2_09(   0)='1' )then
		  NF_temp_lv3_09(   0)<='1';
		  else
		  NF_temp_lv3_09(   0)<='0';
		  end if;
      if(NF_temp_lv2_10(   0)='1' )then
		  NF_temp_lv3_10(   0)<='1';
		  else
		  NF_temp_lv3_10(   0)<='0';
		  end if;
      if(NF_temp_lv2_11(   0)='1' )then
		  NF_temp_lv3_11(   0)<='1';
		  else
		  NF_temp_lv3_11(   0)<='0';
		  end if;
 end if;
end process;
lookuptable_LV4 : process(c1)
begin
 if c1'event and c1='1' then
      if(PF_temp_lv3_00(   0)='1' )then
		  PF_temp_lv4_00(   0)<='1';
		  else
		  PF_temp_lv4_00(   0)<='0';
		  end if;
      if(PF_temp_lv3_01(   0)='1' OR PF_temp_lv3_01(   1)='1' OR PF_temp_lv3_01(   2)='1' OR PF_temp_lv3_01(   3)='1' )then
		  PF_temp_lv4_01(   0)<='1';
		  else
		  PF_temp_lv4_01(   0)<='0';
		  end if;
      if(PF_temp_lv3_01(   4)='1' OR PF_temp_lv3_01(   5)='1' OR PF_temp_lv3_01(   6)='1' )then
		  PF_temp_lv4_01(   1)<='1';
		  else
		  PF_temp_lv4_01(   1)<='0';
		  end if;
      if(PF_temp_lv3_02(   0)='1' )then
		  PF_temp_lv4_02(   0)<='1';
		  else
		  PF_temp_lv4_02(   0)<='0';
		  end if;
      if(PF_temp_lv3_03(   0)='1' )then
		  PF_temp_lv4_03(   0)<='1';
		  else
		  PF_temp_lv4_03(   0)<='0';
		  end if;
      if(PF_temp_lv3_04(   0)='1' )then
		  PF_temp_lv4_04(   0)<='1';
		  else
		  PF_temp_lv4_04(   0)<='0';
		  end if;
      if(PF_temp_lv3_05(   0)='1' )then
		  PF_temp_lv4_05(   0)<='1';
		  else
		  PF_temp_lv4_05(   0)<='0';
		  end if;
      if(PF_temp_lv3_06(   0)='1' )then
		  PF_temp_lv4_06(   0)<='1';
		  else
		  PF_temp_lv4_06(   0)<='0';
		  end if;
      if(PF_temp_lv3_07(   0)='1' )then
		  PF_temp_lv4_07(   0)<='1';
		  else
		  PF_temp_lv4_07(   0)<='0';
		  end if;
      if(PF_temp_lv3_08(   0)='1' )then
		  PF_temp_lv4_08(   0)<='1';
		  else
		  PF_temp_lv4_08(   0)<='0';
		  end if;
      if(PF_temp_lv3_09(   0)='1' )then
		  PF_temp_lv4_09(   0)<='1';
		  else
		  PF_temp_lv4_09(   0)<='0';
		  end if;
      if(PF_temp_lv3_10(   0)='1' )then
		  PF_temp_lv4_10(   0)<='1';
		  else
		  PF_temp_lv4_10(   0)<='0';
		  end if;
      if(PF_temp_lv3_11(   0)='1' )then
		  PF_temp_lv4_11(   0)<='1';
		  else
		  PF_temp_lv4_11(   0)<='0';
		  end if;
      if(NF_temp_lv3_00(   0)='1' )then
		  NF_temp_lv4_00(   0)<='1';
		  else
		  NF_temp_lv4_00(   0)<='0';
		  end if;
      if(NF_temp_lv3_01(   0)='1' OR NF_temp_lv3_01(   1)='1' OR NF_temp_lv3_01(   2)='1' OR NF_temp_lv3_01(   3)='1' )then
		  NF_temp_lv4_01(   0)<='1';
		  else
		  NF_temp_lv4_01(   0)<='0';
		  end if;
      if(NF_temp_lv3_01(   4)='1' OR NF_temp_lv3_01(   5)='1' OR NF_temp_lv3_01(   6)='1' )then
		  NF_temp_lv4_01(   1)<='1';
		  else
		  NF_temp_lv4_01(   1)<='0';
		  end if;
      if(NF_temp_lv3_02(   0)='1' )then
		  NF_temp_lv4_02(   0)<='1';
		  else
		  NF_temp_lv4_02(   0)<='0';
		  end if;
      if(NF_temp_lv3_03(   0)='1' )then
		  NF_temp_lv4_03(   0)<='1';
		  else
		  NF_temp_lv4_03(   0)<='0';
		  end if;
      if(NF_temp_lv3_04(   0)='1' )then
		  NF_temp_lv4_04(   0)<='1';
		  else
		  NF_temp_lv4_04(   0)<='0';
		  end if;
      if(NF_temp_lv3_05(   0)='1' )then
		  NF_temp_lv4_05(   0)<='1';
		  else
		  NF_temp_lv4_05(   0)<='0';
		  end if;
      if(NF_temp_lv3_06(   0)='1' )then
		  NF_temp_lv4_06(   0)<='1';
		  else
		  NF_temp_lv4_06(   0)<='0';
		  end if;
      if(NF_temp_lv3_07(   0)='1' )then
		  NF_temp_lv4_07(   0)<='1';
		  else
		  NF_temp_lv4_07(   0)<='0';
		  end if;
      if(NF_temp_lv3_08(   0)='1' )then
		  NF_temp_lv4_08(   0)<='1';
		  else
		  NF_temp_lv4_08(   0)<='0';
		  end if;
      if(NF_temp_lv3_09(   0)='1' )then
		  NF_temp_lv4_09(   0)<='1';
		  else
		  NF_temp_lv4_09(   0)<='0';
		  end if;
      if(NF_temp_lv3_10(   0)='1' )then
		  NF_temp_lv4_10(   0)<='1';
		  else
		  NF_temp_lv4_10(   0)<='0';
		  end if;
      if(NF_temp_lv3_11(   0)='1' )then
		  NF_temp_lv4_11(   0)<='1';
		  else
		  NF_temp_lv4_11(   0)<='0';
		  end if;
 end if;
end process;
lookuptable_LV5 : process(c1)
begin
 if c1'event and c1='1' then
      if(PF_temp_lv4_00(   0)='1' )then
		  PF_temp_lv5_00(   0)<='1';
		  else
		  PF_temp_lv5_00(   0)<='0';
		  end if;
      if(PF_temp_lv4_01(   0)='1' OR PF_temp_lv4_01(   1)='1' )then
		  PF_temp_lv5_01(   0)<='1';
		  else
		  PF_temp_lv5_01(   0)<='0';
		  end if;
      if(PF_temp_lv4_02(   0)='1' )then
		  PF_temp_lv5_02(   0)<='1';
		  else
		  PF_temp_lv5_02(   0)<='0';
		  end if;
      if(PF_temp_lv4_03(   0)='1' )then
		  PF_temp_lv5_03(   0)<='1';
		  else
		  PF_temp_lv5_03(   0)<='0';
		  end if;
      if(PF_temp_lv4_04(   0)='1' )then
		  PF_temp_lv5_04(   0)<='1';
		  else
		  PF_temp_lv5_04(   0)<='0';
		  end if;
      if(PF_temp_lv4_05(   0)='1' )then
		  PF_temp_lv5_05(   0)<='1';
		  else
		  PF_temp_lv5_05(   0)<='0';
		  end if;
      if(PF_temp_lv4_06(   0)='1' )then
		  PF_temp_lv5_06(   0)<='1';
		  else
		  PF_temp_lv5_06(   0)<='0';
		  end if;
      if(PF_temp_lv4_07(   0)='1' )then
		  PF_temp_lv5_07(   0)<='1';
		  else
		  PF_temp_lv5_07(   0)<='0';
		  end if;
      if(PF_temp_lv4_08(   0)='1' )then
		  PF_temp_lv5_08(   0)<='1';
		  else
		  PF_temp_lv5_08(   0)<='0';
		  end if;
      if(PF_temp_lv4_09(   0)='1' )then
		  PF_temp_lv5_09(   0)<='1';
		  else
		  PF_temp_lv5_09(   0)<='0';
		  end if;
      if(PF_temp_lv4_10(   0)='1' )then
		  PF_temp_lv5_10(   0)<='1';
		  else
		  PF_temp_lv5_10(   0)<='0';
		  end if;
      if(PF_temp_lv4_11(   0)='1' )then
		  PF_temp_lv5_11(   0)<='1';
		  else
		  PF_temp_lv5_11(   0)<='0';
		  end if;
      if(NF_temp_lv4_00(   0)='1' )then
		  NF_temp_lv5_00(   0)<='1';
		  else
		  NF_temp_lv5_00(   0)<='0';
		  end if;
      if(NF_temp_lv4_01(   0)='1' OR NF_temp_lv4_01(   1)='1' )then
		  NF_temp_lv5_01(   0)<='1';
		  else
		  NF_temp_lv5_01(   0)<='0';
		  end if;
      if(NF_temp_lv4_02(   0)='1' )then
		  NF_temp_lv5_02(   0)<='1';
		  else
		  NF_temp_lv5_02(   0)<='0';
		  end if;
      if(NF_temp_lv4_03(   0)='1' )then
		  NF_temp_lv5_03(   0)<='1';
		  else
		  NF_temp_lv5_03(   0)<='0';
		  end if;
      if(NF_temp_lv4_04(   0)='1' )then
		  NF_temp_lv5_04(   0)<='1';
		  else
		  NF_temp_lv5_04(   0)<='0';
		  end if;
      if(NF_temp_lv4_05(   0)='1' )then
		  NF_temp_lv5_05(   0)<='1';
		  else
		  NF_temp_lv5_05(   0)<='0';
		  end if;
      if(NF_temp_lv4_06(   0)='1' )then
		  NF_temp_lv5_06(   0)<='1';
		  else
		  NF_temp_lv5_06(   0)<='0';
		  end if;
      if(NF_temp_lv4_07(   0)='1' )then
		  NF_temp_lv5_07(   0)<='1';
		  else
		  NF_temp_lv5_07(   0)<='0';
		  end if;
      if(NF_temp_lv4_08(   0)='1' )then
		  NF_temp_lv5_08(   0)<='1';
		  else
		  NF_temp_lv5_08(   0)<='0';
		  end if;
      if(NF_temp_lv4_09(   0)='1' )then
		  NF_temp_lv5_09(   0)<='1';
		  else
		  NF_temp_lv5_09(   0)<='0';
		  end if;
      if(NF_temp_lv4_10(   0)='1' )then
		  NF_temp_lv5_10(   0)<='1';
		  else
		  NF_temp_lv5_10(   0)<='0';
		  end if;
      if(NF_temp_lv4_11(   0)='1' )then
		  NF_temp_lv5_11(   0)<='1';
		  else
		  NF_temp_lv5_11(   0)<='0';
		  end if;
 end if;
end process;
lookuptable_LV6 : process(c1)
begin
 if c1'event and c1='1' then
      if(PF_temp_lv5_00(   0)='1' )then
		  PF_temp_lv6_00(   0)<='1';
		  else
		  PF_temp_lv6_00(   0)<='0';
		  end if;
      if(PF_temp_lv5_01(   0)='1' )then
		  PF_temp_lv6_01(   0)<='1';
		  else
		  PF_temp_lv6_01(   0)<='0';
		  end if;
      if(PF_temp_lv5_02(   0)='1' )then
		  PF_temp_lv6_02(   0)<='1';
		  else
		  PF_temp_lv6_02(   0)<='0';
		  end if;
      if(PF_temp_lv5_03(   0)='1' )then
		  PF_temp_lv6_03(   0)<='1';
		  else
		  PF_temp_lv6_03(   0)<='0';
		  end if;
      if(PF_temp_lv5_04(   0)='1' )then
		  PF_temp_lv6_04(   0)<='1';
		  else
		  PF_temp_lv6_04(   0)<='0';
		  end if;
      if(PF_temp_lv5_05(   0)='1' )then
		  PF_temp_lv6_05(   0)<='1';
		  else
		  PF_temp_lv6_05(   0)<='0';
		  end if;
      if(PF_temp_lv5_06(   0)='1' )then
		  PF_temp_lv6_06(   0)<='1';
		  else
		  PF_temp_lv6_06(   0)<='0';
		  end if;
      if(PF_temp_lv5_07(   0)='1' )then
		  PF_temp_lv6_07(   0)<='1';
		  else
		  PF_temp_lv6_07(   0)<='0';
		  end if;
      if(PF_temp_lv5_08(   0)='1' )then
		  PF_temp_lv6_08(   0)<='1';
		  else
		  PF_temp_lv6_08(   0)<='0';
		  end if;
      if(PF_temp_lv5_09(   0)='1' )then
		  PF_temp_lv6_09(   0)<='1';
		  else
		  PF_temp_lv6_09(   0)<='0';
		  end if;
      if(PF_temp_lv5_10(   0)='1' )then
		  PF_temp_lv6_10(   0)<='1';
		  else
		  PF_temp_lv6_10(   0)<='0';
		  end if;
      if(PF_temp_lv5_11(   0)='1' )then
		  PF_temp_lv6_11(   0)<='1';
		  else
		  PF_temp_lv6_11(   0)<='0';
		  end if;
      if(NF_temp_lv5_00(   0)='1' )then
		  NF_temp_lv6_00(   0)<='1';
		  else
		  NF_temp_lv6_00(   0)<='0';
		  end if;
      if(NF_temp_lv5_01(   0)='1' )then
		  NF_temp_lv6_01(   0)<='1';
		  else
		  NF_temp_lv6_01(   0)<='0';
		  end if;
      if(NF_temp_lv5_02(   0)='1' )then
		  NF_temp_lv6_02(   0)<='1';
		  else
		  NF_temp_lv6_02(   0)<='0';
		  end if;
      if(NF_temp_lv5_03(   0)='1' )then
		  NF_temp_lv6_03(   0)<='1';
		  else
		  NF_temp_lv6_03(   0)<='0';
		  end if;
      if(NF_temp_lv5_04(   0)='1' )then
		  NF_temp_lv6_04(   0)<='1';
		  else
		  NF_temp_lv6_04(   0)<='0';
		  end if;
      if(NF_temp_lv5_05(   0)='1' )then
		  NF_temp_lv6_05(   0)<='1';
		  else
		  NF_temp_lv6_05(   0)<='0';
		  end if;
      if(NF_temp_lv5_06(   0)='1' )then
		  NF_temp_lv6_06(   0)<='1';
		  else
		  NF_temp_lv6_06(   0)<='0';
		  end if;
      if(NF_temp_lv5_07(   0)='1' )then
		  NF_temp_lv6_07(   0)<='1';
		  else
		  NF_temp_lv6_07(   0)<='0';
		  end if;
      if(NF_temp_lv5_08(   0)='1' )then
		  NF_temp_lv6_08(   0)<='1';
		  else
		  NF_temp_lv6_08(   0)<='0';
		  end if;
      if(NF_temp_lv5_09(   0)='1' )then
		  NF_temp_lv6_09(   0)<='1';
		  else
		  NF_temp_lv6_09(   0)<='0';
		  end if;
      if(NF_temp_lv5_10(   0)='1' )then
		  NF_temp_lv6_10(   0)<='1';
		  else
		  NF_temp_lv6_10(   0)<='0';
		  end if;
      if(NF_temp_lv5_11(   0)='1' )then
		  NF_temp_lv6_11(   0)<='1';
		  else
		  NF_temp_lv6_11(   0)<='0';
		  end if;
 end if;
end process;
lookuptable_LV7 : process(c1)
begin
 if c1'event and c1='1' then
      if(PF_temp_lv6_00(   0)='1' )then
		  PF_temp_lv7_00(   0)<='1';
		  else
		  PF_temp_lv7_00(   0)<='0';
		  end if;
      if(PF_temp_lv6_01(   0)='1' )then
		  PF_temp_lv7_01(   0)<='1';
		  else
		  PF_temp_lv7_01(   0)<='0';
		  end if;
      if(PF_temp_lv6_02(   0)='1' )then
		  PF_temp_lv7_02(   0)<='1';
		  else
		  PF_temp_lv7_02(   0)<='0';
		  end if;
      if(PF_temp_lv6_03(   0)='1' )then
		  PF_temp_lv7_03(   0)<='1';
		  else
		  PF_temp_lv7_03(   0)<='0';
		  end if;
      if(PF_temp_lv6_04(   0)='1' )then
		  PF_temp_lv7_04(   0)<='1';
		  else
		  PF_temp_lv7_04(   0)<='0';
		  end if;
      if(PF_temp_lv6_05(   0)='1' )then
		  PF_temp_lv7_05(   0)<='1';
		  else
		  PF_temp_lv7_05(   0)<='0';
		  end if;
      if(PF_temp_lv6_06(   0)='1' )then
		  PF_temp_lv7_06(   0)<='1';
		  else
		  PF_temp_lv7_06(   0)<='0';
		  end if;
      if(PF_temp_lv6_07(   0)='1' )then
		  PF_temp_lv7_07(   0)<='1';
		  else
		  PF_temp_lv7_07(   0)<='0';
		  end if;
      if(PF_temp_lv6_08(   0)='1' )then
		  PF_temp_lv7_08(   0)<='1';
		  else
		  PF_temp_lv7_08(   0)<='0';
		  end if;
      if(PF_temp_lv6_09(   0)='1' )then
		  PF_temp_lv7_09(   0)<='1';
		  else
		  PF_temp_lv7_09(   0)<='0';
		  end if;
      if(PF_temp_lv6_10(   0)='1' )then
		  PF_temp_lv7_10(   0)<='1';
		  else
		  PF_temp_lv7_10(   0)<='0';
		  end if;
      if(PF_temp_lv6_11(   0)='1' )then
		  PF_temp_lv7_11(   0)<='1';
		  else
		  PF_temp_lv7_11(   0)<='0';
		  end if;
      if(NF_temp_lv6_00(   0)='1' )then
		  NF_temp_lv7_00(   0)<='1';
		  else
		  NF_temp_lv7_00(   0)<='0';
		  end if;
      if(NF_temp_lv6_01(   0)='1' )then
		  NF_temp_lv7_01(   0)<='1';
		  else
		  NF_temp_lv7_01(   0)<='0';
		  end if;
      if(NF_temp_lv6_02(   0)='1' )then
		  NF_temp_lv7_02(   0)<='1';
		  else
		  NF_temp_lv7_02(   0)<='0';
		  end if;
      if(NF_temp_lv6_03(   0)='1' )then
		  NF_temp_lv7_03(   0)<='1';
		  else
		  NF_temp_lv7_03(   0)<='0';
		  end if;
      if(NF_temp_lv6_04(   0)='1' )then
		  NF_temp_lv7_04(   0)<='1';
		  else
		  NF_temp_lv7_04(   0)<='0';
		  end if;
      if(NF_temp_lv6_05(   0)='1' )then
		  NF_temp_lv7_05(   0)<='1';
		  else
		  NF_temp_lv7_05(   0)<='0';
		  end if;
      if(NF_temp_lv6_06(   0)='1' )then
		  NF_temp_lv7_06(   0)<='1';
		  else
		  NF_temp_lv7_06(   0)<='0';
		  end if;
      if(NF_temp_lv6_07(   0)='1' )then
		  NF_temp_lv7_07(   0)<='1';
		  else
		  NF_temp_lv7_07(   0)<='0';
		  end if;
      if(NF_temp_lv6_08(   0)='1' )then
		  NF_temp_lv7_08(   0)<='1';
		  else
		  NF_temp_lv7_08(   0)<='0';
		  end if;
      if(NF_temp_lv6_09(   0)='1' )then
		  NF_temp_lv7_09(   0)<='1';
		  else
		  NF_temp_lv7_09(   0)<='0';
		  end if;
      if(NF_temp_lv6_10(   0)='1' )then
		  NF_temp_lv7_10(   0)<='1';
		  else
		  NF_temp_lv7_10(   0)<='0';
		  end if;
      if(NF_temp_lv6_11(   0)='1' )then
		  NF_temp_lv7_11(   0)<='1';
		  else
		  NF_temp_lv7_11(   0)<='0';
		  end if;
 end if;
end process;
lookuptable_LV8 : process(c1)
begin
 if c1'event and c1='1' then
      if(PF_temp_lv7_00(   0)='1' )then
		  PF_temp_lv8(   0)<='1';
		  else
		  PF_temp_lv8(   0)<='0';
		  end if;
      if(PF_temp_lv7_01(   0)='1' )then
		  PF_temp_lv8(   1)<='1';
		  else
		  PF_temp_lv8(   1)<='0';
		  end if;
      if(PF_temp_lv7_02(   0)='1' )then
		  PF_temp_lv8(   2)<='1';
		  else
		  PF_temp_lv8(   2)<='0';
		  end if;
      if(PF_temp_lv7_03(   0)='1' )then
		  PF_temp_lv8(   3)<='1';
		  else
		  PF_temp_lv8(   3)<='0';
		  end if;
      if(PF_temp_lv7_04(   0)='1' )then
		  PF_temp_lv8(   4)<='1';
		  else
		  PF_temp_lv8(   4)<='0';
		  end if;
      if(PF_temp_lv7_05(   0)='1' )then
		  PF_temp_lv8(   5)<='1';
		  else
		  PF_temp_lv8(   5)<='0';
		  end if;
      if(PF_temp_lv7_06(   0)='1' )then
		  PF_temp_lv8(   6)<='1';
		  else
		  PF_temp_lv8(   6)<='0';
		  end if;
      if(PF_temp_lv7_07(   0)='1' )then
		  PF_temp_lv8(   7)<='1';
		  else
		  PF_temp_lv8(   7)<='0';
		  end if;
      if(PF_temp_lv7_08(   0)='1' )then
		  PF_temp_lv8(   8)<='1';
		  else
		  PF_temp_lv8(   8)<='0';
		  end if;
      if(PF_temp_lv7_09(   0)='1' )then
		  PF_temp_lv8(   9)<='1';
		  else
		  PF_temp_lv8(   9)<='0';
		  end if;
      if(PF_temp_lv7_10(   0)='1' )then
		  PF_temp_lv8(  10)<='1';
		  else
		  PF_temp_lv8(  10)<='0';
		  end if;
      if(PF_temp_lv7_11(   0)='1' )then
		  PF_temp_lv8(  11)<='1';
		  else
		  PF_temp_lv8(  11)<='0';
		  end if;
      if(NF_temp_lv7_00(   0)='1' )then
		  NF_temp_lv8(   0)<='1';
		  else
		  NF_temp_lv8(   0)<='0';
		  end if;
      if(NF_temp_lv7_01(   0)='1' )then
		  NF_temp_lv8(   1)<='1';
		  else
		  NF_temp_lv8(   1)<='0';
		  end if;
      if(NF_temp_lv7_02(   0)='1' )then
		  NF_temp_lv8(   2)<='1';
		  else
		  NF_temp_lv8(   2)<='0';
		  end if;
      if(NF_temp_lv7_03(   0)='1' )then
		  NF_temp_lv8(   3)<='1';
		  else
		  NF_temp_lv8(   3)<='0';
		  end if;
      if(NF_temp_lv7_04(   0)='1' )then
		  NF_temp_lv8(   4)<='1';
		  else
		  NF_temp_lv8(   4)<='0';
		  end if;
      if(NF_temp_lv7_05(   0)='1' )then
		  NF_temp_lv8(   5)<='1';
		  else
		  NF_temp_lv8(   5)<='0';
		  end if;
      if(NF_temp_lv7_06(   0)='1' )then
		  NF_temp_lv8(   6)<='1';
		  else
		  NF_temp_lv8(   6)<='0';
		  end if;
      if(NF_temp_lv7_07(   0)='1' )then
		  NF_temp_lv8(   7)<='1';
		  else
		  NF_temp_lv8(   7)<='0';
		  end if;
      if(NF_temp_lv7_08(   0)='1' )then
		  NF_temp_lv8(   8)<='1';
		  else
		  NF_temp_lv8(   8)<='0';
		  end if;
      if(NF_temp_lv7_09(   0)='1' )then
		  NF_temp_lv8(   9)<='1';
		  else
		  NF_temp_lv8(   9)<='0';
		  end if;
      if(NF_temp_lv7_10(   0)='1' )then
		  NF_temp_lv8(  10)<='1';
		  else
		  NF_temp_lv8(  10)<='0';
		  end if;
      if(NF_temp_lv7_11(   0)='1' )then
		  NF_temp_lv8(  11)<='1';
		  else
		  NF_temp_lv8(  11)<='0';
		  end if;
 end if;
end process;
end rtl;