-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2015-08 REPLACED BY: MESSAGE_INTERVAL
------------
--  Data stream status information. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Data_Streams is

   pragma Preelaborate;

   Data_Stream_Id : constant Msg_Id := 67;

   Data_Stream_Len : constant Interfaces.Unsigned_8 := 4;

   type Data_Stream is record
      Stream_Id    : Interfaces.Unsigned_8;
      --  The ID of the requested data stream 
      Message_Rate : Interfaces.Unsigned_16;
      --  Units: [Hz]
      --  The message rate 
      On_Off       : Interfaces.Unsigned_8;
      --  1 stream is enabled, 0 stream is stopped. 
   end record;

   pragma Obsolescent (Data_Stream);

   for Data_Stream use record
      Message_Rate at 0 range 0 .. 15;
      Stream_Id    at 2 range 0 .. 7;
      On_Off       at 3 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Data_Stream;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Data_Stream;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Data_Stream;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Data_Stream;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Data_Stream;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Data_Stream;
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

end MAVLink.V1.Common.Message.Data_Streams;
