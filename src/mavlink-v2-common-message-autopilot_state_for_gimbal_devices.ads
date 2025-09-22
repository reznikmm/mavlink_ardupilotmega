-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Low level message containing autopilot state relevant for a gimbal device. 
--  This message is to be sent from the autopilot to the gimbal device 
--  component. The data of this message are for the gimbal device's estimator 
--  corrections, in particular horizon compensation, as well as indicates 
--  autopilot control intentions, e.g. feed forward angular control in the 
--  z-axis. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Autopilot_State_For_Gimbal_Devices is

   pragma Preelaborate;

   Autopilot_State_For_Gimbal_Device_Id : constant Msg_Id := 286;

   type Autopilot_State_For_Gimbal_Device is record
      Target_System                   : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component                : Interfaces.Unsigned_8;
      --  Component ID 
      Time_Boot_Us                    : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (time since system boot). 
      Q                               : Short_Float_Array (1 .. 4);
      --  Quaternion components of autopilot attitude: w, x, y, z (1 0 0 0 is 
      --  the null-rotation, Hamilton convention). 
      Q_Estimated_Delay_Us            : Interfaces.Unsigned_32 :=
        0;
      --  Units: [us]
      --  Estimated delay of the attitude data. 0 if unknown. 
      Vx                              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  X Speed in NED (North, East, Down). NAN if unknown. 
      Vy                              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Y Speed in NED (North, East, Down). NAN if unknown. 
      Vz                              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Z Speed in NED (North, East, Down). NAN if unknown. 
      V_Estimated_Delay_Us            : Interfaces.Unsigned_32 :=
        0;
      --  Units: [us]
      --  Estimated delay of the speed data. 0 if unknown. 
      Feed_Forward_Angular_Velocity_Z : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Feed forward Z component of angular velocity (positive: yawing to 
      --  the right). NaN to be ignored. This is to indicate if the autopilot 
      --  is actively yawing. 
      Estimator_Status                : Estimator_Status_Flags;
      --  Bitmap indicating which estimator outputs are valid. 
      Landed_State                    : Mav_Landed_State :=
        Undefined;
      --  The landed state. Is set to MAV_LANDED_STATE_UNDEFINED if landed 
      --  state is unknown. 
      Angular_Velocity_Z              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad/s]
      --  Z component of angular velocity in NED (North, East, Down). NaN if 
      --  unknown. 
   end record;

   for Autopilot_State_For_Gimbal_Device use record
      Time_Boot_Us                    at 0  range 0 .. 63;
      Q                               at 8  range 0 .. 127;
      Q_Estimated_Delay_Us            at 24 range 0 .. 31;
      Vx                              at 28 range 0 .. 31;
      Vy                              at 32 range 0 .. 31;
      Vz                              at 36 range 0 .. 31;
      V_Estimated_Delay_Us            at 40 range 0 .. 31;
      Feed_Forward_Angular_Velocity_Z at 44 range 0 .. 31;
      Estimator_Status                at 48 range 0 .. 15;
      Target_System                   at 50 range 0 .. 7;
      Target_Component                at 51 range 0 .. 7;
      Landed_State                    at 52 range 0 .. 7;
      Angular_Velocity_Z              at 53 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Autopilot_State_For_Gimbal_Device;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Autopilot_State_For_Gimbal_Device;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Autopilot_State_For_Gimbal_Device;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Autopilot_State_For_Gimbal_Device;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Autopilot_State_For_Gimbal_Device;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Autopilot_State_For_Gimbal_Device;
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
     (Message : Autopilot_State_For_Gimbal_Device;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Autopilot_State_For_Gimbal_Device;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Autopilot_State_For_Gimbal_Devices;
