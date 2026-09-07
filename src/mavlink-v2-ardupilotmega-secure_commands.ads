-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Send a secure command. Data should be signed with a private key
--  corresponding with a public key known to the recipient. Signature should
--  be over the concatenation of the sequence number (little-endian format),
--  the operation (little-endian format) the data and the session key. For
--  SECURE_COMMAND_GET_SESSION_KEY the session key should be zero length. The
--  data array consists of the data followed by the signature. The sum of the
--  data_length and the sig_length cannot be more than 220. The format of the
--  data is command specific.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;

package MAVLink.V2.Ardupilotmega.Secure_Commands is

   pragma Pure;

   type Secure_Command is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Sequence_Field   : Interfaces.Unsigned_32;
      --  Sequence ID for tagging reply.
      Operation        : Secure_Command_Op;
      --  Operation being requested.
      Data_Length      : Interfaces.Unsigned_8;
      --  Data length.
      Sig_Length       : Interfaces.Unsigned_8;
      --  Signature length.
      Data             : Unsigned_8_Array (1 .. 220);
      --  Signed data.
   end record;

   for Secure_Command use record
      Sequence_Field   at 0  range 0 .. 31;
      Operation        at 4  range 0 .. 31;
      Target_System    at 8  range 0 .. 7;
      Target_Component at 9  range 0 .. 7;
      Data_Length      at 10 range 0 .. 7;
      Sig_Length       at 11 range 0 .. 7;
      Data             at 12 range 0 .. 1759;
   end record;

   procedure Encode
     (Message : Secure_Command;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Secure_Command;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Secure_Command;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Secure_Command;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Secure_Command;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Secure_Command;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Secure_Command;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Secure_Command;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Secure_Commands;
