-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2022-02 REPLACED BY: MAG_CAL_REPORT, Accel Parameters, and Gyro Parameters
------------

--  Offsets and calibrations values for hardware sensors. This makes it easier
--  to debug the calibration process.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Sensor_Offsetses is

   pragma Pure;

   type Sensor_Offsets is record
      Mag_Ofs_X       : Interfaces.Integer_16;
      --  Magnetometer X offset.
      Mag_Ofs_Y       : Interfaces.Integer_16;
      --  Magnetometer Y offset.
      Mag_Ofs_Z       : Interfaces.Integer_16;
      --  Magnetometer Z offset.
      Mag_Declination : Raw_Float;
      --  Units: [rad]
      --  Magnetic declination.
      Raw_Press       : Interfaces.Integer_32;
      --  Raw pressure from barometer.
      Raw_Temp        : Interfaces.Integer_32;
      --  Raw temperature from barometer.
      Gyro_Cal_X      : Raw_Float;
      --  Gyro X calibration.
      Gyro_Cal_Y      : Raw_Float;
      --  Gyro Y calibration.
      Gyro_Cal_Z      : Raw_Float;
      --  Gyro Z calibration.
      Accel_Cal_X     : Raw_Float;
      --  Accel X calibration.
      Accel_Cal_Y     : Raw_Float;
      --  Accel Y calibration.
      Accel_Cal_Z     : Raw_Float;
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
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Sensor_Offsets;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Sensor_Offsets;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Sensor_Offsets;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Sensor_Offsets;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Sensor_Offsets;
      Connect : MAVLink.V2.In_Connection);
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
     (Message : Sensor_Offsets;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Sensor_Offsets;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Sensor_Offsetses;
