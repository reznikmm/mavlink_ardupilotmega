-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Battery information that is static, or requires infrequent update. This 
--  message should requested using MAV_CMD_REQUEST_MESSAGE and/or streamed at 
--  very low rate. BATTERY_STATUS_V2 is used for higher-rate battery status 
--  information. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Battery_Infos is

   pragma Preelaborate;

   Battery_Info_Id : constant Msg_Id := 372;

   type Battery_Info is record
      Id                              : Interfaces.Unsigned_8;
      --  Battery ID 
      Battery_Function                : Mav_Battery_Function;
      --  Function of the battery. 
      Type_Field                      : Mav_Battery_Type;
      --  Type (chemistry) of the battery. 
      State_Of_Health                 : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Units: [%]
      --  State of Health (SOH) estimate. Typically 100% at the time of 
      --  manufacture and will decrease over time and use. -1: field not 
      --  provided. 
      Cells_In_Series                 : Interfaces.Unsigned_8 :=
        0;
      --  Number of battery cells in series. 0: field not provided. 
      Cycle_Count                     : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Lifetime count of the number of charge/discharge cycles 
      --  (https://en.wikipedia.org/wiki/Charge_cycle). UINT16_MAX: field not 
      --  provided. 
      Weight                          : Interfaces.Unsigned_16 :=
        0;
      --  Units: [g]
      --  Battery weight. 0: field not provided. 
      Discharge_Minimum_Voltage       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [V]
      --  Minimum per-cell voltage when discharging. 0: field not provided. 
      Charging_Minimum_Voltage        : Raw_Float :=
        To_Raw (0.0);
      --  Units: [V]
      --  Minimum per-cell voltage when charging. 0: field not provided. 
      Resting_Minimum_Voltage         : Raw_Float :=
        To_Raw (0.0);
      --  Units: [V]
      --  Minimum per-cell voltage when resting. 0: field not provided. 
      Charging_Maximum_Voltage        : Raw_Float :=
        To_Raw (0.0);
      --  Units: [V]
      --  Maximum per-cell voltage when charged. 0: field not provided. 
      Charging_Maximum_Current        : Raw_Float :=
        To_Raw (0.0);
      --  Units: [A]
      --  Maximum pack continuous charge current. 0: field not provided. 
      Nominal_Voltage                 : Raw_Float :=
        To_Raw (0.0);
      --  Units: [V]
      --  Battery nominal voltage. Used for conversion between Wh and Ah. 0: 
      --  field not provided. 
      Discharge_Maximum_Current       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [A]
      --  Maximum pack discharge current. 0: field not provided. 
      Discharge_Maximum_Burst_Current : Raw_Float :=
        To_Raw (0.0);
      --  Units: [A]
      --  Maximum pack discharge burst current. 0: field not provided. 
      Design_Capacity                 : Raw_Float :=
        To_Raw (0.0);
      --  Units: [Ah]
      --  Fully charged design capacity. 0: field not provided. 
      Full_Charge_Capacity            : Raw_Float :=
        To_Raw (0.0);
      --  Units: [Ah]
      --  Predicted battery capacity when fully charged (accounting for 
      --  battery degradation). NAN: field not provided. 
      Manufacture_Date                : String (1 .. 9) :=
        [others => Character'Val (0)];
      --  Manufacture date (DDMMYYYY) in ASCII characters, 0 terminated. All 
      --  0: field not provided. 
      Serial_Number                   : String (1 .. 32) :=
        [others => Character'Val (0)];
      --  Serial number in ASCII characters, 0 terminated. All 0: field not 
      --  provided. 
      Name                            : String (1 .. 50) :=
        [others => Character'Val (0)];
      --  Battery device name. Formatted as manufacturer name then product 
      --  name, separated with an underscore (in ASCII characters), 0 
      --  terminated. All 0: field not provided. 
   end record;

   for Battery_Info use record
      Discharge_Minimum_Voltage       at 0  range 0 .. 31;
      Charging_Minimum_Voltage        at 4  range 0 .. 31;
      Resting_Minimum_Voltage         at 8  range 0 .. 31;
      Charging_Maximum_Voltage        at 12 range 0 .. 31;
      Charging_Maximum_Current        at 16 range 0 .. 31;
      Nominal_Voltage                 at 20 range 0 .. 31;
      Discharge_Maximum_Current       at 24 range 0 .. 31;
      Discharge_Maximum_Burst_Current at 28 range 0 .. 31;
      Design_Capacity                 at 32 range 0 .. 31;
      Full_Charge_Capacity            at 36 range 0 .. 31;
      Cycle_Count                     at 40 range 0 .. 15;
      Weight                          at 42 range 0 .. 15;
      Id                              at 44 range 0 .. 7;
      Battery_Function                at 45 range 0 .. 7;
      Type_Field                      at 46 range 0 .. 7;
      State_Of_Health                 at 47 range 0 .. 7;
      Cells_In_Series                 at 48 range 0 .. 7;
      Manufacture_Date                at 49 range 0 .. 71;
      Serial_Number                   at 58 range 0 .. 255;
      Name                            at 90 range 0 .. 399;
   end record;

   procedure Encode
     (Message : Battery_Info;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Battery_Info;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Battery_Info;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Battery_Info;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Battery_Info;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Battery_Info;
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
     (Message : Battery_Info;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Battery_Info;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Battery_Infos;
