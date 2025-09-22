-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2019-10 REPLACED BY: PLAY_TUNE_V2
--  New version explicitly defines format. More interoperable. 
------------
--  Control vehicle tone generation (buzzer). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Play_Tunes is

   pragma Preelaborate;

   Play_Tune_Id : constant Msg_Id := 258;

   type Play_Tune is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Tune             : String (1 .. 30);
      --  tune in board specific format 
      Tune2            : String (1 .. 200);
      --  tune extension (appended to tune) 
   end record;

   pragma Obsolescent (Play_Tune);

   for Play_Tune use record
      Target_System    at 0  range 0 .. 7;
      Target_Component at 1  range 0 .. 7;
      Tune             at 2  range 0 .. 239;
      Tune2            at 32 range 0 .. 1599;
   end record;

   procedure Encode
     (Message : Play_Tune;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Play_Tune;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Play_Tune;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Play_Tune;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Play_Tune;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Play_Tune;
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
     (Message : Play_Tune;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Play_Tune;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Play_Tunes;
