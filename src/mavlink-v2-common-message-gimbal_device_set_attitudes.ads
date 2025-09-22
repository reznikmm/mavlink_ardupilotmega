-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Low level message to control a gimbal device's attitude. This message is 
--  to be sent from the gimbal manager to the gimbal device component. The 
--  quaternion and angular velocities can be set to NaN according to use case. 
--  For the angles encoded in the quaternion and the angular velocities holds: 
--  If the flag GIMBAL_DEVICE_FLAGS_YAW_IN_VEHICLE_FRAME is set, then they are 
--  relative to the vehicle heading (vehicle frame). If the flag 
--  GIMBAL_DEVICE_FLAGS_YAW_IN_EARTH_FRAME is set, then they are relative to 
--  absolute North (earth frame). If neither of these flags are set, then (for 
--  backwards compatibility) it holds: If the flag 
--  GIMBAL_DEVICE_FLAGS_YAW_LOCK is set, then they are relative to absolute 
--  North (earth frame), else they are relative to the vehicle heading 
--  (vehicle frame). Setting both GIMBAL_DEVICE_FLAGS_YAW_IN_VEHICLE_FRAME and 
--  GIMBAL_DEVICE_FLAGS_YAW_IN_EARTH_FRAME is not allowed. These rules are to 
--  ensure backwards compatibility. New implementations should always set 
--  either GIMBAL_DEVICE_FLAGS_YAW_IN_VEHICLE_FRAME or 
--  GIMBAL_DEVICE_FLAGS_YAW_IN_EARTH_FRAME. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gimbal_Device_Set_Attitudes is

   pragma Preelaborate;

   Gimbal_Device_Set_Attitude_Id : constant Msg_Id := 284;

   type Gimbal_Device_Set_Attitude is record
      Target_System      : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component   : Interfaces.Unsigned_8;
      --  Component ID 
      Flags              : Gimbal_Device_Flags;
      --  Low level gimbal flags. 
      Q                  : Short_Float_Array (1 .. 4) :=
        [others => To_Raw (0.0)];
      --  Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation). 
      --  The frame is described in the message description. Set fields to NaN 
      --  to be ignored. 
      Angular_Velocity_X : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  X component of angular velocity (positive: rolling to the right). 
      --  The frame is described in the message description. NaN to be 
      --  ignored. 
      Angular_Velocity_Y : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Y component of angular velocity (positive: pitching up). The frame 
      --  is described in the message description. NaN to be ignored. 
      Angular_Velocity_Z : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Z component of angular velocity (positive: yawing to the right). The 
      --  frame is described in the message description. NaN to be ignored. 
   end record;

   for Gimbal_Device_Set_Attitude use record
      Q                  at 0  range 0 .. 127;
      Angular_Velocity_X at 16 range 0 .. 31;
      Angular_Velocity_Y at 20 range 0 .. 31;
      Angular_Velocity_Z at 24 range 0 .. 31;
      Flags              at 28 range 0 .. 15;
      Target_System      at 30 range 0 .. 7;
      Target_Component   at 31 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Device_Set_Attitude;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Device_Set_Attitude;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Device_Set_Attitude;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Device_Set_Attitude;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gimbal_Device_Set_Attitude;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Device_Set_Attitude;
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
     (Message : Gimbal_Device_Set_Attitude;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gimbal_Device_Set_Attitude;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gimbal_Device_Set_Attitudes;
