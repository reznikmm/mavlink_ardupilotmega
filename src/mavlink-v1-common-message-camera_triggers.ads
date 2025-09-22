-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Camera-IMU triggering and synchronisation message. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Camera_Triggers is

   pragma Preelaborate;

   Camera_Trigger_Id : constant Msg_Id := 112;

   Camera_Trigger_Len : constant Interfaces.Unsigned_8 := 12;

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
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Trigger;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Trigger;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Trigger;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Camera_Triggers;
