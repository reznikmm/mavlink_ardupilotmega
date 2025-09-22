-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Emit the value of a onboard parameter. The inclusion of param_count and 
--  param_index in the message allows the recipient to keep track of received 
--  parameters and allows him to re-request missing parameters after a loss or 
--  timeout. The parameter microservice is documented at 
--  https://mavlink.io/en/services/parameter.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Param_Values is

   pragma Preelaborate;

   Param_Value_Id : constant Msg_Id := 22;

   type Param_Value is record
      Param_Id    : String (1 .. 16);
      --  Onboard parameter id, terminated by NULL if the length is less than 
      --  16 human-readable chars and WITHOUT null termination (NULL) byte if 
      --  the length is exactly 16 chars - applications have to provide 16+1 
      --  bytes storage if the ID is stored as string 
      Param_Value : Raw_Float;
      --  Onboard parameter value 
      Param_Type  : Mav_Param_Type;
      --  Onboard parameter type. 
      Param_Count : Interfaces.Unsigned_16;
      --  Total number of onboard parameters 
      Param_Index : Interfaces.Unsigned_16;
      --  Index of this onboard parameter 
   end record;

   for Param_Value use record
      Param_Value at 0  range 0 .. 31;
      Param_Count at 4  range 0 .. 15;
      Param_Index at 6  range 0 .. 15;
      Param_Id    at 8  range 0 .. 127;
      Param_Type  at 24 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Param_Value;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Param_Value;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Param_Value;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Value;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Param_Value;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Value;
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
     (Message : Param_Value;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Param_Value;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Param_Values;
