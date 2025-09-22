-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Status of simulation environment, if used.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Simstates is

   pragma Pure;

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
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Simstate;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Simstate;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Simstate;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Simstate;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Simstate;
      Connect : MAVLink.V2.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Simstate;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Simstate;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Simstates;
