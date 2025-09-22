-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Rangefinder reporting. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Rangefinders is

   pragma Preelaborate;

   Rangefinder_Id : constant Msg_Id := 173;

   Rangefinder_Len : constant Interfaces.Unsigned_8 := 8;

   type Rangefinder is record
      Distance : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Distance. 
      Voltage  : Interfaces.IEEE_Float_32;
      --  Units: [V]
      --  Raw voltage if available, zero otherwise. 
   end record;

   for Rangefinder use record
      Distance at 0 range 0 .. 31;
      Voltage  at 4 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Rangefinder;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Rangefinder;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Rangefinder;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Rangefinder;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Rangefinders;
