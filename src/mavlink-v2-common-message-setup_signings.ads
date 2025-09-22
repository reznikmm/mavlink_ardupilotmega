-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Setup a MAVLink2 signing key. If called with secret_key of all zero and 
--  zero initial_timestamp will disable signing 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Setup_Signings is

   pragma Preelaborate;

   Setup_Signing_Id : constant Msg_Id := 256;

   type Setup_Signing is record
      Target_System     : Interfaces.Unsigned_8;
      --  system id of the target 
      Target_Component  : Interfaces.Unsigned_8;
      --  component ID of the target 
      Secret_Key        : Unsigned_8_Array (1 .. 32);
      --  signing key 
      Initial_Timestamp : Interfaces.Unsigned_64;
      --  initial timestamp 
   end record;

   for Setup_Signing use record
      Initial_Timestamp at 0  range 0 .. 63;
      Target_System     at 8  range 0 .. 7;
      Target_Component  at 9  range 0 .. 7;
      Secret_Key        at 10 range 0 .. 255;
   end record;

   procedure Encode
     (Message : Setup_Signing;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Setup_Signing;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Setup_Signing;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Setup_Signing;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Setup_Signing;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Setup_Signing;
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
     (Message : Setup_Signing;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Setup_Signing;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Setup_Signings;
