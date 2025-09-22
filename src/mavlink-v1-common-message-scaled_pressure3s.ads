-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Barometer readings for 3rd barometer 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Scaled_Pressure3s is

   pragma Preelaborate;

   Scaled_Pressure3_Id : constant Msg_Id := 143;

   Scaled_Pressure3_Len : constant Interfaces.Unsigned_8 := 14;

   type Scaled_Pressure3 is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Press_Abs    : Interfaces.IEEE_Float_32;
      --  Units: [hPa]
      --  Absolute pressure 
      Press_Diff   : Interfaces.IEEE_Float_32;
      --  Units: [hPa]
      --  Differential pressure 
      Temperature  : Interfaces.Integer_16;
      --  Units: [cdegC]
      --  Absolute pressure temperature 
   end record;

   for Scaled_Pressure3 use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Press_Abs    at 4  range 0 .. 31;
      Press_Diff   at 8  range 0 .. 31;
      Temperature  at 12 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Scaled_Pressure3;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Scaled_Pressure3;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Scaled_Pressure3;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Scaled_Pressure3;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Scaled_Pressure3;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Scaled_Pressure3;
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

end MAVLink.V1.Common.Message.Scaled_Pressure3s;
