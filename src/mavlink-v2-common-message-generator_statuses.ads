-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Telemetry of power generation system. Alternator or mechanical generator. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Generator_Statuses is

   pragma Preelaborate;

   Generator_Status_Id : constant Msg_Id := 373;

   type Generator_Status is record
      Status                 : Mav_Generator_Status_Flag;
      --  Status flags. 
      Generator_Speed        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [rpm]
      --  Speed of electrical generator or alternator. UINT16_MAX: field not 
      --  provided. 
      Battery_Current        : Raw_Float :=
        To_Raw (0.0);
      --  Units: [A]
      --  Current into/out of battery. Positive for out. Negative for in. NaN: 
      --  field not provided. 
      Load_Current           : Raw_Float :=
        To_Raw (0.0);
      --  Units: [A]
      --  Current going to the UAV. If battery current not available this is 
      --  the DC current from the generator. Positive for out. Negative for 
      --  in. NaN: field not provided 
      Power_Generated        : Raw_Float :=
        To_Raw (0.0);
      --  Units: [W]
      --  The power being generated. NaN: field not provided 
      Bus_Voltage            : Raw_Float;
      --  Units: [V]
      --  Voltage of the bus seen at the generator, or battery bus if battery 
      --  bus is controlled by generator and at a different voltage to main 
      --  bus. 
      Rectifier_Temperature  : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Units: [degC]
      --  The temperature of the rectifier or power converter. INT16_MAX: 
      --  field not provided. 
      Bat_Current_Setpoint   : Raw_Float :=
        To_Raw (0.0);
      --  Units: [A]
      --  The target battery current. Positive for out. Negative for in. NaN: 
      --  field not provided 
      Generator_Temperature  : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Units: [degC]
      --  The temperature of the mechanical motor, fuel cell core or 
      --  generator. INT16_MAX: field not provided. 
      Runtime                : Interfaces.Unsigned_32 :=
        Interfaces.Unsigned_32'Last;
      --  Units: [s]
      --  Seconds this generator has run since it was rebooted. UINT32_MAX: 
      --  field not provided. 
      Time_Until_Maintenance : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [s]
      --  Seconds until this generator requires maintenance. A negative value 
      --  indicates maintenance is past-due. INT32_MAX: field not provided. 
   end record;

   for Generator_Status use record
      Status                 at 0  range 0 .. 63;
      Battery_Current        at 8  range 0 .. 31;
      Load_Current           at 12 range 0 .. 31;
      Power_Generated        at 16 range 0 .. 31;
      Bus_Voltage            at 20 range 0 .. 31;
      Bat_Current_Setpoint   at 24 range 0 .. 31;
      Runtime                at 28 range 0 .. 31;
      Time_Until_Maintenance at 32 range 0 .. 31;
      Generator_Speed        at 36 range 0 .. 15;
      Rectifier_Temperature  at 38 range 0 .. 15;
      Generator_Temperature  at 40 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Generator_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Generator_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Generator_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Generator_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Generator_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Generator_Status;
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
     (Message : Generator_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Generator_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Generator_Statuses;
