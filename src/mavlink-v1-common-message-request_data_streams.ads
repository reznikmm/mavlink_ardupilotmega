-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2015-08 REPLACED BY: MAV_CMD_SET_MESSAGE_INTERVAL 
------------
--  Request a data stream. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Request_Data_Streams is

   pragma Preelaborate;

   Request_Data_Stream_Id : constant Msg_Id := 66;

   Request_Data_Stream_Len : constant Interfaces.Unsigned_8 := 6;

   type Request_Data_Stream is record
      Target_System    : Interfaces.Unsigned_8;
      --  The target requested to send the message stream. 
      Target_Component : Interfaces.Unsigned_8;
      --  The target requested to send the message stream. 
      Req_Stream_Id    : Interfaces.Unsigned_8;
      --  The ID of the requested data stream 
      Req_Message_Rate : Interfaces.Unsigned_16;
      --  Units: [Hz]
      --  The requested message rate 
      Start_Stop       : Interfaces.Unsigned_8;
      --  1 to start sending, 0 to stop sending. 
   end record;

   pragma Obsolescent (Request_Data_Stream);

   for Request_Data_Stream use record
      Req_Message_Rate at 0 range 0 .. 15;
      Target_System    at 2 range 0 .. 7;
      Target_Component at 3 range 0 .. 7;
      Req_Stream_Id    at 4 range 0 .. 7;
      Start_Stop       at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Request_Data_Stream;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Request_Data_Stream;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Request_Data_Stream;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Request_Data_Stream;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Request_Data_Stream;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Request_Data_Stream;
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

end MAVLink.V1.Common.Message.Request_Data_Streams;
