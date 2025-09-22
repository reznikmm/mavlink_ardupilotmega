-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  offset response to encapsulated data.

pragma Ada_2022;

package MAVLink.V2.Cubepilot.Cubepilot_Firmware_Update_Resps is

   pragma Pure;

   type Cubepilot_Firmware_Update_Resp is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Offset           : Interfaces.Unsigned_32;
      --  Units: [bytes]
      --  FW Offset.
   end record;

   for Cubepilot_Firmware_Update_Resp use record
      Offset           at 0 range 0 .. 31;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Cubepilot_Firmware_Update_Resp;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Cubepilot_Firmware_Update_Resp;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Cubepilot_Firmware_Update_Resp;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Cubepilot_Firmware_Update_Resp;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Cubepilot_Firmware_Update_Resp;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Cubepilot_Firmware_Update_Resp;
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
     (Message : Cubepilot_Firmware_Update_Resp;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Cubepilot_Firmware_Update_Resp;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Cubepilot.Cubepilot_Firmware_Update_Resps;
