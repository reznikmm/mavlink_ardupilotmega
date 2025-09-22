-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2020-06 REPLACED BY: MISSION_ITEM_INT
------------
--  Message encoding a mission item. This message is emitted to announce the 
--  presence of a mission item and to set a mission item on the system. The 
--  mission item can be either in x, y, z meters (type: LOCAL) or x:lat, 
--  y:lon, z:altitude. Local frame is Z-down, right handed (NED), global frame 
--  is Z-up, right handed (ENU). NaN may be used to indicate an 
--  optional/default value (e.g. to use the system's current latitude or yaw 
--  rather than a specific value). See also 
--  https://mavlink.io/en/services/mission.html. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Mission_Items is

   pragma Preelaborate;

   Mission_Item_Id : constant Msg_Id := 39;

   Mission_Item_Len : constant Interfaces.Unsigned_8 := 37;

   type Mission_Item is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Seq              : Interfaces.Unsigned_16;
      --  Sequence 
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
      X                : Interfaces.IEEE_Float_32;
      --  PARAM5 / local: X coordinate, global: latitude 
      Y                : Interfaces.IEEE_Float_32;
      --  PARAM6 / local: Y coordinate, global: longitude 
      Z                : Interfaces.IEEE_Float_32;
      --  PARAM7 / local: Z coordinate, global: altitude (relative or 
      --  absolute, depending on frame). 
   end record;

   pragma Obsolescent (Mission_Item);

   for Mission_Item use record
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
     (Message : Mission_Item;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Item;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Item;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Item;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mission_Item;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Item;
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

end MAVLink.V1.Common.Message.Mission_Items;
