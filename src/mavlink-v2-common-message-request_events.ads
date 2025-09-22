-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request one or more events to be (re-)sent. If 
--  first_sequence==last_sequence, only a single event is requested. Note that 
--  first_sequence can be larger than last_sequence (because the sequence 
--  number can wrap). Each sequence will trigger an EVENT or EVENT_ERROR 
--  response. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Request_Events is

   pragma Preelaborate;

   Request_Event_Id : constant Msg_Id := 412;

   type Request_Event is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      First_Sequence   : Interfaces.Unsigned_16;
      --  First sequence number of the requested event. 
      Last_Sequence    : Interfaces.Unsigned_16;
      --  Last sequence number of the requested event. 
   end record;

   for Request_Event use record
      First_Sequence   at 0 range 0 .. 15;
      Last_Sequence    at 2 range 0 .. 15;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Request_Event;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Request_Event;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Request_Event;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Request_Event;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Request_Event;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Request_Event;
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
     (Message : Request_Event;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Request_Event;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Request_Events;
