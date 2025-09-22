-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Transmitter (remote ID system) is enabled and ready to start sending 
--  location and other required information. This is streamed by transmitter. 
--  A flight controller uses it as a condition to arm. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Open_Drone_Id_Arm_Statuses is

   pragma Preelaborate;

   Open_Drone_Id_Arm_Status_Id : constant Msg_Id := 12918;

   type Open_Drone_Id_Arm_Status is record
      Status : Mav_Odid_Arm_Status;
      --  Status level indicating if arming is allowed. 
      Error  : String (1 .. 50);
      --  Text error message, should be empty if status is good to arm. Fill 
      --  with nulls in unused portion. 
   end record;

   for Open_Drone_Id_Arm_Status use record
      Status at 0 range 0 .. 7;
      Error  at 1 range 0 .. 399;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_Arm_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Open_Drone_Id_Arm_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Arm_Status;
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
     (Message : Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_Arm_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Open_Drone_Id_Arm_Statuses;
