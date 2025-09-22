-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2020-06 REPLACED BY: MISSION_REQUEST_INT
--  A system that gets this request should respond with MISSION_ITEM_INT (as 
--  though MISSION_REQUEST_INT was received). 
------------
--  Request the information of the mission item with the sequence number seq. 
--  The response of the system to this message should be a MISSION_ITEM 
--  message. https://mavlink.io/en/services/mission.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Mission_Requests is

   pragma Preelaborate;

   Mission_Request_Id : constant Msg_Id := 40;

   type Mission_Request is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Seq              : Interfaces.Unsigned_16;
      --  Sequence 
      Mission_Type     : Mav_Mission_Type;
      --  Mission type. 
   end record;

   pragma Obsolescent (Mission_Request);

   for Mission_Request use record
      Seq              at 0 range 0 .. 15;
      Target_System    at 2 range 0 .. 7;
      Target_Component at 3 range 0 .. 7;
      Mission_Type     at 4 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mission_Request;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Request;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Request;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Request;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mission_Request;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Request;
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
     (Message : Mission_Request;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mission_Request;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Mission_Requests;
