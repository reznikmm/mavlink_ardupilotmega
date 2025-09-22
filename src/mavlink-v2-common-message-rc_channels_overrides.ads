-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The RAW values of the RC channels sent to the MAV to override info 
--  received from the RC radio. The standard PPM modulation is as follows: 
--  1000 microseconds: 0%, 2000 microseconds: 100%. Individual 
--  receivers/transmitters might violate this specification. Note carefully 
--  the semantic differences between the first 8 channels and the subsequent 
--  channels 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Rc_Channels_Overrides is

   pragma Preelaborate;

   Rc_Channels_Override_Id : constant Msg_Id := 70;

   type Rc_Channels_Override is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Chan1_Raw        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 1 value. A value of UINT16_MAX means to ignore this 
      --  field. A value of 0 means to release this channel back to the RC 
      --  radio. 
      Chan2_Raw        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 2 value. A value of UINT16_MAX means to ignore this 
      --  field. A value of 0 means to release this channel back to the RC 
      --  radio. 
      Chan3_Raw        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 3 value. A value of UINT16_MAX means to ignore this 
      --  field. A value of 0 means to release this channel back to the RC 
      --  radio. 
      Chan4_Raw        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 4 value. A value of UINT16_MAX means to ignore this 
      --  field. A value of 0 means to release this channel back to the RC 
      --  radio. 
      Chan5_Raw        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 5 value. A value of UINT16_MAX means to ignore this 
      --  field. A value of 0 means to release this channel back to the RC 
      --  radio. 
      Chan6_Raw        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 6 value. A value of UINT16_MAX means to ignore this 
      --  field. A value of 0 means to release this channel back to the RC 
      --  radio. 
      Chan7_Raw        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 7 value. A value of UINT16_MAX means to ignore this 
      --  field. A value of 0 means to release this channel back to the RC 
      --  radio. 
      Chan8_Raw        : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [us]
      --  RC channel 8 value. A value of UINT16_MAX means to ignore this 
      --  field. A value of 0 means to release this channel back to the RC 
      --  radio. 
      Chan9_Raw        : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 9 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan10_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 10 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan11_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 11 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan12_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 12 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan13_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 13 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan14_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 14 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan15_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 15 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan16_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 16 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan17_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 17 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
      Chan18_Raw       : Interfaces.Unsigned_16 :=
        0;
      --  Units: [us]
      --  RC channel 18 value. A value of 0 or UINT16_MAX means to ignore this 
      --  field. A value of UINT16_MAX-1 means to release this channel back to 
      --  the RC radio. 
   end record;

   for Rc_Channels_Override use record
      Chan1_Raw        at 0  range 0 .. 15;
      Chan2_Raw        at 2  range 0 .. 15;
      Chan3_Raw        at 4  range 0 .. 15;
      Chan4_Raw        at 6  range 0 .. 15;
      Chan5_Raw        at 8  range 0 .. 15;
      Chan6_Raw        at 10 range 0 .. 15;
      Chan7_Raw        at 12 range 0 .. 15;
      Chan8_Raw        at 14 range 0 .. 15;
      Target_System    at 16 range 0 .. 7;
      Target_Component at 17 range 0 .. 7;
      Chan9_Raw        at 18 range 0 .. 15;
      Chan10_Raw       at 20 range 0 .. 15;
      Chan11_Raw       at 22 range 0 .. 15;
      Chan12_Raw       at 24 range 0 .. 15;
      Chan13_Raw       at 26 range 0 .. 15;
      Chan14_Raw       at 28 range 0 .. 15;
      Chan15_Raw       at 30 range 0 .. 15;
      Chan16_Raw       at 32 range 0 .. 15;
      Chan17_Raw       at 34 range 0 .. 15;
      Chan18_Raw       at 36 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Rc_Channels_Override;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Rc_Channels_Override;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Rc_Channels_Override;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rc_Channels_Override;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Rc_Channels_Override;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rc_Channels_Override;
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
     (Message : Rc_Channels_Override;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Rc_Channels_Override;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Rc_Channels_Overrides;
