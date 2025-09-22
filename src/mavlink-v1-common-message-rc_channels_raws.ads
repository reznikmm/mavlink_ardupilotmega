-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The RAW values of the RC channels received. The standard PPM modulation is 
--  as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of 
--  UINT16_MAX implies the channel is unused. Individual 
--  receivers/transmitters might violate this specification. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Rc_Channels_Raws is

   pragma Preelaborate;

   Rc_Channels_Raw_Id : constant Msg_Id := 35;

   Rc_Channels_Raw_Len : constant Interfaces.Unsigned_8 := 22;

   type Rc_Channels_Raw is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Port         : Interfaces.Unsigned_8;
      --  Servo output port (set of 8 outputs = 1 port). Flight stacks running 
      --  on Pixhawk should use: 0 = MAIN, 1 = AUX. 
      Chan1_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 1 value. 
      Chan2_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 2 value. 
      Chan3_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 3 value. 
      Chan4_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 4 value. 
      Chan5_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 5 value. 
      Chan6_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 6 value. 
      Chan7_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 7 value. 
      Chan8_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 8 value. 
      Rssi         : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Receive signal strength indicator in device-dependent units/scale. 
      --  Values: [0-254], UINT8_MAX: invalid/unknown. 
   end record;

   for Rc_Channels_Raw use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Chan1_Raw    at 4  range 0 .. 15;
      Chan2_Raw    at 6  range 0 .. 15;
      Chan3_Raw    at 8  range 0 .. 15;
      Chan4_Raw    at 10 range 0 .. 15;
      Chan5_Raw    at 12 range 0 .. 15;
      Chan6_Raw    at 14 range 0 .. 15;
      Chan7_Raw    at 16 range 0 .. 15;
      Chan8_Raw    at 18 range 0 .. 15;
      Port         at 20 range 0 .. 7;
      Rssi         at 21 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Rc_Channels_Raw;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Rc_Channels_Raw;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Rc_Channels_Raw;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rc_Channels_Raw;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Rc_Channels_Raws;
