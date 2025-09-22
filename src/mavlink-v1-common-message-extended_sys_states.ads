-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Provides state for additional features 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Extended_Sys_States is

   pragma Preelaborate;

   Extended_Sys_State_Id : constant Msg_Id := 245;

   Extended_Sys_State_Len : constant Interfaces.Unsigned_8 := 2;

   type Extended_Sys_State is record
      Vtol_State   : Mav_Vtol_State;
      --  The VTOL state if applicable. Is set to MAV_VTOL_STATE_UNDEFINED if 
      --  UAV is not in VTOL configuration. 
      Landed_State : Mav_Landed_State;
      --  The landed state. Is set to MAV_LANDED_STATE_UNDEFINED if landed 
      --  state is unknown. 
   end record;

   for Extended_Sys_State use record
      Vtol_State   at 0 range 0 .. 7;
      Landed_State at 1 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Extended_Sys_State;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Extended_Sys_State;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Extended_Sys_State;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Extended_Sys_State;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Extended_Sys_State;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Extended_Sys_State;
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

end MAVLink.V1.Common.Message.Extended_Sys_States;
