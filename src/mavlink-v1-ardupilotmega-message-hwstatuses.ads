-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of key hardware. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Hwstatuses is

   pragma Preelaborate;

   Hwstatus_Id : constant Msg_Id := 165;

   Hwstatus_Len : constant Interfaces.Unsigned_8 := 3;

   type Hwstatus is record
      Vcc    : Interfaces.Unsigned_16;
      --  Units: [mV]
      --  Board voltage. 
      I2Cerr : Interfaces.Unsigned_8;
      --  I2C error count. 
   end record;

   for Hwstatus use record
      Vcc    at 0 range 0 .. 15;
      I2Cerr at 2 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Hwstatus;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hwstatus;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hwstatus;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hwstatus;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Hwstatuses;
