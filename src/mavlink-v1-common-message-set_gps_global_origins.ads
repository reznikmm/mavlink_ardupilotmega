-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2025-04 REPLACED BY: MAV_CMD_SET_GLOBAL_ORIGIN
------------
--  Sets the GPS coordinates of the vehicle local origin (0,0,0) position. 
--  Vehicle should emit GPS_GLOBAL_ORIGIN irrespective of whether the origin 
--  is changed. This enables transform between the local coordinate frame and 
--  the global (GPS) coordinate frame, which may be necessary when (for 
--  example) indoor and outdoor settings are connected and the MAV should move 
--  from in- to outdoor. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Set_Gps_Global_Origins is

   pragma Preelaborate;

   Set_Gps_Global_Origin_Id : constant Msg_Id := 48;

   Set_Gps_Global_Origin_Len : constant Interfaces.Unsigned_8 := 13;

   type Set_Gps_Global_Origin is record
      Target_System : Interfaces.Unsigned_8;
      --  System ID 
      Latitude      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Longitude     : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Altitude      : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Positive for up. 
   end record;

   pragma Obsolescent (Set_Gps_Global_Origin);

   for Set_Gps_Global_Origin use record
      Latitude      at 0  range 0 .. 31;
      Longitude     at 4  range 0 .. 31;
      Altitude      at 8  range 0 .. 31;
      Target_System at 12 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Set_Gps_Global_Origin;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Gps_Global_Origin;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Gps_Global_Origin;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Gps_Global_Origin;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Set_Gps_Global_Origins;
