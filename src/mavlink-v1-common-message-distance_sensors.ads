-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Distance sensor information for an onboard rangefinder. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Distance_Sensors is

   pragma Preelaborate;

   Distance_Sensor_Id : constant Msg_Id := 132;

   Distance_Sensor_Len : constant Interfaces.Unsigned_8 := 14;

   type Distance_Sensor is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Min_Distance     : Interfaces.Unsigned_16;
      --  Units: [cm]
      --  Minimum distance the sensor can measure 
      Max_Distance     : Interfaces.Unsigned_16;
      --  Units: [cm]
      --  Maximum distance the sensor can measure 
      Current_Distance : Interfaces.Unsigned_16;
      --  Units: [cm]
      --  Current distance reading 
      Type_Field       : Mav_Distance_Sensor;
      --  Type of distance sensor. 
      Id               : Interfaces.Unsigned_8;
      --  Onboard ID of the sensor 
      Orientation      : Mav_Sensor_Orientation;
      --  Direction the sensor faces. downward-facing: ROTATION_PITCH_270, 
      --  upward-facing: ROTATION_PITCH_90, backward-facing: 
      --  ROTATION_PITCH_180, forward-facing: ROTATION_NONE, left-facing: 
      --  ROTATION_YAW_90, right-facing: ROTATION_YAW_270 
      Covariance       : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Units: [cm^2]
      --  Measurement variance. Max standard deviation is 6cm. UINT8_MAX if 
      --  unknown. 
   end record;

   for Distance_Sensor use record
      Time_Boot_Ms     at 0  range 0 .. 31;
      Min_Distance     at 4  range 0 .. 15;
      Max_Distance     at 6  range 0 .. 15;
      Current_Distance at 8  range 0 .. 15;
      Type_Field       at 10 range 0 .. 7;
      Id               at 11 range 0 .. 7;
      Orientation      at 12 range 0 .. 7;
      Covariance       at 13 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Distance_Sensor;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Distance_Sensor;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Distance_Sensor;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Distance_Sensor;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Distance_Sensor;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Distance_Sensor;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Distance_Sensors;
