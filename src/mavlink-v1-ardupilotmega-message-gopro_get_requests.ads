-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Request a GOPRO_COMMAND response from the GoPro. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Gopro_Get_Requests is

   pragma Preelaborate;

   Gopro_Get_Request_Id : constant Msg_Id := 216;

   Gopro_Get_Request_Len : constant Interfaces.Unsigned_8 := 3;

   type Gopro_Get_Request is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID. 
      Cmd_Id           : Gopro_Command;
      --  Command ID. 
   end record;

   for Gopro_Get_Request use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
      Cmd_Id           at 2 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gopro_Get_Request;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gopro_Get_Request;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gopro_Get_Request;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gopro_Get_Request;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Gopro_Get_Requests;
