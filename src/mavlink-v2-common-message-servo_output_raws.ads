-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Superseded by ACTUATOR_OUTPUT_STATUS. The RAW values of the servo outputs 
--  (for RC input from the remote, use the RC_CHANNELS messages). The standard 
--  PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds: 
--  100%. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Servo_Output_Raws is

   pragma Preelaborate;

   Servo_Output_Raw_Id : constant Msg_Id := 36;

   type Servo_Output_Raw is record
      Time_Usec   : Interfaces.Unsigned_32;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Port        : Interfaces.Unsigned_8;
      --  Servo output port (set of 8 outputs = 1 port). Flight stacks running 
      --  on Pixhawk should use: 0 = MAIN, 1 = AUX. 
      Servo1_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 1 value 
      Servo2_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 2 value 
      Servo3_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 3 value 
      Servo4_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 4 value 
      Servo5_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 5 value 
      Servo6_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 6 value 
      Servo7_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 7 value 
      Servo8_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 8 value 
      Servo9_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 9 value 
      Servo10_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 10 value 
      Servo11_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 11 value 
      Servo12_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 12 value 
      Servo13_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 13 value 
      Servo14_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 14 value 
      Servo15_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 15 value 
      Servo16_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  Servo output 16 value 
   end record;

   for Servo_Output_Raw use record
      Time_Usec   at 0  range 0 .. 31;
      Servo1_Raw  at 4  range 0 .. 15;
      Servo2_Raw  at 6  range 0 .. 15;
      Servo3_Raw  at 8  range 0 .. 15;
      Servo4_Raw  at 10 range 0 .. 15;
      Servo5_Raw  at 12 range 0 .. 15;
      Servo6_Raw  at 14 range 0 .. 15;
      Servo7_Raw  at 16 range 0 .. 15;
      Servo8_Raw  at 18 range 0 .. 15;
      Port        at 20 range 0 .. 7;
      Servo9_Raw  at 21 range 0 .. 15;
      Servo10_Raw at 23 range 0 .. 15;
      Servo11_Raw at 25 range 0 .. 15;
      Servo12_Raw at 27 range 0 .. 15;
      Servo13_Raw at 29 range 0 .. 15;
      Servo14_Raw at 31 range 0 .. 15;
      Servo15_Raw at 33 range 0 .. 15;
      Servo16_Raw at 35 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Servo_Output_Raw;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Servo_Output_Raw;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Servo_Output_Raw;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Servo_Output_Raw;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Servo_Output_Raw;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Servo_Output_Raw;
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
     (Message : Servo_Output_Raw;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Servo_Output_Raw;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Servo_Output_Raws;
