-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The IMU readings in SI units in NED body frame 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Highres_Imus is

   pragma Preelaborate;

   Highres_Imu_Id : constant Msg_Id := 105;

   Highres_Imu_Len : constant Interfaces.Unsigned_8 := 62;

   type Highres_Imu is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Xacc           : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  X acceleration 
      Yacc           : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Y acceleration 
      Zacc           : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Z acceleration 
      Xgyro          : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around X axis 
      Ygyro          : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around Y axis 
      Zgyro          : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around Z axis 
      Xmag           : Interfaces.IEEE_Float_32;
      --  Units: [gauss]
      --  X Magnetic field 
      Ymag           : Interfaces.IEEE_Float_32;
      --  Units: [gauss]
      --  Y Magnetic field 
      Zmag           : Interfaces.IEEE_Float_32;
      --  Units: [gauss]
      --  Z Magnetic field 
      Abs_Pressure   : Interfaces.IEEE_Float_32;
      --  Units: [hPa]
      --  Absolute pressure 
      Diff_Pressure  : Interfaces.IEEE_Float_32;
      --  Units: [hPa]
      --  Differential pressure 
      Pressure_Alt   : Interfaces.IEEE_Float_32;
      --  Altitude calculated from pressure 
      Temperature    : Interfaces.IEEE_Float_32;
      --  Units: [degC]
      --  Temperature 
      Fields_Updated : Highres_Imu_Updated_Flags;
      --  Bitmap for fields that have updated since last message 
   end record;

   for Highres_Imu use record
      Time_Usec      at 0  range 0 .. 63;
      Xacc           at 8  range 0 .. 31;
      Yacc           at 12 range 0 .. 31;
      Zacc           at 16 range 0 .. 31;
      Xgyro          at 20 range 0 .. 31;
      Ygyro          at 24 range 0 .. 31;
      Zgyro          at 28 range 0 .. 31;
      Xmag           at 32 range 0 .. 31;
      Ymag           at 36 range 0 .. 31;
      Zmag           at 40 range 0 .. 31;
      Abs_Pressure   at 44 range 0 .. 31;
      Diff_Pressure  at 48 range 0 .. 31;
      Pressure_Alt   at 52 range 0 .. 31;
      Temperature    at 56 range 0 .. 31;
      Fields_Updated at 60 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Highres_Imu;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Highres_Imu;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Highres_Imu;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Highres_Imu;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Highres_Imus;
