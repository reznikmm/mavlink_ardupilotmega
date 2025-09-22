-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Send a key-value pair as float. The use of this message is discouraged for 
--  normal packets, but a quite efficient way for testing new messages and 
--  getting experimental debug output. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Named_Value_Floats is

   pragma Preelaborate;

   Named_Value_Float_Id : constant Msg_Id := 251;

   Named_Value_Float_Len : constant Interfaces.Unsigned_8 := 18;

   type Named_Value_Float is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Name         : String (1 .. 10);
      --  Name of the debug variable 
      Value        : Interfaces.IEEE_Float_32;
      --  Floating point value 
   end record;

   for Named_Value_Float use record
      Time_Boot_Ms at 0 range 0 .. 31;
      Value        at 4 range 0 .. 31;
      Name         at 8 range 0 .. 79;
   end record;

   procedure Encode
     (Message : Named_Value_Float;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Named_Value_Float;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Named_Value_Float;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Named_Value_Float;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Named_Value_Floats;
