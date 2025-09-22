-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Uavionix.Types is

   pragma Pure;

   type Uavionix_Adsb_Out_Dynamic_State is record
      Intent_Change        : Boolean := False;
      Autopilot_Enabled    : Boolean := False;
      Nicbaro_Crosschecked : Boolean := False;
      On_Ground            : Boolean := False;
      Ident                : Boolean := False;
      Reserved_5           : Boolean := False;
      Reserved_6           : Boolean := False;
      Reserved_7           : Boolean := False;
      Reserved_8           : Boolean := False;
      Reserved_9           : Boolean := False;
      Reserved_10          : Boolean := False;
      Reserved_11          : Boolean := False;
      Reserved_12          : Boolean := False;
      Reserved_13          : Boolean := False;
      Reserved_14          : Boolean := False;
      Reserved_15          : Boolean := False;
   end record with Size => 16;
   --  State flags for ADS-B transponder dynamic report

   for Uavionix_Adsb_Out_Dynamic_State use record
      Intent_Change        at 0 range 0 .. 0;
      Autopilot_Enabled    at 0 range 1 .. 1;
      Nicbaro_Crosschecked at 0 range 2 .. 2;
      On_Ground            at 0 range 3 .. 3;
      Ident                at 0 range 4 .. 4;
      Reserved_5           at 0 range 5 .. 5;
      Reserved_6           at 0 range 6 .. 6;
      Reserved_7           at 0 range 7 .. 7;
      Reserved_8           at 0 range 8 .. 8;
      Reserved_9           at 0 range 9 .. 9;
      Reserved_10          at 0 range 10 .. 10;
      Reserved_11          at 0 range 11 .. 11;
      Reserved_12          at 0 range 12 .. 12;
      Reserved_13          at 0 range 13 .. 13;
      Reserved_14          at 0 range 14 .. 14;
      Reserved_15          at 0 range 15 .. 15;
   end record;

   function Image (V : Uavionix_Adsb_Out_Dynamic_State) return String is
     ("["
      & (if V.Intent_Change then "INTENT_CHANGE " else "")
      & (if V.Autopilot_Enabled then "AUTOPILOT_ENABLED " else "")
      & (if V.Nicbaro_Crosschecked then "NICBARO_CROSSCHECKED " else "")
      & (if V.On_Ground then "ON_GROUND " else "")
      & (if V.Ident then "IDENT " else "")
      & "]");

   type Uavionix_Adsb_Out_Rf_Select is record
      Rx_Enabled : Boolean := False;
      Tx_Enabled : Boolean := False;
      Reserved_2 : Boolean := False;
      Reserved_3 : Boolean := False;
      Reserved_4 : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;
   --  Transceiver RF control flags for ADS-B transponder dynamic reports

   for Uavionix_Adsb_Out_Rf_Select use record
      Rx_Enabled at 0 range 0 .. 0;
      Tx_Enabled at 0 range 1 .. 1;
      Reserved_2 at 0 range 2 .. 2;
      Reserved_3 at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Uavionix_Adsb_Out_Rf_Select) return String is
     ("["
      & (if V.Rx_Enabled then "RX_ENABLED " else "")
      & (if V.Tx_Enabled then "TX_ENABLED " else "")
      & "]");

   type Uavionix_Adsb_Out_Dynamic_Gps_Fix is new Interfaces.Unsigned_8;
   --  Status for ADS-B transponder dynamic input

   function None_0 return Uavionix_Adsb_Out_Dynamic_Gps_Fix is (0)
     with Static;

   function None_1 return Uavionix_Adsb_Out_Dynamic_Gps_Fix is (1)
     with Static;

   function A_2D return Uavionix_Adsb_Out_Dynamic_Gps_Fix is (2)
     with Static;

   function A_3D return Uavionix_Adsb_Out_Dynamic_Gps_Fix is (3)
     with Static;

   function Dgps return Uavionix_Adsb_Out_Dynamic_Gps_Fix is (4)
     with Static;

   function Rtk return Uavionix_Adsb_Out_Dynamic_Gps_Fix is (5)
     with Static;

   subtype Uavionix_Adsb_Out_Dynamic_Gps_Fix_Well_Known is Uavionix_Adsb_Out_Dynamic_Gps_Fix
     with Static_Predicate => Uavionix_Adsb_Out_Dynamic_Gps_Fix_Well_Known in
       None_0 .. Rtk;

   function Well_Known_Image
     (Value : Uavionix_Adsb_Out_Dynamic_Gps_Fix_Well_Known) return String is
       (case Value is
        when None_0 => "None_0",
        when None_1 => "None_1",
        when A_2D => "A_2D",
        when A_3D => "A_3D",
        when Dgps => "Dgps",
        when Rtk => "Rtk");

   function Image (Value : Uavionix_Adsb_Out_Dynamic_Gps_Fix) return String is
     (if Value in Uavionix_Adsb_Out_Dynamic_Gps_Fix_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Uavionix_Adsb_Rf_Health is record
      Ok         : Boolean := False;
      Fail_Tx    : Boolean := False;
      Fail_Rx    : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;
   --  Status flags for ADS-B transponder dynamic output

   for Uavionix_Adsb_Rf_Health use record
      Ok         at 0 range 0 .. 0;
      Fail_Tx    at 0 range 1 .. 1;
      Fail_Rx    at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Uavionix_Adsb_Rf_Health) return String is
     ("["
      & (if V.Ok then "OK " else "")
      & (if V.Fail_Tx then "FAIL_TX " else "")
      & (if V.Fail_Rx then "FAIL_RX " else "")
      & "]");

   type Uavionix_Adsb_Out_Cfg_Aircraft_Size is new Interfaces.Unsigned_8;
   --  Definitions for aircraft size

   function No_Data return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (0)
     with Static;

   function L15M_W23M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (1)
     with Static;

   function L25M_W28P5M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (2)
     with Static;

   function L25_34M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (3)
     with Static;

   function L35_33M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (4)
     with Static;

   function L35_38M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (5)
     with Static;

   function L45_39P5M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (6)
     with Static;

   function L45_45M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (7)
     with Static;

   function L55_45M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (8)
     with Static;

   function L55_52M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (9)
     with Static;

   function L65_59P5M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (10)
     with Static;

   function L65_67M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (11)
     with Static;

   function L75_W72P5M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (12)
     with Static;

   function L75_W80M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (13)
     with Static;

   function L85_W80M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (14)
     with Static;

   function L85_W90M return Uavionix_Adsb_Out_Cfg_Aircraft_Size is (15)
     with Static;

   subtype Uavionix_Adsb_Out_Cfg_Aircraft_Size_Well_Known is Uavionix_Adsb_Out_Cfg_Aircraft_Size
     with Static_Predicate => Uavionix_Adsb_Out_Cfg_Aircraft_Size_Well_Known in
       No_Data .. L85_W90M;

   function Well_Known_Image
     (Value : Uavionix_Adsb_Out_Cfg_Aircraft_Size_Well_Known) return String is
       (case Value is
        when No_Data => "No_Data",
        when L15M_W23M => "L15M_W23M",
        when L25M_W28P5M => "L25M_W28P5M",
        when L25_34M => "L25_34M",
        when L35_33M => "L35_33M",
        when L35_38M => "L35_38M",
        when L45_39P5M => "L45_39P5M",
        when L45_45M => "L45_45M",
        when L55_45M => "L55_45M",
        when L55_52M => "L55_52M",
        when L65_59P5M => "L65_59P5M",
        when L65_67M => "L65_67M",
        when L75_W72P5M => "L75_W72P5M",
        when L75_W80M => "L75_W80M",
        when L85_W80M => "L85_W80M",
        when L85_W90M => "L85_W90M");

   function Image (Value : Uavionix_Adsb_Out_Cfg_Aircraft_Size) return String is
     (if Value in Uavionix_Adsb_Out_Cfg_Aircraft_Size_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is new Interfaces.Unsigned_8;
   --  GPS lataral offset encoding

   function No_Data return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is (0)
     with Static;

   function Left_2M return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is (1)
     with Static;

   function Left_4M return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is (2)
     with Static;

   function Left_6M return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is (3)
     with Static;

   function Right_0M return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is (4)
     with Static;

   function Right_2M return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is (5)
     with Static;

   function Right_4M return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is (6)
     with Static;

   function Right_6M return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat is (7)
     with Static;

   subtype Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat_Well_Known is Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat
     with Static_Predicate => Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat_Well_Known in
       No_Data .. Right_6M;

   function Well_Known_Image
     (Value : Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat_Well_Known) return String is
       (case Value is
        when No_Data => "No_Data",
        when Left_2M => "Left_2M",
        when Left_4M => "Left_4M",
        when Left_6M => "Left_6M",
        when Right_0M => "Right_0M",
        when Right_2M => "Right_2M",
        when Right_4M => "Right_4M",
        when Right_6M => "Right_6M");

   function Image (Value : Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat) return String is
     (if Value in Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon is new Interfaces.Unsigned_8;
   --  GPS longitudinal offset encoding

   function No_Data return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon is (0)
     with Static;

   function Applied_By_Sensor return Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon is (1)
     with Static;

   subtype Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon_Well_Known is Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon
     with Static_Predicate => Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon_Well_Known in
       No_Data .. Applied_By_Sensor;

   function Well_Known_Image
     (Value : Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon_Well_Known) return String is
       (case Value is
        when No_Data => "No_Data",
        when Applied_By_Sensor => "Applied_By_Sensor");

   function Image (Value : Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon) return String is
     (if Value in Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Uavionix_Adsb_Emergency_Status is new Interfaces.Unsigned_8;
   --  Emergency status encoding

   function No_Emergency return Uavionix_Adsb_Emergency_Status is (0)
     with Static;

   function General_Emergency return Uavionix_Adsb_Emergency_Status is (1)
     with Static;

   function Lifeguard_Emergency return Uavionix_Adsb_Emergency_Status is (2)
     with Static;

   function Minimum_Fuel_Emergency return Uavionix_Adsb_Emergency_Status is (3)
     with Static;

   function No_Comm_Emergency return Uavionix_Adsb_Emergency_Status is (4)
     with Static;

   function Unlawful_Interferance_Emergency return Uavionix_Adsb_Emergency_Status is (5)
     with Static;

   function Downed_Aircraft_Emergency return Uavionix_Adsb_Emergency_Status is (6)
     with Static;

   function Reserved return Uavionix_Adsb_Emergency_Status is (7)
     with Static;

   subtype Uavionix_Adsb_Emergency_Status_Well_Known is Uavionix_Adsb_Emergency_Status
     with Static_Predicate => Uavionix_Adsb_Emergency_Status_Well_Known in
       No_Emergency .. Reserved;

   function Well_Known_Image
     (Value : Uavionix_Adsb_Emergency_Status_Well_Known) return String is
       (case Value is
        when No_Emergency => "No_Emergency",
        when General_Emergency => "General_Emergency",
        when Lifeguard_Emergency => "Lifeguard_Emergency",
        when Minimum_Fuel_Emergency => "Minimum_Fuel_Emergency",
        when No_Comm_Emergency => "No_Comm_Emergency",
        when Unlawful_Interferance_Emergency => "Unlawful_Interferance_Emergency",
        when Downed_Aircraft_Emergency => "Downed_Aircraft_Emergency",
        when Reserved => "Reserved");

   function Image (Value : Uavionix_Adsb_Emergency_Status) return String is
     (if Value in Uavionix_Adsb_Emergency_Status_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Uavionix_Adsb_Out_Control_State is record
      External_Baro_Crosschecked : Boolean := False;
      On_Ground                  : Boolean := False;
      Ident_Button_Active        : Boolean := False;
      Mode_A_Enabled             : Boolean := False;
      Mode_C_Enabled             : Boolean := False;
      Mode_S_Enabled             : Boolean := False;
      A_1090Es_Tx_Enabled        : Boolean := False;
   end record with Size => 8;
   --  State flags for ADS-B transponder dynamic report

   for Uavionix_Adsb_Out_Control_State use record
      External_Baro_Crosschecked at 0 range 0 .. 0;
      On_Ground                  at 0 range 2 .. 2;
      Ident_Button_Active        at 0 range 3 .. 3;
      Mode_A_Enabled             at 0 range 4 .. 4;
      Mode_C_Enabled             at 0 range 5 .. 5;
      Mode_S_Enabled             at 0 range 6 .. 6;
      A_1090Es_Tx_Enabled        at 0 range 7 .. 7;
   end record;

   function Image (V : Uavionix_Adsb_Out_Control_State) return String is
     ("["
      & (if V.External_Baro_Crosschecked then "EXTERNAL_BARO_CROSSCHECKED " else "")
      & (if V.On_Ground then "ON_GROUND " else "")
      & (if V.Ident_Button_Active then "IDENT_BUTTON_ACTIVE " else "")
      & (if V.Mode_A_Enabled then "MODE_A_ENABLED " else "")
      & (if V.Mode_C_Enabled then "MODE_C_ENABLED " else "")
      & (if V.Mode_S_Enabled then "MODE_S_ENABLED " else "")
      & (if V.A_1090Es_Tx_Enabled then "1090ES_TX_ENABLED " else "")
      & "]");

   type Uavionix_Adsb_Xbit is record
      Uavionix_Adsb_Xbit_Enabled : Boolean := False;
   end record with Size => 8;
   --  State flags for X-Bit and reserved fields.

   for Uavionix_Adsb_Xbit use record
      Uavionix_Adsb_Xbit_Enabled at 0 range 7 .. 7;
   end record;

   function Image (V : Uavionix_Adsb_Xbit) return String is
     ("["
      & (if V.Uavionix_Adsb_Xbit_Enabled then "UAVIONIX_ADSB_XBIT_ENABLED " else "")
      & "]");

   type Uavionix_Adsb_Out_Status_State is record
      On_Ground               : Boolean := False;
      Interrogated_Since_Last : Boolean := False;
      Xbit_Enabled            : Boolean := False;
      Ident_Active            : Boolean := False;
      Mode_A_Enabled          : Boolean := False;
      Mode_C_Enabled          : Boolean := False;
      Mode_S_Enabled          : Boolean := False;
      A_1090Es_Tx_Enabled     : Boolean := False;
   end record with Size => 8;
   --  State flags for ADS-B transponder status report

   for Uavionix_Adsb_Out_Status_State use record
      On_Ground               at 0 range 0 .. 0;
      Interrogated_Since_Last at 0 range 1 .. 1;
      Xbit_Enabled            at 0 range 2 .. 2;
      Ident_Active            at 0 range 3 .. 3;
      Mode_A_Enabled          at 0 range 4 .. 4;
      Mode_C_Enabled          at 0 range 5 .. 5;
      Mode_S_Enabled          at 0 range 6 .. 6;
      A_1090Es_Tx_Enabled     at 0 range 7 .. 7;
   end record;

   function Image (V : Uavionix_Adsb_Out_Status_State) return String is
     ("["
      & (if V.On_Ground then "ON_GROUND " else "")
      & (if V.Interrogated_Since_Last then "INTERROGATED_SINCE_LAST " else "")
      & (if V.Xbit_Enabled then "XBIT_ENABLED " else "")
      & (if V.Ident_Active then "IDENT_ACTIVE " else "")
      & (if V.Mode_A_Enabled then "MODE_A_ENABLED " else "")
      & (if V.Mode_C_Enabled then "MODE_C_ENABLED " else "")
      & (if V.Mode_S_Enabled then "MODE_S_ENABLED " else "")
      & (if V.A_1090Es_Tx_Enabled then "1090ES_TX_ENABLED " else "")
      & "]");

   type Uavionix_Adsb_Out_Status_Nic_Nacp is new Interfaces.Unsigned_8;
   --  State flags for ADS-B transponder status report

   function Ic_Cr_20_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (1)
     with Static;

   function Ic_Cr_8_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (2)
     with Static;

   function Ic_Cr_4_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (3)
     with Static;

   function Ic_Cr_2_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (4)
     with Static;

   function Ic_Cr_1_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (5)
     with Static;

   function Ic_Cr_0_3_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (6)
     with Static;

   function Ic_Cr_0_2_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (7)
     with Static;

   function Ic_Cr_0_1_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (8)
     with Static;

   function Ic_Cr_75_M return Uavionix_Adsb_Out_Status_Nic_Nacp is (9)
     with Static;

   function Ic_Cr_25_M return Uavionix_Adsb_Out_Status_Nic_Nacp is (10)
     with Static;

   function Ic_Cr_7_5_M return Uavionix_Adsb_Out_Status_Nic_Nacp is (11)
     with Static;

   function Acp_Epu_10_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (16)
     with Static;

   function Acp_Epu_4_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (32)
     with Static;

   function Acp_Epu_2_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (48)
     with Static;

   function Acp_Epu_1_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (64)
     with Static;

   function Acp_Epu_0_5_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (80)
     with Static;

   function Acp_Epu_0_3_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (96)
     with Static;

   function Acp_Epu_0_1_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (112)
     with Static;

   function Acp_Epu_0_05_Nm return Uavionix_Adsb_Out_Status_Nic_Nacp is (128)
     with Static;

   function Acp_Epu_30_M return Uavionix_Adsb_Out_Status_Nic_Nacp is (144)
     with Static;

   function Acp_Epu_10_M return Uavionix_Adsb_Out_Status_Nic_Nacp is (160)
     with Static;

   function Acp_Epu_3_M return Uavionix_Adsb_Out_Status_Nic_Nacp is (176)
     with Static;

   subtype Uavionix_Adsb_Out_Status_Nic_Nacp_Well_Known is Uavionix_Adsb_Out_Status_Nic_Nacp
     with Static_Predicate => Uavionix_Adsb_Out_Status_Nic_Nacp_Well_Known in
       Ic_Cr_20_Nm .. Ic_Cr_7_5_M
       | Acp_Epu_10_Nm
       | Acp_Epu_4_Nm
       | Acp_Epu_2_Nm
       | Acp_Epu_1_Nm
       | Acp_Epu_0_5_Nm
       | Acp_Epu_0_3_Nm
       | Acp_Epu_0_1_Nm
       | Acp_Epu_0_05_Nm
       | Acp_Epu_30_M
       | Acp_Epu_10_M
       | Acp_Epu_3_M;

   function Well_Known_Image
     (Value : Uavionix_Adsb_Out_Status_Nic_Nacp_Well_Known) return String is
       (case Value is
        when Ic_Cr_20_Nm => "Ic_Cr_20_Nm",
        when Ic_Cr_8_Nm => "Ic_Cr_8_Nm",
        when Ic_Cr_4_Nm => "Ic_Cr_4_Nm",
        when Ic_Cr_2_Nm => "Ic_Cr_2_Nm",
        when Ic_Cr_1_Nm => "Ic_Cr_1_Nm",
        when Ic_Cr_0_3_Nm => "Ic_Cr_0_3_Nm",
        when Ic_Cr_0_2_Nm => "Ic_Cr_0_2_Nm",
        when Ic_Cr_0_1_Nm => "Ic_Cr_0_1_Nm",
        when Ic_Cr_75_M => "Ic_Cr_75_M",
        when Ic_Cr_25_M => "Ic_Cr_25_M",
        when Ic_Cr_7_5_M => "Ic_Cr_7_5_M",
        when Acp_Epu_10_Nm => "Acp_Epu_10_Nm",
        when Acp_Epu_4_Nm => "Acp_Epu_4_Nm",
        when Acp_Epu_2_Nm => "Acp_Epu_2_Nm",
        when Acp_Epu_1_Nm => "Acp_Epu_1_Nm",
        when Acp_Epu_0_5_Nm => "Acp_Epu_0_5_Nm",
        when Acp_Epu_0_3_Nm => "Acp_Epu_0_3_Nm",
        when Acp_Epu_0_1_Nm => "Acp_Epu_0_1_Nm",
        when Acp_Epu_0_05_Nm => "Acp_Epu_0_05_Nm",
        when Acp_Epu_30_M => "Acp_Epu_30_M",
        when Acp_Epu_10_M => "Acp_Epu_10_M",
        when Acp_Epu_3_M => "Acp_Epu_3_M");

   function Image (Value : Uavionix_Adsb_Out_Status_Nic_Nacp) return String is
     (if Value in Uavionix_Adsb_Out_Status_Nic_Nacp_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Uavionix_Adsb_Out_Status_Fault is record
      Status_Message_Unavail : Boolean := False;
      Gps_No_Pos             : Boolean := False;
      Gps_Unavail            : Boolean := False;
      Tx_System_Fail         : Boolean := False;
      Maint_Req              : Boolean := False;
   end record with Size => 8;
   --  State flags for ADS-B transponder fault report

   for Uavionix_Adsb_Out_Status_Fault use record
      Status_Message_Unavail at 0 range 3 .. 3;
      Gps_No_Pos             at 0 range 4 .. 4;
      Gps_Unavail            at 0 range 5 .. 5;
      Tx_System_Fail         at 0 range 6 .. 6;
      Maint_Req              at 0 range 7 .. 7;
   end record;

   function Image (V : Uavionix_Adsb_Out_Status_Fault) return String is
     ("["
      & (if V.Status_Message_Unavail then "STATUS_MESSAGE_UNAVAIL " else "")
      & (if V.Gps_No_Pos then "GPS_NO_POS " else "")
      & (if V.Gps_Unavail then "GPS_UNAVAIL " else "")
      & (if V.Tx_System_Fail then "TX_SYSTEM_FAIL " else "")
      & (if V.Maint_Req then "MAINT_REQ " else "")
      & "]");

end MAVLink.V2.Uavionix.Types;
