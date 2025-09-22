-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The global position, as returned by the Global Positioning System (GPS). 
--  This is NOT the global position estimate of the system, but rather a RAW 
--  sensor value. See message GLOBAL_POSITION_INT for the global position 
--  estimate. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Hil_Gpses is

   pragma Preelaborate;

   Hil_Gps_Id : constant Msg_Id := 113;

   Hil_Gps_Len : constant Interfaces.Unsigned_8 := 36;

   type Hil_Gps is record
      Time_Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Fix_Type           : Interfaces.Unsigned_8;
      --  0-1: no fix, 2: 2D fix, 3: 3D fix. Some applications will not use 
      --  the value of this field unless it is at least two, so always 
      --  correctly fill in the fix. 
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
      Vn                 : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  GPS velocity in north direction in earth-fixed NED frame 
      Ve                 : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  GPS velocity in east direction in earth-fixed NED frame 
      Vd                 : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  GPS velocity in down direction in earth-fixed NED frame 
      Cog                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [cdeg]
      --  Course over ground (NOT heading, but direction of movement), 
      --  0.0..359.99 degrees. If unknown, set to: UINT16_MAX 
      Satellites_Visible : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Number of satellites visible. If unknown, set to UINT8_MAX 
   end record;

   for Hil_Gps use record
      Time_Usec          at 0  range 0 .. 63;
      Lat                at 8  range 0 .. 31;
      Lon                at 12 range 0 .. 31;
      Alt                at 16 range 0 .. 31;
      Eph                at 20 range 0 .. 15;
      Epv                at 22 range 0 .. 15;
      Vel                at 24 range 0 .. 15;
      Vn                 at 26 range 0 .. 15;
      Ve                 at 28 range 0 .. 15;
      Vd                 at 30 range 0 .. 15;
      Cog                at 32 range 0 .. 15;
      Fix_Type           at 34 range 0 .. 7;
      Satellites_Visible at 35 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Hil_Gps;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_Gps;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_Gps;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Gps;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hil_Gps;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Gps;
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

end MAVLink.V1.Common.Message.Hil_Gpses;
