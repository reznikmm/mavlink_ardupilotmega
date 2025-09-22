-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2022-04 REPLACED BY: COMPONENT_METADATA
------------
--  Component information message, which may be requested using 
--  MAV_CMD_REQUEST_MESSAGE. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Component_Informations is

   pragma Preelaborate;

   Component_Information_Id : constant Msg_Id := 395;

   type Component_Information is record
      Time_Boot_Ms                  : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      General_Metadata_File_Crc     : Interfaces.Unsigned_32;
      --  CRC32 of the general metadata file (general_metadata_uri). 
      General_Metadata_Uri          : String (1 .. 100);
      --  MAVLink FTP URI for the general metadata file 
      --  (COMP_METADATA_TYPE_GENERAL), which may be compressed with xz. The 
      --  file contains general component metadata, and may contain URI links 
      --  for additional metadata (see COMP_METADATA_TYPE). The information is 
      --  static from boot, and may be generated at compile time. The string 
      --  needs to be zero terminated. 
      Peripherals_Metadata_File_Crc : Interfaces.Unsigned_32;
      --  CRC32 of peripherals metadata file (peripherals_metadata_uri). 
      Peripherals_Metadata_Uri      : String (1 .. 100);
      --  (Optional) MAVLink FTP URI for the peripherals metadata file 
      --  (COMP_METADATA_TYPE_PERIPHERALS), which may be compressed with xz. 
      --  This contains data about "attached components" such as UAVCAN nodes. 
      --  The peripherals are in a separate file because the information must 
      --  be generated dynamically at runtime. The string needs to be zero 
      --  terminated. 
   end record;

   pragma Obsolescent (Component_Information);

   for Component_Information use record
      Time_Boot_Ms                  at 0   range 0 .. 31;
      General_Metadata_File_Crc     at 4   range 0 .. 31;
      Peripherals_Metadata_File_Crc at 8   range 0 .. 31;
      General_Metadata_Uri          at 12  range 0 .. 799;
      Peripherals_Metadata_Uri      at 112 range 0 .. 799;
   end record;

   procedure Encode
     (Message : Component_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Component_Information;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Component_Information;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Component_Information;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Component_Information;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Component_Information;
      Connect : in out MAVLink.V2.In_Connection);
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
     (Message : Component_Information;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Component_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Component_Informations;
