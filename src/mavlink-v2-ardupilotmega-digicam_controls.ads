-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Control on-board Camera Control System to take shots.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Digicam_Controls is

   pragma Pure;

   type Digicam_Control is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Session          : Interfaces.Unsigned_8;
      --  0: stop, 1: start or keep it up //Session control e.g. show/hide
      --  lens.
      Zoom_Pos         : Interfaces.Unsigned_8;
      --  1 to N //Zoom's absolute position (0 means ignore).
      Zoom_Step        : Interfaces.Integer_8;
      --  -100 to 100 //Zooming step value to offset zoom from the current
      --  position.
      Focus_Lock       : Interfaces.Unsigned_8;
      --  0: unlock focus or keep unlocked, 1: lock focus or keep locked, 3:
      --  re-lock focus.
      Shot             : Interfaces.Unsigned_8;
      --  0: ignore, 1: shot or start filming.
      Command_Id       : Interfaces.Unsigned_8;
      --  Command Identity (incremental loop: 0 to 255)//A command sent
      --  multiple times will be executed or pooled just once.
      Extra_Param      : Interfaces.Unsigned_8;
      --  Extra parameters enumeration (0 means ignore).
      Extra_Value      : Raw_Float;
      --  Correspondent value to given extra_param.
   end record;

   for Digicam_Control use record
      Extra_Value      at 0  range 0 .. 31;
      Target_System    at 4  range 0 .. 7;
      Target_Component at 5  range 0 .. 7;
      Session          at 6  range 0 .. 7;
      Zoom_Pos         at 7  range 0 .. 7;
      Zoom_Step        at 8  range 0 .. 7;
      Focus_Lock       at 9  range 0 .. 7;
      Shot             at 10 range 0 .. 7;
      Command_Id       at 11 range 0 .. 7;
      Extra_Param      at 12 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Digicam_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Digicam_Control;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Digicam_Control;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Digicam_Control;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Digicam_Control;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Digicam_Control;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Digicam_Control;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Digicam_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Digicam_Controls;
