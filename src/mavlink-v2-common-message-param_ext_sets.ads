-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set a parameter value. In order to deal with message loss (and 
--  retransmission of PARAM_EXT_SET), when setting a parameter value and the 
--  new value is the same as the current value, you will immediately get a 
--  PARAM_ACK_ACCEPTED response. If the current state is 
--  PARAM_ACK_IN_PROGRESS, you will accordingly receive a 
--  PARAM_ACK_IN_PROGRESS in response. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Param_Ext_Sets is

   pragma Preelaborate;

   Param_Ext_Set_Id : constant Msg_Id := 323;

   type Param_Ext_Set is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Param_Id         : String (1 .. 16);
      --  Parameter id, terminated by NULL if the length is less than 16 
      --  human-readable chars and WITHOUT null termination (NULL) byte if the 
      --  length is exactly 16 chars - applications have to provide 16+1 bytes 
      --  storage if the ID is stored as string 
      Param_Value      : String (1 .. 128);
      --  Parameter value 
      Param_Type       : Mav_Param_Ext_Type;
      --  Parameter type. 
   end record;

   for Param_Ext_Set use record
      Target_System    at 0   range 0 .. 7;
      Target_Component at 1   range 0 .. 7;
      Param_Id         at 2   range 0 .. 127;
      Param_Value      at 18  range 0 .. 1023;
      Param_Type       at 146 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Param_Ext_Set;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Param_Ext_Set;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Param_Ext_Set;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Ext_Set;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Param_Ext_Set;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Ext_Set;
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
     (Message : Param_Ext_Set;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Param_Ext_Set;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Param_Ext_Sets;
