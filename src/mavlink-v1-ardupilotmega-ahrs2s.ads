-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of secondary AHRS filter if available.

pragma Ada_2022;

package MAVLink.V1.Ardupilotmega.Ahrs2s is

   pragma Pure;

   Ahrs2_Len : constant Interfaces.Unsigned_8 := 24;

   type Ahrs2 is record
      Roll     : Raw_Float;
      --  Units: [rad]
      --  Roll angle.
      Pitch    : Raw_Float;
      --  Units: [rad]
      --  Pitch angle.
      Yaw      : Raw_Float;
      --  Units: [rad]
      --  Yaw angle.
      Altitude : Raw_Float;
      --  Units: [m]
      --  Altitude (MSL).
      Lat      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude.
      Lng      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude.
   end record;

   for Ahrs2 use record
      Roll     at 0  range 0 .. 31;
      Pitch    at 4  range 0 .. 31;
      Yaw      at 8  range 0 .. 31;
      Altitude at 12 range 0 .. 31;
      Lat      at 16 range 0 .. 31;
      Lng      at 20 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Ahrs2;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ahrs2;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ahrs2;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ahrs2;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Ahrs2;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ahrs2;
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

end MAVLink.V1.Ardupilotmega.Ahrs2s;
