-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Reports results of completed compass calibration. Sent until MAG_CAL_ACK 
--  received. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Mag_Cal_Reports is

   pragma Preelaborate;

   Mag_Cal_Report_Id : constant Msg_Id := 192;

   type Mag_Cal_Report is record
      Compass_Id             : Interfaces.Unsigned_8;
      --  Compass being calibrated. 
      Cal_Mask               : Interfaces.Unsigned_8;
      --  Bitmask of compasses being calibrated. 
      Cal_Status             : Mag_Cal_Status;
      --  Calibration Status. 
      Autosaved              : Interfaces.Unsigned_8;
      --  0=requires a MAV_CMD_DO_ACCEPT_MAG_CAL, 1=saved to parameters. 
      Fitness                : Raw_Float;
      --  Units: [mgauss]
      --  RMS milligauss residuals. 
      Ofs_X                  : Raw_Float;
      --  X offset. 
      Ofs_Y                  : Raw_Float;
      --  Y offset. 
      Ofs_Z                  : Raw_Float;
      --  Z offset. 
      Diag_X                 : Raw_Float;
      --  X diagonal (matrix 11). 
      Diag_Y                 : Raw_Float;
      --  Y diagonal (matrix 22). 
      Diag_Z                 : Raw_Float;
      --  Z diagonal (matrix 33). 
      Offdiag_X              : Raw_Float;
      --  X off-diagonal (matrix 12 and 21). 
      Offdiag_Y              : Raw_Float;
      --  Y off-diagonal (matrix 13 and 31). 
      Offdiag_Z              : Raw_Float;
      --  Z off-diagonal (matrix 32 and 23). 
      Orientation_Confidence : Raw_Float;
      --  Confidence in orientation (higher is better). 
      Old_Orientation        : Mav_Sensor_Orientation;
      --  orientation before calibration. 
      New_Orientation        : Mav_Sensor_Orientation;
      --  orientation after calibration. 
      Scale_Factor           : Raw_Float;
      --  field radius correction factor 
   end record;

   for Mag_Cal_Report use record
      Fitness                at 0  range 0 .. 31;
      Ofs_X                  at 4  range 0 .. 31;
      Ofs_Y                  at 8  range 0 .. 31;
      Ofs_Z                  at 12 range 0 .. 31;
      Diag_X                 at 16 range 0 .. 31;
      Diag_Y                 at 20 range 0 .. 31;
      Diag_Z                 at 24 range 0 .. 31;
      Offdiag_X              at 28 range 0 .. 31;
      Offdiag_Y              at 32 range 0 .. 31;
      Offdiag_Z              at 36 range 0 .. 31;
      Compass_Id             at 40 range 0 .. 7;
      Cal_Mask               at 41 range 0 .. 7;
      Cal_Status             at 42 range 0 .. 7;
      Autosaved              at 43 range 0 .. 7;
      Orientation_Confidence at 44 range 0 .. 31;
      Old_Orientation        at 48 range 0 .. 7;
      New_Orientation        at 49 range 0 .. 7;
      Scale_Factor           at 50 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Mag_Cal_Report;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mag_Cal_Report;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mag_Cal_Report;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mag_Cal_Report;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mag_Cal_Report;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mag_Cal_Report;
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
     (Message : Mag_Cal_Report;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mag_Cal_Report;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Mag_Cal_Reports;
