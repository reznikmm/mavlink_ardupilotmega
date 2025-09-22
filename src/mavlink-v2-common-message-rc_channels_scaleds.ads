-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The scaled values of the RC channels received: (-100%) -10000, (0%) 0, 
--  (100%) 10000. Channels that are inactive should be set to INT16_MAX. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Rc_Channels_Scaleds is

   pragma Preelaborate;

   Rc_Channels_Scaled_Id : constant Msg_Id := 34;

   type Rc_Channels_Scaled is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Port         : Interfaces.Unsigned_8;
      --  Servo output port (set of 8 outputs = 1 port). Flight stacks running 
      --  on Pixhawk should use: 0 = MAIN, 1 = AUX. 
      Chan1_Scaled : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  RC channel 1 value scaled. 
      Chan2_Scaled : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  RC channel 2 value scaled. 
      Chan3_Scaled : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  RC channel 3 value scaled. 
      Chan4_Scaled : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  RC channel 4 value scaled. 
      Chan5_Scaled : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  RC channel 5 value scaled. 
      Chan6_Scaled : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  RC channel 6 value scaled. 
      Chan7_Scaled : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  RC channel 7 value scaled. 
      Chan8_Scaled : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  RC channel 8 value scaled. 
      Rssi         : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Receive signal strength indicator in device-dependent units/scale. 
      --  Values: [0-254], UINT8_MAX: invalid/unknown. 
   end record;

   for Rc_Channels_Scaled use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Chan1_Scaled at 4  range 0 .. 15;
      Chan2_Scaled at 6  range 0 .. 15;
      Chan3_Scaled at 8  range 0 .. 15;
      Chan4_Scaled at 10 range 0 .. 15;
      Chan5_Scaled at 12 range 0 .. 15;
      Chan6_Scaled at 14 range 0 .. 15;
      Chan7_Scaled at 16 range 0 .. 15;
      Chan8_Scaled at 18 range 0 .. 15;
      Port         at 20 range 0 .. 7;
      Rssi         at 21 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Rc_Channels_Scaled;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Rc_Channels_Scaled;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Rc_Channels_Scaled;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rc_Channels_Scaled;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Rc_Channels_Scaled;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rc_Channels_Scaled;
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
     (Message : Rc_Channels_Scaled;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Rc_Channels_Scaled;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Rc_Channels_Scaleds;
