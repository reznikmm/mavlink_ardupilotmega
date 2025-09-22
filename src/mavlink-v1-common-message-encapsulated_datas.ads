-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Data packet for images sent using the Image Transmission Protocol: 
--  https://mavlink.io/en/services/image_transmission.html. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Encapsulated_Datas is

   pragma Preelaborate;

   Encapsulated_Data_Id : constant Msg_Id := 131;

   Encapsulated_Data_Len : constant Interfaces.Unsigned_8 := 255;

   type Encapsulated_Data is record
      Seqnr : Interfaces.Unsigned_16;
      --  sequence number (starting with 0 on every transmission) 
      Data  : Unsigned_8_Array (1 .. 253);
      --  image data bytes 
   end record;

   for Encapsulated_Data use record
      Seqnr at 0 range 0 .. 15;
      Data  at 2 range 0 .. 2023;
   end record;

   procedure Encode
     (Message : Encapsulated_Data;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Encapsulated_Data;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Encapsulated_Data;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Encapsulated_Data;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Encapsulated_Data;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Encapsulated_Data;
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

end MAVLink.V1.Common.Message.Encapsulated_Datas;
