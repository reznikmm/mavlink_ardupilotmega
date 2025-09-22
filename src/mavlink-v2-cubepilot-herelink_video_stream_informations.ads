-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about video stream

pragma Ada_2022;

package MAVLink.V2.Cubepilot.Herelink_Video_Stream_Informations is

   pragma Pure;

   type Herelink_Video_Stream_Information is record
      Camera_Id    : Interfaces.Unsigned_8;
      --  Video Stream ID (1 for first, 2 for second, etc.)
      Status       : Interfaces.Unsigned_8;
      --  Number of streams available.
      Framerate    : Raw_Float;
      --  Units: [Hz]
      --  Frame rate.
      Resolution_H : Interfaces.Unsigned_16;
      --  Units: [pix]
      --  Horizontal resolution.
      Resolution_V : Interfaces.Unsigned_16;
      --  Units: [pix]
      --  Vertical resolution.
      Bitrate      : Interfaces.Unsigned_32;
      --  Units: [bits/s]
      --  Bit rate.
      Rotation     : Interfaces.Unsigned_16;
      --  Units: [deg]
      --  Video image rotation clockwise.
      Uri          : String (1 .. 230);
      --  Video stream URI (TCP or RTSP URI ground station should connect to)
      --  or port number (UDP port ground station should listen to).
   end record;

   for Herelink_Video_Stream_Information use record
      Framerate    at 0  range 0 .. 31;
      Bitrate      at 4  range 0 .. 31;
      Resolution_H at 8  range 0 .. 15;
      Resolution_V at 10 range 0 .. 15;
      Rotation     at 12 range 0 .. 15;
      Camera_Id    at 14 range 0 .. 7;
      Status       at 15 range 0 .. 7;
      Uri          at 16 range 0 .. 1839;
   end record;

   procedure Encode
     (Message : Herelink_Video_Stream_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Herelink_Video_Stream_Information;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Herelink_Video_Stream_Information;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Herelink_Video_Stream_Information;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Herelink_Video_Stream_Information;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Herelink_Video_Stream_Information;
      Connect : MAVLink.V2.In_Connection);
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
     (Message : Herelink_Video_Stream_Information;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Herelink_Video_Stream_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Cubepilot.Herelink_Video_Stream_Informations;
