-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  This message is emitted as response to MISSION_REQUEST_LIST by the MAV and 
--  to initiate a write transaction. The GCS can then request the individual 
--  mission item based on the knowledge of the total number of waypoints. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Mission_Counts is

   pragma Preelaborate;

   Mission_Count_Id : constant Msg_Id := 44;

   type Mission_Count is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Count            : Interfaces.Unsigned_16;
      --  Number of mission items in the sequence 
      Mission_Type     : Mav_Mission_Type;
      --  Mission type. 
      Opaque_Id        : Interfaces.Unsigned_32 :=
        0;
      --  Id of current on-vehicle mission, fence, or rally point plan (on 
      --  download from vehicle). This field is used when downloading a plan 
      --  from a vehicle to a GCS. 0 on upload to the vehicle from GCS. 0 if 
      --  plan ids are not supported. The current on-vehicle plan ids are 
      --  streamed in `MISSION_CURRENT`, allowing a GCS to determine if any 
      --  part of the plan has changed and needs to be re-uploaded. The ids 
      --  are recalculated by the vehicle when any part of the on-vehicle plan 
      --  changes (when a new plan is uploaded, the vehicle returns the new id 
      --  to the GCS in MISSION_ACK). 
   end record;

   for Mission_Count use record
      Count            at 0 range 0 .. 15;
      Target_System    at 2 range 0 .. 7;
      Target_Component at 3 range 0 .. 7;
      Mission_Type     at 4 range 0 .. 7;
      Opaque_Id        at 5 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Mission_Count;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Count;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Count;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Count;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mission_Count;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Count;
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
     (Message : Mission_Count;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mission_Count;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Mission_Counts;
