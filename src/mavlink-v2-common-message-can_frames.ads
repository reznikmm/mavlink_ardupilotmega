-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  A forwarded CAN frame as requested by MAV_CMD_CAN_FORWARD. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Can_Frames is

   pragma Preelaborate;

   Can_Frame_Id : constant Msg_Id := 386;

   type Can_Frame is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID. 
      Bus              : Interfaces.Unsigned_8;
      --  Bus number 
      Len              : Interfaces.Unsigned_8;
      --  Frame length 
      Id               : Interfaces.Unsigned_32;
      --  Frame ID 
      Data             : Unsigned_8_Array (1 .. 8);
      --  Frame data 
   end record;

   for Can_Frame use record
      Id               at 0 range 0 .. 31;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
      Bus              at 6 range 0 .. 7;
      Len              at 7 range 0 .. 7;
      Data             at 8 range 0 .. 63;
   end record;

   procedure Encode
     (Message : Can_Frame;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Can_Frame;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Can_Frame;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Can_Frame;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Can_Frame;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Can_Frame;
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
     (Message : Can_Frame;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Can_Frame;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Can_Frames;
