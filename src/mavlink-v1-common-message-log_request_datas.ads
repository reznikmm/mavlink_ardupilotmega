-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Request a chunk of a log 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Log_Request_Datas is

   pragma Preelaborate;

   Log_Request_Data_Id : constant Msg_Id := 119;

   Log_Request_Data_Len : constant Interfaces.Unsigned_8 := 12;

   type Log_Request_Data is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Id               : Interfaces.Unsigned_16;
      --  Log id (from LOG_ENTRY reply) 
      Ofs              : Interfaces.Unsigned_32;
      --  Offset into the log 
      Count            : Interfaces.Unsigned_32;
      --  Units: [bytes]
      --  Number of bytes 
   end record;

   for Log_Request_Data use record
      Ofs              at 0  range 0 .. 31;
      Count            at 4  range 0 .. 31;
      Id               at 8  range 0 .. 15;
      Target_System    at 10 range 0 .. 7;
      Target_Component at 11 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Log_Request_Data;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Log_Request_Data;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Log_Request_Data;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Log_Request_Data;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Log_Request_Data;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Log_Request_Data;
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

end MAVLink.V1.Common.Message.Log_Request_Datas;
