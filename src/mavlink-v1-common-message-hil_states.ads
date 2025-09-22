-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2013-07 REPLACED BY: HIL_STATE_QUATERNION
--  Suffers from missing airspeed fields and singularities due to Euler angles 
------------
--  Sent from simulation to autopilot. This packet is useful for high 
--  throughput applications such as hardware in the loop simulations. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Hil_States is

   pragma Preelaborate;

   Hil_State_Id : constant Msg_Id := 90;

   Hil_State_Len : constant Interfaces.Unsigned_8 := 56;

   type Hil_State is record
      Time_Usec  : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Roll       : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Roll angle 
      Pitch      : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Pitch angle 
      Yaw        : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Yaw angle 
      Rollspeed  : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body frame roll / phi angular speed 
      Pitchspeed : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body frame pitch / theta angular speed 
      Yawspeed   : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body frame yaw / psi angular speed 
      Lat        : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Lon        : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
      Alt        : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude 
      Vx         : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground X Speed (Latitude) 
      Vy         : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Y Speed (Longitude) 
      Vz         : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Z Speed (Altitude) 
      Xacc       : Interfaces.Integer_16;
      --  Units: [mG]
      --  X acceleration 
      Yacc       : Interfaces.Integer_16;
      --  Units: [mG]
      --  Y acceleration 
      Zacc       : Interfaces.Integer_16;
      --  Units: [mG]
      --  Z acceleration 
   end record;

   pragma Obsolescent (Hil_State);

   for Hil_State use record
      Time_Usec  at 0  range 0 .. 63;
      Roll       at 8  range 0 .. 31;
      Pitch      at 12 range 0 .. 31;
      Yaw        at 16 range 0 .. 31;
      Rollspeed  at 20 range 0 .. 31;
      Pitchspeed at 24 range 0 .. 31;
      Yawspeed   at 28 range 0 .. 31;
      Lat        at 32 range 0 .. 31;
      Lon        at 36 range 0 .. 31;
      Alt        at 40 range 0 .. 31;
      Vx         at 44 range 0 .. 15;
      Vy         at 46 range 0 .. 15;
      Vz         at 48 range 0 .. 15;
      Xacc       at 50 range 0 .. 15;
      Yacc       at 52 range 0 .. 15;
      Zacc       at 54 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Hil_State;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_State;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_State;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_State;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hil_State;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_State;
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

end MAVLink.V1.Common.Message.Hil_States;
