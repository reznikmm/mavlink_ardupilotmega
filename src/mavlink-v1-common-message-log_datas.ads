-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Reply to LOG_REQUEST_DATA 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Log_Datas is

   pragma Preelaborate;

   Log_Data_Id : constant Msg_Id := 120;

   Log_Data_Len : constant Interfaces.Unsigned_8 := 97;

   type Log_Data is record
      Id    : Interfaces.Unsigned_16;
      --  Log id (from LOG_ENTRY reply) 
      Ofs   : Interfaces.Unsigned_32;
      --  Offset into the log 
      Count : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  Number of bytes (zero for end of log) 
      Data  : Unsigned_8_Array (1 .. 90);
      --  log data 
   end record;

   for Log_Data use record
      Ofs   at 0 range 0 .. 31;
      Id    at 4 range 0 .. 15;
      Count at 6 range 0 .. 7;
      Data  at 7 range 0 .. 719;
   end record;

   procedure Encode
     (Message : Log_Data;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Log_Data;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Log_Data;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Log_Data;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Log_Datas;
