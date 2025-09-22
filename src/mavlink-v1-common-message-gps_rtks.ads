-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  RTK GPS data. Gives information on the relative baseline calculation the 
--  GPS is reporting 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Gps_Rtks is

   pragma Preelaborate;

   Gps_Rtk_Id : constant Msg_Id := 127;

   Gps_Rtk_Len : constant Interfaces.Unsigned_8 := 35;

   type Gps_Rtk is record
      Time_Last_Baseline_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time since boot of last baseline message received. 
      Rtk_Receiver_Id       : Interfaces.Unsigned_8;
      --  Identification of connected RTK receiver. 
      Wn                    : Interfaces.Unsigned_16;
      --  GPS Week Number of last baseline 
      Tow                   : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  GPS Time of Week of last baseline 
      Rtk_Health            : Interfaces.Unsigned_8;
      --  GPS-specific health report for RTK data. 
      Rtk_Rate              : Interfaces.Unsigned_8;
      --  Units: [Hz]
      --  Rate of baseline messages being received by GPS 
      Nsats                 : Interfaces.Unsigned_8;
      --  Current number of sats used for RTK calculation. 
      Baseline_Coords_Type  : Rtk_Baseline_Coordinate_System;
      --  Coordinate system of baseline 
      Baseline_A_Mm         : Interfaces.Integer_32;
      --  Units: [mm]
      --  Current baseline in ECEF x or NED north component. 
      Baseline_B_Mm         : Interfaces.Integer_32;
      --  Units: [mm]
      --  Current baseline in ECEF y or NED east component. 
      Baseline_C_Mm         : Interfaces.Integer_32;
      --  Units: [mm]
      --  Current baseline in ECEF z or NED down component. 
      Accuracy              : Interfaces.Unsigned_32;
      --  Current estimate of baseline accuracy. 
      Iar_Num_Hypotheses    : Interfaces.Integer_32;
      --  Current number of integer ambiguity hypotheses. 
   end record;

   for Gps_Rtk use record
      Time_Last_Baseline_Ms at 0  range 0 .. 31;
      Tow                   at 4  range 0 .. 31;
      Baseline_A_Mm         at 8  range 0 .. 31;
      Baseline_B_Mm         at 12 range 0 .. 31;
      Baseline_C_Mm         at 16 range 0 .. 31;
      Accuracy              at 20 range 0 .. 31;
      Iar_Num_Hypotheses    at 24 range 0 .. 31;
      Wn                    at 28 range 0 .. 15;
      Rtk_Receiver_Id       at 30 range 0 .. 7;
      Rtk_Health            at 31 range 0 .. 7;
      Rtk_Rate              at 32 range 0 .. 7;
      Nsats                 at 33 range 0 .. 7;
      Baseline_Coords_Type  at 34 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gps_Rtk;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Rtk;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Rtk;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Rtk;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Gps_Rtks;
