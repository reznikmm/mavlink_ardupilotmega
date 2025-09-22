-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The attitude in the aeronautical frame (right-handed, Z-down, X-front, 
--  Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a 
--  zero rotation would be expressed as (1 0 0 0). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Attitude_Quaternions is

   pragma Preelaborate;

   Attitude_Quaternion_Id : constant Msg_Id := 31;

   type Attitude_Quaternion is record
      Time_Boot_Ms  : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Q1            : Raw_Float;
      --  Quaternion component 1, w (1 in null-rotation) 
      Q2            : Raw_Float;
      --  Quaternion component 2, x (0 in null-rotation) 
      Q3            : Raw_Float;
      --  Quaternion component 3, y (0 in null-rotation) 
      Q4            : Raw_Float;
      --  Quaternion component 4, z (0 in null-rotation) 
      Rollspeed     : Raw_Float;
      --  Units: [rad/s]
      --  Roll angular speed 
      Pitchspeed    : Raw_Float;
      --  Units: [rad/s]
      --  Pitch angular speed 
      Yawspeed      : Raw_Float;
      --  Units: [rad/s]
      --  Yaw angular speed 
      Repr_Offset_Q : Short_Float_Array (1 .. 4) :=
        [others => To_Raw (0.0)];
      --  Rotation offset by which the attitude quaternion and angular speed 
      --  vector should be rotated for user display (quaternion with [w, x, y, 
      --  z] order, zero-rotation is [1, 0, 0, 0], send [0, 0, 0, 0] if field 
      --  not supported). This field is intended for systems in which the 
      --  reference attitude may change during flight. For example, 
      --  tailsitters VTOLs rotate their reference attitude by 90 degrees 
      --  between hover mode and fixed wing mode, thus repr_offset_q is equal 
      --  to [1, 0, 0, 0] in hover mode and equal to [0.7071, 0, 0.7071, 0] in 
      --  fixed wing mode. 
   end record;

   for Attitude_Quaternion use record
      Time_Boot_Ms  at 0  range 0 .. 31;
      Q1            at 4  range 0 .. 31;
      Q2            at 8  range 0 .. 31;
      Q3            at 12 range 0 .. 31;
      Q4            at 16 range 0 .. 31;
      Rollspeed     at 20 range 0 .. 31;
      Pitchspeed    at 24 range 0 .. 31;
      Yawspeed      at 28 range 0 .. 31;
      Repr_Offset_Q at 32 range 0 .. 127;
   end record;

   procedure Encode
     (Message : Attitude_Quaternion;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Attitude_Quaternion;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Attitude_Quaternion;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude_Quaternion;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Attitude_Quaternion;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude_Quaternion;
      Connect : in out MAVLink.V2.In_Connection);
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
     (Message : Attitude_Quaternion;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Attitude_Quaternion;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Attitude_Quaternions;
