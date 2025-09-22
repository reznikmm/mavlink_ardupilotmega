-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Basic component information data. Should be requested using 
--  MAV_CMD_REQUEST_MESSAGE on startup, or when required. 
pragma Ada_2022;


with MAVLink.V2.Standard; use MAVLink.V2.Standard;

package MAVLink.V2.Common.Message.Component_Information_Basics is

   pragma Preelaborate;

   Component_Information_Basic_Id : constant Msg_Id := 396;

   type Component_Information_Basic is record
      Time_Boot_Ms       : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Capabilities       : Mav_Protocol_Capability;
      --  Component capability flags 
      Time_Manufacture_S : Interfaces.Unsigned_32 :=
        0;
      --  Units: [s]
      --  Date of manufacture as a UNIX Epoch time (since 1.1.1970) in 
      --  seconds. 
      Vendor_Name        : String (1 .. 32);
      --  Name of the component vendor. Needs to be zero terminated. The field 
      --  is optional and can be empty/all zeros. 
      Model_Name         : String (1 .. 32);
      --  Name of the component model. Needs to be zero terminated. The field 
      --  is optional and can be empty/all zeros. 
      Software_Version   : String (1 .. 24);
      --  Software version. The recommended format is SEMVER: 
      --  'major.minor.patch' (any format may be used). The field must be zero 
      --  terminated if it has a value. The field is optional and can be 
      --  empty/all zeros. 
      Hardware_Version   : String (1 .. 24);
      --  Hardware version. The recommended format is SEMVER: 
      --  'major.minor.patch' (any format may be used). The field must be zero 
      --  terminated if it has a value. The field is optional and can be 
      --  empty/all zeros. 
      Serial_Number      : String (1 .. 32);
      --  Hardware serial number. The field must be zero terminated if it has 
      --  a value. The field is optional and can be empty/all zeros. 
   end record;

   for Component_Information_Basic use record
      Capabilities       at 0   range 0 .. 63;
      Time_Boot_Ms       at 8   range 0 .. 31;
      Time_Manufacture_S at 12  range 0 .. 31;
      Vendor_Name        at 16  range 0 .. 255;
      Model_Name         at 48  range 0 .. 255;
      Software_Version   at 80  range 0 .. 191;
      Hardware_Version   at 104 range 0 .. 191;
      Serial_Number      at 128 range 0 .. 255;
   end record;

   procedure Encode
     (Message : Component_Information_Basic;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Component_Information_Basic;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Component_Information_Basic;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Component_Information_Basic;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Component_Information_Basic;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Component_Information_Basic;
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
     (Message : Component_Information_Basic;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Component_Information_Basic;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Component_Information_Basics;
