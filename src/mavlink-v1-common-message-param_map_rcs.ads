-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Bind a RC channel to a parameter. The parameter should change according to 
--  the RC channel value. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Param_Map_Rcs is

   pragma Preelaborate;

   Param_Map_Rc_Id : constant Msg_Id := 50;

   Param_Map_Rc_Len : constant Interfaces.Unsigned_8 := 37;

   type Param_Map_Rc is record
      Target_System              : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component           : Interfaces.Unsigned_8;
      --  Component ID 
      Param_Id                   : String (1 .. 16);
      --  Onboard parameter id, terminated by NULL if the length is less than 
      --  16 human-readable chars and WITHOUT null termination (NULL) byte if 
      --  the length is exactly 16 chars - applications have to provide 16+1 
      --  bytes storage if the ID is stored as string 
      Param_Index                : Interfaces.Integer_16;
      --  Parameter index. Send -1 to use the param ID field as identifier 
      --  (else the param id will be ignored), send -2 to disable any existing 
      --  map for this rc_channel_index. 
      Parameter_Rc_Channel_Index : Interfaces.Unsigned_8;
      --  Index of parameter RC channel. Not equal to the RC channel id. 
      --  Typically corresponds to a potentiometer-knob on the RC. 
      Param_Value0               : Interfaces.IEEE_Float_32;
      --  Initial parameter value 
      Scale                      : Interfaces.IEEE_Float_32;
      --  Scale, maps the RC range [-1, 1] to a parameter value 
      Param_Value_Min            : Interfaces.IEEE_Float_32;
      --  Minimum param value. The protocol does not define if this overwrites 
      --  an onboard minimum value. (Depends on implementation) 
      Param_Value_Max            : Interfaces.IEEE_Float_32;
      --  Maximum param value. The protocol does not define if this overwrites 
      --  an onboard maximum value. (Depends on implementation) 
   end record;

   for Param_Map_Rc use record
      Param_Value0               at 0  range 0 .. 31;
      Scale                      at 4  range 0 .. 31;
      Param_Value_Min            at 8  range 0 .. 31;
      Param_Value_Max            at 12 range 0 .. 31;
      Param_Index                at 16 range 0 .. 15;
      Target_System              at 18 range 0 .. 7;
      Target_Component           at 19 range 0 .. 7;
      Param_Id                   at 20 range 0 .. 127;
      Parameter_Rc_Channel_Index at 36 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Param_Map_Rc;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Param_Map_Rc;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Param_Map_Rc;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Param_Map_Rc;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Param_Map_Rcs;
