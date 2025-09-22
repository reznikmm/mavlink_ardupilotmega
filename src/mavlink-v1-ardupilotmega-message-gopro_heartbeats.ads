-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Heartbeat from a HeroBus attached GoPro. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Gopro_Heartbeats is

   pragma Preelaborate;

   Gopro_Heartbeat_Id : constant Msg_Id := 215;

   Gopro_Heartbeat_Len : constant Interfaces.Unsigned_8 := 3;

   type Gopro_Heartbeat is record
      Status       : Gopro_Heartbeat_Status;
      --  Status. 
      Capture_Mode : Gopro_Capture_Mode;
      --  Current capture mode. 
      Flags        : Gopro_Heartbeat_Flags;
      --  Additional status bits. 
   end record;

   for Gopro_Heartbeat use record
      Status       at 0 range 0 .. 7;
      Capture_Mode at 1 range 0 .. 7;
      Flags        at 2 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gopro_Heartbeat;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gopro_Heartbeat;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gopro_Heartbeat;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gopro_Heartbeat;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Gopro_Heartbeats;
