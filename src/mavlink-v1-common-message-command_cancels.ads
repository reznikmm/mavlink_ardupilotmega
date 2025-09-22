-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Cancel a long running command. The target system should respond with a 
--  COMMAND_ACK to the original command with result=MAV_RESULT_CANCELLED if 
--  the long running process was cancelled. If it has already completed, the 
--  cancel action can be ignored. The cancel action can be retried until some 
--  sort of acknowledgement to the original command has been received. The 
--  command microservice is documented at 
--  https://mavlink.io/en/services/command.html 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Command_Cancels is

   pragma Preelaborate;

   Command_Cancel_Id : constant Msg_Id := 80;

   Command_Cancel_Len : constant Interfaces.Unsigned_8 := 4;

   type Command_Cancel is record
      Target_System    : Interfaces.Unsigned_8;
      --  System executing long running command. Should not be broadcast (0). 
      Target_Component : Interfaces.Unsigned_8;
      --  Component executing long running command. 
      Command          : Mav_Cmd;
      --  Command ID (of command to cancel). 
   end record;

   for Command_Cancel use record
      Command          at 0 range 0 .. 15;
      Target_System    at 2 range 0 .. 7;
      Target_Component at 3 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Command_Cancel;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Command_Cancel;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Command_Cancel;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Cancel;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Command_Cancel;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Cancel;
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

end MAVLink.V1.Common.Message.Command_Cancels;
