-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  An ack for a LOGGING_DATA_ACKED message 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Logging_Acks is

   pragma Preelaborate;

   Logging_Ack_Id : constant Msg_Id := 268;

   type Logging_Ack is record
      Target_System    : Interfaces.Unsigned_8;
      --  system ID of the target 
      Target_Component : Interfaces.Unsigned_8;
      --  component ID of the target 
      Sequence_Field   : Interfaces.Unsigned_16;
      --  sequence number (must match the one in LOGGING_DATA_ACKED) 
   end record;

   for Logging_Ack use record
      Sequence_Field   at 0 range 0 .. 15;
      Target_System    at 2 range 0 .. 7;
      Target_Component at 3 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Logging_Ack;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Logging_Ack;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Logging_Ack;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Logging_Ack;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Logging_Ack;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Logging_Ack;
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
     (Message : Logging_Ack;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Logging_Ack;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Logging_Acks;
