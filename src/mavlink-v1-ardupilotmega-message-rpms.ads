-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  RPM sensor output. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Rpms is

   pragma Preelaborate;

   Rpm_Id : constant Msg_Id := 226;

   Rpm_Len : constant Interfaces.Unsigned_8 := 8;

   type Rpm is record
      Rpm1 : Interfaces.IEEE_Float_32;
      --  RPM Sensor1. 
      Rpm2 : Interfaces.IEEE_Float_32;
      --  RPM Sensor2. 
   end record;

   for Rpm use record
      Rpm1 at 0 range 0 .. 31;
      Rpm2 at 4 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Rpm;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Rpm;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Rpm;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rpm;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Rpms;
