-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Message reporting the status of a gimbal device. This message should be 
--  broadcast by a gimbal device component at a low regular rate (e.g. 5 Hz). 
--  For the angles encoded in the quaternion and the angular velocities holds: 
--  If the flag GIMBAL_DEVICE_FLAGS_YAW_IN_VEHICLE_FRAME is set, then they are 
--  relative to the vehicle heading (vehicle frame). If the flag 
--  GIMBAL_DEVICE_FLAGS_YAW_IN_EARTH_FRAME is set, then they are relative to 
--  absolute North (earth frame). If neither of these flags are set, then (for 
--  backwards compatibility) it holds: If the flag 
--  GIMBAL_DEVICE_FLAGS_YAW_LOCK is set, then they are relative to absolute 
--  North (earth frame), else they are relative to the vehicle heading 
--  (vehicle frame). Other conditions of the flags are not allowed. The 
--  quaternion and angular velocities in the other frame can be calculated 
--  from delta_yaw and delta_yaw_velocity as q_earth = q_delta_yaw * q_vehicle 
--  and w_earth = w_delta_yaw_velocity + w_vehicle (if not NaN). If neither 
--  the GIMBAL_DEVICE_FLAGS_YAW_IN_VEHICLE_FRAME nor the 
--  GIMBAL_DEVICE_FLAGS_YAW_IN_EARTH_FRAME flag is set, then (for backwards 
--  compatibility) the data in the delta_yaw and delta_yaw_velocity fields are 
--  to be ignored. New implementations should always set either 
--  GIMBAL_DEVICE_FLAGS_YAW_IN_VEHICLE_FRAME or 
--  GIMBAL_DEVICE_FLAGS_YAW_IN_EARTH_FRAME, and always should set delta_yaw 
--  and delta_yaw_velocity either to the proper value or NaN. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gimbal_Device_Attitude_Statuses is

   pragma Preelaborate;

   Gimbal_Device_Attitude_Status_Id : constant Msg_Id := 285;

   type Gimbal_Device_Attitude_Status is record
      Target_System      : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component   : Interfaces.Unsigned_8;
      --  Component ID 
      Time_Boot_Ms       : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Flags              : Gimbal_Device_Flags;
      --  Current gimbal flags set. 
      Q                  : Short_Float_Array (1 .. 4);
      --  Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation). 
      --  The frame is described in the message description. 
      Angular_Velocity_X : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  X component of angular velocity (positive: rolling to the right). 
      --  The frame is described in the message description. NaN if unknown. 
      Angular_Velocity_Y : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Y component of angular velocity (positive: pitching up). The frame 
      --  is described in the message description. NaN if unknown. 
      Angular_Velocity_Z : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Z component of angular velocity (positive: yawing to the right). The 
      --  frame is described in the message description. NaN if unknown. 
      Failure_Flags      : Gimbal_Device_Error_Flags;
      --  Failure flags (0 for no failure) 
      Delta_Yaw          : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Yaw angle relating the quaternions in earth and body frames (see 
      --  message description). NaN if unknown. 
      Delta_Yaw_Velocity : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Yaw angular velocity relating the angular velocities in earth and 
      --  body frames (see message description). NaN if unknown. 
      Gimbal_Device_Id   : Interfaces.Unsigned_8 :=
        0;
      --  This field is to be used if the gimbal manager and the gimbal device 
      --  are the same component and hence have the same component ID. This 
      --  field is then set a number between 1-6. If the component ID is 
      --  separate, this field is not required and must be set to 0. 
   end record;

   for Gimbal_Device_Attitude_Status use record
      Time_Boot_Ms       at 0  range 0 .. 31;
      Q                  at 4  range 0 .. 127;
      Angular_Velocity_X at 20 range 0 .. 31;
      Angular_Velocity_Y at 24 range 0 .. 31;
      Angular_Velocity_Z at 28 range 0 .. 31;
      Failure_Flags      at 32 range 0 .. 31;
      Flags              at 36 range 0 .. 15;
      Target_System      at 38 range 0 .. 7;
      Target_Component   at 39 range 0 .. 7;
      Delta_Yaw          at 40 range 0 .. 31;
      Delta_Yaw_Velocity at 44 range 0 .. 31;
      Gimbal_Device_Id   at 48 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Device_Attitude_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Device_Attitude_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Device_Attitude_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Device_Attitude_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gimbal_Device_Attitude_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Device_Attitude_Status;
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
     (Message : Gimbal_Device_Attitude_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gimbal_Device_Attitude_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gimbal_Device_Attitude_Statuses;
