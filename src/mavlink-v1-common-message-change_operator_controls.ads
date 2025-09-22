-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Request to control this MAV 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Change_Operator_Controls is

   pragma Preelaborate;

   Change_Operator_Control_Id : constant Msg_Id := 5;

   Change_Operator_Control_Len : constant Interfaces.Unsigned_8 := 28;

   type Change_Operator_Control is record
      Target_System   : Interfaces.Unsigned_8;
      --  System the GCS requests control for 
      Control_Request : Interfaces.Unsigned_8;
      --  0: request control of this MAV, 1: Release control of this MAV 
      Version         : Interfaces.Unsigned_8;
      --  Units: [rad]
      --  0: key as plaintext, 1-255: future, different hashing/encryption 
      --  variants. The GCS should in general use the safest mode possible 
      --  initially and then gradually move down the encryption level if it 
      --  gets a NACK message indicating an encryption mismatch. 
      Passkey         : String (1 .. 25);
      --  Password / Key, depending on version plaintext or encrypted. 25 or 
      --  less characters, NULL terminated. The characters may involve A-Z, 
      --  a-z, 0-9, and "!?,.-" 
   end record;

   for Change_Operator_Control use record
      Target_System   at 0 range 0 .. 7;
      Control_Request at 1 range 0 .. 7;
      Version         at 2 range 0 .. 7;
      Passkey         at 3 range 0 .. 199;
   end record;

   procedure Encode
     (Message : Change_Operator_Control;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Change_Operator_Control;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Change_Operator_Control;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Change_Operator_Control;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Change_Operator_Controls;
