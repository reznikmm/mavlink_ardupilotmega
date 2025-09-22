-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Sets a desired vehicle position in a local north-east-down coordinate 
--  frame. Used by an external controller to command the vehicle (manual 
--  controller or other system). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Set_Position_Target_Local_Neds is

   pragma Preelaborate;

   Set_Position_Target_Local_Ned_Id : constant Msg_Id := 84;

   type Set_Position_Target_Local_Ned is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Coordinate_Frame : Mav_Frame;
      --  Valid options are: MAV_FRAME_LOCAL_NED = 1, 
      --  MAV_FRAME_LOCAL_OFFSET_NED = 7, MAV_FRAME_BODY_NED = 8, 
      --  MAV_FRAME_BODY_OFFSET_NED = 9 
      Type_Mask        : Position_Target_Typemask;
      --  Bitmap to indicate which dimensions should be ignored by the 
      --  vehicle. 
      X                : Raw_Float;
      --  Units: [m]
      --  X Position in NED frame 
      Y                : Raw_Float;
      --  Units: [m]
      --  Y Position in NED frame 
      Z                : Raw_Float;
      --  Units: [m]
      --  Z Position in NED frame (note, altitude is negative in NED) 
      Vx               : Raw_Float;
      --  Units: [m/s]
      --  X velocity in NED frame 
      Vy               : Raw_Float;
      --  Units: [m/s]
      --  Y velocity in NED frame 
      Vz               : Raw_Float;
      --  Units: [m/s]
      --  Z velocity in NED frame 
      Afx              : Raw_Float;
      --  Units: [m/s/s]
      --  X acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Afy              : Raw_Float;
      --  Units: [m/s/s]
      --  Y acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Afz              : Raw_Float;
      --  Units: [m/s/s]
      --  Z acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Yaw              : Raw_Float;
      --  Units: [rad]
      --  yaw setpoint 
      Yaw_Rate         : Raw_Float;
      --  Units: [rad/s]
      --  yaw rate setpoint 
   end record;

   for Set_Position_Target_Local_Ned use record
      Time_Boot_Ms     at 0  range 0 .. 31;
      X                at 4  range 0 .. 31;
      Y                at 8  range 0 .. 31;
      Z                at 12 range 0 .. 31;
      Vx               at 16 range 0 .. 31;
      Vy               at 20 range 0 .. 31;
      Vz               at 24 range 0 .. 31;
      Afx              at 28 range 0 .. 31;
      Afy              at 32 range 0 .. 31;
      Afz              at 36 range 0 .. 31;
      Yaw              at 40 range 0 .. 31;
      Yaw_Rate         at 44 range 0 .. 31;
      Type_Mask        at 48 range 0 .. 15;
      Target_System    at 50 range 0 .. 7;
      Target_Component at 51 range 0 .. 7;
      Coordinate_Frame at 52 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Set_Position_Target_Local_Ned;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Position_Target_Local_Ned;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Position_Target_Local_Ned;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Position_Target_Local_Ned;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Set_Position_Target_Local_Ned;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Position_Target_Local_Ned;
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
     (Message : Set_Position_Target_Local_Ned;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Set_Position_Target_Local_Ned;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Set_Position_Target_Local_Neds;
