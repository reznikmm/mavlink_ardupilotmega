-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Vibration levels and accelerometer clipping 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Vibrations is

   pragma Preelaborate;

   Vibration_Id : constant Msg_Id := 241;

   Vibration_Len : constant Interfaces.Unsigned_8 := 32;

   type Vibration is record
      Time_Usec   : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Vibration_X : Interfaces.IEEE_Float_32;
      --  Vibration levels on X-axis 
      Vibration_Y : Interfaces.IEEE_Float_32;
      --  Vibration levels on Y-axis 
      Vibration_Z : Interfaces.IEEE_Float_32;
      --  Vibration levels on Z-axis 
      Clipping_0  : Interfaces.Unsigned_32;
      --  first accelerometer clipping count 
      Clipping_1  : Interfaces.Unsigned_32;
      --  second accelerometer clipping count 
      Clipping_2  : Interfaces.Unsigned_32;
      --  third accelerometer clipping count 
   end record;

   for Vibration use record
      Time_Usec   at 0  range 0 .. 63;
      Vibration_X at 8  range 0 .. 31;
      Vibration_Y at 12 range 0 .. 31;
      Vibration_Z at 16 range 0 .. 31;
      Clipping_0  at 20 range 0 .. 31;
      Clipping_1  at 24 range 0 .. 31;
      Clipping_2  at 28 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Vibration;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Vibration;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Vibration;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Vibration;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Vibrations;
