-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Sets a desired vehicle attitude. Used by an external controller to command 
--  the vehicle (manual controller or other system). 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Set_Attitude_Targets is

   pragma Preelaborate;

   Set_Attitude_Target_Id : constant Msg_Id := 82;

   Set_Attitude_Target_Len : constant Interfaces.Unsigned_8 := 39;

   type Set_Attitude_Target is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Type_Mask        : Attitude_Target_Typemask;
      --  Bitmap to indicate which dimensions should be ignored by the 
      --  vehicle. 
      Q                : Short_Float_Array (1 .. 4);
      --  Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0) 
      --  from MAV_FRAME_LOCAL_NED to MAV_FRAME_BODY_FRD 
      Body_Roll_Rate   : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body roll rate 
      Body_Pitch_Rate  : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body pitch rate 
      Body_Yaw_Rate    : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body yaw rate 
      Thrust           : Interfaces.IEEE_Float_32;
      --  Collective thrust, normalized to 0 .. 1 (-1 .. 1 for vehicles 
      --  capable of reverse trust) 
   end record;

   for Set_Attitude_Target use record
      Time_Boot_Ms     at 0  range 0 .. 31;
      Q                at 4  range 0 .. 127;
      Body_Roll_Rate   at 20 range 0 .. 31;
      Body_Pitch_Rate  at 24 range 0 .. 31;
      Body_Yaw_Rate    at 28 range 0 .. 31;
      Thrust           at 32 range 0 .. 31;
      Target_System    at 36 range 0 .. 7;
      Target_Component at 37 range 0 .. 7;
      Type_Mask        at 38 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Set_Attitude_Target;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Attitude_Target;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Attitude_Target;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Attitude_Target;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Set_Attitude_Targets;
