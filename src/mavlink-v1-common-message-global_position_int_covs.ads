-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The filtered global position (e.g. fused GPS and accelerometers). The 
--  position is in GPS-frame (right-handed, Z-up). It is designed as scaled 
--  integer message since the resolution of float is not sufficient. NOTE: 
--  This message is intended for onboard networks / companion computers and 
--  higher-bandwidth links and optimized for accuracy and completeness. Please 
--  use the GLOBAL_POSITION_INT message for a minimal subset. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Global_Position_Int_Covs is

   pragma Preelaborate;

   Global_Position_Int_Cov_Id : constant Msg_Id := 63;

   Global_Position_Int_Cov_Len : constant Interfaces.Unsigned_8 := 181;

   type Global_Position_Int_Cov is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Estimator_Type : Mav_Estimator_Type;
      --  Class id of the estimator this estimate originated from. 
      Lat            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Lon            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
      Alt            : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude in meters above MSL 
      Relative_Alt   : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude above ground 
      Vx             : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Ground X Speed (Latitude) 
      Vy             : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Ground Y Speed (Longitude) 
      Vz             : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Ground Z Speed (Altitude) 
      Covariance     : Short_Float_Array (1 .. 36) :=
        [others => 0.0];
      --  Row-major representation of a 6x6 position and velocity 6x6 
      --  cross-covariance matrix (states: lat, lon, alt, vx, vy, vz; first 
      --  six entries are the first ROW, next six entries are the second row, 
      --  etc.). If unknown, assign NaN value to first element in the array. 
   end record;

   for Global_Position_Int_Cov use record
      Time_Usec      at 0   range 0 .. 63;
      Lat            at 8   range 0 .. 31;
      Lon            at 12  range 0 .. 31;
      Alt            at 16  range 0 .. 31;
      Relative_Alt   at 20  range 0 .. 31;
      Vx             at 24  range 0 .. 31;
      Vy             at 28  range 0 .. 31;
      Vz             at 32  range 0 .. 31;
      Covariance     at 36  range 0 .. 1151;
      Estimator_Type at 180 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Global_Position_Int_Cov;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Global_Position_Int_Cov;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Global_Position_Int_Cov;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Global_Position_Int_Cov;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Global_Position_Int_Covs;
