-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Reports progress of compass calibration. 
pragma Ada_2022;


with Mavlink.V1.Common; use Mavlink.V1.Common;

package Mavlink.V1.Ardupilotmega.Message.Mag_Cal_Progresses is

   pragma Preelaborate;

   Mag_Cal_Progress_Id : constant Msg_Id := 191;

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
      Direction_X     : Interfaces.IEEE_Float_32;
      --  Body frame direction vector for display. 
      Direction_Y     : Interfaces.IEEE_Float_32;
      --  Body frame direction vector for display. 
      Direction_Z     : Interfaces.IEEE_Float_32;
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
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mag_Cal_Progress;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mag_Cal_Progress;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mag_Cal_Progress;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Mag_Cal_Progresses;
