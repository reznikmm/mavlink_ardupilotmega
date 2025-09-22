-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The smoothed, monotonic system state used to feed the control loops of the 
--  system. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Control_System_States is

   pragma Preelaborate;

   Control_System_State_Id : constant Msg_Id := 146;

   Control_System_State_Len : constant Interfaces.Unsigned_8 := 100;

   type Control_System_State is record
      Time_Usec    : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      X_Acc        : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  X acceleration in body frame 
      Y_Acc        : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Y acceleration in body frame 
      Z_Acc        : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Z acceleration in body frame 
      X_Vel        : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  X velocity in body frame 
      Y_Vel        : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Y velocity in body frame 
      Z_Vel        : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Z velocity in body frame 
      X_Pos        : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  X position in local frame 
      Y_Pos        : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Y position in local frame 
      Z_Pos        : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Z position in local frame 
      Airspeed     : Interfaces.IEEE_Float_32 :=
        -1.0;
      --  Units: [m/s]
      --  Airspeed, set to -1 if unknown 
      Vel_Variance : Short_Float_Array (1 .. 3);
      --  Variance of body velocity estimate 
      Pos_Variance : Short_Float_Array (1 .. 3);
      --  Variance in local position 
      Q            : Short_Float_Array (1 .. 4);
      --  The attitude, represented as Quaternion 
      Roll_Rate    : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular rate in roll axis 
      Pitch_Rate   : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular rate in pitch axis 
      Yaw_Rate     : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Angular rate in yaw axis 
   end record;

   for Control_System_State use record
      Time_Usec    at 0  range 0 .. 63;
      X_Acc        at 8  range 0 .. 31;
      Y_Acc        at 12 range 0 .. 31;
      Z_Acc        at 16 range 0 .. 31;
      X_Vel        at 20 range 0 .. 31;
      Y_Vel        at 24 range 0 .. 31;
      Z_Vel        at 28 range 0 .. 31;
      X_Pos        at 32 range 0 .. 31;
      Y_Pos        at 36 range 0 .. 31;
      Z_Pos        at 40 range 0 .. 31;
      Airspeed     at 44 range 0 .. 31;
      Vel_Variance at 48 range 0 .. 95;
      Pos_Variance at 60 range 0 .. 95;
      Q            at 72 range 0 .. 127;
      Roll_Rate    at 88 range 0 .. 31;
      Pitch_Rate   at 92 range 0 .. 31;
      Yaw_Rate     at 96 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Control_System_State;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Control_System_State;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Control_System_State;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Control_System_State;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Control_System_State;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Control_System_State;
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

end MAVLink.V1.Common.Message.Control_System_States;
