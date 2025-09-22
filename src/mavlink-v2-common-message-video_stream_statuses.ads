-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about the status of a video stream. It may be requested using 
--  MAV_CMD_REQUEST_MESSAGE. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Video_Stream_Statuses is

   pragma Preelaborate;

   Video_Stream_Status_Id : constant Msg_Id := 270;

   type Video_Stream_Status is record
      Stream_Id        : Interfaces.Unsigned_8;
      --  Video Stream ID (1 for first, 2 for second, etc.) 
      Flags            : Video_Stream_Status_Flags;
      --  Bitmap of stream status flags 
      Framerate        : Raw_Float;
      --  Units: [Hz]
      --  Frame rate 
      Resolution_H     : Interfaces.Unsigned_16;
      --  Units: [pix]
      --  Horizontal resolution 
      Resolution_V     : Interfaces.Unsigned_16;
      --  Units: [pix]
      --  Vertical resolution 
      Bitrate          : Interfaces.Unsigned_32;
      --  Units: [bits/s]
      --  Bit rate 
      Rotation         : Interfaces.Unsigned_16;
      --  Units: [deg]
      --  Video image rotation clockwise 
      Hfov             : Interfaces.Unsigned_16;
      --  Units: [deg]
      --  Horizontal Field of view 
      Camera_Device_Id : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
   end record;

   for Video_Stream_Status use record
      Framerate        at 0  range 0 .. 31;
      Bitrate          at 4  range 0 .. 31;
      Flags            at 8  range 0 .. 15;
      Resolution_H     at 10 range 0 .. 15;
      Resolution_V     at 12 range 0 .. 15;
      Rotation         at 14 range 0 .. 15;
      Hfov             at 16 range 0 .. 15;
      Stream_Id        at 18 range 0 .. 7;
      Camera_Device_Id at 19 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Video_Stream_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Video_Stream_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Video_Stream_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Video_Stream_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Video_Stream_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Video_Stream_Status;
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
     (Message : Video_Stream_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Video_Stream_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Video_Stream_Statuses;
