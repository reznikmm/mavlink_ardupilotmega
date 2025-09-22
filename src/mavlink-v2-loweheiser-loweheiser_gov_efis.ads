-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Composite EFI and Governor data from Loweheiser equipment. This message is
--  created by the EFI unit based on its own data and data received from a
--  governor attached to that EFI unit.

pragma Ada_2022;

package MAVLink.V2.Loweheiser.Loweheiser_Gov_Efis is

   pragma Pure;

   type Loweheiser_Gov_Efi is record
      Volt_Batt                   : Raw_Float;
      --  Units: [V]
      --  Generator Battery voltage.
      Curr_Batt                   : Raw_Float;
      --  Units: [A]
      --  Generator Battery current.
      Curr_Gen                    : Raw_Float;
      --  Units: [A]
      --  Current being produced by generator.
      Curr_Rot                    : Raw_Float;
      --  Units: [A]
      --  Load current being consumed by the UAV (sum of curr_gen and
      --  curr_batt)
      Fuel_Level                  : Raw_Float;
      --  Units: [l]
      --  Generator fuel remaining in litres.
      Throttle                    : Raw_Float;
      --  Units: [%]
      --  Throttle Output.
      Runtime                     : Interfaces.Unsigned_32;
      --  Units: [s]
      --  Seconds this generator has run since it was rebooted.
      Until_Maintenance           : Interfaces.Integer_32;
      --  Units: [s]
      --  Seconds until this generator requires maintenance. A negative value
      --  indicates maintenance is past due.
      Rectifier_Temp              : Raw_Float;
      --  Units: [degC]
      --  The Temperature of the rectifier.
      Generator_Temp              : Raw_Float;
      --  Units: [degC]
      --  The temperature of the mechanical motor, fuel cell core or
      --  generator.
      Efi_Batt                    : Raw_Float;
      --  Units: [V]
      --  EFI Supply Voltage.
      Efi_Rpm                     : Raw_Float;
      --  Units: [rpm]
      --  Motor RPM.
      Efi_Pw                      : Raw_Float;
      --  Units: [ms]
      --  Injector pulse-width in milliseconds.
      Efi_Fuel_Flow               : Raw_Float;
      --  Fuel flow rate in litres/hour.
      Efi_Fuel_Consumed           : Raw_Float;
      --  Units: [l]
      --  Fuel consumed.
      Efi_Baro                    : Raw_Float;
      --  Units: [kPa]
      --  Atmospheric pressure.
      Efi_Mat                     : Raw_Float;
      --  Units: [degC]
      --  Manifold Air Temperature.
      Efi_Clt                     : Raw_Float;
      --  Units: [degC]
      --  Cylinder Head Temperature.
      Efi_Tps                     : Raw_Float;
      --  Units: [%]
      --  Throttle Position.
      Efi_Exhaust_Gas_Temperature : Raw_Float;
      --  Units: [degC]
      --  Exhaust gas temperature.
      Efi_Index                   : Interfaces.Unsigned_8;
      --  EFI index.
      Generator_Status            : Interfaces.Unsigned_16;
      --  Generator status.
      Efi_Status                  : Interfaces.Unsigned_16;
      --  EFI status.
   end record;

   for Loweheiser_Gov_Efi use record
      Volt_Batt                   at 0  range 0 .. 31;
      Curr_Batt                   at 4  range 0 .. 31;
      Curr_Gen                    at 8  range 0 .. 31;
      Curr_Rot                    at 12 range 0 .. 31;
      Fuel_Level                  at 16 range 0 .. 31;
      Throttle                    at 20 range 0 .. 31;
      Runtime                     at 24 range 0 .. 31;
      Until_Maintenance           at 28 range 0 .. 31;
      Rectifier_Temp              at 32 range 0 .. 31;
      Generator_Temp              at 36 range 0 .. 31;
      Efi_Batt                    at 40 range 0 .. 31;
      Efi_Rpm                     at 44 range 0 .. 31;
      Efi_Pw                      at 48 range 0 .. 31;
      Efi_Fuel_Flow               at 52 range 0 .. 31;
      Efi_Fuel_Consumed           at 56 range 0 .. 31;
      Efi_Baro                    at 60 range 0 .. 31;
      Efi_Mat                     at 64 range 0 .. 31;
      Efi_Clt                     at 68 range 0 .. 31;
      Efi_Tps                     at 72 range 0 .. 31;
      Efi_Exhaust_Gas_Temperature at 76 range 0 .. 31;
      Generator_Status            at 80 range 0 .. 15;
      Efi_Status                  at 82 range 0 .. 15;
      Efi_Index                   at 84 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Loweheiser_Gov_Efi;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Loweheiser_Gov_Efi;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Loweheiser_Gov_Efi;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Loweheiser_Gov_Efi;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Loweheiser_Gov_Efi;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Loweheiser_Gov_Efi;
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
     (Message : Loweheiser_Gov_Efi;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Loweheiser_Gov_Efi;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Loweheiser.Loweheiser_Gov_Efis;
