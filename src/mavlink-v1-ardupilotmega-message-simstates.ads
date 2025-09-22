-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of simulation environment, if used. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Simstates is

   pragma Preelaborate;

   Simstate_Id : constant Msg_Id := 164;

   Simstate_Len : constant Interfaces.Unsigned_8 := 44;

   type Simstate is record
      Roll  : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Roll angle. 
      Pitch : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Pitch angle. 
      Yaw   : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Yaw angle. 
      Xacc  : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  X acceleration. 
      Yacc  : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Y acceleration. 
      Zacc  : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Z acceleration. 
      Xgyro : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around X axis. 
      Ygyro : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around Y axis. 
      Zgyro : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around Z axis. 
      Lat   : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude. 
      Lng   : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude. 
   end record;

   for Simstate use record
      Roll  at 0  range 0 .. 31;
      Pitch at 4  range 0 .. 31;
      Yaw   at 8  range 0 .. 31;
      Xacc  at 12 range 0 .. 31;
      Yacc  at 16 range 0 .. 31;
      Zacc  at 20 range 0 .. 31;
      Xgyro at 24 range 0 .. 31;
      Ygyro at 28 range 0 .. 31;
      Zgyro at 32 range 0 .. 31;
      Lat   at 36 range 0 .. 31;
      Lng   at 40 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Simstate;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Simstate;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Simstate;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Simstate;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Simstates;
