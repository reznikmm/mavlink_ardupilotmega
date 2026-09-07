-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2014-07 REPLACED BY: MAV_CMD_PREFLIGHT_SET_SENSOR_OFFSETS
------------

--  Set the magnetometer offsets

pragma Ada_2022;

package MAVLink.V1.Ardupilotmega.Set_Mag_Offsetses is

   pragma Pure;

   Set_Mag_Offsets_Len : constant Interfaces.Unsigned_8 := 8;

   type Set_Mag_Offsets is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Mag_Ofs_X        : Interfaces.Integer_16;
      --  Magnetometer X offset.
      Mag_Ofs_Y        : Interfaces.Integer_16;
      --  Magnetometer Y offset.
      Mag_Ofs_Z        : Interfaces.Integer_16;
      --  Magnetometer Z offset.
   end record;

   pragma Obsolescent (Set_Mag_Offsets);

   for Set_Mag_Offsets use record
      Mag_Ofs_X        at 0 range 0 .. 15;
      Mag_Ofs_Y        at 2 range 0 .. 15;
      Mag_Ofs_Z        at 4 range 0 .. 15;
      Target_System    at 6 range 0 .. 7;
      Target_Component at 7 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Set_Mag_Offsets;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Mag_Offsets;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Mag_Offsets;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Set_Mag_Offsets;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Set_Mag_Offsets;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Set_Mag_Offsets;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Ardupilotmega.Set_Mag_Offsetses;
