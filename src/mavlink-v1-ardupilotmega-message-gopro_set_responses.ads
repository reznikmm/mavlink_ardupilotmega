-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Response from a GOPRO_COMMAND set request. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Gopro_Set_Responses is

   pragma Preelaborate;

   Gopro_Set_Response_Id : constant Msg_Id := 219;

   Gopro_Set_Response_Len : constant Interfaces.Unsigned_8 := 2;

   type Gopro_Set_Response is record
      Cmd_Id : Gopro_Command;
      --  Command ID. 
      Status : Gopro_Request_Status;
      --  Status. 
   end record;

   for Gopro_Set_Response use record
      Cmd_Id at 0 range 0 .. 7;
      Status at 1 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gopro_Set_Response;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gopro_Set_Response;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gopro_Set_Response;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gopro_Set_Response;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Gopro_Set_Responses;
