-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Send a block of log data to remote location. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Remote_Log_Data_Blocks is

   pragma Preelaborate;

   Remote_Log_Data_Block_Id : constant Msg_Id := 184;

   Remote_Log_Data_Block_Len : constant Interfaces.Unsigned_8 := 206;

   type Remote_Log_Data_Block is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID. 
      Seqno            : Mav_Remote_Log_Data_Block_Commands;
      --  Log data block sequence number. 
      Data             : Unsigned_8_Array (1 .. 200);
      --  Log data block. 
   end record;

   for Remote_Log_Data_Block use record
      Seqno            at 0 range 0 .. 31;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
      Data             at 6 range 0 .. 1599;
   end record;

   procedure Encode
     (Message : Remote_Log_Data_Block;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Remote_Log_Data_Block;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Remote_Log_Data_Block;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Remote_Log_Data_Block;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Remote_Log_Data_Blocks;
