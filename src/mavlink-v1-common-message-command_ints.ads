-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Send a command with up to seven parameters to the MAV, where params 5 and 
--  6 are integers and the other values are floats. This is preferred over 
--  COMMAND_LONG as it allows the MAV_FRAME to be specified for interpreting 
--  positional information, such as altitude. COMMAND_INT is also preferred 
--  when sending latitude and longitude data in params 5 and 6, as it allows 
--  for greater precision. Param 5 and 6 encode positional data as scaled 
--  integers, where the scaling depends on the actual command value. NaN or 
--  INT32_MAX may be used in float/integer params (respectively) to indicate 
--  optional/default values (e.g. to use the component's current latitude, yaw 
--  rather than a specific value). The command microservice is documented at 
--  https://mavlink.io/en/services/command.html 
pragma Ada_2022;


with Mavlink.V1.Ardupilotmega; use Mavlink.V1.Ardupilotmega;

package Mavlink.V1.Common.Message.Command_Ints is

   pragma Preelaborate;

   Command_Int_Id : constant Msg_Id := 75;

   Command_Int_Len : constant Interfaces.Unsigned_8 := 35;

   type Command_Int is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Frame            : Mav_Frame;
      --  The coordinate system of the COMMAND. 
      Command          : Mav_Cmd;
      --  The scheduled action for the mission item. 
      Current          : Interfaces.Unsigned_8;
      --  Not used. 
      Autocontinue     : Interfaces.Unsigned_8;
      --  Not used (set 0). 
      Param1           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  PARAM1, see MAV_CMD enum 
      Param2           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  PARAM2, see MAV_CMD enum 
      Param3           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  PARAM3, see MAV_CMD enum 
      Param4           : Interfaces.IEEE_Float_32 :=
        0.0;
      --  PARAM4, see MAV_CMD enum 
      X                : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  PARAM5 / local: x position in meters * 1e4, global: latitude in 
      --  degrees * 10^7 
      Y                : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  PARAM6 / local: y position in meters * 1e4, global: longitude in 
      --  degrees * 10^7 
      Z                : Interfaces.IEEE_Float_32 :=
        0.0;
      --  PARAM7 / z position: global: altitude in meters (relative or 
      --  absolute, depending on frame). 
   end record;

   for Command_Int use record
      Param1           at 0  range 0 .. 31;
      Param2           at 4  range 0 .. 31;
      Param3           at 8  range 0 .. 31;
      Param4           at 12 range 0 .. 31;
      X                at 16 range 0 .. 31;
      Y                at 20 range 0 .. 31;
      Z                at 24 range 0 .. 31;
      Command          at 28 range 0 .. 15;
      Target_System    at 30 range 0 .. 7;
      Target_Component at 31 range 0 .. 7;
      Frame            at 32 range 0 .. 7;
      Current          at 33 range 0 .. 7;
      Autocontinue     at 34 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Command_Int;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Command_Int;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Command_Int;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Command_Int;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Command_Ints;
