-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Report button state change. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Button_Changes is

   pragma Preelaborate;

   Button_Change_Id : constant Msg_Id := 257;

   type Button_Change is record
      Time_Boot_Ms   : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Last_Change_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time of last change of button state. 
      State          : Interfaces.Unsigned_8;
      --  Bitmap for state of buttons. 
   end record;

   for Button_Change use record
      Time_Boot_Ms   at 0 range 0 .. 31;
      Last_Change_Ms at 4 range 0 .. 31;
      State          at 8 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Button_Change;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Button_Change;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Button_Change;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Button_Change;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Button_Change;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Button_Change;
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
     (Message : Button_Change;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Button_Change;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Button_Changes;
