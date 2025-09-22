-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of DCM attitude estimator.

pragma Ada_2022;

package MAVLink.V1.Ardupilotmega.Ahrses is

   pragma Pure;

   Ahrs_Len : constant Interfaces.Unsigned_8 := 28;

   type Ahrs is record
      Omegaix      : Raw_Float;
      --  Units: [rad/s]
      --  X gyro drift estimate.
      Omegaiy      : Raw_Float;
      --  Units: [rad/s]
      --  Y gyro drift estimate.
      Omegaiz      : Raw_Float;
      --  Units: [rad/s]
      --  Z gyro drift estimate.
      Accel_Weight : Raw_Float;
      --  Average accel_weight.
      Renorm_Val   : Raw_Float;
      --  Average renormalisation value.
      Error_Rp     : Raw_Float;
      --  Average error_roll_pitch value.
      Error_Yaw    : Raw_Float;
      --  Average error_yaw value.
   end record;

   for Ahrs use record
      Omegaix      at 0  range 0 .. 31;
      Omegaiy      at 4  range 0 .. 31;
      Omegaiz      at 8  range 0 .. 31;
      Accel_Weight at 12 range 0 .. 31;
      Renorm_Val   at 16 range 0 .. 31;
      Error_Rp     at 20 range 0 .. 31;
      Error_Yaw    at 24 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Ahrs;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ahrs;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ahrs;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ahrs;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Ahrs;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ahrs;
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

end MAVLink.V1.Ardupilotmega.Ahrses;
