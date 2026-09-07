-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Reports progress of compass calibration.

pragma Ada_2022;

with MAVLink.V1.Common.Types; use MAVLink.V1.Common.Types;

package MAVLink.V1.Ardupilotmega.Mag_Cal_Progresses is

   pragma Pure;

   Mag_Cal_Progress_Len : constant Interfaces.Unsigned_8 := 27;

   type Mag_Cal_Progress is record
      Compass_Id      : Interfaces.Unsigned_8;
      --  Compass being calibrated.
      Cal_Mask        : Interfaces.Unsigned_8;
      --  Bitmask of compasses being calibrated.
      Cal_Status      : Mag_Cal_Status;
      --  Calibration Status.
      Attempt         : Interfaces.Unsigned_8;
      --  Attempt number.
      Completion_Pct  : Interfaces.Unsigned_8;
      --  Units: [%]
      --  Completion percentage.
      Completion_Mask : Unsigned_8_Array (1 .. 10);
      --  Bitmask of sphere sections (see
      --  http://en.wikipedia.org/wiki/Geodesic_grid).
      Direction_X     : Raw_Float;
      --  Body frame direction vector for display.
      Direction_Y     : Raw_Float;
      --  Body frame direction vector for display.
      Direction_Z     : Raw_Float;
      --  Body frame direction vector for display.
   end record;

   for Mag_Cal_Progress use record
      Direction_X     at 0  range 0 .. 31;
      Direction_Y     at 4  range 0 .. 31;
      Direction_Z     at 8  range 0 .. 31;
      Compass_Id      at 12 range 0 .. 7;
      Cal_Mask        at 13 range 0 .. 7;
      Cal_Status      at 14 range 0 .. 7;
      Attempt         at 15 range 0 .. 7;
      Completion_Pct  at 16 range 0 .. 7;
      Completion_Mask at 17 range 0 .. 79;
   end record;

   procedure Encode
     (Message : Mag_Cal_Progress;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mag_Cal_Progress;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mag_Cal_Progress;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mag_Cal_Progress;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Mag_Cal_Progress;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mag_Cal_Progress;
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

end MAVLink.V1.Ardupilotmega.Mag_Cal_Progresses;
