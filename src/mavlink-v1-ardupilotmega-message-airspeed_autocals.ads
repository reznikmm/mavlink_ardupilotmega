-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Airspeed auto-calibration. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Airspeed_Autocals is

   pragma Preelaborate;

   Airspeed_Autocal_Id : constant Msg_Id := 174;

   Airspeed_Autocal_Len : constant Interfaces.Unsigned_8 := 48;

   type Airspeed_Autocal is record
      Vx            : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  GPS velocity north. 
      Vy            : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  GPS velocity east. 
      Vz            : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  GPS velocity down. 
      Diff_Pressure : Interfaces.IEEE_Float_32;
      --  Units: [Pa]
      --  Differential pressure. 
      Eas2Tas       : Interfaces.IEEE_Float_32;
      --  Estimated to true airspeed ratio. 
      Ratio         : Interfaces.IEEE_Float_32;
      --  Airspeed ratio. 
      State_X       : Interfaces.IEEE_Float_32;
      --  EKF state x. 
      State_Y       : Interfaces.IEEE_Float_32;
      --  EKF state y. 
      State_Z       : Interfaces.IEEE_Float_32;
      --  EKF state z. 
      Pax           : Interfaces.IEEE_Float_32;
      --  EKF Pax. 
      Pby           : Interfaces.IEEE_Float_32;
      --  EKF Pby. 
      Pcz           : Interfaces.IEEE_Float_32;
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
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Airspeed_Autocal;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Airspeed_Autocal;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Airspeed_Autocal;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Airspeed_Autocals;
