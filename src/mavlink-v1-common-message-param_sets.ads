-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Set a parameter value (write new value to permanent storage). The 
--  receiving component should acknowledge the new parameter value by 
--  broadcasting a PARAM_VALUE message (broadcasting ensures that multiple GCS 
--  all have an up-to-date list of all parameters). If the sending GCS did not 
--  receive a PARAM_VALUE within its timeout time, it should re-send the 
--  PARAM_SET message. The parameter microservice is documented at 
--  https://mavlink.io/en/services/parameter.html. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Param_Sets is

   pragma Preelaborate;

   Param_Set_Id : constant Msg_Id := 23;

   Param_Set_Len : constant Interfaces.Unsigned_8 := 23;

   type Param_Set is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Param_Id         : String (1 .. 16);
      --  Onboard parameter id, terminated by NULL if the length is less than 
      --  16 human-readable chars and WITHOUT null termination (NULL) byte if 
      --  the length is exactly 16 chars - applications have to provide 16+1 
      --  bytes storage if the ID is stored as string 
      Param_Value      : Interfaces.IEEE_Float_32;
      --  Onboard parameter value 
      Param_Type       : Mav_Param_Type;
      --  Onboard parameter type. 
   end record;

   for Param_Set use record
      Param_Value      at 0  range 0 .. 31;
      Target_System    at 4  range 0 .. 7;
      Target_Component at 5  range 0 .. 7;
      Param_Id         at 6  range 0 .. 127;
      Param_Type       at 22 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Param_Set;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Param_Set;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Param_Set;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Set;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Param_Set;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Set;
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

end MAVLink.V1.Common.Message.Param_Sets;
