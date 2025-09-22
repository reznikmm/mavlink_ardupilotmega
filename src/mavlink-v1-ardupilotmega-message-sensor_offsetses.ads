-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2022-02 REPLACED BY: MAG_CAL_REPORT, Accel Parameters, and Gyro Parameters
------------
--  Offsets and calibrations values for hardware sensors. This makes it easier 
--  to debug the calibration process. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Sensor_Offsetses is

   pragma Preelaborate;

   Sensor_Offsets_Id : constant Msg_Id := 150;

   Sensor_Offsets_Len : constant Interfaces.Unsigned_8 := 42;

   type Sensor_Offsets is record
      Mag_Ofs_X       : Interfaces.Integer_16;
      --  Magnetometer X offset. 
      Mag_Ofs_Y       : Interfaces.Integer_16;
      --  Magnetometer Y offset. 
      Mag_Ofs_Z       : Interfaces.Integer_16;
      --  Magnetometer Z offset. 
      Mag_Declination : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Magnetic declination. 
      Raw_Press       : Interfaces.Integer_32;
      --  Raw pressure from barometer. 
      Raw_Temp        : Interfaces.Integer_32;
      --  Raw temperature from barometer. 
      Gyro_Cal_X      : Interfaces.IEEE_Float_32;
      --  Gyro X calibration. 
      Gyro_Cal_Y      : Interfaces.IEEE_Float_32;
      --  Gyro Y calibration. 
      Gyro_Cal_Z      : Interfaces.IEEE_Float_32;
      --  Gyro Z calibration. 
      Accel_Cal_X     : Interfaces.IEEE_Float_32;
      --  Accel X calibration. 
      Accel_Cal_Y     : Interfaces.IEEE_Float_32;
      --  Accel Y calibration. 
      Accel_Cal_Z     : Interfaces.IEEE_Float_32;
      --  Accel Z calibration. 
   end record;

   pragma Obsolescent (Sensor_Offsets);

   for Sensor_Offsets use record
      Mag_Declination at 0  range 0 .. 31;
      Raw_Press       at 4  range 0 .. 31;
      Raw_Temp        at 8  range 0 .. 31;
      Gyro_Cal_X      at 12 range 0 .. 31;
      Gyro_Cal_Y      at 16 range 0 .. 31;
      Gyro_Cal_Z      at 20 range 0 .. 31;
      Accel_Cal_X     at 24 range 0 .. 31;
      Accel_Cal_Y     at 28 range 0 .. 31;
      Accel_Cal_Z     at 32 range 0 .. 31;
      Mag_Ofs_X       at 36 range 0 .. 15;
      Mag_Ofs_Y       at 38 range 0 .. 15;
      Mag_Ofs_Z       at 40 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Sensor_Offsets;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Sensor_Offsets;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Sensor_Offsets;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Sensor_Offsets;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Sensor_Offsetses;
