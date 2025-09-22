-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Water depth

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Water_Depths is

   pragma Pure;

   type Water_Depth is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot)
      Id           : Interfaces.Unsigned_8;
      --  Onboard ID of the sensor
      Healthy      : Interfaces.Unsigned_8;
      --  Sensor data healthy (0=unhealthy, 1=healthy)
      Lat          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude
      Lng          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude
      Alt          : Raw_Float;
      --  Units: [m]
      --  Altitude (MSL) of vehicle
      Roll         : Raw_Float;
      --  Units: [rad]
      --  Roll angle
      Pitch        : Raw_Float;
      --  Units: [rad]
      --  Pitch angle
      Yaw          : Raw_Float;
      --  Units: [rad]
      --  Yaw angle
      Distance     : Raw_Float;
      --  Units: [m]
      --  Distance (uncorrected)
      Temperature  : Raw_Float;
      --  Units: [degC]
      --  Water temperature
   end record;

   for Water_Depth use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Lat          at 4  range 0 .. 31;
      Lng          at 8  range 0 .. 31;
      Alt          at 12 range 0 .. 31;
      Roll         at 16 range 0 .. 31;
      Pitch        at 20 range 0 .. 31;
      Yaw          at 24 range 0 .. 31;
      Distance     at 28 range 0 .. 31;
      Temperature  at 32 range 0 .. 31;
      Id           at 36 range 0 .. 7;
      Healthy      at 37 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Water_Depth;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Water_Depth;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Water_Depth;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Water_Depth;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Water_Depth;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Water_Depth;
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
     (Message : Water_Depth;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Water_Depth;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Water_Depths;
