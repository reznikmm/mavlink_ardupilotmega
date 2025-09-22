-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Barometer readings for 2nd barometer 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Scaled_Pressure2s is

   pragma Preelaborate;

   Scaled_Pressure2_Id : constant Msg_Id := 137;

   Scaled_Pressure2_Len : constant Interfaces.Unsigned_8 := 14;

   type Scaled_Pressure2 is record
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

   for Scaled_Pressure2 use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Press_Abs    at 4  range 0 .. 31;
      Press_Diff   at 8  range 0 .. 31;
      Temperature  at 12 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Scaled_Pressure2;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Scaled_Pressure2;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Scaled_Pressure2;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Scaled_Pressure2;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Scaled_Pressure2s;
