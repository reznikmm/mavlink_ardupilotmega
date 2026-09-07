-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Configure on-board Camera Control System.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Digicam_Configures is

   pragma Pure;

   type Digicam_Configure is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Mode             : Interfaces.Unsigned_8;
      --  Mode enumeration from 1 to N //P, TV, AV, M, etc. (0 means ignore).
      Shutter_Speed    : Interfaces.Unsigned_16;
      --  Divisor number //e.g. 1000 means 1/1000 (0 means ignore).
      Aperture         : Interfaces.Unsigned_8;
      --  F stop number x 10 //e.g. 28 means 2.8 (0 means ignore).
      Iso              : Interfaces.Unsigned_8;
      --  ISO enumeration from 1 to N //e.g. 80, 100, 200, Etc (0 means
      --  ignore).
      Exposure_Type    : Interfaces.Unsigned_8;
      --  Exposure type enumeration from 1 to N (0 means ignore).
      Command_Id       : Interfaces.Unsigned_8;
      --  Command Identity (incremental loop: 0 to 255). //A command sent
      --  multiple times will be executed or pooled just once.
      Engine_Cut_Off   : Interfaces.Unsigned_8;
      --  Units: [ds]
      --  Main engine cut-off time before camera trigger (0 means no cut-off).
      Extra_Param      : Interfaces.Unsigned_8;
      --  Extra parameters enumeration (0 means ignore).
      Extra_Value      : Raw_Float;
      --  Correspondent value to given extra_param.
   end record;

   for Digicam_Configure use record
      Extra_Value      at 0  range 0 .. 31;
      Shutter_Speed    at 4  range 0 .. 15;
      Target_System    at 6  range 0 .. 7;
      Target_Component at 7  range 0 .. 7;
      Mode             at 8  range 0 .. 7;
      Aperture         at 9  range 0 .. 7;
      Iso              at 10 range 0 .. 7;
      Exposure_Type    at 11 range 0 .. 7;
      Command_Id       at 12 range 0 .. 7;
      Engine_Cut_Off   at 13 range 0 .. 7;
      Extra_Param      at 14 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Digicam_Configure;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Digicam_Configure;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Digicam_Configure;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Digicam_Configure;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Digicam_Configure;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Digicam_Configure;
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
     (Message : Digicam_Configure;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Digicam_Configure;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Digicam_Configures;
