-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Send a command with up to seven parameters to the MAV. COMMAND_INT is 
--  generally preferred when sending MAV_CMD commands that include positional 
--  information; it offers higher precision and allows the MAV_FRAME to be 
--  specified (which may otherwise be ambiguous, particularly for altitude). 
--  The command microservice is documented at 
--  https://mavlink.io/en/services/command.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Command_Longs is

   pragma Preelaborate;

   Command_Long_Id : constant Msg_Id := 76;

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
      Param1           : Raw_Float :=
        To_Raw (0.0);
      --  Parameter 1 (for the specific command). 
      Param2           : Raw_Float :=
        To_Raw (0.0);
      --  Parameter 2 (for the specific command). 
      Param3           : Raw_Float :=
        To_Raw (0.0);
      --  Parameter 3 (for the specific command). 
      Param4           : Raw_Float :=
        To_Raw (0.0);
      --  Parameter 4 (for the specific command). 
      Param5           : Raw_Float :=
        To_Raw (0.0);
      --  Parameter 5 (for the specific command). 
      Param6           : Raw_Float :=
        To_Raw (0.0);
      --  Parameter 6 (for the specific command). 
      Param7           : Raw_Float :=
        To_Raw (0.0);
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
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Command_Long;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Command_Long;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Long;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Command_Long;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Long;
      Connect : in out MAVLink.V2.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Command_Long;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Command_Long;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Command_Longs;
