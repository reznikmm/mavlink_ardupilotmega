-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  A change to the sequence number indicates that the set of AVAILABLE_MODES 
--  has changed. A receiver must re-request all available modes whenever the 
--  sequence number changes. This is only emitted after the first change and 
--  should then be broadcast at low rate (nominally 0.3 Hz) and on change. See 
--  https://mavlink.io/en/services/standard_modes.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Available_Modes_Monitors is

   pragma Preelaborate;

   Available_Modes_Monitor_Id : constant Msg_Id := 437;

   type Available_Modes_Monitor is record
      Seq : Interfaces.Unsigned_8;
      --  Sequence number. The value iterates sequentially whenever 
      --  AVAILABLE_MODES changes (e.g. support for a new mode is 
      --  added/removed dynamically). 
   end record;

   for Available_Modes_Monitor use record
      Seq at 0 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Available_Modes_Monitor;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Available_Modes_Monitor;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Available_Modes_Monitor;
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
     (Message : Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Available_Modes_Monitor;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Available_Modes_Monitors;
