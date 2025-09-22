-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Wind estimation. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Winds is

   pragma Preelaborate;

   Wind_Id : constant Msg_Id := 168;

   Wind_Len : constant Interfaces.Unsigned_8 := 12;

   type Wind is record
      Direction : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Wind direction (that wind is coming from). 
      Speed     : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Wind speed in ground plane. 
      Speed_Z   : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Vertical wind speed. 
   end record;

   for Wind use record
      Direction at 0 range 0 .. 31;
      Speed     at 4 range 0 .. 31;
      Speed_Z   at 8 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Wind;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Wind;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Wind;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Wind;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Winds;
