-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Status text message. These messages are printed in yellow in the COMM 
--  console of QGroundControl. WARNING: They consume quite some bandwidth, so 
--  use only for important status and error messages. If implemented wisely, 
--  these messages are buffered on the MCU and sent only at a limited rate 
--  (e.g. 10 Hz). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Statustexts is

   pragma Preelaborate;

   Statustext_Id : constant Msg_Id := 253;

   type Statustext is record
      Severity  : Mav_Severity;
      --  Severity of status. Relies on the definitions within RFC-5424. 
      Text      : String (1 .. 50);
      --  Status text message, without null termination character 
      Id        : Interfaces.Unsigned_16;
      --  Unique (opaque) identifier for this statustext message. May be used 
      --  to reassemble a logical long-statustext message from a sequence of 
      --  chunks. A value of zero indicates this is the only chunk in the 
      --  sequence and the message can be emitted immediately. 
      Chunk_Seq : Interfaces.Unsigned_8;
      --  This chunk's sequence number; indexing is from zero. Any null 
      --  character in the text field is taken to mean this was the last 
      --  chunk. 
   end record;

   for Statustext use record
      Severity  at 0  range 0 .. 7;
      Text      at 1  range 0 .. 399;
      Id        at 51 range 0 .. 15;
      Chunk_Seq at 53 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Statustext;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Statustext;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Statustext;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Statustext;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Statustext;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Statustext;
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
     (Message : Statustext;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Statustext;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Statustexts;
