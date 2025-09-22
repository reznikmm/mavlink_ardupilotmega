-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Emit an encrypted signature / key identifying this system. PLEASE NOTE: 
--  This protocol has been kept simple, so transmitting the key requires an 
--  encrypted channel for true safety. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Auth_Keys is

   pragma Preelaborate;

   Auth_Key_Id : constant Msg_Id := 7;

   Auth_Key_Len : constant Interfaces.Unsigned_8 := 32;

   type Auth_Key is record
      Key : String (1 .. 32);
      --  key 
   end record;

   for Auth_Key use record
      Key at 0 range 0 .. 255;
   end record;

   procedure Encode
     (Message : Auth_Key;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Auth_Key;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Auth_Key;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Auth_Key;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Auth_Keys;
