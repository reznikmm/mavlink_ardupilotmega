-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The attitude in the aeronautical frame (right-handed, Z-down, Y-right, 
--  X-front, ZYX, intrinsic). 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Attitudes is

   pragma Preelaborate;

   Attitude_Id : constant Msg_Id := 30;

   Attitude_Len : constant Interfaces.Unsigned_8 := 28;

   type Attitude is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Roll         : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Roll angle (-pi..+pi) 
      Pitch        : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Pitch angle (-pi..+pi) 
      Yaw          : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Yaw angle (-pi..+pi) 
      Rollspeed    : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Roll angular speed 
      Pitchspeed   : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Pitch angular speed 
      Yawspeed     : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Yaw angular speed 
   end record;

   for Attitude use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Roll         at 4  range 0 .. 31;
      Pitch        at 8  range 0 .. 31;
      Yaw          at 12 range 0 .. 31;
      Rollspeed    at 16 range 0 .. 31;
      Pitchspeed   at 20 range 0 .. 31;
      Yawspeed     at 24 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Attitude;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Attitude;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Attitude;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Attitude;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude;
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

end MAVLink.V1.Common.Message.Attitudes;
