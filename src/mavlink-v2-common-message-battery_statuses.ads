-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Battery information. Updates GCS with flight controller battery status. 
--  Smart batteries also use this message, but may additionally send 
--  BATTERY_INFO. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Battery_Statuses is

   pragma Preelaborate;

   Battery_Status_Id : constant Msg_Id := 147;

   type Battery_Status is record
      Id                : Interfaces.Unsigned_8;
      --  Battery ID 
      Battery_Function  : Mav_Battery_Function;
      --  Function of the battery 
      Type_Field        : Mav_Battery_Type;
      --  Type (chemistry) of the battery 
      Temperature       : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Units: [cdegC]
      --  Temperature of the battery. INT16_MAX for unknown temperature. 
      Voltages          : Unsigned_16_Array (1 .. 10) :=
        [others => Interfaces.Unsigned_16'Last];
      --  Units: [mV]
      --  Battery voltage of cells 1 to 10 (see voltages_ext for cells 11-14). 
      --  Cells in this field above the valid cell count for this battery 
      --  should have the UINT16_MAX value. If individual cell voltages are 
      --  unknown or not measured for this battery, then the overall battery 
      --  voltage should be filled in cell 0, with all others set to 
      --  UINT16_MAX. If the voltage of the battery is greater than 
      --  (UINT16_MAX - 1), then cell 0 should be set to (UINT16_MAX - 1), and 
      --  cell 1 to the remaining voltage. This can be extended to multiple 
      --  cells if the total voltage is greater than 2 * (UINT16_MAX - 1). 
      Current_Battery   : Interfaces.Integer_16 :=
        -1;
      --  Units: [cA]
      --  Battery current, -1: autopilot does not measure the current 
      Current_Consumed  : Interfaces.Integer_32 :=
        -1;
      --  Units: [mAh]
      --  Consumed charge, -1: autopilot does not provide consumption estimate 
      Energy_Consumed   : Interfaces.Integer_32 :=
        -1;
      --  Units: [hJ]
      --  Consumed energy, -1: autopilot does not provide energy consumption 
      --  estimate 
      Battery_Remaining : Interfaces.Integer_8 :=
        -1;
      --  Units: [%]
      --  Remaining battery energy. Values: [0-100], -1: autopilot does not 
      --  estimate the remaining battery. 
      Time_Remaining    : Interfaces.Integer_32 :=
        0;
      --  Units: [s]
      --  Remaining battery time, 0: autopilot does not provide remaining 
      --  battery time estimate 
      Charge_State      : Mav_Battery_Charge_State;
      --  State for extent of discharge, provided by autopilot for warning or 
      --  external reactions 
      Voltages_Ext      : Unsigned_16_Array (1 .. 4) :=
        [others => 0];
      --  Units: [mV]
      --  Battery voltages for cells 11 to 14. Cells above the valid cell 
      --  count for this battery should have a value of 0, where zero 
      --  indicates not supported (note, this is different than for the 
      --  voltages field and allows empty byte truncation). If the measured 
      --  value is 0 then 1 should be sent instead. 
      Mode              : Mav_Battery_Mode;
      --  Battery mode. Default (0) is that battery mode reporting is not 
      --  supported or battery is in normal-use mode. 
      Fault_Bitmask     : Mav_Battery_Fault;
      --  Fault/health indications. These should be set when charge_state is 
      --  MAV_BATTERY_CHARGE_STATE_FAILED or 
      --  MAV_BATTERY_CHARGE_STATE_UNHEALTHY (if not, fault reporting is not 
      --  supported). 
   end record;

   for Battery_Status use record
      Current_Consumed  at 0  range 0 .. 31;
      Energy_Consumed   at 4  range 0 .. 31;
      Temperature       at 8  range 0 .. 15;
      Voltages          at 10 range 0 .. 159;
      Current_Battery   at 30 range 0 .. 15;
      Id                at 32 range 0 .. 7;
      Battery_Function  at 33 range 0 .. 7;
      Type_Field        at 34 range 0 .. 7;
      Battery_Remaining at 35 range 0 .. 7;
      Time_Remaining    at 36 range 0 .. 31;
      Charge_State      at 40 range 0 .. 7;
      Voltages_Ext      at 41 range 0 .. 63;
      Mode              at 49 range 0 .. 7;
      Fault_Bitmask     at 50 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Battery_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Battery_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Battery_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Battery_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Battery_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Battery_Status;
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
     (Message : Battery_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Battery_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Battery_Statuses;
