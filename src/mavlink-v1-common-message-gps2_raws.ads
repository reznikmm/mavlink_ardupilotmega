-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Second GPS data. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Gps2_Raws is

   pragma Preelaborate;

   Gps2_Raw_Id : constant Msg_Id := 124;

   Gps2_Raw_Len : constant Interfaces.Unsigned_8 := 35;

   type Gps2_Raw is record
      Time_Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Fix_Type           : Gps_Fix_Type;
      --  GPS fix type. 
      Lat                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Lon                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Alt                : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Positive for up. 
      Eph                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  GPS HDOP horizontal dilution of position (unitless * 100). If 
      --  unknown, set to: UINT16_MAX 
      Epv                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  GPS VDOP vertical dilution of position (unitless * 100). If unknown, 
      --  set to: UINT16_MAX 
      Vel                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [cm/s]
      --  GPS ground speed. If unknown, set to: UINT16_MAX 
      Cog                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [cdeg]
      --  Course over ground (NOT heading, but direction of movement): 
      --  0.0..359.99 degrees. If unknown, set to: UINT16_MAX 
      Satellites_Visible : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Number of satellites visible. If unknown, set to UINT8_MAX 
      Dgps_Numch         : Interfaces.Unsigned_8;
      --  Number of DGPS satellites 
      Dgps_Age           : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Age of DGPS info 
   end record;

   for Gps2_Raw use record
      Time_Usec          at 0  range 0 .. 63;
      Lat                at 8  range 0 .. 31;
      Lon                at 12 range 0 .. 31;
      Alt                at 16 range 0 .. 31;
      Dgps_Age           at 20 range 0 .. 31;
      Eph                at 24 range 0 .. 15;
      Epv                at 26 range 0 .. 15;
      Vel                at 28 range 0 .. 15;
      Cog                at 30 range 0 .. 15;
      Fix_Type           at 32 range 0 .. 7;
      Satellites_Visible at 33 range 0 .. 7;
      Dgps_Numch         at 34 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gps2_Raw;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps2_Raw;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps2_Raw;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps2_Raw;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Gps2_Raws;
