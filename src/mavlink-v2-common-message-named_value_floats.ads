-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Send a key-value pair as float. The use of this message is discouraged for 
--  normal packets, but a quite efficient way for testing new messages and 
--  getting experimental debug output. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Named_Value_Floats is

   pragma Preelaborate;

   Named_Value_Float_Id : constant Msg_Id := 251;

   type Named_Value_Float is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Name         : String (1 .. 10);
      --  Name of the debug variable 
      Value        : Raw_Float;
      --  Floating point value 
   end record;

   for Named_Value_Float use record
      Time_Boot_Ms at 0 range 0 .. 31;
      Value        at 4 range 0 .. 31;
      Name         at 8 range 0 .. 79;
   end record;

   procedure Encode
     (Message : Named_Value_Float;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Named_Value_Float;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Named_Value_Float;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Named_Value_Float;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Named_Value_Float;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Named_Value_Float;
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
     (Message : Named_Value_Float;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Named_Value_Float;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Named_Value_Floats;
