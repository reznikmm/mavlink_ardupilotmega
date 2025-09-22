-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a flight mode. The message can be enumerated to get 
--  information for all modes, or requested for a particular mode, using 
--  MAV_CMD_REQUEST_MESSAGE. Specify 0 in param2 to request that the message 
--  is emitted for all available modes or the specific index for just one 
--  mode. The modes must be available/settable for the current vehicle/frame 
--  type. Each mode should only be emitted once (even if it is both standard 
--  and custom). Note that the current mode should be emitted in CURRENT_MODE, 
--  and that if the mode list can change then AVAILABLE_MODES_MONITOR must be 
--  emitted on first change and subsequently streamed. See 
--  https://mavlink.io/en/services/standard_modes.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Available_Modeses is

   pragma Preelaborate;

   Available_Modes_Id : constant Msg_Id := 435;

   type Available_Modes is record
      Number_Modes  : Interfaces.Unsigned_8;
      --  The total number of available modes for the current vehicle type. 
      Mode_Index    : Interfaces.Unsigned_8;
      --  The current mode index within number_modes, indexed from 1. The 
      --  index is not guaranteed to be persistent, and may change between 
      --  reboots or if the set of modes change. 
      Standard_Mode : Mav_Standard_Mode;
      --  Standard mode. 
      Custom_Mode   : Interfaces.Unsigned_32;
      --  A bitfield for use for autopilot-specific flags 
      Properties    : Mav_Mode_Property;
      --  Mode properties. 
      Mode_Name     : String (1 .. 35);
      --  Name of custom mode, with null termination character. Should be 
      --  omitted for standard modes. 
   end record;

   for Available_Modes use record
      Custom_Mode   at 0  range 0 .. 31;
      Properties    at 4  range 0 .. 31;
      Number_Modes  at 8  range 0 .. 7;
      Mode_Index    at 9  range 0 .. 7;
      Standard_Mode at 10 range 0 .. 7;
      Mode_Name     at 11 range 0 .. 279;
   end record;

   procedure Encode
     (Message : Available_Modes;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Available_Modes;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Available_Modes;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Available_Modes;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Available_Modes;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Available_Modes;
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
     (Message : Available_Modes;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Available_Modes;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Available_Modeses;
