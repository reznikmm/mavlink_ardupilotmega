-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  EFI status output 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Efi_Statuses is

   pragma Preelaborate;

   Efi_Status_Id : constant Msg_Id := 225;

   type Efi_Status is record
      Health                      : Interfaces.Unsigned_8;
      --  EFI health status 
      Ecu_Index                   : Raw_Float;
      --  ECU index 
      Rpm                         : Raw_Float;
      --  RPM 
      Fuel_Consumed               : Raw_Float;
      --  Units: [cm^3]
      --  Fuel consumed 
      Fuel_Flow                   : Raw_Float;
      --  Units: [cm^3/min]
      --  Fuel flow rate 
      Engine_Load                 : Raw_Float;
      --  Units: [%]
      --  Engine load 
      Throttle_Position           : Raw_Float;
      --  Units: [%]
      --  Throttle position 
      Spark_Dwell_Time            : Raw_Float;
      --  Units: [ms]
      --  Spark dwell time 
      Barometric_Pressure         : Raw_Float;
      --  Units: [kPa]
      --  Barometric pressure 
      Intake_Manifold_Pressure    : Raw_Float;
      --  Units: [kPa]
      --  Intake manifold pressure( 
      Intake_Manifold_Temperature : Raw_Float;
      --  Units: [degC]
      --  Intake manifold temperature 
      Cylinder_Head_Temperature   : Raw_Float;
      --  Units: [degC]
      --  Cylinder head temperature 
      Ignition_Timing             : Raw_Float;
      --  Units: [deg]
      --  Ignition timing (Crank angle degrees) 
      Injection_Time              : Raw_Float;
      --  Units: [ms]
      --  Injection time 
      Exhaust_Gas_Temperature     : Raw_Float;
      --  Units: [degC]
      --  Exhaust gas temperature 
      Throttle_Out                : Raw_Float;
      --  Units: [%]
      --  Output throttle 
      Pt_Compensation             : Raw_Float;
      --  Pressure/temperature compensation 
      Ignition_Voltage            : Raw_Float;
      --  Units: [V]
      --  Supply voltage to EFI sparking system. Zero in this value means 
      --  "unknown", so if the supply voltage really is zero volts use 0.0001 
      --  instead. 
      Fuel_Pressure               : Raw_Float;
      --  Units: [kPa]
      --  Fuel pressure. Zero in this value means "unknown", so if the fuel 
      --  pressure really is zero kPa use 0.0001 instead. 
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
      Ignition_Voltage            at 65 range 0 .. 31;
      Fuel_Pressure               at 69 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Efi_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Efi_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Efi_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Efi_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Efi_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Efi_Status;
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
     (Message : Efi_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Efi_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Efi_Statuses;
