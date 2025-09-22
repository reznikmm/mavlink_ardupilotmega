-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The heartbeat message shows that a system or component is present and 
--  responding. The type and autopilot fields (along with the message 
--  component id), allow the receiving system to treat further messages from 
--  this system appropriately (e.g. by laying out the user interface based on 
--  the autopilot). This microservice is documented at 
--  https://mavlink.io/en/services/heartbeat.html 
pragma Ada_2022;


package MAVLink.V1.Minimal.Message.Heartbeats is

   pragma Preelaborate;

   Heartbeat_Id : constant Msg_Id := 0;

   Heartbeat_Len : constant Interfaces.Unsigned_8 := 9;

   type Heartbeat is record
      Type_Field      : Mav_Type;
      --  Vehicle or component type. For a flight controller component the 
      --  vehicle type (quadrotor, helicopter, etc.). For other components the 
      --  component type (e.g. camera, gimbal, etc.). This should be used in 
      --  preference to component id for identifying the component type. 
      Autopilot       : Mav_Autopilot;
      --  Autopilot type / class. Use MAV_AUTOPILOT_INVALID for components 
      --  that are not flight controllers. 
      Base_Mode       : Mav_Mode_Flag;
      --  System mode bitmap. 
      Custom_Mode     : Interfaces.Unsigned_32;
      --  A bitfield for use for autopilot-specific flags 
      System_Status   : Mav_State;
      --  System status flag. 
      Mavlink_Version : Interfaces.Unsigned_8;
      --  MAVLink version, not writable by user, gets added by protocol 
      --  because of magic data type: uint8_t_mavlink_version 
   end record;

   for Heartbeat use record
      Custom_Mode     at 0 range 0 .. 31;
      Type_Field      at 4 range 0 .. 7;
      Autopilot       at 5 range 0 .. 7;
      Base_Mode       at 6 range 0 .. 7;
      System_Status   at 7 range 0 .. 7;
      Mavlink_Version at 8 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Heartbeat;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Heartbeat;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Heartbeat;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Heartbeat;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Heartbeat;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Heartbeat;
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

end MAVLink.V1.Minimal.Message.Heartbeats;
