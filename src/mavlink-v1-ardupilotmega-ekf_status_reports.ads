-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  EKF Status message including flags and variances.

pragma Ada_2022;

with MAVLink.V1.Ardupilotmega.Types; use MAVLink.V1.Ardupilotmega.Types;

package MAVLink.V1.Ardupilotmega.Ekf_Status_Reports is

   pragma Pure;

   Ekf_Status_Report_Len : constant Interfaces.Unsigned_8 := 22;

   type Ekf_Status_Report is record
      Flags                : Ekf_Status_Flags;
      --  Flags.
      Velocity_Variance    : Raw_Float;
      --  Velocity variance.
      Pos_Horiz_Variance   : Raw_Float;
      --  Horizontal Position variance.
      Pos_Vert_Variance    : Raw_Float;
      --  Vertical Position variance.
      Compass_Variance     : Raw_Float;
      --  Compass variance.
      Terrain_Alt_Variance : Raw_Float;
      --  Terrain Altitude variance.
   end record;

   for Ekf_Status_Report use record
      Velocity_Variance    at 0  range 0 .. 31;
      Pos_Horiz_Variance   at 4  range 0 .. 31;
      Pos_Vert_Variance    at 8  range 0 .. 31;
      Compass_Variance     at 12 range 0 .. 31;
      Terrain_Alt_Variance at 16 range 0 .. 31;
      Flags                at 20 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Ekf_Status_Report;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ekf_Status_Report;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ekf_Status_Report;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Ekf_Status_Report;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Ekf_Status_Report;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Ekf_Status_Report;
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

end MAVLink.V1.Ardupilotmega.Ekf_Status_Reports;
