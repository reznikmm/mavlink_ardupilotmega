-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about video stream. It may be requested using 
--  MAV_CMD_REQUEST_MESSAGE, where param2 indicates the video stream id: 0 for 
--  all streams, 1 for first, 2 for second, etc. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Video_Stream_Informations is

   pragma Preelaborate;

   Video_Stream_Information_Id : constant Msg_Id := 269;

   type Video_Stream_Information is record
      Stream_Id        : Interfaces.Unsigned_8;
      --  Video Stream ID (1 for first, 2 for second, etc.) 
      Count            : Interfaces.Unsigned_8;
      --  Number of streams available. 
      Type_Field       : Video_Stream_Type;
      --  Type of stream. 
      Flags            : Video_Stream_Status_Flags;
      --  Bitmap of stream status flags. 
      Framerate        : Raw_Float;
      --  Units: [Hz]
      --  Frame rate. 
      Resolution_H     : Interfaces.Unsigned_16;
      --  Units: [pix]
      --  Horizontal resolution. 
      Resolution_V     : Interfaces.Unsigned_16;
      --  Units: [pix]
      --  Vertical resolution. 
      Bitrate          : Interfaces.Unsigned_32;
      --  Units: [bits/s]
      --  Bit rate. 
      Rotation         : Interfaces.Unsigned_16;
      --  Units: [deg]
      --  Video image rotation clockwise. 
      Hfov             : Interfaces.Unsigned_16;
      --  Units: [deg]
      --  Horizontal Field of view. 
      Name             : String (1 .. 32);
      --  Stream name. 
      Uri              : String (1 .. 160);
      --  Video stream URI (TCP or RTSP URI ground station should connect to) 
      --  or port number (UDP port ground station should listen to). 
      Encoding         : Video_Stream_Encoding;
      --  Encoding of stream. 
      Camera_Device_Id : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
   end record;

   for Video_Stream_Information use record
      Framerate        at 0   range 0 .. 31;
      Bitrate          at 4   range 0 .. 31;
      Flags            at 8   range 0 .. 15;
      Resolution_H     at 10  range 0 .. 15;
      Resolution_V     at 12  range 0 .. 15;
      Rotation         at 14  range 0 .. 15;
      Hfov             at 16  range 0 .. 15;
      Stream_Id        at 18  range 0 .. 7;
      Count            at 19  range 0 .. 7;
      Type_Field       at 20  range 0 .. 7;
      Name             at 21  range 0 .. 255;
      Uri              at 53  range 0 .. 1279;
      Encoding         at 213 range 0 .. 7;
      Camera_Device_Id at 214 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Video_Stream_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Video_Stream_Information;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Video_Stream_Information;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Video_Stream_Information;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Video_Stream_Information;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Video_Stream_Information;
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
     (Message : Video_Stream_Information;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Video_Stream_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Video_Stream_Informations;
