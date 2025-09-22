-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  ESC Telemetry Data for ESCs 5 to 8, matching data sent by BLHeli ESCs.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Esc_Telemetry_5_To_8s is

   pragma Pure;

   type Esc_Telemetry_5_To_8 is record
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

   for Esc_Telemetry_5_To_8 use record
      Voltage      at 0  range 0 .. 63;
      Current      at 8  range 0 .. 63;
      Totalcurrent at 16 range 0 .. 63;
      Rpm          at 24 range 0 .. 63;
      Count        at 32 range 0 .. 63;
      Temperature  at 40 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Esc_Telemetry_5_To_8;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Esc_Telemetry_5_To_8;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Esc_Telemetry_5_To_8;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Esc_Telemetry_5_To_8;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Esc_Telemetry_5_To_8;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Esc_Telemetry_5_To_8;
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
     (Message : Esc_Telemetry_5_To_8;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Esc_Telemetry_5_To_8;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Esc_Telemetry_5_To_8s;
