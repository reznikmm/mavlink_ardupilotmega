-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Request a partial list of mission items from the system/component. 
--  https://mavlink.io/en/services/mission.html. If start and end index are 
--  the same, just send one waypoint. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Mission_Request_Partial_Lists is

   pragma Preelaborate;

   Mission_Request_Partial_List_Id : constant Msg_Id := 37;

   Mission_Request_Partial_List_Len : constant Interfaces.Unsigned_8 := 6;

   type Mission_Request_Partial_List is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Start_Index      : Interfaces.Integer_16;
      --  Start index 
      End_Index        : Interfaces.Integer_16;
      --  End index, -1 by default (-1: send list to end). Else a valid index 
      --  of the list 
   end record;

   for Mission_Request_Partial_List use record
      Start_Index      at 0 range 0 .. 15;
      End_Index        at 2 range 0 .. 15;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mission_Request_Partial_List;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Request_Partial_List;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Request_Partial_List;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Request_Partial_List;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Mission_Request_Partial_Lists;
