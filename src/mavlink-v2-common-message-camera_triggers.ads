-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Camera-IMU triggering and synchronisation message. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Camera_Triggers is

   pragma Preelaborate;

   Camera_Trigger_Id : constant Msg_Id := 112;

   type Camera_Trigger is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp for image frame (UNIX Epoch time or time since system 
      --  boot). The receiving end can infer timestamp format (since 1.1.1970 
      --  or since system boot) by checking for the magnitude of the number. 
      Seq       : Interfaces.Unsigned_32;
      --  Image frame sequence 
   end record;

   for Camera_Trigger use record
      Time_Usec at 0 range 0 .. 63;
      Seq       at 8 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Camera_Trigger;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Trigger;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Trigger;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Trigger;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Trigger;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Trigger;
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
     (Message : Camera_Trigger;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Trigger;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Camera_Triggers;
