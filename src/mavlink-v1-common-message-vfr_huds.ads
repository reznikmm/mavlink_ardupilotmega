-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Metrics typically displayed on a HUD for fixed wing aircraft. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Vfr_Huds is

   pragma Preelaborate;

   Vfr_Hud_Id : constant Msg_Id := 74;

   Vfr_Hud_Len : constant Interfaces.Unsigned_8 := 20;

   type Vfr_Hud is record
      Airspeed    : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Vehicle speed in form appropriate for vehicle type. For standard 
      --  aircraft this is typically calibrated airspeed (CAS) or indicated 
      --  airspeed (IAS) - either of which can be used by a pilot to estimate 
      --  stall speed. 
      Groundspeed : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Current ground speed. 
      Heading     : Interfaces.Integer_16;
      --  Units: [deg]
      --  Current heading in compass units (0-360, 0=north). 
      Throttle    : Interfaces.Unsigned_16;
      --  Units: [%]
      --  Current throttle setting (0 to 100). 
      Alt         : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Current altitude (MSL). 
      Climb       : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Current climb rate. 
   end record;

   for Vfr_Hud use record
      Airspeed    at 0  range 0 .. 31;
      Groundspeed at 4  range 0 .. 31;
      Alt         at 8  range 0 .. 31;
      Climb       at 12 range 0 .. 31;
      Heading     at 16 range 0 .. 15;
      Throttle    at 18 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Vfr_Hud;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Vfr_Hud;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Vfr_Hud;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Vfr_Hud;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Vfr_Huds;
