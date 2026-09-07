-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of simulation environment, if used.

pragma Ada_2022;

package MAVLink.V1.Ardupilotmega.Simstates is

   pragma Pure;

   Simstate_Len : constant Interfaces.Unsigned_8 := 44;

   type Simstate is record
      Roll  : Raw_Float;
      --  Units: [rad]
      --  Roll angle.
      Pitch : Raw_Float;
      --  Units: [rad]
      --  Pitch angle.
      Yaw   : Raw_Float;
      --  Units: [rad]
      --  Yaw angle.
      Xacc  : Raw_Float;
      --  Units: [m/s/s]
      --  X acceleration.
      Yacc  : Raw_Float;
      --  Units: [m/s/s]
      --  Y acceleration.
      Zacc  : Raw_Float;
      --  Units: [m/s/s]
      --  Z acceleration.
      Xgyro : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around X axis.
      Ygyro : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around Y axis.
      Zgyro : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around Z axis.
      Lat   : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude.
      Lng   : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude.
   end record;

   for Simstate use record
      Roll  at 0  range 0 .. 31;
      Pitch at 4  range 0 .. 31;
      Yaw   at 8  range 0 .. 31;
      Xacc  at 12 range 0 .. 31;
      Yacc  at 16 range 0 .. 31;
      Zacc  at 20 range 0 .. 31;
      Xgyro at 24 range 0 .. 31;
      Ygyro at 28 range 0 .. 31;
      Zgyro at 32 range 0 .. 31;
      Lat   at 36 range 0 .. 31;
      Lng   at 40 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Simstate;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Simstate;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Simstate;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Simstate;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Simstate;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Simstate;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Ardupilotmega.Simstates;
