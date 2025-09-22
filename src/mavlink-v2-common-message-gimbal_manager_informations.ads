-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a high level gimbal manager. This message should be 
--  requested by a ground station using MAV_CMD_REQUEST_MESSAGE. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gimbal_Manager_Informations is

   pragma Preelaborate;

   Gimbal_Manager_Information_Id : constant Msg_Id := 280;

   type Gimbal_Manager_Information is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Cap_Flags        : Gimbal_Manager_Cap_Flags;
      --  Bitmap of gimbal capability flags. 
      Gimbal_Device_Id : Interfaces.Unsigned_8;
      --  Gimbal device ID that this gimbal manager is responsible for. 
      --  Component ID of gimbal device (or 1-6 for non-MAVLink gimbal). 
      Roll_Min         : Raw_Float;
      --  Units: [rad]
      --  Minimum hardware roll angle (positive: rolling to the right, 
      --  negative: rolling to the left) 
      Roll_Max         : Raw_Float;
      --  Units: [rad]
      --  Maximum hardware roll angle (positive: rolling to the right, 
      --  negative: rolling to the left) 
      Pitch_Min        : Raw_Float;
      --  Units: [rad]
      --  Minimum pitch angle (positive: up, negative: down) 
      Pitch_Max        : Raw_Float;
      --  Units: [rad]
      --  Maximum pitch angle (positive: up, negative: down) 
      Yaw_Min          : Raw_Float;
      --  Units: [rad]
      --  Minimum yaw angle (positive: to the right, negative: to the left) 
      Yaw_Max          : Raw_Float;
      --  Units: [rad]
      --  Maximum yaw angle (positive: to the right, negative: to the left) 
   end record;

   for Gimbal_Manager_Information use record
      Time_Boot_Ms     at 0  range 0 .. 31;
      Cap_Flags        at 4  range 0 .. 31;
      Roll_Min         at 8  range 0 .. 31;
      Roll_Max         at 12 range 0 .. 31;
      Pitch_Min        at 16 range 0 .. 31;
      Pitch_Max        at 20 range 0 .. 31;
      Yaw_Min          at 24 range 0 .. 31;
      Yaw_Max          at 28 range 0 .. 31;
      Gimbal_Device_Id at 32 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Manager_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Manager_Information;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Manager_Information;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Manager_Information;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gimbal_Manager_Information;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Manager_Information;
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
     (Message : Gimbal_Manager_Information;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gimbal_Manager_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gimbal_Manager_Informations;
