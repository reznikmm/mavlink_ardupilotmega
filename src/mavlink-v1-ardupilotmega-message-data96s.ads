-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Data packet, size 96. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Data96s is

   pragma Preelaborate;

   Data96_Id : constant Msg_Id := 172;

   Data96_Len : constant Interfaces.Unsigned_8 := 98;

   type Data96 is record
      Type_Field : Interfaces.Unsigned_8;
      --  Data type. 
      Len        : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  Data length. 
      Data       : Unsigned_8_Array (1 .. 96);
      --  Raw data. 
   end record;

   for Data96 use record
      Type_Field at 0 range 0 .. 7;
      Len        at 1 range 0 .. 7;
      Data       at 2 range 0 .. 767;
   end record;

   procedure Encode
     (Message : Data96;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Data96;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Data96;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Data96;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Data96s;
