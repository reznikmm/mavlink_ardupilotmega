-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Send a command with up to seven parameters to the MAV. COMMAND_INT is 
--  generally preferred when sending MAV_CMD commands that include positional 
--  information; it offers higher precision and allows the MAV_FRAME to be 
--  specified (which may otherwise be ambiguous, particularly for altitude). 
--  The command microservice is documented at 
--  https://mavlink.io/en/services/command.html 
pragma Ada_2022;


with Mavlink.V1.Ardupilotmega; use Mavlink.V1.Ardupilotmega;

package Mavlink.V1.Common.Message.Command_Longs is

   pragma Preelaborate;

   Command_Long_Id : constant Msg_Id := 76;

   Command_Long_Len : constant Interfaces.Unsigned_8 := 33;

   type Command_Long is record
      Target_System    : Interfaces.Unsigned_8;
      --  System which should execute the command 
      Target_Component : Interfaces.Unsigned_8;
      --  Component which should execute the command, 0 for all components 
      Command          : Mav_Cmd;
      --  Command ID (of command to send). 
      Confirmation     : Interfaces.Unsigned_8;
      --  0: First transmission of this command. 1-255: Confirmation 
      --  transmissions (e.g. for kill command) 
      Param1           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Parameter 1 (for the specific command). 
      Param2           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Parameter 2 (for the specific command). 
      Param3           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Parameter 3 (for the specific command). 
      Param4           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Parameter 4 (for the specific command). 
      Param5           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Parameter 5 (for the specific command). 
      Param6           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Parameter 6 (for the specific command). 
      Param7           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Parameter 7 (for the specific command). 
   end record;

   for Command_Long use record
      Param1           at 0  range 0 .. 31;
      Param2           at 4  range 0 .. 31;
      Param3           at 8  range 0 .. 31;
      Param4           at 12 range 0 .. 31;
      Param5           at 16 range 0 .. 31;
      Param6           at 20 range 0 .. 31;
      Param7           at 24 range 0 .. 31;
      Command          at 28 range 0 .. 15;
      Target_System    at 30 range 0 .. 7;
      Target_Component at 31 range 0 .. 7;
      Confirmation     at 32 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Command_Long;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Command_Long;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Command_Long;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Long;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Command_Longs;
