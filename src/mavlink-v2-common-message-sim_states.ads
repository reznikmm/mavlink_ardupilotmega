-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Status of simulation environment, if used 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Sim_States is

   pragma Preelaborate;

   Sim_State_Id : constant Msg_Id := 108;

   type Sim_State is record
      Q1           : Raw_Float;
      --  True attitude quaternion component 1, w (1 in null-rotation) 
      Q2           : Raw_Float;
      --  True attitude quaternion component 2, x (0 in null-rotation) 
      Q3           : Raw_Float;
      --  True attitude quaternion component 3, y (0 in null-rotation) 
      Q4           : Raw_Float;
      --  True attitude quaternion component 4, z (0 in null-rotation) 
      Roll         : Raw_Float;
      --  Units: [rad]
      --  Attitude roll expressed as Euler angles, not recommended except for 
      --  human-readable outputs 
      Pitch        : Raw_Float;
      --  Units: [rad]
      --  Attitude pitch expressed as Euler angles, not recommended except for 
      --  human-readable outputs 
      Yaw          : Raw_Float;
      --  Units: [rad]
      --  Attitude yaw expressed as Euler angles, not recommended except for 
      --  human-readable outputs 
      Xacc         : Raw_Float;
      --  Units: [m/s/s]
      --  X acceleration 
      Yacc         : Raw_Float;
      --  Units: [m/s/s]
      --  Y acceleration 
      Zacc         : Raw_Float;
      --  Units: [m/s/s]
      --  Z acceleration 
      Xgyro        : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around X axis 
      Ygyro        : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around Y axis 
      Zgyro        : Raw_Float;
      --  Units: [rad/s]
      --  Angular speed around Z axis 
      Lat          : Raw_Float;
      --  Units: [deg]
      --  Latitude (lower precision). Both this and the lat_int field should 
      --  be set. 
      Lon          : Raw_Float;
      --  Units: [deg]
      --  Longitude (lower precision). Both this and the lon_int field should 
      --  be set. 
      Alt          : Raw_Float;
      --  Units: [m]
      --  Altitude 
      Std_Dev_Horz : Raw_Float;
      --  Horizontal position standard deviation 
      Std_Dev_Vert : Raw_Float;
      --  Vertical position standard deviation 
      Vn           : Raw_Float;
      --  Units: [m/s]
      --  True velocity in north direction in earth-fixed NED frame 
      Ve           : Raw_Float;
      --  Units: [m/s]
      --  True velocity in east direction in earth-fixed NED frame 
      Vd           : Raw_Float;
      --  Units: [m/s]
      --  True velocity in down direction in earth-fixed NED frame 
      Lat_Int      : Interfaces.Integer_32 :=
        0;
      --  Units: [degE7]
      --  Latitude (higher precision). If 0, recipients should use the lat 
      --  field value (otherwise this field is preferred). 
      Lon_Int      : Interfaces.Integer_32 :=
        0;
      --  Units: [degE7]
      --  Longitude (higher precision). If 0, recipients should use the lon 
      --  field value (otherwise this field is preferred). 
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
      Lat_Int      at 84 range 0 .. 31;
      Lon_Int      at 88 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Sim_State;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Sim_State;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Sim_State;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Sim_State;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Sim_State;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Sim_State;
      Connect : in out MAVLink.V2.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Sim_State;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Sim_State;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Sim_States;
