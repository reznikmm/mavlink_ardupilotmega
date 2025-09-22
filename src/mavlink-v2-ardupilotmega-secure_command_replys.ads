-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Reply from secure command.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;
with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Ardupilotmega.Secure_Command_Replys is

   pragma Pure;

   type Secure_Command_Reply is record
      Sequence_Field : Interfaces.Unsigned_32;
      --  Sequence ID from request.
      Operation      : Secure_Command_Op;
      --  Operation that was requested.
      Result         : Mav_Result;
      --  Result of command.
      Data_Length    : Interfaces.Unsigned_8;
      --  Data length.
      Data           : Unsigned_8_Array (1 .. 220);
      --  Reply data.
   end record;

   for Secure_Command_Reply use record
      Sequence_Field at 0  range 0 .. 31;
      Operation      at 4  range 0 .. 31;
      Result         at 8  range 0 .. 7;
      Data_Length    at 9  range 0 .. 7;
      Data           at 10 range 0 .. 1759;
   end record;

   procedure Encode
     (Message : Secure_Command_Reply;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Secure_Command_Reply;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Secure_Command_Reply;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Secure_Command_Reply;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Secure_Command_Reply;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Secure_Command_Reply;
      Connect : MAVLink.V2.In_Connection);
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
     (Message : Secure_Command_Reply;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Secure_Command_Reply;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Secure_Command_Replys;
