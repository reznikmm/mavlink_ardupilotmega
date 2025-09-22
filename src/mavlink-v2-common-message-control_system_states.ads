-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The smoothed, monotonic system state used to feed the control loops of the 
--  system. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Control_System_States is

   pragma Preelaborate;

   Control_System_State_Id : constant Msg_Id := 146;

   type Control_System_State is record
      Time_Usec    : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      X_Acc        : Raw_Float;
      --  Units: [m/s/s]
      --  X acceleration in body frame 
      Y_Acc        : Raw_Float;
      --  Units: [m/s/s]
      --  Y acceleration in body frame 
      Z_Acc        : Raw_Float;
      --  Units: [m/s/s]
      --  Z acceleration in body frame 
      X_Vel        : Raw_Float;
      --  Units: [m/s]
      --  X velocity in body frame 
      Y_Vel        : Raw_Float;
      --  Units: [m/s]
      --  Y velocity in body frame 
      Z_Vel        : Raw_Float;
      --  Units: [m/s]
      --  Z velocity in body frame 
      X_Pos        : Raw_Float;
      --  Units: [m]
      --  X position in local frame 
      Y_Pos        : Raw_Float;
      --  Units: [m]
      --  Y position in local frame 
      Z_Pos        : Raw_Float;
      --  Units: [m]
      --  Z position in local frame 
      Airspeed     : Raw_Float :=
        To_Raw (-1.0);
      --  Units: [m/s]
      --  Airspeed, set to -1 if unknown 
      Vel_Variance : Short_Float_Array (1 .. 3);
      --  Variance of body velocity estimate 
      Pos_Variance : Short_Float_Array (1 .. 3);
      --  Variance in local position 
      Q            : Short_Float_Array (1 .. 4);
      --  The attitude, represented as Quaternion 
      Roll_Rate    : Raw_Float;
      --  Units: [rad/s]
      --  Angular rate in roll axis 
      Pitch_Rate   : Raw_Float;
      --  Units: [rad/s]
      --  Angular rate in pitch axis 
      Yaw_Rate     : Raw_Float;
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
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Control_System_State;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Control_System_State;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Control_System_State;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Control_System_State;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Control_System_State;
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
     (Message : Control_System_State;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Control_System_State;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Control_System_States;
