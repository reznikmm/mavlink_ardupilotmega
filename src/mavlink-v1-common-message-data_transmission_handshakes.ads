-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Handshake message to initiate, control and stop image streaming when using 
--  the Image Transmission Protocol: 
--  https://mavlink.io/en/services/image_transmission.html. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Data_Transmission_Handshakes is

   pragma Preelaborate;

   Data_Transmission_Handshake_Id : constant Msg_Id := 130;

   Data_Transmission_Handshake_Len : constant Interfaces.Unsigned_8 := 13;

   type Data_Transmission_Handshake is record
      Type_Field  : Mavlink_Data_Stream_Type;
      --  Type of requested/acknowledged data. 
      Size        : Interfaces.Unsigned_32;
      --  Units: [bytes]
      --  total data size (set on ACK only). 
      Width       : Interfaces.Unsigned_16;
      --  Width of a matrix or image. 
      Height      : Interfaces.Unsigned_16;
      --  Height of a matrix or image. 
      Packets     : Interfaces.Unsigned_16;
      --  Number of packets being sent (set on ACK only). 
      Payload     : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  Payload size per packet (normally 253 byte, see DATA field size in 
      --  message ENCAPSULATED_DATA) (set on ACK only). 
      Jpg_Quality : Interfaces.Unsigned_8;
      --  Units: [%]
      --  JPEG quality. Values: [1-100]. 
   end record;

   for Data_Transmission_Handshake use record
      Size        at 0  range 0 .. 31;
      Width       at 4  range 0 .. 15;
      Height      at 6  range 0 .. 15;
      Packets     at 8  range 0 .. 15;
      Type_Field  at 10 range 0 .. 7;
      Payload     at 11 range 0 .. 7;
      Jpg_Quality at 12 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Data_Transmission_Handshake;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Data_Transmission_Handshake;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Data_Transmission_Handshake;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Data_Transmission_Handshake;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Data_Transmission_Handshakes;
