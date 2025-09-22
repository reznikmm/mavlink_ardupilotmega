-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Camera Event. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Camera_Statuses is

   pragma Preelaborate;

   Camera_Status_Id : constant Msg_Id := 179;

   Camera_Status_Len : constant Interfaces.Unsigned_8 := 29;

   type Camera_Status is record
      Time_Usec     : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Image timestamp (since UNIX epoch, according to camera clock). 
      Target_System : Interfaces.Unsigned_8;
      --  System ID. 
      Cam_Idx       : Interfaces.Unsigned_8;
      --  Camera ID. 
      Img_Idx       : Interfaces.Unsigned_16;
      --  Image index. 
      Event_Id      : Camera_Status_Types;
      --  Event type. 
      P1            : Interfaces.IEEE_Float_32;
      --  Parameter 1 (meaning depends on event_id, see CAMERA_STATUS_TYPES 
      --  enum). 
      P2            : Interfaces.IEEE_Float_32;
      --  Parameter 2 (meaning depends on event_id, see CAMERA_STATUS_TYPES 
      --  enum). 
      P3            : Interfaces.IEEE_Float_32;
      --  Parameter 3 (meaning depends on event_id, see CAMERA_STATUS_TYPES 
      --  enum). 
      P4            : Interfaces.IEEE_Float_32;
      --  Parameter 4 (meaning depends on event_id, see CAMERA_STATUS_TYPES 
      --  enum). 
   end record;

   for Camera_Status use record
      Time_Usec     at 0  range 0 .. 63;
      P1            at 8  range 0 .. 31;
      P2            at 12 range 0 .. 31;
      P3            at 16 range 0 .. 31;
      P4            at 20 range 0 .. 31;
      Img_Idx       at 24 range 0 .. 15;
      Target_System at 26 range 0 .. 7;
      Cam_Idx       at 27 range 0 .. 7;
      Event_Id      at 28 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Status;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Status;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Status;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Status;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Camera_Statuses;
