-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Send a block of log data to remote location.

pragma Ada_2022;

with MAVLink.V1.Ardupilotmega.Types; use MAVLink.V1.Ardupilotmega.Types;

package MAVLink.V1.Ardupilotmega.Remote_Log_Data_Blocks is

   pragma Pure;

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
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Remote_Log_Data_Block;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Remote_Log_Data_Block;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Remote_Log_Data_Block;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Remote_Log_Data_Block;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Remote_Log_Data_Block;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Ardupilotmega.Remote_Log_Data_Blocks;
