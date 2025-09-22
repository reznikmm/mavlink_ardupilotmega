-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Sets a desired vehicle position in a local north-east-down coordinate 
--  frame. Used by an external controller to command the vehicle (manual 
--  controller or other system). 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Set_Position_Target_Local_Neds is

   pragma Preelaborate;

   Set_Position_Target_Local_Ned_Id : constant Msg_Id := 84;

   Set_Position_Target_Local_Ned_Len : constant Interfaces.Unsigned_8 := 53;

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
      X                : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  X Position in NED frame 
      Y                : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Y Position in NED frame 
      Z                : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Z Position in NED frame (note, altitude is negative in NED) 
      Vx               : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  X velocity in NED frame 
      Vy               : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Y velocity in NED frame 
      Vz               : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Z velocity in NED frame 
      Afx              : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  X acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Afy              : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Y acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Afz              : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Z acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Yaw              : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  yaw setpoint 
      Yaw_Rate         : Interfaces.IEEE_Float_32;
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
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Position_Target_Local_Ned;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Position_Target_Local_Ned;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Position_Target_Local_Ned;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Set_Position_Target_Local_Neds;
