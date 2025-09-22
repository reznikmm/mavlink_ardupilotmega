-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The IMU readings in SI units in NED body frame 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Hil_Sensors is

   pragma Preelaborate;

   Hil_Sensor_Id : constant Msg_Id := 107;

   type Hil_Sensor is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Xacc           : Raw_Float;
      --  Units: [m/s/s]
      --  X acceleration 
      Yacc           : Raw_Float;
      --  Units: [m/s/s]
      --  Y acceleration 
      Zacc           : Raw_Float;
      --  Units: [m/s/s]
      --  Z acceleration 
      Xgyro          : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around X axis in body frame 
      Ygyro          : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around Y axis in body frame 
      Zgyro          : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around Z axis in body frame 
      Xmag           : Raw_Float;
      --  Units: [gauss]
      --  X Magnetic field 
      Ymag           : Raw_Float;
      --  Units: [gauss]
      --  Y Magnetic field 
      Zmag           : Raw_Float;
      --  Units: [gauss]
      --  Z Magnetic field 
      Abs_Pressure   : Raw_Float;
      --  Units: [hPa]
      --  Absolute pressure 
      Diff_Pressure  : Raw_Float;
      --  Units: [hPa]
      --  Differential pressure (airspeed) 
      Pressure_Alt   : Raw_Float;
      --  Altitude calculated from pressure 
      Temperature    : Raw_Float;
      --  Units: [degC]
      --  Temperature 
      Fields_Updated : Hil_Sensor_Updated_Flags;
      --  Bitmap for fields that have updated since last message 
      Id             : Interfaces.Unsigned_8;
      --  Sensor ID (zero indexed). Used for multiple sensor inputs 
   end record;

   for Hil_Sensor use record
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
      Fields_Updated at 60 range 0 .. 31;
      Id             at 64 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Hil_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_Sensor;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Sensor;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hil_Sensor;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Sensor;
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
     (Message : Hil_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Hil_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Hil_Sensors;
