-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The PPM values of the RC channels received. The standard PPM modulation is 
--  as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of 
--  UINT16_MAX implies the channel is unused. Individual 
--  receivers/transmitters might violate this specification. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Rc_Channelses is

   pragma Preelaborate;

   Rc_Channels_Id : constant Msg_Id := 65;

   Rc_Channels_Len : constant Interfaces.Unsigned_8 := 42;

   type Rc_Channels is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Chancount    : Interfaces.Unsigned_8;
      --  Total number of RC channels being received. This can be larger than 
      --  18, indicating that more channels are available but not given in 
      --  this message. This value should be 0 when no RC channels are 
      --  available. 
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
      Chan9_Raw    : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 9 value. 
      Chan10_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 10 value. 
      Chan11_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 11 value. 
      Chan12_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 12 value. 
      Chan13_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 13 value. 
      Chan14_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 14 value. 
      Chan15_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 15 value. 
      Chan16_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 16 value. 
      Chan17_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 17 value. 
      Chan18_Raw   : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 18 value. 
      Rssi         : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Receive signal strength indicator in device-dependent units/scale. 
      --  Values: [0-254], UINT8_MAX: invalid/unknown. 
   end record;

   for Rc_Channels use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Chan1_Raw    at 4  range 0 .. 15;
      Chan2_Raw    at 6  range 0 .. 15;
      Chan3_Raw    at 8  range 0 .. 15;
      Chan4_Raw    at 10 range 0 .. 15;
      Chan5_Raw    at 12 range 0 .. 15;
      Chan6_Raw    at 14 range 0 .. 15;
      Chan7_Raw    at 16 range 0 .. 15;
      Chan8_Raw    at 18 range 0 .. 15;
      Chan9_Raw    at 20 range 0 .. 15;
      Chan10_Raw   at 22 range 0 .. 15;
      Chan11_Raw   at 24 range 0 .. 15;
      Chan12_Raw   at 26 range 0 .. 15;
      Chan13_Raw   at 28 range 0 .. 15;
      Chan14_Raw   at 30 range 0 .. 15;
      Chan15_Raw   at 32 range 0 .. 15;
      Chan16_Raw   at 34 range 0 .. 15;
      Chan17_Raw   at 36 range 0 .. 15;
      Chan18_Raw   at 38 range 0 .. 15;
      Chancount    at 40 range 0 .. 7;
      Rssi         at 41 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Rc_Channels;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Rc_Channels;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Rc_Channels;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rc_Channels;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Rc_Channels;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rc_Channels;
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

end MAVLink.V1.Common.Message.Rc_Channelses;
