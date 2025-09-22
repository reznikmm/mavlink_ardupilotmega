-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Set the vehicle attitude and body angular rates. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Actuator_Control_Targets is

   pragma Preelaborate;

   Actuator_Control_Target_Id : constant Msg_Id := 140;

   Actuator_Control_Target_Len : constant Interfaces.Unsigned_8 := 41;

   type Actuator_Control_Target is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Group_Mlx : Interfaces.Unsigned_8;
      --  Actuator group. The "_mlx" indicates this is a multi-instance 
      --  message and a MAVLink parser should use this field to difference 
      --  between instances. 
      Controls  : Short_Float_Array (1 .. 8);
      --  Actuator controls. Normed to -1..+1 where 0 is neutral position. 
      --  Throttle for single rotation direction motors is 0..1, negative 
      --  range for reverse direction. Standard mapping for attitude controls 
      --  (group 0): (index 0-7): roll, pitch, yaw, throttle, flaps, spoilers, 
      --  airbrakes, landing gear. Load a pass-through mixer to repurpose them 
      --  as generic outputs. 
   end record;

   for Actuator_Control_Target use record
      Time_Usec at 0  range 0 .. 63;
      Controls  at 8  range 0 .. 255;
      Group_Mlx at 40 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Actuator_Control_Target;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Actuator_Control_Target;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Actuator_Control_Target;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Actuator_Control_Target;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Actuator_Control_Target;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Actuator_Control_Target;
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

end MAVLink.V1.Common.Message.Actuator_Control_Targets;
