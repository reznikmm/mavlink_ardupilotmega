-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The raw values of the actuator outputs (e.g. on Pixhawk, from MAIN, AUX 
--  ports). This message supersedes SERVO_OUTPUT_RAW. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Actuator_Output_Statuses is

   pragma Preelaborate;

   Actuator_Output_Status_Id : constant Msg_Id := 375;

   type Actuator_Output_Status is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (since system boot). 
      Active    : Interfaces.Unsigned_32;
      --  Active outputs 
      Actuator  : Short_Float_Array (1 .. 32);
      --  Servo / motor output array values. Zero values indicate unused 
      --  channels. 
   end record;

   for Actuator_Output_Status use record
      Time_Usec at 0  range 0 .. 63;
      Active    at 8  range 0 .. 31;
      Actuator  at 12 range 0 .. 1023;
   end record;

   procedure Encode
     (Message : Actuator_Output_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Actuator_Output_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Actuator_Output_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Actuator_Output_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Actuator_Output_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Actuator_Output_Status;
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
     (Message : Actuator_Output_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Actuator_Output_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Actuator_Output_Statuses;
