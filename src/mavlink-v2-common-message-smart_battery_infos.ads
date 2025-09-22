-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2024-02 REPLACED BY: BATTERY_INFO
--  The BATTERY_INFO message is better aligned with UAVCAN messages, and in 
--  any case is useful even if a battery is not "smart". 
------------
--  Smart Battery information (static/infrequent update). Use for updates 
--  from: smart battery to flight stack, flight stack to GCS. Use 
--  BATTERY_STATUS for the frequent battery updates. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Smart_Battery_Infos is

   pragma Preelaborate;

   Smart_Battery_Info_Id : constant Msg_Id := 370;

   type Smart_Battery_Info is record
      Id                              : Interfaces.Unsigned_8;
      --  Battery ID 
      Battery_Function                : Mav_Battery_Function;
      --  Function of the battery 
      Type_Field                      : Mav_Battery_Type;
      --  Type (chemistry) of the battery 
      Capacity_Full_Specification     : Interfaces.Integer_32 :=
        -1;
      --  Units: [mAh]
      --  Capacity when full according to manufacturer, -1: field not 
      --  provided. 
      Capacity_Full                   : Interfaces.Integer_32 :=
        -1;
      --  Units: [mAh]
      --  Capacity when full (accounting for battery degradation), -1: field 
      --  not provided. 
      Cycle_Count                     : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Charge/discharge cycle count. UINT16_MAX: field not provided. 
      Serial_Number                   : String (1 .. 16) :=
        [others => Character'Val (0)];
      --  Serial number in ASCII characters, 0 terminated. All 0: field not 
      --  provided. 
      Device_Name                     : String (1 .. 50) :=
        [others => Character'Val (0)];
      --  Static device name in ASCII characters, 0 terminated. All 0: field 
      --  not provided. Encode as manufacturer name then product name 
      --  separated using an underscore. 
      Weight                          : Interfaces.Unsigned_16 :=
        0;
      --  Units: [g]
      --  Battery weight. 0: field not provided. 
      Discharge_Minimum_Voltage       : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [mV]
      --  Minimum per-cell voltage when discharging. If not supplied set to 
      --  UINT16_MAX value. 
      Charging_Minimum_Voltage        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [mV]
      --  Minimum per-cell voltage when charging. If not supplied set to 
      --  UINT16_MAX value. 
      Resting_Minimum_Voltage         : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [mV]
      --  Minimum per-cell voltage when resting. If not supplied set to 
      --  UINT16_MAX value. 
      Charging_Maximum_Voltage        : Interfaces.Unsigned_16 :=
        0;
      --  Units: [mV]
      --  Maximum per-cell voltage when charged. 0: field not provided. 
      Cells_In_Series                 : Interfaces.Unsigned_8 :=
        0;
      --  Number of battery cells in series. 0: field not provided. 
      Discharge_Maximum_Current       : Interfaces.Unsigned_32 :=
        0;
      --  Units: [mA]
      --  Maximum pack discharge current. 0: field not provided. 
      Discharge_Maximum_Burst_Current : Interfaces.Unsigned_32 :=
        0;
      --  Units: [mA]
      --  Maximum pack discharge burst current. 0: field not provided. 
      Manufacture_Date                : String (1 .. 11) :=
        [others => Character'Val (0)];
      --  Manufacture date (DD/MM/YYYY) in ASCII characters, 0 terminated. All 
      --  0: field not provided. 
   end record;

   pragma Obsolescent (Smart_Battery_Info);

   for Smart_Battery_Info use record
      Capacity_Full_Specification     at 0  range 0 .. 31;
      Capacity_Full                   at 4  range 0 .. 31;
      Cycle_Count                     at 8  range 0 .. 15;
      Weight                          at 10 range 0 .. 15;
      Discharge_Minimum_Voltage       at 12 range 0 .. 15;
      Charging_Minimum_Voltage        at 14 range 0 .. 15;
      Resting_Minimum_Voltage         at 16 range 0 .. 15;
      Id                              at 18 range 0 .. 7;
      Battery_Function                at 19 range 0 .. 7;
      Type_Field                      at 20 range 0 .. 7;
      Serial_Number                   at 21 range 0 .. 127;
      Device_Name                     at 37 range 0 .. 399;
      Charging_Maximum_Voltage        at 87 range 0 .. 15;
      Cells_In_Series                 at 89 range 0 .. 7;
      Discharge_Maximum_Current       at 90 range 0 .. 31;
      Discharge_Maximum_Burst_Current at 94 range 0 .. 31;
      Manufacture_Date                at 98 range 0 .. 87;
   end record;

   procedure Encode
     (Message : Smart_Battery_Info;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Smart_Battery_Info;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Smart_Battery_Info;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Smart_Battery_Info;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Smart_Battery_Info;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Smart_Battery_Info;
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
     (Message : Smart_Battery_Info;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Smart_Battery_Info;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Smart_Battery_Infos;
