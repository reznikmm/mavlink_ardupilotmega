-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Adaptive Controller tuning information.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;

package MAVLink.V2.Ardupilotmega.Adap_Tunings is

   pragma Pure;

   type Adap_Tuning is record
      Axis      : Pid_Tuning_Axis;
      --  Axis.
      Desired   : Raw_Float;
      --  Units: [deg/s]
      --  Desired rate.
      Achieved  : Raw_Float;
      --  Units: [deg/s]
      --  Achieved rate.
      Error     : Raw_Float;
      --  Error between model and vehicle.
      Theta     : Raw_Float;
      --  Theta estimated state predictor.
      Omega     : Raw_Float;
      --  Omega estimated state predictor.
      Sigma     : Raw_Float;
      --  Sigma estimated state predictor.
      Theta_Dot : Raw_Float;
      --  Theta derivative.
      Omega_Dot : Raw_Float;
      --  Omega derivative.
      Sigma_Dot : Raw_Float;
      --  Sigma derivative.
      F         : Raw_Float;
      --  Projection operator value.
      F_Dot     : Raw_Float;
      --  Projection operator derivative.
      U         : Raw_Float;
      --  u adaptive controlled output command.
   end record;

   for Adap_Tuning use record
      Desired   at 0  range 0 .. 31;
      Achieved  at 4  range 0 .. 31;
      Error     at 8  range 0 .. 31;
      Theta     at 12 range 0 .. 31;
      Omega     at 16 range 0 .. 31;
      Sigma     at 20 range 0 .. 31;
      Theta_Dot at 24 range 0 .. 31;
      Omega_Dot at 28 range 0 .. 31;
      Sigma_Dot at 32 range 0 .. 31;
      F         at 36 range 0 .. 31;
      F_Dot     at 40 range 0 .. 31;
      U         at 44 range 0 .. 31;
      Axis      at 48 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Adap_Tuning;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Adap_Tuning;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Adap_Tuning;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Adap_Tuning;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Adap_Tuning;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Adap_Tuning;
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
     (Message : Adap_Tuning;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Adap_Tuning;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Adap_Tunings;
