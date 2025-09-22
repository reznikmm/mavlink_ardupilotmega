-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The filtered global position (e.g. fused GPS and accelerometers). The 
--  position is in GPS-frame (right-handed, Z-up). It is designed as scaled 
--  integer message since the resolution of float is not sufficient. 
pragma Ada_2022;


package MAVLink.V1.Standard.Message.Global_Position_Ints is

   pragma Preelaborate;

   Global_Position_Int_Id : constant Msg_Id := 33;

   Global_Position_Int_Len : constant Interfaces.Unsigned_8 := 28;

   type Global_Position_Int is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Lat          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude, expressed 
      Lon          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude, expressed 
      Alt          : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Note that virtually all GPS modules provide both 
      --  WGS84 and MSL. 
      Relative_Alt : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude above home 
      Vx           : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground X Speed (Latitude, positive north) 
      Vy           : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Y Speed (Longitude, positive east) 
      Vz           : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Z Speed (Altitude, positive down) 
      Hdg          : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [cdeg]
      --  Vehicle heading (yaw angle), 0.0..359.99 degrees. If unknown, set 
      --  to: UINT16_MAX 
   end record;

   for Global_Position_Int use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Lat          at 4  range 0 .. 31;
      Lon          at 8  range 0 .. 31;
      Alt          at 12 range 0 .. 31;
      Relative_Alt at 16 range 0 .. 31;
      Vx           at 20 range 0 .. 15;
      Vy           at 22 range 0 .. 15;
      Vz           at 24 range 0 .. 15;
      Hdg          at 26 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Global_Position_Int;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Global_Position_Int;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Global_Position_Int;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Global_Position_Int;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Global_Position_Int;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Global_Position_Int;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Standard.Message.Global_Position_Ints;
