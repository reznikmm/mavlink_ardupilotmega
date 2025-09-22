-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Send raw controller memory. The use of this message is discouraged for 
--  normal packets, but a quite efficient way for testing new messages and 
--  getting experimental debug output. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Memory_Vects is

   pragma Preelaborate;

   Memory_Vect_Id : constant Msg_Id := 249;

   Memory_Vect_Len : constant Interfaces.Unsigned_8 := 36;

   type Memory_Vect is record
      Address    : Interfaces.Unsigned_16;
      --  Starting address of the debug variables 
      Ver        : Interfaces.Unsigned_8 :=
        0;
      --  Version code of the type variable. 0=unknown, type ignored and 
      --  assumed int16_t. 1=as below 
      Type_Field : Interfaces.Unsigned_8;
      --  Type code of the memory variables. for ver = 1: 0=16 x int16_t, 1=16 
      --  x uint16_t, 2=16 x Q15, 3=16 x 1Q14 
      Value      : Integer_8_Array (1 .. 32);
      --  Memory contents at specified address 
   end record;

   for Memory_Vect use record
      Address    at 0 range 0 .. 15;
      Ver        at 2 range 0 .. 7;
      Type_Field at 3 range 0 .. 7;
      Value      at 4 range 0 .. 255;
   end record;

   procedure Encode
     (Message : Memory_Vect;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Memory_Vect;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Memory_Vect;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Memory_Vect;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Memory_Vect;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Memory_Vect;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Memory_Vects;
