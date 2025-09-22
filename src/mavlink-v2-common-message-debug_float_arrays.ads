-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Large debug/prototyping array. The message uses the maximum available 
--  payload for data. The array_id and name fields are used to discriminate 
--  between messages in code and in user interfaces (respectively). Do not use 
--  in production code. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Debug_Float_Arrays is

   pragma Preelaborate;

   Debug_Float_Array_Id : constant Msg_Id := 350;

   type Debug_Float_Array is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Name      : String (1 .. 10);
      --  Name, for human-friendly display in a Ground Control Station 
      Array_Id  : Interfaces.Unsigned_16;
      --  Unique ID used to discriminate between arrays 
      Data      : Short_Float_Array (1 .. 58);
      --  data 
   end record;

   for Debug_Float_Array use record
      Time_Usec at 0  range 0 .. 63;
      Array_Id  at 8  range 0 .. 15;
      Name      at 10 range 0 .. 79;
      Data      at 20 range 0 .. 1855;
   end record;

   procedure Encode
     (Message : Debug_Float_Array;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Debug_Float_Array;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Debug_Float_Array;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Debug_Float_Array;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Debug_Float_Array;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Debug_Float_Array;
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
     (Message : Debug_Float_Array;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Debug_Float_Array;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Debug_Float_Arrays;
