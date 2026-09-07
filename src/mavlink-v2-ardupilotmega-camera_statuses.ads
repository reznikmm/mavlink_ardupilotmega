-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Camera Event.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;

package MAVLink.V2.Ardupilotmega.Camera_Statuses is

   pragma Pure;

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
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Status;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Camera_Status;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Camera_Status;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Camera_Status;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Camera_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Camera_Statuses;
