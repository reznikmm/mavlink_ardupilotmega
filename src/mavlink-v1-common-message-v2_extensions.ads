-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Message implementing parts of the V2 payload specs in V1 frames for 
--  transitional support. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.V2_Extensions is

   pragma Preelaborate;

   V2_Extension_Id : constant Msg_Id := 248;

   V2_Extension_Len : constant Interfaces.Unsigned_8 := 254;

   type V2_Extension is record
      Target_Network   : Interfaces.Unsigned_8;
      --  Network ID (0 for broadcast) 
      Target_System    : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast) 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast) 
      Message_Type     : Interfaces.Unsigned_16;
      --  A code that identifies the software component that understands this 
      --  message (analogous to USB device classes or mime type strings). If 
      --  this code is less than 32768, it is considered a 'registered' 
      --  protocol extension and the corresponding entry should be added to 
      --  https://github.com/mavlink/mavlink/definition_files/extension_message_ids.xml. 
      --  Software creators can register blocks of message IDs as needed 
      --  (useful for GCS specific metadata, etc...). Message_types greater 
      --  than 32767 are considered local experiments and should not be 
      --  checked in to any widely distributed codebase. 
      Payload          : Unsigned_8_Array (1 .. 249);
      --  Variable length payload. The length must be encoded in the payload 
      --  as part of the message_type protocol, e.g. by including the length 
      --  as payload data, or by terminating the payload data with a non-zero 
      --  marker. This is required in order to reconstruct zero-terminated 
      --  payloads that are (or otherwise would be) trimmed by MAVLink 2 
      --  empty-byte truncation. The entire content of the payload block is 
      --  opaque unless you understand the encoding message_type. The 
      --  particular encoding used can be extension specific and might not 
      --  always be documented as part of the MAVLink specification. 
   end record;

   for V2_Extension use record
      Message_Type     at 0 range 0 .. 15;
      Target_Network   at 2 range 0 .. 7;
      Target_System    at 3 range 0 .. 7;
      Target_Component at 4 range 0 .. 7;
      Payload          at 5 range 0 .. 1991;
   end record;

   procedure Encode
     (Message : V2_Extension;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : V2_Extension;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out V2_Extension;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out V2_Extension;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out V2_Extension;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out V2_Extension;
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

end MAVLink.V1.Common.Message.V2_Extensions;
