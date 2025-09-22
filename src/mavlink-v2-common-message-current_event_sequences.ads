-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Regular broadcast for the current latest event sequence number for a 
--  component. This is used to check for dropped events. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Current_Event_Sequences is

   pragma Preelaborate;

   Current_Event_Sequence_Id : constant Msg_Id := 411;

   type Current_Event_Sequence is record
      Sequence_Field : Interfaces.Unsigned_16;
      --  Sequence number. 
      Flags          : Mav_Event_Current_Sequence_Flags;
      --  Flag bitset. 
   end record;

   for Current_Event_Sequence use record
      Sequence_Field at 0 range 0 .. 15;
      Flags          at 2 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Current_Event_Sequence;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Current_Event_Sequence;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Current_Event_Sequence;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Current_Event_Sequence;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Current_Event_Sequence;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Current_Event_Sequence;
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
     (Message : Current_Event_Sequence;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Current_Event_Sequence;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Current_Event_Sequences;
