-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Message to control a camera mount, directional antenna, etc.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Mount_Controls is

   pragma Pure;

   type Mount_Control is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Input_A          : Interfaces.Integer_32;
      --  Pitch (centi-degrees) or lat (degE7), depending on mount mode.
      Input_B          : Interfaces.Integer_32;
      --  Roll (centi-degrees) or lon (degE7) depending on mount mode.
      Input_C          : Interfaces.Integer_32;
      --  Yaw (centi-degrees) or alt (cm) depending on mount mode.
      Save_Position    : Interfaces.Unsigned_8;
      --  If "1" it will save current trimmed position on EEPROM (just valid
      --  for NEUTRAL and LANDING).
   end record;

   for Mount_Control use record
      Input_A          at 0  range 0 .. 31;
      Input_B          at 4  range 0 .. 31;
      Input_C          at 8  range 0 .. 31;
      Target_System    at 12 range 0 .. 7;
      Target_Component at 13 range 0 .. 7;
      Save_Position    at 14 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mount_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mount_Control;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mount_Control;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mount_Control;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mount_Control;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mount_Control;
      Connect : MAVLink.V2.In_Connection);
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
     (Message : Mount_Control;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mount_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Mount_Controls;
