-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2015-12 REPLACED BY: MAV_CMD_DO_SET_MODE
--  Use COMMAND_LONG with MAV_CMD_DO_SET_MODE instead 
------------
--  Set the system mode, as defined by enum MAV_MODE. There is no target 
--  component id as the mode is by definition for the overall aircraft, not 
--  only for one component. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Set_Modes is

   pragma Preelaborate;

   Set_Mode_Id : constant Msg_Id := 11;

   type Set_Mode is record
      Target_System : Interfaces.Unsigned_8;
      --  The system setting the mode 
      Base_Mode     : Mav_Mode;
      --  The new base mode. 
      Custom_Mode   : Interfaces.Unsigned_32;
      --  The new autopilot-specific mode. This field can be ignored by an 
      --  autopilot. 
   end record;

   pragma Obsolescent (Set_Mode);

   for Set_Mode use record
      Custom_Mode   at 0 range 0 .. 31;
      Target_System at 4 range 0 .. 7;
      Base_Mode     at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Set_Mode;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Mode;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Mode;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Mode;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Set_Mode;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Mode;
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
     (Message : Set_Mode;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Set_Mode;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Set_Modes;
