-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Reports results of completed compass calibration. Sent until MAG_CAL_ACK 
--  received. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Mag_Cal_Reports is

   pragma Preelaborate;

   Mag_Cal_Report_Id : constant Msg_Id := 192;

   Mag_Cal_Report_Len : constant Interfaces.Unsigned_8 := 44;

   type Mag_Cal_Report is record
      Compass_Id : Interfaces.Unsigned_8;
      --  Compass being calibrated. 
      Cal_Mask   : Interfaces.Unsigned_8;
      --  Bitmask of compasses being calibrated. 
      Cal_Status : Mag_Cal_Status;
      --  Calibration Status. 
      Autosaved  : Interfaces.Unsigned_8;
      --  0=requires a MAV_CMD_DO_ACCEPT_MAG_CAL, 1=saved to parameters. 
      Fitness    : Interfaces.IEEE_Float_32;
      --  Units: [mgauss]
      --  RMS milligauss residuals. 
      Ofs_X      : Interfaces.IEEE_Float_32;
      --  X offset. 
      Ofs_Y      : Interfaces.IEEE_Float_32;
      --  Y offset. 
      Ofs_Z      : Interfaces.IEEE_Float_32;
      --  Z offset. 
      Diag_X     : Interfaces.IEEE_Float_32;
      --  X diagonal (matrix 11). 
      Diag_Y     : Interfaces.IEEE_Float_32;
      --  Y diagonal (matrix 22). 
      Diag_Z     : Interfaces.IEEE_Float_32;
      --  Z diagonal (matrix 33). 
      Offdiag_X  : Interfaces.IEEE_Float_32;
      --  X off-diagonal (matrix 12 and 21). 
      Offdiag_Y  : Interfaces.IEEE_Float_32;
      --  Y off-diagonal (matrix 13 and 31). 
      Offdiag_Z  : Interfaces.IEEE_Float_32;
      --  Z off-diagonal (matrix 32 and 23). 
   end record;

   for Mag_Cal_Report use record
      Fitness    at 0  range 0 .. 31;
      Ofs_X      at 4  range 0 .. 31;
      Ofs_Y      at 8  range 0 .. 31;
      Ofs_Z      at 12 range 0 .. 31;
      Diag_X     at 16 range 0 .. 31;
      Diag_Y     at 20 range 0 .. 31;
      Diag_Z     at 24 range 0 .. 31;
      Offdiag_X  at 28 range 0 .. 31;
      Offdiag_Y  at 32 range 0 .. 31;
      Offdiag_Z  at 36 range 0 .. 31;
      Compass_Id at 40 range 0 .. 7;
      Cal_Mask   at 41 range 0 .. 7;
      Cal_Status at 42 range 0 .. 7;
      Autosaved  at 43 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mag_Cal_Report;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mag_Cal_Report;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mag_Cal_Report;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mag_Cal_Report;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Mag_Cal_Reports;
