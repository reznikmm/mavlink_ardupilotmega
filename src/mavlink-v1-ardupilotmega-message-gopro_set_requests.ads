-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Request to set a GOPRO_COMMAND with a desired. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Gopro_Set_Requests is

   pragma Preelaborate;

   Gopro_Set_Request_Id : constant Msg_Id := 218;

   Gopro_Set_Request_Len : constant Interfaces.Unsigned_8 := 7;

   type Gopro_Set_Request is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID. 
      Cmd_Id           : Gopro_Command;
      --  Command ID. 
      Value            : Unsigned_8_Array (1 .. 4);
      --  Value. 
   end record;

   for Gopro_Set_Request use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
      Cmd_Id           at 2 range 0 .. 7;
      Value            at 3 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Gopro_Set_Request;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gopro_Set_Request;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gopro_Set_Request;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gopro_Set_Request;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Gopro_Set_Requests;
