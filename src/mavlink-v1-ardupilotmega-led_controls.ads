-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Control vehicle LEDs.

pragma Ada_2022;

package MAVLink.V1.Ardupilotmega.Led_Controls is

   pragma Pure;

   Led_Control_Len : constant Interfaces.Unsigned_8 := 29;

   type Led_Control is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Instance         : Interfaces.Unsigned_8;
      --  Instance (LED instance to control or 255 for all LEDs).
      Pattern          : Interfaces.Unsigned_8;
      --  Pattern (see LED_PATTERN_ENUM).
      Custom_Len       : Interfaces.Unsigned_8;
      --  Custom Byte Length.
      Custom_Bytes     : Unsigned_8_Array (1 .. 24);
      --  Custom Bytes.
   end record;

   for Led_Control use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
      Instance         at 2 range 0 .. 7;
      Pattern          at 3 range 0 .. 7;
      Custom_Len       at 4 range 0 .. 7;
      Custom_Bytes     at 5 range 0 .. 191;
   end record;

   procedure Encode
     (Message : Led_Control;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Led_Control;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Led_Control;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Led_Control;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Led_Control;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Led_Control;
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

end MAVLink.V1.Ardupilotmega.Led_Controls;
