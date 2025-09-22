-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Hardware status sent by an onboard computer. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Onboard_Computer_Statuses is

   pragma Preelaborate;

   Onboard_Computer_Status_Id : constant Msg_Id := 390;

   type Onboard_Computer_Status is record
      Time_Usec         : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Uptime            : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time since system boot. 
      Type_Field        : Interfaces.Unsigned_8;
      --  Type of the onboard computer: 0: Mission computer primary, 1: 
      --  Mission computer backup 1, 2: Mission computer backup 2, 3: Compute 
      --  node, 4-5: Compute spares, 6-9: Payload computers. 
      Cpu_Cores         : Unsigned_8_Array (1 .. 8) :=
        [others => Interfaces.Unsigned_8'Last];
      --  CPU usage on the component in percent (100 - idle). A value of 
      --  UINT8_MAX implies the field is unused. 
      Cpu_Combined      : Unsigned_8_Array (1 .. 10) :=
        [others => Interfaces.Unsigned_8'Last];
      --  Combined CPU usage as the last 10 slices of 100 MS (a histogram). 
      --  This allows to identify spikes in load that max out the system, but 
      --  only for a short amount of time. A value of UINT8_MAX implies the 
      --  field is unused. 
      Gpu_Cores         : Unsigned_8_Array (1 .. 4) :=
        [others => Interfaces.Unsigned_8'Last];
      --  GPU usage on the component in percent (100 - idle). A value of 
      --  UINT8_MAX implies the field is unused. 
      Gpu_Combined      : Unsigned_8_Array (1 .. 10) :=
        [others => Interfaces.Unsigned_8'Last];
      --  Combined GPU usage as the last 10 slices of 100 MS (a histogram). 
      --  This allows to identify spikes in load that max out the system, but 
      --  only for a short amount of time. A value of UINT8_MAX implies the 
      --  field is unused. 
      Temperature_Board : Interfaces.Integer_8 :=
        Interfaces.Integer_8'Last;
      --  Units: [degC]
      --  Temperature of the board. A value of INT8_MAX implies the field is 
      --  unused. 
      Temperature_Core  : Integer_8_Array (1 .. 8) :=
        [others => Interfaces.Integer_8'Last];
      --  Units: [degC]
      --  Temperature of the CPU core. A value of INT8_MAX implies the field 
      --  is unused. 
      Fan_Speed         : Integer_16_Array (1 .. 4) :=
        [others => Interfaces.Integer_16'Last];
      --  Units: [rpm]
      --  Fan speeds. A value of INT16_MAX implies the field is unused. 
      Ram_Usage         : Interfaces.Unsigned_32 :=
        Interfaces.Unsigned_32'Last;
      --  Units: [MiB]
      --  Amount of used RAM on the component system. A value of UINT32_MAX 
      --  implies the field is unused. 
      Ram_Total         : Interfaces.Unsigned_32 :=
        Interfaces.Unsigned_32'Last;
      --  Units: [MiB]
      --  Total amount of RAM on the component system. A value of UINT32_MAX 
      --  implies the field is unused. 
      Storage_Type      : Unsigned_32_Array (1 .. 4) :=
        [others => Interfaces.Unsigned_32'Last];
      --  Storage type: 0: HDD, 1: SSD, 2: EMMC, 3: SD card (non-removable), 
      --  4: SD card (removable). A value of UINT32_MAX implies the field is 
      --  unused. 
      Storage_Usage     : Unsigned_32_Array (1 .. 4) :=
        [others => Interfaces.Unsigned_32'Last];
      --  Units: [MiB]
      --  Amount of used storage space on the component system. A value of 
      --  UINT32_MAX implies the field is unused. 
      Storage_Total     : Unsigned_32_Array (1 .. 4) :=
        [others => Interfaces.Unsigned_32'Last];
      --  Units: [MiB]
      --  Total amount of storage space on the component system. A value of 
      --  UINT32_MAX implies the field is unused. 
      Link_Type         : Unsigned_32_Array (1 .. 6);
      --  Link type: 0-9: UART, 10-19: Wired network, 20-29: Wifi, 30-39: 
      --  Point-to-point proprietary, 40-49: Mesh proprietary 
      Link_Tx_Rate      : Unsigned_32_Array (1 .. 6) :=
        [others => Interfaces.Unsigned_32'Last];
      --  Units: [KiB/s]
      --  Network traffic from the component system. A value of UINT32_MAX 
      --  implies the field is unused. 
      Link_Rx_Rate      : Unsigned_32_Array (1 .. 6) :=
        [others => Interfaces.Unsigned_32'Last];
      --  Units: [KiB/s]
      --  Network traffic to the component system. A value of UINT32_MAX 
      --  implies the field is unused. 
      Link_Tx_Max       : Unsigned_32_Array (1 .. 6) :=
        [others => Interfaces.Unsigned_32'Last];
      --  Units: [KiB/s]
      --  Network capacity from the component system. A value of UINT32_MAX 
      --  implies the field is unused. 
      Link_Rx_Max       : Unsigned_32_Array (1 .. 6) :=
        [others => Interfaces.Unsigned_32'Last];
      --  Units: [KiB/s]
      --  Network capacity to the component system. A value of UINT32_MAX 
      --  implies the field is unused. 
      Status_Flags      : Computer_Status_Flags;
      --  Bitmap of status flags. 
   end record;

   for Onboard_Computer_Status use record
      Time_Usec         at 0   range 0 .. 63;
      Uptime            at 8   range 0 .. 31;
      Ram_Usage         at 12  range 0 .. 31;
      Ram_Total         at 16  range 0 .. 31;
      Storage_Type      at 20  range 0 .. 127;
      Storage_Usage     at 36  range 0 .. 127;
      Storage_Total     at 52  range 0 .. 127;
      Link_Type         at 68  range 0 .. 191;
      Link_Tx_Rate      at 92  range 0 .. 191;
      Link_Rx_Rate      at 116 range 0 .. 191;
      Link_Tx_Max       at 140 range 0 .. 191;
      Link_Rx_Max       at 164 range 0 .. 191;
      Fan_Speed         at 188 range 0 .. 63;
      Type_Field        at 196 range 0 .. 7;
      Cpu_Cores         at 197 range 0 .. 63;
      Cpu_Combined      at 205 range 0 .. 79;
      Gpu_Cores         at 215 range 0 .. 31;
      Gpu_Combined      at 219 range 0 .. 79;
      Temperature_Board at 229 range 0 .. 7;
      Temperature_Core  at 230 range 0 .. 63;
      Status_Flags      at 238 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Onboard_Computer_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Onboard_Computer_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Onboard_Computer_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Onboard_Computer_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Onboard_Computer_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Onboard_Computer_Status;
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
     (Message : Onboard_Computer_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Onboard_Computer_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Onboard_Computer_Statuses;
