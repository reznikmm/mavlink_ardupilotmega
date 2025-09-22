-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  To debug something using a named 3D vector. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Debug_Vects is

   pragma Preelaborate;

   Debug_Vect_Id : constant Msg_Id := 250;

   type Debug_Vect is record
      Name      : String (1 .. 10);
      --  Name 
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      X         : Raw_Float;
      --  x 
      Y         : Raw_Float;
      --  y 
      Z         : Raw_Float;
      --  z 
   end record;

   for Debug_Vect use record
      Time_Usec at 0  range 0 .. 63;
      X         at 8  range 0 .. 31;
      Y         at 12 range 0 .. 31;
      Z         at 16 range 0 .. 31;
      Name      at 20 range 0 .. 79;
   end record;

   procedure Encode
     (Message : Debug_Vect;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Debug_Vect;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Debug_Vect;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Debug_Vect;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Debug_Vect;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Debug_Vect;
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
     (Message : Debug_Vect;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Debug_Vect;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Debug_Vects;
