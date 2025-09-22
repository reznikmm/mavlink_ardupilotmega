-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Acknowledgment message during waypoint handling. The type field states if 
--  this message is a positive ack (type=0) or if an error happened 
--  (type=non-zero). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Mission_Acks is

   pragma Preelaborate;

   Mission_Ack_Id : constant Msg_Id := 47;

   type Mission_Ack is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Type_Field       : Mav_Mission_Result;
      --  Mission result. 
      Mission_Type     : Mav_Mission_Type;
      --  Mission type. 
      Opaque_Id        : Interfaces.Unsigned_32 :=
        0;
      --  Id of new on-vehicle mission, fence, or rally point plan (on upload 
      --  to vehicle). The id is calculated and returned by a vehicle when a 
      --  new plan is uploaded by a GCS. The only requirement on the id is 
      --  that it must change when there is any change to the on-vehicle plan 
      --  type (there is no requirement that the id be globally unique). 0 on 
      --  download from the vehicle to the GCS (on download the ID is set in 
      --  MISSION_COUNT). 0 if plan ids are not supported. The current 
      --  on-vehicle plan ids are streamed in `MISSION_CURRENT`, allowing a 
      --  GCS to determine if any part of the plan has changed and needs to be 
      --  re-uploaded. 
   end record;

   for Mission_Ack use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
      Type_Field       at 2 range 0 .. 7;
      Mission_Type     at 3 range 0 .. 7;
      Opaque_Id        at 4 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Mission_Ack;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Ack;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Ack;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Ack;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mission_Ack;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Ack;
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
     (Message : Mission_Ack;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mission_Ack;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Mission_Acks;
