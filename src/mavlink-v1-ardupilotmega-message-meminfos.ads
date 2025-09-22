-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  State of autopilot RAM. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Meminfos is

   pragma Preelaborate;

   Meminfo_Id : constant Msg_Id := 152;

   Meminfo_Len : constant Interfaces.Unsigned_8 := 4;

   type Meminfo is record
      Brkval  : Interfaces.Unsigned_16;
      --  Heap top. 
      Freemem : Interfaces.Unsigned_16;
      --  Units: [bytes]
      --  Free memory. 
   end record;

   for Meminfo use record
      Brkval  at 0 range 0 .. 15;
      Freemem at 2 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Meminfo;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Meminfo;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Meminfo;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Meminfo;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Meminfos;
