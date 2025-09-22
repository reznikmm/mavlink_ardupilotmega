-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status text message. These messages are printed in yellow in the COMM 
--  console of QGroundControl. WARNING: They consume quite some bandwidth, so 
--  use only for important status and error messages. If implemented wisely, 
--  these messages are buffered on the MCU and sent only at a limited rate 
--  (e.g. 10 Hz). 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Statustexts is

   pragma Preelaborate;

   Statustext_Id : constant Msg_Id := 253;

   Statustext_Len : constant Interfaces.Unsigned_8 := 51;

   type Statustext is record
      Severity : Mav_Severity;
      --  Severity of status. Relies on the definitions within RFC-5424. 
      Text     : String (1 .. 50);
      --  Status text message, without null termination character 
   end record;

   for Statustext use record
      Severity at 0 range 0 .. 7;
      Text     at 1 range 0 .. 399;
   end record;

   procedure Encode
     (Message : Statustext;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Statustext;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Statustext;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Statustext;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Statustext;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Statustext;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Statustexts;
