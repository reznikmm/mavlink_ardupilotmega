-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Report status of a command. Includes feedback whether the command was 
--  executed. The command microservice is documented at 
--  https://mavlink.io/en/services/command.html 
pragma Ada_2022;


with Mavlink.V1.Ardupilotmega; use Mavlink.V1.Ardupilotmega;

package Mavlink.V1.Common.Message.Command_Acks is

   pragma Preelaborate;

   Command_Ack_Id : constant Msg_Id := 77;

   Command_Ack_Len : constant Interfaces.Unsigned_8 := 3;

   type Command_Ack is record
      Command : Mav_Cmd;
      --  Command ID (of acknowledged command). 
      Result  : Mav_Result;
      --  Result of command. 
   end record;

   for Command_Ack use record
      Command at 0 range 0 .. 15;
      Result  at 2 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Command_Ack;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Command_Ack;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Command_Ack;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Ack;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Command_Acks;
