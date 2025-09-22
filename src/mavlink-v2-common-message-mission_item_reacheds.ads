-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  A certain mission item has been reached. The system will either hold this 
--  position (or circle on the orbit) or (if the autocontinue on the WP was 
--  set) continue to the next waypoint. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Mission_Item_Reacheds is

   pragma Preelaborate;

   Mission_Item_Reached_Id : constant Msg_Id := 46;

   type Mission_Item_Reached is record
      Seq : Interfaces.Unsigned_16;
      --  Sequence 
   end record;

   for Mission_Item_Reached use record
      Seq at 0 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Mission_Item_Reached;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Item_Reached;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Item_Reached;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Item_Reached;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mission_Item_Reached;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Item_Reached;
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
     (Message : Mission_Item_Reached;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mission_Item_Reached;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Mission_Item_Reacheds;
