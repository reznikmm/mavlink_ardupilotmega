-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  A certain mission item has been reached. The system will either hold this 
--  position (or circle on the orbit) or (if the autocontinue on the WP was 
--  set) continue to the next waypoint. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Mission_Item_Reacheds is

   pragma Preelaborate;

   Mission_Item_Reached_Id : constant Msg_Id := 46;

   Mission_Item_Reached_Len : constant Interfaces.Unsigned_8 := 2;

   type Mission_Item_Reached is record
      Seq : Interfaces.Unsigned_16;
      --  Sequence 
   end record;

   for Mission_Item_Reached use record
      Seq at 0 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Mission_Item_Reached;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Item_Reached;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Item_Reached;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Item_Reached;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Mission_Item_Reacheds;
