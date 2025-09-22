-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Message that announces the sequence number of the current target mission 
--  item (that the system will fly towards/execute when the mission is 
--  running). This message should be streamed all the time (nominally at 1Hz). 
--  This message should be emitted following a call to 
--  MAV_CMD_DO_SET_MISSION_CURRENT or MISSION_SET_CURRENT. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Mission_Currents is

   pragma Preelaborate;

   Mission_Current_Id : constant Msg_Id := 42;

   Mission_Current_Len : constant Interfaces.Unsigned_8 := 2;

   type Mission_Current is record
      Seq : Interfaces.Unsigned_16;
      --  Sequence 
   end record;

   for Mission_Current use record
      Seq at 0 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Mission_Current;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Current;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Current;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Current;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mission_Current;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Current;
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

end MAVLink.V1.Common.Message.Mission_Currents;
