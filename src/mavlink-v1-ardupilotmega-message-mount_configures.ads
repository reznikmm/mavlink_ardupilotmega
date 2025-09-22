-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Message to configure a camera mount, directional antenna, etc. 
pragma Ada_2022;


with Mavlink.V1.Common; use Mavlink.V1.Common;

package Mavlink.V1.Ardupilotmega.Message.Mount_Configures is

   pragma Preelaborate;

   Mount_Configure_Id : constant Msg_Id := 156;

   Mount_Configure_Len : constant Interfaces.Unsigned_8 := 6;

   type Mount_Configure is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID. 
      Mount_Mode       : Mav_Mount_Mode;
      --  Mount operating mode. 
      Stab_Roll        : Interfaces.Unsigned_8;
      --  (1 = yes, 0 = no). 
      Stab_Pitch       : Interfaces.Unsigned_8;
      --  (1 = yes, 0 = no). 
      Stab_Yaw         : Interfaces.Unsigned_8;
      --  (1 = yes, 0 = no). 
   end record;

   for Mount_Configure use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
      Mount_Mode       at 2 range 0 .. 7;
      Stab_Roll        at 3 range 0 .. 7;
      Stab_Pitch       at 4 range 0 .. 7;
      Stab_Yaw         at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mount_Configure;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mount_Configure;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mount_Configure;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mount_Configure;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Mount_Configures;
