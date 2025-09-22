-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of simulation environment, if used 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Sim_States is

   pragma Preelaborate;

   Sim_State_Id : constant Msg_Id := 108;

   Sim_State_Len : constant Interfaces.Unsigned_8 := 84;

   type Sim_State is record
      Q1           : Interfaces.IEEE_Float_32;
      --  True attitude quaternion component 1, w (1 in null-rotation) 
      Q2           : Interfaces.IEEE_Float_32;
      --  True attitude quaternion component 2, x (0 in null-rotation) 
      Q3           : Interfaces.IEEE_Float_32;
      --  True attitude quaternion component 3, y (0 in null-rotation) 
      Q4           : Interfaces.IEEE_Float_32;
      --  True attitude quaternion component 4, z (0 in null-rotation) 
      Roll         : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Attitude roll expressed as Euler angles, not recommended except for 
      --  human-readable outputs 
      Pitch        : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Attitude pitch expressed as Euler angles, not recommended except for 
      --  human-readable outputs 
      Yaw          : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Attitude yaw expressed as Euler angles, not recommended except for 
      --  human-readable outputs 
      Xacc         : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  X acceleration 
      Yacc         : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Y acceleration 
      Zacc         : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Z acceleration 
      Xgyro        : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around X axis 
      Ygyro        : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around Y axis 
      Zgyro        : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular speed around Z axis 
      Lat          : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Latitude (lower precision). Both this and the lat_int field should 
      --  be set. 
      Lon          : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Longitude (lower precision). Both this and the lon_int field should 
      --  be set. 
      Alt          : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Altitude 
      Std_Dev_Horz : Interfaces.IEEE_Float_32;
      --  Horizontal position standard deviation 
      Std_Dev_Vert : Interfaces.IEEE_Float_32;
      --  Vertical position standard deviation 
      Vn           : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  True velocity in north direction in earth-fixed NED frame 
      Ve           : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  True velocity in east direction in earth-fixed NED frame 
      Vd           : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  True velocity in down direction in earth-fixed NED frame 
   end record;

   for Sim_State use record
      Q1           at 0  range 0 .. 31;
      Q2           at 4  range 0 .. 31;
      Q3           at 8  range 0 .. 31;
      Q4           at 12 range 0 .. 31;
      Roll         at 16 range 0 .. 31;
      Pitch        at 20 range 0 .. 31;
      Yaw          at 24 range 0 .. 31;
      Xacc         at 28 range 0 .. 31;
      Yacc         at 32 range 0 .. 31;
      Zacc         at 36 range 0 .. 31;
      Xgyro        at 40 range 0 .. 31;
      Ygyro        at 44 range 0 .. 31;
      Zgyro        at 48 range 0 .. 31;
      Lat          at 52 range 0 .. 31;
      Lon          at 56 range 0 .. 31;
      Alt          at 60 range 0 .. 31;
      Std_Dev_Horz at 64 range 0 .. 31;
      Std_Dev_Vert at 68 range 0 .. 31;
      Vn           at 72 range 0 .. 31;
      Ve           at 76 range 0 .. 31;
      Vd           at 80 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Sim_State;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Sim_State;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Sim_State;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Sim_State;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Sim_States;
