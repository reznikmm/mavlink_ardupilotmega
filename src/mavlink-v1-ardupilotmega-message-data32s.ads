-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Data packet, size 32. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Data32s is

   pragma Preelaborate;

   Data32_Id : constant Msg_Id := 170;

   Data32_Len : constant Interfaces.Unsigned_8 := 34;

   type Data32 is record
      Type_Field : Interfaces.Unsigned_8;
      --  Data type. 
      Len        : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  Data length. 
      Data       : Unsigned_8_Array (1 .. 32);
      --  Raw data. 
   end record;

   for Data32 use record
      Type_Field at 0 range 0 .. 7;
      Len        at 1 range 0 .. 7;
      Data       at 2 range 0 .. 255;
   end record;

   procedure Encode
     (Message : Data32;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Data32;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Data32;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Data32;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Data32s;
