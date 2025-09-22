-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Status generated in each node in the communication chain and injected into 
--  MAVLink stream. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Link_Node_Statuses is

   pragma Preelaborate;

   Link_Node_Status_Id : constant Msg_Id := 8;

   type Link_Node_Status is record
      Timestamp         : Interfaces.Unsigned_64;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Tx_Buf            : Interfaces.Unsigned_8;
      --  Units: [%]
      --  Remaining free transmit buffer space 
      Rx_Buf            : Interfaces.Unsigned_8;
      --  Units: [%]
      --  Remaining free receive buffer space 
      Tx_Rate           : Interfaces.Unsigned_32;
      --  Units: [bytes/s]
      --  Transmit rate 
      Rx_Rate           : Interfaces.Unsigned_32;
      --  Units: [bytes/s]
      --  Receive rate 
      Rx_Parse_Err      : Interfaces.Unsigned_16;
      --  Units: [bytes]
      --  Number of bytes that could not be parsed correctly. 
      Tx_Overflows      : Interfaces.Unsigned_16;
      --  Units: [bytes]
      --  Transmit buffer overflows. This number wraps around as it reaches 
      --  UINT16_MAX 
      Rx_Overflows      : Interfaces.Unsigned_16;
      --  Units: [bytes]
      --  Receive buffer overflows. This number wraps around as it reaches 
      --  UINT16_MAX 
      Messages_Sent     : Interfaces.Unsigned_32;
      --  Messages sent 
      Messages_Received : Interfaces.Unsigned_32;
      --  Messages received (estimated from counting seq) 
      Messages_Lost     : Interfaces.Unsigned_32;
      --  Messages lost (estimated from counting seq) 
   end record;

   for Link_Node_Status use record
      Timestamp         at 0  range 0 .. 63;
      Tx_Rate           at 8  range 0 .. 31;
      Rx_Rate           at 12 range 0 .. 31;
      Messages_Sent     at 16 range 0 .. 31;
      Messages_Received at 20 range 0 .. 31;
      Messages_Lost     at 24 range 0 .. 31;
      Rx_Parse_Err      at 28 range 0 .. 15;
      Tx_Overflows      at 30 range 0 .. 15;
      Rx_Overflows      at 32 range 0 .. 15;
      Tx_Buf            at 34 range 0 .. 7;
      Rx_Buf            at 35 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Link_Node_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Link_Node_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Link_Node_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Link_Node_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Link_Node_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Link_Node_Status;
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
     (Message : Link_Node_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Link_Node_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Link_Node_Statuses;
