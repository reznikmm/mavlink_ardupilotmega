-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Publishes the GPS coordinates of the vehicle local origin (0,0,0) 
--  position. Emitted whenever a new GPS-Local position mapping is requested 
--  or set - e.g. following SET_GPS_GLOBAL_ORIGIN message. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Gps_Global_Origins is

   pragma Preelaborate;

   Gps_Global_Origin_Id : constant Msg_Id := 49;

   Gps_Global_Origin_Len : constant Interfaces.Unsigned_8 := 12;

   type Gps_Global_Origin is record
      Latitude  : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Longitude : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Altitude  : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Positive for up. 
   end record;

   for Gps_Global_Origin use record
      Latitude  at 0 range 0 .. 31;
      Longitude at 4 range 0 .. 31;
      Altitude  at 8 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Gps_Global_Origin;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Global_Origin;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Global_Origin;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Global_Origin;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gps_Global_Origin;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Global_Origin;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Gps_Global_Origins;
