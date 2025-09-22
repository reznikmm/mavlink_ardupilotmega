-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Parameter set/get error. Returned from a MAVLink node in response to an 
--  error in the parameter protocol, for example failing to set a parameter 
--  because it does not exist. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Param_Errors is

   pragma Preelaborate;

   Param_Error_Id : constant Msg_Id := 345;

   type Param_Error is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Param_Id         : String (1 .. 16);
      --  Parameter id. Terminated by NULL if the length is less than 16 
      --  human-readable chars and WITHOUT null termination (NULL) byte if the 
      --  length is exactly 16 chars - applications have to provide 16+1 bytes 
      --  storage if the ID is stored as string 
      Param_Index      : Interfaces.Integer_16;
      --  Parameter index. Will be -1 if the param ID field should be used as 
      --  an identifier (else the param id will be ignored) 
      Error            : Mav_Param_Error;
      --  Error being returned to client. 
   end record;

   for Param_Error use record
      Param_Index      at 0  range 0 .. 15;
      Target_System    at 2  range 0 .. 7;
      Target_Component at 3  range 0 .. 7;
      Param_Id         at 4  range 0 .. 127;
      Error            at 20 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Param_Error;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Param_Error;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Param_Error;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Error;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Param_Error;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Error;
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
     (Message : Param_Error;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Param_Error;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Param_Errors;
