-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of third AHRS filter if available. This is for ANU research group 
--  (Ali and Sean). 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Ahrs3s is

   pragma Preelaborate;

   Ahrs3_Id : constant Msg_Id := 182;

   Ahrs3_Len : constant Interfaces.Unsigned_8 := 40;

   type Ahrs3 is record
      Roll     : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Roll angle. 
      Pitch    : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Pitch angle. 
      Yaw      : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Yaw angle. 
      Altitude : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Altitude (MSL). 
      Lat      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude. 
      Lng      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude. 
      V1       : Interfaces.IEEE_Float_32;
      --  Test variable1. 
      V2       : Interfaces.IEEE_Float_32;
      --  Test variable2. 
      V3       : Interfaces.IEEE_Float_32;
      --  Test variable3. 
      V4       : Interfaces.IEEE_Float_32;
      --  Test variable4. 
   end record;

   for Ahrs3 use record
      Roll     at 0  range 0 .. 31;
      Pitch    at 4  range 0 .. 31;
      Yaw      at 8  range 0 .. 31;
      Altitude at 12 range 0 .. 31;
      Lat      at 16 range 0 .. 31;
      Lng      at 20 range 0 .. 31;
      V1       at 24 range 0 .. 31;
      V2       at 28 range 0 .. 31;
      V3       at 32 range 0 .. 31;
      V4       at 36 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Ahrs3;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ahrs3;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ahrs3;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ahrs3;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Ahrs3s;
