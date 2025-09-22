-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Get the current mode. This should be emitted on any mode change, and 
--  broadcast at low rate (nominally 0.5 Hz). It may be requested using 
--  MAV_CMD_REQUEST_MESSAGE. See 
--  https://mavlink.io/en/services/standard_modes.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Current_Modes is

   pragma Preelaborate;

   Current_Mode_Id : constant Msg_Id := 436;

   type Current_Mode is record
      Standard_Mode        : Mav_Standard_Mode;
      --  Standard mode. 
      Custom_Mode          : Interfaces.Unsigned_32;
      --  A bitfield for use for autopilot-specific flags 
      Intended_Custom_Mode : Interfaces.Unsigned_32 :=
        0;
      --  The custom_mode of the mode that was last commanded by the user (for 
      --  example, with MAV_CMD_DO_SET_STANDARD_MODE, MAV_CMD_DO_SET_MODE or 
      --  via RC). This should usually be the same as custom_mode. It will be 
      --  different if the vehicle is unable to enter the intended mode, or 
      --  has left that mode due to a failsafe condition. 0 indicates the 
      --  intended custom mode is unknown/not supplied 
   end record;

   for Current_Mode use record
      Custom_Mode          at 0 range 0 .. 31;
      Intended_Custom_Mode at 4 range 0 .. 31;
      Standard_Mode        at 8 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Current_Mode;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Current_Mode;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Current_Mode;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Current_Mode;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Current_Mode;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Current_Mode;
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
     (Message : Current_Mode;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Current_Mode;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Current_Modes;
