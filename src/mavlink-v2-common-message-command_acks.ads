-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Report status of a command. Includes feedback whether the command was 
--  executed. The command microservice is documented at 
--  https://mavlink.io/en/services/command.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Command_Acks is

   pragma Preelaborate;

   Command_Ack_Id : constant Msg_Id := 77;

   type Command_Ack is record
      Command          : Mav_Cmd;
      --  Command ID (of acknowledged command). 
      Result           : Mav_Result;
      --  Result of command. 
      Progress         : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Units: [%]
      --  The progress percentage when result is MAV_RESULT_IN_PROGRESS. 
      --  Values: [0-100], or UINT8_MAX if the progress is unknown. 
      Result_Param2    : Interfaces.Integer_32;
      --  Additional result information. Can be set with a command-specific 
      --  enum containing command-specific error reasons for why the command 
      --  might be denied. If used, the associated enum must be documented in 
      --  the corresponding MAV_CMD (this enum should have a 0 value to 
      --  indicate "unused" or "unknown"). 
      Target_System    : Interfaces.Unsigned_8;
      --  System ID of the target recipient. This is the ID of the system that 
      --  sent the command for which this COMMAND_ACK is an acknowledgement. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID of the target recipient. This is the ID of the system 
      --  that sent the command for which this COMMAND_ACK is an 
      --  acknowledgement. 
   end record;

   for Command_Ack use record
      Command          at 0 range 0 .. 15;
      Result           at 2 range 0 .. 7;
      Progress         at 3 range 0 .. 7;
      Result_Param2    at 4 range 0 .. 31;
      Target_System    at 8 range 0 .. 7;
      Target_Component at 9 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Command_Ack;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Command_Ack;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Command_Ack;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Ack;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Command_Ack;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Ack;
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
     (Message : Command_Ack;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Command_Ack;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Command_Acks;
