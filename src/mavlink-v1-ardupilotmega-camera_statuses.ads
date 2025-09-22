-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Camera Event.

pragma Ada_2022;

with MAVLink.V1.Ardupilotmega.Types; use MAVLink.V1.Ardupilotmega.Types;

package MAVLink.V1.Ardupilotmega.Camera_Statuses is

   pragma Pure;

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
      P1            : Raw_Float;
      --  Parameter 1 (meaning depends on event_id, see CAMERA_STATUS_TYPES
      --  enum).
      P2            : Raw_Float;
      --  Parameter 2 (meaning depends on event_id, see CAMERA_STATUS_TYPES
      --  enum).
      P3            : Raw_Float;
      --  Parameter 3 (meaning depends on event_id, see CAMERA_STATUS_TYPES
      --  enum).
      P4            : Raw_Float;
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
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Status;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Status;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Status;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Status;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Status;
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

end MAVLink.V1.Ardupilotmega.Camera_Statuses;
