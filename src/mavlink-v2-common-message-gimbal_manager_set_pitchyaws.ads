-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set gimbal manager pitch and yaw angles (high rate message). This message 
--  is to be sent to the gimbal manager (e.g. from a ground station) and will 
--  be ignored by gimbal devices. Angles and rates can be set to NaN according 
--  to use case. Use MAV_CMD_DO_GIMBAL_MANAGER_PITCHYAW for low-rate 
--  adjustments that require confirmation. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gimbal_Manager_Set_Pitchyaws is

   pragma Preelaborate;

   Gimbal_Manager_Set_Pitchyaw_Id : constant Msg_Id := 287;

   type Gimbal_Manager_Set_Pitchyaw is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Flags            : Gimbal_Manager_Flags;
      --  High level gimbal manager flags to use. 
      Gimbal_Device_Id : Interfaces.Unsigned_8;
      --  Component ID of gimbal device to address (or 1-6 for non-MAVLink 
      --  gimbal), 0 for all gimbal device components. Send command multiple 
      --  times for more than one gimbal (but not all gimbals). 
      Pitch            : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Pitch angle (positive: up, negative: down, NaN to be ignored). 
      Yaw              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Yaw angle (positive: to the right, negative: to the left, NaN to be 
      --  ignored). 
      Pitch_Rate       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Pitch angular rate (positive: up, negative: down, NaN to be 
      --  ignored). 
      Yaw_Rate         : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Yaw angular rate (positive: to the right, negative: to the left, NaN 
      --  to be ignored). 
   end record;

   for Gimbal_Manager_Set_Pitchyaw use record
      Flags            at 0  range 0 .. 31;
      Pitch            at 4  range 0 .. 31;
      Yaw              at 8  range 0 .. 31;
      Pitch_Rate       at 12 range 0 .. 31;
      Yaw_Rate         at 16 range 0 .. 31;
      Target_System    at 20 range 0 .. 7;
      Target_Component at 21 range 0 .. 7;
      Gimbal_Device_Id at 22 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Manager_Set_Pitchyaw;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Manager_Set_Pitchyaw;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Manager_Set_Pitchyaw;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Manager_Set_Pitchyaw;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gimbal_Manager_Set_Pitchyaw;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Manager_Set_Pitchyaw;
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
     (Message : Gimbal_Manager_Set_Pitchyaw;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gimbal_Manager_Set_Pitchyaw;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gimbal_Manager_Set_Pitchyaws;
