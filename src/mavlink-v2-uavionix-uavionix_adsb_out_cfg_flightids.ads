-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Flight Identification for ADSB-Out vehicles.

pragma Ada_2022;

package MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfg_Flightids is

   pragma Pure;

   type Uavionix_Adsb_Out_Cfg_Flightid is record
      Flight_Id : String (1 .. 9);
      --  Flight Identification: 8 ASCII characters, '0' through '9', 'A'
      --  through 'Z' or space. Spaces (0x20) used as a trailing pad
      --  character, or when call sign is unavailable. Reflects Control
      --  message setting. This is null-terminated.
   end record;

   for Uavionix_Adsb_Out_Cfg_Flightid use record
      Flight_Id at 0 range 0 .. 71;
   end record;

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg_Flightid;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg_Flightid;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Cfg_Flightid;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Cfg_Flightid;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Cfg_Flightid;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Cfg_Flightid;
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
     (Message : Uavionix_Adsb_Out_Cfg_Flightid;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg_Flightid;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfg_Flightids;
