-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The RAW pressure readings for the typical setup of one absolute pressure 
--  and one differential pressure sensor. The sensor values should be the raw, 
--  UNSCALED ADC values. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Raw_Pressures is

   pragma Preelaborate;

   Raw_Pressure_Id : constant Msg_Id := 28;

   Raw_Pressure_Len : constant Interfaces.Unsigned_8 := 16;

   type Raw_Pressure is record
      Time_Usec   : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Press_Abs   : Interfaces.Integer_16;
      --  Absolute pressure (raw) 
      Press_Diff1 : Interfaces.Integer_16 :=
        0;
      --  Differential pressure 1 (raw, 0 if nonexistent) 
      Press_Diff2 : Interfaces.Integer_16 :=
        0;
      --  Differential pressure 2 (raw, 0 if nonexistent) 
      Temperature : Interfaces.Integer_16;
      --  Raw Temperature measurement (raw) 
   end record;

   for Raw_Pressure use record
      Time_Usec   at 0  range 0 .. 63;
      Press_Abs   at 8  range 0 .. 15;
      Press_Diff1 at 10 range 0 .. 15;
      Press_Diff2 at 12 range 0 .. 15;
      Temperature at 14 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Raw_Pressure;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Raw_Pressure;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Raw_Pressure;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Raw_Pressure;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Raw_Pressure;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Raw_Pressure;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Raw_Pressures;
