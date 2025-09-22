-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  File transfer protocol message: https://mavlink.io/en/services/ftp.html. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.File_Transfer_Protocols is

   pragma Preelaborate;

   File_Transfer_Protocol_Id : constant Msg_Id := 110;

   File_Transfer_Protocol_Len : constant Interfaces.Unsigned_8 := 254;

   type File_Transfer_Protocol is record
      Target_Network   : Interfaces.Unsigned_8;
      --  Network ID (0 for broadcast) 
      Target_System    : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast) 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast) 
      Payload          : Unsigned_8_Array (1 .. 251);
      --  Variable length payload. The length is defined by the remaining 
      --  message length when subtracting the header and other fields. The 
      --  content/format of this block is defined in 
      --  https://mavlink.io/en/services/ftp.html. 
   end record;

   for File_Transfer_Protocol use record
      Target_Network   at 0 range 0 .. 7;
      Target_System    at 1 range 0 .. 7;
      Target_Component at 2 range 0 .. 7;
      Payload          at 3 range 0 .. 2007;
   end record;

   procedure Encode
     (Message : File_Transfer_Protocol;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : File_Transfer_Protocol;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out File_Transfer_Protocol;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out File_Transfer_Protocol;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.File_Transfer_Protocols;
