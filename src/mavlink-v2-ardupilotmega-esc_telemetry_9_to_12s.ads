-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  ESC Telemetry Data for ESCs 9 to 12, matching data sent by BLHeli ESCs.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Esc_Telemetry_9_To_12s is

   pragma Pure;

   type Esc_Telemetry_9_To_12 is record
      Temperature  : Unsigned_8_Array (1 .. 4);
      --  Units: [degC]
      --  Temperature.
      Voltage      : Unsigned_16_Array (1 .. 4);
      --  Units: [cV]
      --  Voltage.
      Current      : Unsigned_16_Array (1 .. 4);
      --  Units: [cA]
      --  Current.
      Totalcurrent : Unsigned_16_Array (1 .. 4);
      --  Units: [mAh]
      --  Total current.
      Rpm          : Unsigned_16_Array (1 .. 4);
      --  Units: [rpm]
      --  RPM (eRPM).
      Count        : Unsigned_16_Array (1 .. 4);
      --  count of telemetry packets received (wraps at 65535).
   end record;

   for Esc_Telemetry_9_To_12 use record
      Voltage      at 0  range 0 .. 63;
      Current      at 8  range 0 .. 63;
      Totalcurrent at 16 range 0 .. 63;
      Rpm          at 24 range 0 .. 63;
      Count        at 32 range 0 .. 63;
      Temperature  at 40 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Esc_Telemetry_9_To_12;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Esc_Telemetry_9_To_12;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Esc_Telemetry_9_To_12;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Esc_Telemetry_9_To_12;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Esc_Telemetry_9_To_12;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Esc_Telemetry_9_To_12;
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
     (Message : Esc_Telemetry_9_To_12;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Esc_Telemetry_9_To_12;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Esc_Telemetry_9_To_12s;
