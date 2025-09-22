-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Accept / deny control of this MAV 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Change_Operator_Control_Acks is

   pragma Preelaborate;

   Change_Operator_Control_Ack_Id : constant Msg_Id := 6;

   Change_Operator_Control_Ack_Len : constant Interfaces.Unsigned_8 := 3;

   type Change_Operator_Control_Ack is record
      Gcs_System_Id   : Interfaces.Unsigned_8;
      --  ID of the GCS this message 
      Control_Request : Interfaces.Unsigned_8;
      --  0: request control of this MAV, 1: Release control of this MAV 
      Ack             : Interfaces.Unsigned_8;
      --  0: ACK, 1: NACK: Wrong passkey, 2: NACK: Unsupported passkey 
      --  encryption method, 3: NACK: Already under control 
   end record;

   for Change_Operator_Control_Ack use record
      Gcs_System_Id   at 0 range 0 .. 7;
      Control_Request at 1 range 0 .. 7;
      Ack             at 2 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Change_Operator_Control_Ack;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Change_Operator_Control_Ack;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Change_Operator_Control_Ack;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Change_Operator_Control_Ack;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Change_Operator_Control_Acks;
