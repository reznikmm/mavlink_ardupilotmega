-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Aircraft Registration.

pragma Ada_2022;

package MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfg_Registrations is

   pragma Pure;

   type Uavionix_Adsb_Out_Cfg_Registration is record
      Registration : String (1 .. 9);
      --  Aircraft Registration (ASCII string A-Z, 0-9 only), e.g. "N8644B ".
      --  Trailing spaces (0x20) only. This is null-terminated.
   end record;

   for Uavionix_Adsb_Out_Cfg_Registration use record
      Registration at 0 range 0 .. 71;
   end record;

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg_Registration;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg_Registration;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Cfg_Registration;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Cfg_Registration;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Cfg_Registration;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Cfg_Registration;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg_Registration;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg_Registration;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfg_Registrations;
