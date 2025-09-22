-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Send Status of each log block that autopilot board might have sent. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Remote_Log_Block_Statuses is

   pragma Preelaborate;

   Remote_Log_Block_Status_Id : constant Msg_Id := 185;

   Remote_Log_Block_Status_Len : constant Interfaces.Unsigned_8 := 7;

   type Remote_Log_Block_Status is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID. 
      Seqno            : Interfaces.Unsigned_32;
      --  Log data block sequence number. 
      Status           : Mav_Remote_Log_Data_Block_Statuses;
      --  Log data block status. 
   end record;

   for Remote_Log_Block_Status use record
      Seqno            at 0 range 0 .. 31;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
      Status           at 6 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Remote_Log_Block_Status;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Remote_Log_Block_Status;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Remote_Log_Block_Status;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Remote_Log_Block_Status;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Remote_Log_Block_Statuses;
