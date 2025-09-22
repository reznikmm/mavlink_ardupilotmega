-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The attitude in the aeronautical frame (right-handed, Z-down, X-front, 
--  Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a 
--  zero rotation would be expressed as (1 0 0 0). 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Attitude_Quaternions is

   pragma Preelaborate;

   Attitude_Quaternion_Id : constant Msg_Id := 31;

   Attitude_Quaternion_Len : constant Interfaces.Unsigned_8 := 32;

   type Attitude_Quaternion is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Q1           : Interfaces.IEEE_Float_32;
      --  Quaternion component 1, w (1 in null-rotation) 
      Q2           : Interfaces.IEEE_Float_32;
      --  Quaternion component 2, x (0 in null-rotation) 
      Q3           : Interfaces.IEEE_Float_32;
      --  Quaternion component 3, y (0 in null-rotation) 
      Q4           : Interfaces.IEEE_Float_32;
      --  Quaternion component 4, z (0 in null-rotation) 
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

   for Attitude_Quaternion use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Q1           at 4  range 0 .. 31;
      Q2           at 8  range 0 .. 31;
      Q3           at 12 range 0 .. 31;
      Q4           at 16 range 0 .. 31;
      Rollspeed    at 20 range 0 .. 31;
      Pitchspeed   at 24 range 0 .. 31;
      Yawspeed     at 28 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Attitude_Quaternion;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Attitude_Quaternion;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Attitude_Quaternion;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude_Quaternion;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Attitude_Quaternion;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude_Quaternion;
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

end MAVLink.V1.Common.Message.Attitude_Quaternions;
