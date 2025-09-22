-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Message for transporting "arbitrary" variable-length data from one 
--  component to another (broadcast is not forbidden, but discouraged). The 
--  encoding of the data is usually extension specific, i.e. determined by the 
--  source, and is usually not documented as part of the MAVLink 
--  specification. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Tunnels is

   pragma Preelaborate;

   Tunnel_Id : constant Msg_Id := 385;

   type Tunnel is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID (can be 0 for broadcast, but this is discouraged) 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID (can be 0 for broadcast, but this is discouraged) 
      Payload_Type     : Mav_Tunnel_Payload_Type;
      --  A code that identifies the content of the payload (0 for unknown, 
      --  which is the default). If this code is less than 32768, it is a 
      --  'registered' payload type and the corresponding code should be added 
      --  to the MAV_TUNNEL_PAYLOAD_TYPE enum. Software creators can register 
      --  blocks of types as needed. Codes greater than 32767 are considered 
      --  local experiments and should not be checked in to any widely 
      --  distributed codebase. 
      Payload_Length   : Interfaces.Unsigned_8;
      --  Length of the data transported in payload 
      Payload          : Unsigned_8_Array (1 .. 128);
      --  Variable length payload. The payload length is defined by 
      --  payload_length. The entire content of this block is opaque unless 
      --  you understand the encoding specified by payload_type. 
   end record;

   for Tunnel use record
      Payload_Type     at 0 range 0 .. 15;
      Target_System    at 2 range 0 .. 7;
      Target_Component at 3 range 0 .. 7;
      Payload_Length   at 4 range 0 .. 7;
      Payload          at 5 range 0 .. 1023;
   end record;

   procedure Encode
     (Message : Tunnel;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Tunnel;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Tunnel;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Tunnel;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Tunnel;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Tunnel;
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
     (Message : Tunnel;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Tunnel;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Tunnels;
