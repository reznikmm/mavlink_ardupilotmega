-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Airspeed auto-calibration.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Airspeed_Autocals is

   pragma Pure;

   type Airspeed_Autocal is record
      Vx            : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity north.
      Vy            : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity east.
      Vz            : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity down.
      Diff_Pressure : Raw_Float;
      --  Units: [Pa]
      --  Differential pressure.
      Eas2Tas       : Raw_Float;
      --  Estimated to true airspeed ratio.
      Ratio         : Raw_Float;
      --  Airspeed ratio.
      State_X       : Raw_Float;
      --  EKF state x.
      State_Y       : Raw_Float;
      --  EKF state y.
      State_Z       : Raw_Float;
      --  EKF state z.
      Pax           : Raw_Float;
      --  EKF Pax.
      Pby           : Raw_Float;
      --  EKF Pby.
      Pcz           : Raw_Float;
      --  EKF Pcz.
   end record;

   for Airspeed_Autocal use record
      Vx            at 0  range 0 .. 31;
      Vy            at 4  range 0 .. 31;
      Vz            at 8  range 0 .. 31;
      Diff_Pressure at 12 range 0 .. 31;
      Eas2Tas       at 16 range 0 .. 31;
      Ratio         at 20 range 0 .. 31;
      State_X       at 24 range 0 .. 31;
      State_Y       at 28 range 0 .. 31;
      State_Z       at 32 range 0 .. 31;
      Pax           at 36 range 0 .. 31;
      Pby           at 40 range 0 .. 31;
      Pcz           at 44 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Airspeed_Autocal;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Airspeed_Autocal;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Airspeed_Autocal;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Airspeed_Autocal;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Airspeed_Autocal;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Airspeed_Autocal;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Airspeed_Autocal;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Airspeed_Autocal;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Airspeed_Autocals;
