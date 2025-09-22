-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The interval between messages for a particular MAVLink message ID. This 
--  message is sent in response to the MAV_CMD_REQUEST_MESSAGE command with 
--  param1=244 (this message) and param2=message_id (the id of the message for 
--  which the interval is required). It may also be sent in response to 
--  MAV_CMD_GET_MESSAGE_INTERVAL. This interface replaces DATA_STREAM. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Message_Intervals is

   pragma Preelaborate;

   Message_Interval_Id : constant Msg_Id := 244;

   Message_Interval_Len : constant Interfaces.Unsigned_8 := 6;

   type Message_Interval is record
      Message_Id_Field : Interfaces.Unsigned_16;
      --  The ID of the requested MAVLink message. v1.0 is limited to 254 
      --  messages. 
      Interval_Us      : Interfaces.Integer_32;
      --  Units: [us]
      --  The interval between two messages. A value of -1 indicates this 
      --  stream is disabled, 0 indicates it is not available, > 0 indicates 
      --  the interval at which it is sent. 
   end record;

   for Message_Interval use record
      Interval_Us      at 0 range 0 .. 31;
      Message_Id_Field at 4 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Message_Interval;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Message_Interval;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Message_Interval;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Message_Interval;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Message_Interval;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Message_Interval;
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

end MAVLink.V1.Common.Message.Message_Intervals;
