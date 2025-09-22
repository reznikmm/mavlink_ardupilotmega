-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Message encoding a mission item. This message is emitted to announce the 
--  presence of a mission item and to set a mission item on the system. The 
--  mission item can be either in x, y, z meters (type: LOCAL) or x:lat, 
--  y:lon, z:altitude. Local frame is Z-down, right handed (NED), global frame 
--  is Z-up, right handed (ENU). NaN or INT32_MAX may be used in float/integer 
--  params (respectively) to indicate optional/default values (e.g. to use the 
--  component's current latitude, yaw rather than a specific value). See also 
--  https://mavlink.io/en/services/mission.html. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Mission_Item_Ints is

   pragma Preelaborate;

   Mission_Item_Int_Id : constant Msg_Id := 73;

   Mission_Item_Int_Len : constant Interfaces.Unsigned_8 := 37;

   type Mission_Item_Int is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Seq              : Interfaces.Unsigned_16;
      --  Waypoint ID (sequence number). Starts at zero. Increases 
      --  monotonically for each waypoint, no gaps in the sequence 
      --  (0,1,2,3,4). 
      Frame            : Mav_Frame;
      --  The coordinate system of the waypoint. 
      Command          : Mav_Cmd;
      --  The scheduled action for the waypoint. 
      Current          : Interfaces.Unsigned_8;
      --  false:0, true:1 
      Autocontinue     : Interfaces.Unsigned_8;
      --  Autocontinue to next waypoint. 0: false, 1: true. Set false to pause 
      --  mission after the item completes. 
      Param1           : Interfaces.IEEE_Float_32;
      --  PARAM1, see MAV_CMD enum 
      Param2           : Interfaces.IEEE_Float_32;
      --  PARAM2, see MAV_CMD enum 
      Param3           : Interfaces.IEEE_Float_32;
      --  PARAM3, see MAV_CMD enum 
      Param4           : Interfaces.IEEE_Float_32;
      --  PARAM4, see MAV_CMD enum 
      X                : Interfaces.Integer_32;
      --  PARAM5 / local: x position in meters * 1e4, global: latitude in 
      --  degrees * 10^7 
      Y                : Interfaces.Integer_32;
      --  PARAM6 / y position: local: x position in meters * 1e4, global: 
      --  longitude in degrees *10^7 
      Z                : Interfaces.IEEE_Float_32;
      --  PARAM7 / z position: global: altitude in meters (relative or 
      --  absolute, depending on frame. 
   end record;

   for Mission_Item_Int use record
      Param1           at 0  range 0 .. 31;
      Param2           at 4  range 0 .. 31;
      Param3           at 8  range 0 .. 31;
      Param4           at 12 range 0 .. 31;
      X                at 16 range 0 .. 31;
      Y                at 20 range 0 .. 31;
      Z                at 24 range 0 .. 31;
      Seq              at 28 range 0 .. 15;
      Command          at 30 range 0 .. 15;
      Target_System    at 32 range 0 .. 7;
      Target_Component at 33 range 0 .. 7;
      Frame            at 34 range 0 .. 7;
      Current          at 35 range 0 .. 7;
      Autocontinue     at 36 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mission_Item_Int;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Item_Int;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Item_Int;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Item_Int;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mission_Item_Int;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Item_Int;
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

end MAVLink.V1.Common.Message.Mission_Item_Ints;
