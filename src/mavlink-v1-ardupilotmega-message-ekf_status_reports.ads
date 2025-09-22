-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  EKF Status message including flags and variances. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Ekf_Status_Reports is

   pragma Preelaborate;

   Ekf_Status_Report_Id : constant Msg_Id := 193;

   Ekf_Status_Report_Len : constant Interfaces.Unsigned_8 := 22;

   type Ekf_Status_Report is record
      Flags                : Ekf_Status_Flags;
      --  Flags. 
      Velocity_Variance    : Interfaces.IEEE_Float_32;
      --  Velocity variance. 
      Pos_Horiz_Variance   : Interfaces.IEEE_Float_32;
      --  Horizontal Position variance. 
      Pos_Vert_Variance    : Interfaces.IEEE_Float_32;
      --  Vertical Position variance. 
      Compass_Variance     : Interfaces.IEEE_Float_32;
      --  Compass variance. 
      Terrain_Alt_Variance : Interfaces.IEEE_Float_32;
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
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ekf_Status_Report;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ekf_Status_Report;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ekf_Status_Report;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Ekf_Status_Reports;
