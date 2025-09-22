-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Sent from simulation to autopilot. The RAW values of the RC channels 
--  received. The standard PPM modulation is as follows: 1000 microseconds: 
--  0%, 2000 microseconds: 100%. Individual receivers/transmitters might 
--  violate this specification. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Hil_Rc_Inputs_Raws is

   pragma Preelaborate;

   Hil_Rc_Inputs_Raw_Id : constant Msg_Id := 92;

   type Hil_Rc_Inputs_Raw is record
      Time_Usec  : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Chan1_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 1 value 
      Chan2_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 2 value 
      Chan3_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 3 value 
      Chan4_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 4 value 
      Chan5_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 5 value 
      Chan6_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 6 value 
      Chan7_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 7 value 
      Chan8_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 8 value 
      Chan9_Raw  : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 9 value 
      Chan10_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 10 value 
      Chan11_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 11 value 
      Chan12_Raw : Interfaces.Unsigned_16;
      --  Units: [us]
      --  RC channel 12 value 
      Rssi       : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Receive signal strength indicator in device-dependent units/scale. 
      --  Values: [0-254], UINT8_MAX: invalid/unknown. 
   end record;

   for Hil_Rc_Inputs_Raw use record
      Time_Usec  at 0  range 0 .. 63;
      Chan1_Raw  at 8  range 0 .. 15;
      Chan2_Raw  at 10 range 0 .. 15;
      Chan3_Raw  at 12 range 0 .. 15;
      Chan4_Raw  at 14 range 0 .. 15;
      Chan5_Raw  at 16 range 0 .. 15;
      Chan6_Raw  at 18 range 0 .. 15;
      Chan7_Raw  at 20 range 0 .. 15;
      Chan8_Raw  at 22 range 0 .. 15;
      Chan9_Raw  at 24 range 0 .. 15;
      Chan10_Raw at 26 range 0 .. 15;
      Chan11_Raw at 28 range 0 .. 15;
      Chan12_Raw at 30 range 0 .. 15;
      Rssi       at 32 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Hil_Rc_Inputs_Raw;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_Rc_Inputs_Raw;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_Rc_Inputs_Raw;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Rc_Inputs_Raw;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hil_Rc_Inputs_Raw;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Rc_Inputs_Raw;
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
     (Message : Hil_Rc_Inputs_Raw;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Hil_Rc_Inputs_Raw;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Hil_Rc_Inputs_Raws;
