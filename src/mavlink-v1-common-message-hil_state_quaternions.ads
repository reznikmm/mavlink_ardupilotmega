-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Sent from simulation to autopilot, avoids in contrast to HIL_STATE 
--  singularities. This packet is useful for high throughput applications such 
--  as hardware in the loop simulations. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Hil_State_Quaternions is

   pragma Preelaborate;

   Hil_State_Quaternion_Id : constant Msg_Id := 115;

   Hil_State_Quaternion_Len : constant Interfaces.Unsigned_8 := 64;

   type Hil_State_Quaternion is record
      Time_Usec           : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Attitude_Quaternion : Short_Float_Array (1 .. 4);
      --  Vehicle attitude expressed as normalized quaternion in w, x, y, z 
      --  order (with 1 0 0 0 being the null-rotation) 
      Rollspeed           : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body frame roll / phi angular speed 
      Pitchspeed          : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body frame pitch / theta angular speed 
      Yawspeed            : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body frame yaw / psi angular speed 
      Lat                 : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Lon                 : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
      Alt                 : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude 
      Vx                  : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground X Speed (Latitude) 
      Vy                  : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Y Speed (Longitude) 
      Vz                  : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Z Speed (Altitude) 
      Ind_Airspeed        : Interfaces.Unsigned_16;
      --  Units: [cm/s]
      --  Indicated airspeed 
      True_Airspeed       : Interfaces.Unsigned_16;
      --  Units: [cm/s]
      --  True airspeed 
      Xacc                : Interfaces.Integer_16;
      --  Units: [mG]
      --  X acceleration 
      Yacc                : Interfaces.Integer_16;
      --  Units: [mG]
      --  Y acceleration 
      Zacc                : Interfaces.Integer_16;
      --  Units: [mG]
      --  Z acceleration 
   end record;

   for Hil_State_Quaternion use record
      Time_Usec           at 0  range 0 .. 63;
      Attitude_Quaternion at 8  range 0 .. 127;
      Rollspeed           at 24 range 0 .. 31;
      Pitchspeed          at 28 range 0 .. 31;
      Yawspeed            at 32 range 0 .. 31;
      Lat                 at 36 range 0 .. 31;
      Lon                 at 40 range 0 .. 31;
      Alt                 at 44 range 0 .. 31;
      Vx                  at 48 range 0 .. 15;
      Vy                  at 50 range 0 .. 15;
      Vz                  at 52 range 0 .. 15;
      Ind_Airspeed        at 54 range 0 .. 15;
      True_Airspeed       at 56 range 0 .. 15;
      Xacc                at 58 range 0 .. 15;
      Yacc                at 60 range 0 .. 15;
      Zacc                at 62 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Hil_State_Quaternion;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_State_Quaternion;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_State_Quaternion;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_State_Quaternion;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hil_State_Quaternion;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_State_Quaternion;
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

end MAVLink.V1.Common.Message.Hil_State_Quaternions;
