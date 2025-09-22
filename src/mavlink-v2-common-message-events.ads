-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Event message. Each new event from a particular component gets a new 
--  sequence number. The same message might be sent multiple times if 
--  (re-)requested. Most events are broadcast, some can be specific to a 
--  target component (as receivers keep track of the sequence for missed 
--  events, all events need to be broadcast. Thus we use destination_component 
--  instead of target_component). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Events is

   pragma Preelaborate;

   Event_Id : constant Msg_Id := 410;

   type Event is record
      Destination_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Destination_System    : Interfaces.Unsigned_8;
      --  System ID 
      Id                    : Interfaces.Unsigned_32;
      --  Event ID (as defined in the component metadata) 
      Event_Time_Boot_Ms    : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot when the event happened). 
      Sequence_Field        : Interfaces.Unsigned_16;
      --  Sequence number. 
      Log_Levels            : Interfaces.Unsigned_8;
      --  Log levels: 4 bits MSB: internal (for logging purposes), 4 bits LSB: 
      --  external. Levels: Emergency = 0, Alert = 1, Critical = 2, Error = 3, 
      --  Warning = 4, Notice = 5, Info = 6, Debug = 7, Protocol = 8, Disabled 
      --  = 9 
      Arguments             : Unsigned_8_Array (1 .. 40);
      --  Arguments (depend on event ID). 
   end record;

   for Event use record
      Id                    at 0  range 0 .. 31;
      Event_Time_Boot_Ms    at 4  range 0 .. 31;
      Sequence_Field        at 8  range 0 .. 15;
      Destination_Component at 10 range 0 .. 7;
      Destination_System    at 11 range 0 .. 7;
      Log_Levels            at 12 range 0 .. 7;
      Arguments             at 13 range 0 .. 319;
   end record;

   procedure Encode
     (Message : Event;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Event;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Event;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Event;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Event;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Event;
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
     (Message : Event;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Event;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Events;
