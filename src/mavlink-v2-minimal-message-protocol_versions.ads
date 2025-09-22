-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Version and capability of protocol version. This message can be requested 
--  with MAV_CMD_REQUEST_MESSAGE and is used as part of the handshaking to 
--  establish which MAVLink version should be used on the network. Every node 
--  should respond to a request for PROTOCOL_VERSION to enable the 
--  handshaking. Library implementers should consider adding this into the 
--  default decoding state machine to allow the protocol core to respond 
--  directly. 
pragma Ada_2022;


package MAVLink.V2.Minimal.Message.Protocol_Versions is

   pragma Preelaborate;

   Protocol_Version_Id : constant Msg_Id := 300;

   type Protocol_Version is record
      Version              : Interfaces.Unsigned_16;
      --  Currently active MAVLink version number * 100: v1.0 is 100, v2.0 is 
      --  200, etc. 
      Min_Version          : Interfaces.Unsigned_16;
      --  Minimum MAVLink version supported 
      Max_Version          : Interfaces.Unsigned_16;
      --  Maximum MAVLink version supported (set to the same value as version 
      --  by default) 
      Spec_Version_Hash    : Unsigned_8_Array (1 .. 8);
      --  The first 8 bytes (not characters printed in hex!) of the git hash. 
      Library_Version_Hash : Unsigned_8_Array (1 .. 8);
      --  The first 8 bytes (not characters printed in hex!) of the git hash. 
   end record;

   for Protocol_Version use record
      Version              at 0  range 0 .. 15;
      Min_Version          at 2  range 0 .. 15;
      Max_Version          at 4  range 0 .. 15;
      Spec_Version_Hash    at 6  range 0 .. 63;
      Library_Version_Hash at 14 range 0 .. 63;
   end record;

   procedure Encode
     (Message : Protocol_Version;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Protocol_Version;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Protocol_Version;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Protocol_Version;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Protocol_Version;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Protocol_Version;
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
     (Message : Protocol_Version;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Protocol_Version;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Minimal.Message.Protocol_Versions;
