-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  A message containing logged data which requires a LOGGING_ACK to be sent 
--  back 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Logging_Data_Ackeds is

   pragma Preelaborate;

   Logging_Data_Acked_Id : constant Msg_Id := 267;

   type Logging_Data_Acked is record
      Target_System        : Interfaces.Unsigned_8;
      --  system ID of the target 
      Target_Component     : Interfaces.Unsigned_8;
      --  component ID of the target 
      Sequence_Field       : Interfaces.Unsigned_16;
      --  sequence number (can wrap) 
      Length               : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  data length 
      First_Message_Offset : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Units: [bytes]
      --  offset into data where first message starts. This can be used for 
      --  recovery, when a previous message got lost (set to UINT8_MAX if no 
      --  start exists). 
      Data                 : Unsigned_8_Array (1 .. 249);
      --  logged data 
   end record;

   for Logging_Data_Acked use record
      Sequence_Field       at 0 range 0 .. 15;
      Target_System        at 2 range 0 .. 7;
      Target_Component     at 3 range 0 .. 7;
      Length               at 4 range 0 .. 7;
      First_Message_Offset at 5 range 0 .. 7;
      Data                 at 6 range 0 .. 1991;
   end record;

   procedure Encode
     (Message : Logging_Data_Acked;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Logging_Data_Acked;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Logging_Data_Acked;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Logging_Data_Acked;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Logging_Data_Acked;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Logging_Data_Acked;
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
     (Message : Logging_Data_Acked;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Logging_Data_Acked;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Logging_Data_Ackeds;
