-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Distance sensor information for an onboard rangefinder. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Distance_Sensors is

   pragma Preelaborate;

   Distance_Sensor_Id : constant Msg_Id := 132;

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
      Horizontal_Fov   : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Horizontal Field of View (angle) where the distance measurement is 
      --  valid and the field of view is known. Otherwise this is set to 0. 
      Vertical_Fov     : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Vertical Field of View (angle) where the distance measurement is 
      --  valid and the field of view is known. Otherwise this is set to 0. 
      Quaternion       : Short_Float_Array (1 .. 4) :=
        [others => To_Raw (0.0)];
      --  Quaternion of the sensor orientation in vehicle body frame (w, x, y, 
      --  z order, zero-rotation is 1, 0, 0, 0). Zero-rotation is along the 
      --  vehicle body x-axis. This field is required if the orientation is 
      --  set to MAV_SENSOR_ROTATION_CUSTOM. Set it to 0 if invalid." 
      Signal_Quality   : Interfaces.Unsigned_8 :=
        0;
      --  Units: [%]
      --  Signal quality of the sensor. Specific to each sensor type, 
      --  representing the relation of the signal strength with the target 
      --  reflectivity, distance, size or aspect, but normalised as a 
      --  percentage. 0 = unknown/unset signal quality, 1 = invalid signal, 
      --  100 = perfect signal. 
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
      Horizontal_Fov   at 14 range 0 .. 31;
      Vertical_Fov     at 18 range 0 .. 31;
      Quaternion       at 22 range 0 .. 127;
      Signal_Quality   at 38 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Distance_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Distance_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Distance_Sensor;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Distance_Sensor;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Distance_Sensor;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Distance_Sensor;
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
     (Message : Distance_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Distance_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Distance_Sensors;
