-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  EFI status output 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Efi_Statuses is

   pragma Preelaborate;

   Efi_Status_Id : constant Msg_Id := 225;

   Efi_Status_Len : constant Interfaces.Unsigned_8 := 65;

   type Efi_Status is record
      Health                      : Interfaces.Unsigned_8;
      --  EFI health status 
      Ecu_Index                   : Interfaces.IEEE_Float_32;
      --  ECU index 
      Rpm                         : Interfaces.IEEE_Float_32;
      --  RPM 
      Fuel_Consumed               : Interfaces.IEEE_Float_32;
      --  Units: [cm^3]
      --  Fuel consumed 
      Fuel_Flow                   : Interfaces.IEEE_Float_32;
      --  Units: [cm^3/min]
      --  Fuel flow rate 
      Engine_Load                 : Interfaces.IEEE_Float_32;
      --  Units: [%]
      --  Engine load 
      Throttle_Position           : Interfaces.IEEE_Float_32;
      --  Units: [%]
      --  Throttle position 
      Spark_Dwell_Time            : Interfaces.IEEE_Float_32;
      --  Units: [ms]
      --  Spark dwell time 
      Barometric_Pressure         : Interfaces.IEEE_Float_32;
      --  Units: [kPa]
      --  Barometric pressure 
      Intake_Manifold_Pressure    : Interfaces.IEEE_Float_32;
      --  Units: [kPa]
      --  Intake manifold pressure( 
      Intake_Manifold_Temperature : Interfaces.IEEE_Float_32;
      --  Units: [degC]
      --  Intake manifold temperature 
      Cylinder_Head_Temperature   : Interfaces.IEEE_Float_32;
      --  Units: [degC]
      --  Cylinder head temperature 
      Ignition_Timing             : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Ignition timing (Crank angle degrees) 
      Injection_Time              : Interfaces.IEEE_Float_32;
      --  Units: [ms]
      --  Injection time 
      Exhaust_Gas_Temperature     : Interfaces.IEEE_Float_32;
      --  Units: [degC]
      --  Exhaust gas temperature 
      Throttle_Out                : Interfaces.IEEE_Float_32;
      --  Units: [%]
      --  Output throttle 
      Pt_Compensation             : Interfaces.IEEE_Float_32;
      --  Pressure/temperature compensation 
   end record;

   for Efi_Status use record
      Ecu_Index                   at 0  range 0 .. 31;
      Rpm                         at 4  range 0 .. 31;
      Fuel_Consumed               at 8  range 0 .. 31;
      Fuel_Flow                   at 12 range 0 .. 31;
      Engine_Load                 at 16 range 0 .. 31;
      Throttle_Position           at 20 range 0 .. 31;
      Spark_Dwell_Time            at 24 range 0 .. 31;
      Barometric_Pressure         at 28 range 0 .. 31;
      Intake_Manifold_Pressure    at 32 range 0 .. 31;
      Intake_Manifold_Temperature at 36 range 0 .. 31;
      Cylinder_Head_Temperature   at 40 range 0 .. 31;
      Ignition_Timing             at 44 range 0 .. 31;
      Injection_Time              at 48 range 0 .. 31;
      Exhaust_Gas_Temperature     at 52 range 0 .. 31;
      Throttle_Out                at 56 range 0 .. 31;
      Pt_Compensation             at 60 range 0 .. 31;
      Health                      at 64 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Efi_Status;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Efi_Status;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Efi_Status;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Efi_Status;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Efi_Statuses;
