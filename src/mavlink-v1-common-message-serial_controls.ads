-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Control a serial port. This can be used for raw access to an onboard 
--  serial peripheral such as a GPS or telemetry radio. It is designed to make 
--  it possible to update the devices firmware via MAVLink messages or change 
--  the devices settings. A message with zero bytes can be used to change just 
--  the baudrate. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Serial_Controls is

   pragma Preelaborate;

   Serial_Control_Id : constant Msg_Id := 126;

   Serial_Control_Len : constant Interfaces.Unsigned_8 := 79;

   type Serial_Control is record
      Device   : Serial_Control_Dev;
      --  Serial control device type. 
      Flags    : Serial_Control_Flag;
      --  Bitmap of serial control flags. 
      Timeout  : Interfaces.Unsigned_16;
      --  Units: [ms]
      --  Timeout for reply data 
      Baudrate : Interfaces.Unsigned_32;
      --  Units: [bits/s]
      --  Baudrate of transfer. Zero means no change. 
      Count    : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  how many bytes in this transfer 
      Data     : Unsigned_8_Array (1 .. 70);
      --  serial data 
   end record;

   for Serial_Control use record
      Baudrate at 0 range 0 .. 31;
      Timeout  at 4 range 0 .. 15;
      Device   at 6 range 0 .. 7;
      Flags    at 7 range 0 .. 7;
      Count    at 8 range 0 .. 7;
      Data     at 9 range 0 .. 559;
   end record;

   procedure Encode
     (Message : Serial_Control;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Serial_Control;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Serial_Control;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Serial_Control;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Serial_Control;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Serial_Control;
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

end MAVLink.V1.Common.Message.Serial_Controls;
