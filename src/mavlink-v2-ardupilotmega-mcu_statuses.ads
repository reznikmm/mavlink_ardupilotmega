-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The MCU status, giving MCU temperature and voltage. The min and max
--  voltages are to allow for detecting power supply instability.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Mcu_Statuses is

   pragma Pure;

   type Mcu_Status is record
      Id              : Interfaces.Unsigned_8;
      --  MCU instance
      Mcu_Temperature : Interfaces.Integer_16;
      --  Units: [cdegC]
      --  MCU Internal temperature
      Mcu_Voltage     : Interfaces.Unsigned_16;
      --  Units: [mV]
      --  MCU voltage
      Mcu_Voltage_Min : Interfaces.Unsigned_16;
      --  Units: [mV]
      --  MCU voltage minimum
      Mcu_Voltage_Max : Interfaces.Unsigned_16;
      --  Units: [mV]
      --  MCU voltage maximum
   end record;

   for Mcu_Status use record
      Mcu_Temperature at 0 range 0 .. 15;
      Mcu_Voltage     at 2 range 0 .. 15;
      Mcu_Voltage_Min at 4 range 0 .. 15;
      Mcu_Voltage_Max at 6 range 0 .. 15;
      Id              at 8 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mcu_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mcu_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mcu_Status;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mcu_Status;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Mcu_Status;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Mcu_Status;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Mcu_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mcu_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Mcu_Statuses;
