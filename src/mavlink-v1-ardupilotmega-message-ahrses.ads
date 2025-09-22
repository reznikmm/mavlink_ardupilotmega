-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of DCM attitude estimator. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Ahrses is

   pragma Preelaborate;

   Ahrs_Id : constant Msg_Id := 163;

   Ahrs_Len : constant Interfaces.Unsigned_8 := 28;

   type Ahrs is record
      Omegaix      : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  X gyro drift estimate. 
      Omegaiy      : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Y gyro drift estimate. 
      Omegaiz      : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Z gyro drift estimate. 
      Accel_Weight : Interfaces.IEEE_Float_32;
      --  Average accel_weight. 
      Renorm_Val   : Interfaces.IEEE_Float_32;
      --  Average renormalisation value. 
      Error_Rp     : Interfaces.IEEE_Float_32;
      --  Average error_roll_pitch value. 
      Error_Yaw    : Interfaces.IEEE_Float_32;
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
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ahrs;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ahrs;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ahrs;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Ahrses;
