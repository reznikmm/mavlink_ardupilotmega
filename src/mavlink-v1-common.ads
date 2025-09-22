-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

with Mavlink.V1.Standard; use Mavlink.V1.Standard;

package Mavlink.V1.Common is

   pragma Preelaborate;

   type Hl_Failure_Flag is record
      Gps                   : Boolean := False;
      Differential_Pressure : Boolean := False;
      Absolute_Pressure     : Boolean := False;
      A_3D_Accel            : Boolean := False;
      A_3D_Gyro             : Boolean := False;
      A_3D_Mag              : Boolean := False;
      Terrain               : Boolean := False;
      Battery               : Boolean := False;
      Rc_Receiver           : Boolean := False;
      Offboard_Link         : Boolean := False;
      Engine                : Boolean := False;
      Geofence              : Boolean := False;
      Estimator             : Boolean := False;
      Mission               : Boolean := False;
      Reserved_14           : Boolean := False;
      Reserved_15           : Boolean := False;
   end record with Size => 16;
   --  Flags to report failure cases over the high latency telemetry. 

   for Hl_Failure_Flag use record
      Gps                   at 0 range 0 .. 0;
      Differential_Pressure at 0 range 1 .. 1;
      Absolute_Pressure     at 0 range 2 .. 2;
      A_3D_Accel            at 0 range 3 .. 3;
      A_3D_Gyro             at 0 range 4 .. 4;
      A_3D_Mag              at 0 range 5 .. 5;
      Terrain               at 0 range 6 .. 6;
      Battery               at 0 range 7 .. 7;
      Rc_Receiver           at 0 range 8 .. 8;
      Offboard_Link         at 0 range 9 .. 9;
      Engine                at 0 range 10 .. 10;
      Geofence              at 0 range 11 .. 11;
      Estimator             at 0 range 12 .. 12;
      Mission               at 0 range 13 .. 13;
      Reserved_14           at 0 range 14 .. 14;
      Reserved_15           at 0 range 15 .. 15;
   end record;

   function Image (V : Hl_Failure_Flag) return String is
     ("["
      & (if V.Gps then "GPS " else "")
      & (if V.Differential_Pressure then "DIFFERENTIAL_PRESSURE " else "")
      & (if V.Absolute_Pressure then "ABSOLUTE_PRESSURE " else "")
      & (if V.A_3D_Accel then "3D_ACCEL " else "")
      & (if V.A_3D_Gyro then "3D_GYRO " else "")
      & (if V.A_3D_Mag then "3D_MAG " else "")
      & (if V.Terrain then "TERRAIN " else "")
      & (if V.Battery then "BATTERY " else "")
      & (if V.Rc_Receiver then "RC_RECEIVER " else "")
      & (if V.Offboard_Link then "OFFBOARD_LINK " else "")
      & (if V.Engine then "ENGINE " else "")
      & (if V.Geofence then "GEOFENCE " else "")
      & (if V.Estimator then "ESTIMATOR " else "")
      & (if V.Mission then "MISSION " else "")
      & "]");

   type Mav_Mode is new Interfaces.Unsigned_8;
   pragma Obsolescent (Mav_Mode);
   ------------
   --  DEPRECATED SINCE: 2025-02 REPLACED BY: MAV_MODE_FLAG
   --  Using MAV_MODE to set modes is less predictable than using standard 
   --  modes (MAV_STANDARD_MODE) or custom modes 
   --  (MAV_MODE_FLAG_CUSTOM_MODE_ENABLED). 
   ------------
   --  Predefined OR-combined MAV_MODE_FLAG values. These can simplify using 
   --  the flags when setting modes. Note that manual input is enabled in all 
   --  modes as a safety override. 

   function Preflight return Mav_Mode is (0)
     with Static;
   --  System is not ready to fly, booting, calibrating, etc. No flag is set. 

   function Manual_Disarmed return Mav_Mode is (64)
     with Static;
   --  System is allowed to be active, under manual (RC) control, no 
   --  stabilization (MAV_MODE_FLAG_MANUAL_INPUT_ENABLED) 

   function Test_Disarmed return Mav_Mode is (66)
     with Static;
   --  UNDEFINED mode. This solely depends on the autopilot - use with 
   --  caution, intended for developers only. 
   --  (MAV_MODE_FLAG_MANUAL_INPUT_ENABLED, MAV_MODE_FLAG_TEST_ENABLED). 

   function Stabilize_Disarmed return Mav_Mode is (80)
     with Static;
   --  System is allowed to be active, under assisted RC control 
   --  (MAV_MODE_FLAG_SAFETY_ARMED, MAV_MODE_FLAG_STABILIZE_ENABLED) 

   function Guided_Disarmed return Mav_Mode is (88)
     with Static;
   --  System is allowed to be active, under autonomous control, manual 
   --  setpoint (MAV_MODE_FLAG_SAFETY_ARMED, MAV_MODE_FLAG_STABILIZE_ENABLED, 
   --  MAV_MODE_FLAG_GUIDED_ENABLED) 

   function Auto_Disarmed return Mav_Mode is (92)
     with Static;
   --  System is allowed to be active, under autonomous control and navigation 
   --  (the trajectory is decided onboard and not pre-programmed by 
   --  waypoints). (MAV_MODE_FLAG_SAFETY_ARMED, 
   --  MAV_MODE_FLAG_STABILIZE_ENABLED, MAV_MODE_FLAG_GUIDED_ENABLED, 
   --  MAV_MODE_FLAG_AUTO_ENABLED). 

   function Manual_Armed return Mav_Mode is (192)
     with Static;
   --  System is allowed to be active, under manual (RC) control, no 
   --  stabilization (MAV_MODE_FLAG_SAFETY_ARMED, 
   --  MAV_MODE_FLAG_MANUAL_INPUT_ENABLED) 

   function Test_Armed return Mav_Mode is (194)
     with Static;
   --  UNDEFINED mode. This solely depends on the autopilot - use with 
   --  caution, intended for developers only (MAV_MODE_FLAG_SAFETY_ARMED, 
   --  MAV_MODE_FLAG_MANUAL_INPUT_ENABLED, MAV_MODE_FLAG_TEST_ENABLED) 

   function Stabilize_Armed return Mav_Mode is (208)
     with Static;
   --  System is allowed to be active, under assisted RC control 
   --  (MAV_MODE_FLAG_SAFETY_ARMED, MAV_MODE_FLAG_MANUAL_INPUT_ENABLED, 
   --  MAV_MODE_FLAG_STABILIZE_ENABLED) 

   function Guided_Armed return Mav_Mode is (216)
     with Static;
   --  System is allowed to be active, under autonomous control, manual 
   --  setpoint (MAV_MODE_FLAG_SAFETY_ARMED, 
   --  MAV_MODE_FLAG_MANUAL_INPUT_ENABLED, MAV_MODE_FLAG_STABILIZE_ENABLED, 
   --  MAV_MODE_FLAG_GUIDED_ENABLED) 

   function Auto_Armed return Mav_Mode is (220)
     with Static;
   --  System is allowed to be active, under autonomous control and navigation 
   --  (the trajectory is decided onboard and not pre-programmed by 
   --  waypoints). (MAV_MODE_FLAG_SAFETY_ARMED, 
   --  MAV_MODE_FLAG_MANUAL_INPUT_ENABLED, MAV_MODE_FLAG_STABILIZE_ENABLED, 
   --  MAV_MODE_FLAG_GUIDED_ENABLED,MAV_MODE_FLAG_AUTO_ENABLED). 

   subtype Mav_Mode_Well_Known is Mav_Mode
     with Static_Predicate => Mav_Mode_Well_Known in
       Preflight
       | Manual_Disarmed
       | Test_Disarmed
       | Stabilize_Disarmed
       | Guided_Disarmed
       | Auto_Disarmed
       | Manual_Armed
       | Test_Armed
       | Stabilize_Armed
       | Guided_Armed
       | Auto_Armed;

   function Well_Known_Image
     (Value : Mav_Mode_Well_Known) return String is
       (case Value is
        when Preflight => "Preflight",
        when Manual_Disarmed => "Manual_Disarmed",
        when Test_Disarmed => "Test_Disarmed",
        when Stabilize_Disarmed => "Stabilize_Disarmed",
        when Guided_Disarmed => "Guided_Disarmed",
        when Auto_Disarmed => "Auto_Disarmed",
        when Manual_Armed => "Manual_Armed",
        when Test_Armed => "Test_Armed",
        when Stabilize_Armed => "Stabilize_Armed",
        when Guided_Armed => "Guided_Armed",
        when Auto_Armed => "Auto_Armed");

   function Image (Value : Mav_Mode) return String is
     (if Value in Mav_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Sys_Status_Sensor is record
      Sensor_3D_Gyro                : Boolean := False;
      Sensor_3D_Accel               : Boolean := False;
      Sensor_3D_Mag                 : Boolean := False;
      Sensor_Absolute_Pressure      : Boolean := False;
      Sensor_Differential_Pressure  : Boolean := False;
      Sensor_Gps                    : Boolean := False;
      Sensor_Optical_Flow           : Boolean := False;
      Sensor_Vision_Position        : Boolean := False;
      Sensor_Laser_Position         : Boolean := False;
      Sensor_External_Ground_Truth  : Boolean := False;
      Sensor_Angular_Rate_Control   : Boolean := False;
      Sensor_Attitude_Stabilization : Boolean := False;
      Sensor_Yaw_Position           : Boolean := False;
      Sensor_Z_Altitude_Control     : Boolean := False;
      Sensor_Xy_Position_Control    : Boolean := False;
      Sensor_Motor_Outputs          : Boolean := False;
      Sensor_Rc_Receiver            : Boolean := False;
      Sensor_3D_Gyro2               : Boolean := False;
      Sensor_3D_Accel2              : Boolean := False;
      Sensor_3D_Mag2                : Boolean := False;
      Geofence                      : Boolean := False;
      Ahrs                          : Boolean := False;
      Terrain                       : Boolean := False;
      Reverse_Motor                 : Boolean := False;
      Logging                       : Boolean := False;
      Sensor_Battery                : Boolean := False;
      Sensor_Proximity              : Boolean := False;
      Sensor_Satcom                 : Boolean := False;
      Prearm_Check                  : Boolean := False;
      Obstacle_Avoidance            : Boolean := False;
      Sensor_Propulsion             : Boolean := False;
      Extension_Used                : Boolean := False;
   end record with Size => 32;
   --  These encode the sensors whose status is sent as part of the SYS_STATUS 
   --  message. 

   for Mav_Sys_Status_Sensor use record
      Sensor_3D_Gyro                at 0 range 0 .. 0;
      Sensor_3D_Accel               at 0 range 1 .. 1;
      Sensor_3D_Mag                 at 0 range 2 .. 2;
      Sensor_Absolute_Pressure      at 0 range 3 .. 3;
      Sensor_Differential_Pressure  at 0 range 4 .. 4;
      Sensor_Gps                    at 0 range 5 .. 5;
      Sensor_Optical_Flow           at 0 range 6 .. 6;
      Sensor_Vision_Position        at 0 range 7 .. 7;
      Sensor_Laser_Position         at 0 range 8 .. 8;
      Sensor_External_Ground_Truth  at 0 range 9 .. 9;
      Sensor_Angular_Rate_Control   at 0 range 10 .. 10;
      Sensor_Attitude_Stabilization at 0 range 11 .. 11;
      Sensor_Yaw_Position           at 0 range 12 .. 12;
      Sensor_Z_Altitude_Control     at 0 range 13 .. 13;
      Sensor_Xy_Position_Control    at 0 range 14 .. 14;
      Sensor_Motor_Outputs          at 0 range 15 .. 15;
      Sensor_Rc_Receiver            at 0 range 16 .. 16;
      Sensor_3D_Gyro2               at 0 range 17 .. 17;
      Sensor_3D_Accel2              at 0 range 18 .. 18;
      Sensor_3D_Mag2                at 0 range 19 .. 19;
      Geofence                      at 0 range 20 .. 20;
      Ahrs                          at 0 range 21 .. 21;
      Terrain                       at 0 range 22 .. 22;
      Reverse_Motor                 at 0 range 23 .. 23;
      Logging                       at 0 range 24 .. 24;
      Sensor_Battery                at 0 range 25 .. 25;
      Sensor_Proximity              at 0 range 26 .. 26;
      Sensor_Satcom                 at 0 range 27 .. 27;
      Prearm_Check                  at 0 range 28 .. 28;
      Obstacle_Avoidance            at 0 range 29 .. 29;
      Sensor_Propulsion             at 0 range 30 .. 30;
      Extension_Used                at 0 range 31 .. 31;
   end record;

   function Image (V : Mav_Sys_Status_Sensor) return String is
     ("["
      & (if V.Sensor_3D_Gyro then "SENSOR_3D_GYRO " else "")
      & (if V.Sensor_3D_Accel then "SENSOR_3D_ACCEL " else "")
      & (if V.Sensor_3D_Mag then "SENSOR_3D_MAG " else "")
      & (if V.Sensor_Absolute_Pressure then "SENSOR_ABSOLUTE_PRESSURE " else "")
      & (if V.Sensor_Differential_Pressure then "SENSOR_DIFFERENTIAL_PRESSURE " else "")
      & (if V.Sensor_Gps then "SENSOR_GPS " else "")
      & (if V.Sensor_Optical_Flow then "SENSOR_OPTICAL_FLOW " else "")
      & (if V.Sensor_Vision_Position then "SENSOR_VISION_POSITION " else "")
      & (if V.Sensor_Laser_Position then "SENSOR_LASER_POSITION " else "")
      & (if V.Sensor_External_Ground_Truth then "SENSOR_EXTERNAL_GROUND_TRUTH " else "")
      & (if V.Sensor_Angular_Rate_Control then "SENSOR_ANGULAR_RATE_CONTROL " else "")
      & (if V.Sensor_Attitude_Stabilization then "SENSOR_ATTITUDE_STABILIZATION " else "")
      & (if V.Sensor_Yaw_Position then "SENSOR_YAW_POSITION " else "")
      & (if V.Sensor_Z_Altitude_Control then "SENSOR_Z_ALTITUDE_CONTROL " else "")
      & (if V.Sensor_Xy_Position_Control then "SENSOR_XY_POSITION_CONTROL " else "")
      & (if V.Sensor_Motor_Outputs then "SENSOR_MOTOR_OUTPUTS " else "")
      & (if V.Sensor_Rc_Receiver then "SENSOR_RC_RECEIVER " else "")
      & (if V.Sensor_3D_Gyro2 then "SENSOR_3D_GYRO2 " else "")
      & (if V.Sensor_3D_Accel2 then "SENSOR_3D_ACCEL2 " else "")
      & (if V.Sensor_3D_Mag2 then "SENSOR_3D_MAG2 " else "")
      & (if V.Geofence then "GEOFENCE " else "")
      & (if V.Ahrs then "AHRS " else "")
      & (if V.Terrain then "TERRAIN " else "")
      & (if V.Reverse_Motor then "REVERSE_MOTOR " else "")
      & (if V.Logging then "LOGGING " else "")
      & (if V.Sensor_Battery then "SENSOR_BATTERY " else "")
      & (if V.Sensor_Proximity then "SENSOR_PROXIMITY " else "")
      & (if V.Sensor_Satcom then "SENSOR_SATCOM " else "")
      & (if V.Prearm_Check then "PREARM_CHECK " else "")
      & (if V.Obstacle_Avoidance then "OBSTACLE_AVOIDANCE " else "")
      & (if V.Sensor_Propulsion then "SENSOR_PROPULSION " else "")
      & (if V.Extension_Used then "EXTENSION_USED " else "")
      & "]");

   type Mav_Frame is new Interfaces.Unsigned_8;
   --  Coordinate frames used by MAVLink. Not all frames are supported by all 
   --  commands, messages, or vehicles. Global frames use the following naming 
   --  conventions: - "GLOBAL": Global coordinate frame with WGS84 
   --  latitude/longitude and altitude positive over mean sea level (MSL) by 
   --  default. The following modifiers may be used with "GLOBAL": - 
   --  "RELATIVE_ALT": Altitude is relative to the vehicle home position 
   --  rather than MSL. - "TERRAIN_ALT": Altitude is relative to ground level 
   --  rather than MSL. - "INT": Latitude/longitude (in degrees) are scaled by 
   --  multiplying by 1E7. Local frames use the following naming conventions: 
   --  - "LOCAL": Origin of local frame is fixed relative to earth. Unless 
   --  otherwise specified this origin is the origin of the vehicle 
   --  position-estimator ("EKF"). - "BODY": Origin of local frame travels 
   --  with the vehicle. NOTE, "BODY" does NOT indicate alignment of frame 
   --  axis with vehicle attitude. - "OFFSET": Deprecated synonym for "BODY" 
   --  (origin travels with the vehicle). Not to be used for new frames. Some 
   --  deprecated frames do not follow these conventions (e.g. 
   --  MAV_FRAME_BODY_NED and MAV_FRAME_BODY_OFFSET_NED). 

   function Global return Mav_Frame is (0)
     with Static;
   --  Global (WGS84) coordinate frame + altitude relative to mean sea level 
   --  (MSL). 

   function Local_Ned return Mav_Frame is (1)
     with Static;
   --  NED local tangent frame (x: North, y: East, z: Down) with origin fixed 
   --  relative to earth. 

   function Mission return Mav_Frame is (2)
     with Static;
   --  NOT a coordinate frame, indicates a mission command. 

   function Global_Relative_Alt return Mav_Frame is (3)
     with Static;
   --  Global (WGS84) coordinate frame + altitude relative to the home 
   --  position. 

   function Local_Enu return Mav_Frame is (4)
     with Static;
   --  ENU local tangent frame (x: East, y: North, z: Up) with origin fixed 
   --  relative to earth. 

   function Global_Int return Mav_Frame is (5)
     with Static;
   pragma Obsolescent (Global_Int);
   ------------
   --  DEPRECATED SINCE: 2024-03 REPLACED BY: MAV_FRAME_GLOBAL
   --  Use MAV_FRAME_GLOBAL in COMMAND_INT (and elsewhere) as a synonymous 
   --  replacement. 
   ------------
   --  Global (WGS84) coordinate frame (scaled) + altitude relative to mean 
   --  sea level (MSL). 

   function Global_Relative_Alt_Int return Mav_Frame is (6)
     with Static;
   pragma Obsolescent (Global_Relative_Alt_Int);
   ------------
   --  DEPRECATED SINCE: 2024-03 REPLACED BY: MAV_FRAME_GLOBAL_RELATIVE_ALT
   --  Use MAV_FRAME_GLOBAL_RELATIVE_ALT in COMMAND_INT (and elsewhere) as a 
   --  synonymous replacement. 
   ------------
   --  Global (WGS84) coordinate frame (scaled) + altitude relative to the 
   --  home position. 

   function Local_Offset_Ned return Mav_Frame is (7)
     with Static;
   --  NED local tangent frame (x: North, y: East, z: Down) with origin that 
   --  travels with the vehicle. 

   function Body_Ned return Mav_Frame is (8)
     with Static;
   pragma Obsolescent (Body_Ned);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_FRAME_BODY_FRD
   ------------
   --  Same as MAV_FRAME_LOCAL_NED when used to represent position values. 
   --  Same as MAV_FRAME_BODY_FRD when used with velocity/acceleration values. 

   function Body_Offset_Ned return Mav_Frame is (9)
     with Static;
   pragma Obsolescent (Body_Offset_Ned);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_FRAME_BODY_FRD
   ------------
   --  This is the same as MAV_FRAME_BODY_FRD. 

   function Global_Terrain_Alt return Mav_Frame is (10)
     with Static;
   --  Global (WGS84) coordinate frame with AGL altitude (altitude at ground 
   --  level). 

   function Global_Terrain_Alt_Int return Mav_Frame is (11)
     with Static;
   pragma Obsolescent (Global_Terrain_Alt_Int);
   ------------
   --  DEPRECATED SINCE: 2024-03 REPLACED BY: MAV_FRAME_GLOBAL_TERRAIN_ALT
   --  Use MAV_FRAME_GLOBAL_TERRAIN_ALT in COMMAND_INT (and elsewhere) as a 
   --  synonymous replacement. 
   ------------
   --  Global (WGS84) coordinate frame (scaled) with AGL altitude (altitude at 
   --  ground level). 

   function Body_Frd return Mav_Frame is (12)
     with Static;
   --  FRD local frame aligned to the vehicle's attitude (x: Forward, y: 
   --  Right, z: Down) with an origin that travels with vehicle. 

   function Reserved_13 return Mav_Frame is (13)
     with Static;
   pragma Obsolescent (Reserved_13);
   ------------
   --  DEPRECATED SINCE: 2019-04 REPLACED BY: 
   ------------
   --  MAV_FRAME_BODY_FLU - Body fixed frame of reference, Z-up (x: Forward, 
   --  y: Left, z: Up). 

   function Reserved_14 return Mav_Frame is (14)
     with Static;
   pragma Obsolescent (Reserved_14);
   ------------
   --  DEPRECATED SINCE: 2019-04 REPLACED BY: MAV_FRAME_LOCAL_FRD
   ------------
   --  MAV_FRAME_MOCAP_NED - Odometry local coordinate frame of data given by 
   --  a motion capture system, Z-down (x: North, y: East, z: Down). 

   function Reserved_15 return Mav_Frame is (15)
     with Static;
   pragma Obsolescent (Reserved_15);
   ------------
   --  DEPRECATED SINCE: 2019-04 REPLACED BY: MAV_FRAME_LOCAL_FLU
   ------------
   --  MAV_FRAME_MOCAP_ENU - Odometry local coordinate frame of data given by 
   --  a motion capture system, Z-up (x: East, y: North, z: Up). 

   function Reserved_16 return Mav_Frame is (16)
     with Static;
   pragma Obsolescent (Reserved_16);
   ------------
   --  DEPRECATED SINCE: 2019-04 REPLACED BY: MAV_FRAME_LOCAL_FRD
   ------------
   --  MAV_FRAME_VISION_NED - Odometry local coordinate frame of data given by 
   --  a vision estimation system, Z-down (x: North, y: East, z: Down). 

   function Reserved_17 return Mav_Frame is (17)
     with Static;
   pragma Obsolescent (Reserved_17);
   ------------
   --  DEPRECATED SINCE: 2019-04 REPLACED BY: MAV_FRAME_LOCAL_FLU
   ------------
   --  MAV_FRAME_VISION_ENU - Odometry local coordinate frame of data given by 
   --  a vision estimation system, Z-up (x: East, y: North, z: Up). 

   function Reserved_18 return Mav_Frame is (18)
     with Static;
   pragma Obsolescent (Reserved_18);
   ------------
   --  DEPRECATED SINCE: 2019-04 REPLACED BY: MAV_FRAME_LOCAL_FRD
   ------------
   --  MAV_FRAME_ESTIM_NED - Odometry local coordinate frame of data given by 
   --  an estimator running onboard the vehicle, Z-down (x: North, y: East, z: 
   --  Down). 

   function Reserved_19 return Mav_Frame is (19)
     with Static;
   pragma Obsolescent (Reserved_19);
   ------------
   --  DEPRECATED SINCE: 2019-04 REPLACED BY: MAV_FRAME_LOCAL_FLU
   ------------
   --  MAV_FRAME_ESTIM_ENU - Odometry local coordinate frame of data given by 
   --  an estimator running onboard the vehicle, Z-up (x: East, y: North, z: 
   --  Up). 

   function Local_Frd return Mav_Frame is (20)
     with Static;
   --  FRD local tangent frame (x: Forward, y: Right, z: Down) with origin 
   --  fixed relative to earth. The forward axis is aligned to the front of 
   --  the vehicle in the horizontal plane. 

   function Local_Flu return Mav_Frame is (21)
     with Static;
   --  FLU local tangent frame (x: Forward, y: Left, z: Up) with origin fixed 
   --  relative to earth. The forward axis is aligned to the front of the 
   --  vehicle in the horizontal plane. 

   subtype Mav_Frame_Well_Known is Mav_Frame
     with Static_Predicate => Mav_Frame_Well_Known in
       Global .. Local_Flu;

   function Well_Known_Image
     (Value : Mav_Frame_Well_Known) return String is
       (case Value is
        when Global => "Global",
        when Local_Ned => "Local_Ned",
        when Mission => "Mission",
        when Global_Relative_Alt => "Global_Relative_Alt",
        when Local_Enu => "Local_Enu",
        when Global_Int => "Global_Int",
        when Global_Relative_Alt_Int => "Global_Relative_Alt_Int",
        when Local_Offset_Ned => "Local_Offset_Ned",
        when Body_Ned => "Body_Ned",
        when Body_Offset_Ned => "Body_Offset_Ned",
        when Global_Terrain_Alt => "Global_Terrain_Alt",
        when Global_Terrain_Alt_Int => "Global_Terrain_Alt_Int",
        when Body_Frd => "Body_Frd",
        when Reserved_13 => "Reserved_13",
        when Reserved_14 => "Reserved_14",
        when Reserved_15 => "Reserved_15",
        when Reserved_16 => "Reserved_16",
        when Reserved_17 => "Reserved_17",
        when Reserved_18 => "Reserved_18",
        when Reserved_19 => "Reserved_19",
        when Local_Frd => "Local_Frd",
        when Local_Flu => "Local_Flu");

   function Image (Value : Mav_Frame) return String is
     (if Value in Mav_Frame_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mavlink_Data_Stream_Type is new Interfaces.Unsigned_8;

   function Jpeg return Mavlink_Data_Stream_Type is (0)
     with Static;

   function Bmp return Mavlink_Data_Stream_Type is (1)
     with Static;

   function Raw8U return Mavlink_Data_Stream_Type is (2)
     with Static;

   function Raw32U return Mavlink_Data_Stream_Type is (3)
     with Static;

   function Pgm return Mavlink_Data_Stream_Type is (4)
     with Static;

   function Png return Mavlink_Data_Stream_Type is (5)
     with Static;

   subtype Mavlink_Data_Stream_Type_Well_Known is Mavlink_Data_Stream_Type
     with Static_Predicate => Mavlink_Data_Stream_Type_Well_Known in
       Jpeg .. Png;

   function Well_Known_Image
     (Value : Mavlink_Data_Stream_Type_Well_Known) return String is
       (case Value is
        when Jpeg => "Jpeg",
        when Bmp => "Bmp",
        when Raw8U => "Raw8U",
        when Raw32U => "Raw32U",
        when Pgm => "Pgm",
        when Png => "Png");

   function Image (Value : Mavlink_Data_Stream_Type) return String is
     (if Value in Mavlink_Data_Stream_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Fence_Breach is new Interfaces.Unsigned_8;

   function None return Fence_Breach is (0)
     with Static;
   --  No last fence breach 

   function Minalt return Fence_Breach is (1)
     with Static;
   --  Breached minimum altitude 

   function Maxalt return Fence_Breach is (2)
     with Static;
   --  Breached maximum altitude 

   function Boundary return Fence_Breach is (3)
     with Static;
   --  Breached fence boundary 

   subtype Fence_Breach_Well_Known is Fence_Breach
     with Static_Predicate => Fence_Breach_Well_Known in
       None .. Boundary;

   function Well_Known_Image
     (Value : Fence_Breach_Well_Known) return String is
       (case Value is
        when None => "None",
        when Minalt => "Minalt",
        when Maxalt => "Maxalt",
        when Boundary => "Boundary");

   function Image (Value : Fence_Breach) return String is
     (if Value in Fence_Breach_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Mount_Mode is new Interfaces.Unsigned_8;
   pragma Obsolescent (Mav_Mount_Mode);
   ------------
   --  DEPRECATED SINCE: 2020-01 REPLACED BY: GIMBAL_MANAGER_FLAGS
   ------------
   --  Enumeration of possible mount operation modes. This message is used by 
   --  obsolete/deprecated gimbal messages. 

   function Retract return Mav_Mount_Mode is (0)
     with Static;
   --  Load and keep safe position (Roll,Pitch,Yaw) from permanent memory and 
   --  stop stabilization 

   function Neutral return Mav_Mount_Mode is (1)
     with Static;
   --  Load and keep neutral position (Roll,Pitch,Yaw) from permanent memory. 

   function Mavlink_Targeting return Mav_Mount_Mode is (2)
     with Static;
   --  Load neutral position and start MAVLink Roll,Pitch,Yaw control with 
   --  stabilization 

   function Rc_Targeting return Mav_Mount_Mode is (3)
     with Static;
   --  Load neutral position and start RC Roll,Pitch,Yaw control with 
   --  stabilization 

   function Gps_Point return Mav_Mount_Mode is (4)
     with Static;
   --  Load neutral position and start to point to Lat,Lon,Alt 

   function Sysid_Target return Mav_Mount_Mode is (5)
     with Static;
   --  Gimbal tracks system with specified system ID 

   function Home_Location return Mav_Mount_Mode is (6)
     with Static;
   --  Gimbal tracks home position 

   subtype Mav_Mount_Mode_Well_Known is Mav_Mount_Mode
     with Static_Predicate => Mav_Mount_Mode_Well_Known in
       Retract .. Home_Location;

   function Well_Known_Image
     (Value : Mav_Mount_Mode_Well_Known) return String is
       (case Value is
        when Retract => "Retract",
        when Neutral => "Neutral",
        when Mavlink_Targeting => "Mavlink_Targeting",
        when Rc_Targeting => "Rc_Targeting",
        when Gps_Point => "Gps_Point",
        when Sysid_Target => "Sysid_Target",
        when Home_Location => "Home_Location");

   function Image (Value : Mav_Mount_Mode) return String is
     (if Value in Mav_Mount_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Param_Type is new Interfaces.Unsigned_8;
   --  Specifies the datatype of a MAVLink parameter. 

   function Uint8 return Mav_Param_Type is (1)
     with Static;
   --  8-bit unsigned integer 

   function Int8 return Mav_Param_Type is (2)
     with Static;
   --  8-bit signed integer 

   function Uint16 return Mav_Param_Type is (3)
     with Static;
   --  16-bit unsigned integer 

   function Int16 return Mav_Param_Type is (4)
     with Static;
   --  16-bit signed integer 

   function Uint32 return Mav_Param_Type is (5)
     with Static;
   --  32-bit unsigned integer 

   function Int32 return Mav_Param_Type is (6)
     with Static;
   --  32-bit signed integer 

   function Uint64 return Mav_Param_Type is (7)
     with Static;
   --  64-bit unsigned integer 

   function Int64 return Mav_Param_Type is (8)
     with Static;
   --  64-bit signed integer 

   function Real32 return Mav_Param_Type is (9)
     with Static;
   --  32-bit floating-point 

   function Real64 return Mav_Param_Type is (10)
     with Static;
   --  64-bit floating-point 

   subtype Mav_Param_Type_Well_Known is Mav_Param_Type
     with Static_Predicate => Mav_Param_Type_Well_Known in
       Uint8 .. Real64;

   function Well_Known_Image
     (Value : Mav_Param_Type_Well_Known) return String is
       (case Value is
        when Uint8 => "Uint8",
        when Int8 => "Int8",
        when Uint16 => "Uint16",
        when Int16 => "Int16",
        when Uint32 => "Uint32",
        when Int32 => "Int32",
        when Uint64 => "Uint64",
        when Int64 => "Int64",
        when Real32 => "Real32",
        when Real64 => "Real64");

   function Image (Value : Mav_Param_Type) return String is
     (if Value in Mav_Param_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Result is new Interfaces.Unsigned_8;
   --  Result from a MAVLink command (MAV_CMD) 

   function Accepted return Mav_Result is (0)
     with Static;
   --  Command is valid (is supported and has valid parameters), and was 
   --  executed. 

   function Temporarily_Rejected return Mav_Result is (1)
     with Static;
   --  Command is valid, but cannot be executed at this time. This is used to 
   --  indicate a problem that should be fixed just by waiting (e.g. a state 
   --  machine is busy, can't arm because have not got GPS lock, etc.). 
   --  Retrying later should work. 

   function Denied return Mav_Result is (2)
     with Static;
   --  Command is invalid (is supported but has invalid parameters). Retrying 
   --  same command and parameters will not work. 

   function Unsupported return Mav_Result is (3)
     with Static;
   --  Command is not supported (unknown). 

   function Failed return Mav_Result is (4)
     with Static;
   --  Command is valid, but execution has failed. This is used to indicate 
   --  any non-temporary or unexpected problem, i.e. any problem that must be 
   --  fixed before the command can succeed/be retried. For example, 
   --  attempting to write a file when out of memory, attempting to arm when 
   --  sensors are not calibrated, etc. 

   function In_Progress return Mav_Result is (5)
     with Static;
   --  Command is valid and is being executed. This will be followed by 
   --  further progress updates, i.e. the component may send further 
   --  COMMAND_ACK messages with result MAV_RESULT_IN_PROGRESS (at a rate 
   --  decided by the implementation), and must terminate by sending a 
   --  COMMAND_ACK message with final result of the operation. The 
   --  COMMAND_ACK.progress field can be used to indicate the progress of the 
   --  operation. 

   function Cancelled return Mav_Result is (6)
     with Static;
   --  Command has been cancelled (as a result of receiving a COMMAND_CANCEL 
   --  message). 

   function Command_Long_Only return Mav_Result is (7)
     with Static;
   --  Command is only accepted when sent as a COMMAND_LONG. 

   function Command_Int_Only return Mav_Result is (8)
     with Static;
   --  Command is only accepted when sent as a COMMAND_INT. 

   function Command_Unsupported_Mav_Frame return Mav_Result is (9)
     with Static;
   --  Command is invalid because a frame is required and the specified frame 
   --  is not supported. 

   subtype Mav_Result_Well_Known is Mav_Result
     with Static_Predicate => Mav_Result_Well_Known in
       Accepted .. Command_Unsupported_Mav_Frame;

   function Well_Known_Image
     (Value : Mav_Result_Well_Known) return String is
       (case Value is
        when Accepted => "Accepted",
        when Temporarily_Rejected => "Temporarily_Rejected",
        when Denied => "Denied",
        when Unsupported => "Unsupported",
        when Failed => "Failed",
        when In_Progress => "In_Progress",
        when Cancelled => "Cancelled",
        when Command_Long_Only => "Command_Long_Only",
        when Command_Int_Only => "Command_Int_Only",
        when Command_Unsupported_Mav_Frame => "Command_Unsupported_Mav_Frame");

   function Image (Value : Mav_Result) return String is
     (if Value in Mav_Result_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Mission_Result is new Interfaces.Unsigned_8;
   --  Result of mission operation (in a MISSION_ACK message). 

   function Accepted return Mav_Mission_Result is (0)
     with Static;
   --  mission accepted OK 

   function Error return Mav_Mission_Result is (1)
     with Static;
   --  Generic error / not accepting mission commands at all right now. 

   function Unsupported_Frame return Mav_Mission_Result is (2)
     with Static;
   --  Coordinate frame is not supported. 

   function Unsupported return Mav_Mission_Result is (3)
     with Static;
   --  Command is not supported. 

   function No_Space return Mav_Mission_Result is (4)
     with Static;
   --  Mission items exceed storage space. 

   function Invalid return Mav_Mission_Result is (5)
     with Static;
   --  One of the parameters has an invalid value. 

   function Invalid_Param1 return Mav_Mission_Result is (6)
     with Static;
   --  param1 has an invalid value. 

   function Invalid_Param2 return Mav_Mission_Result is (7)
     with Static;
   --  param2 has an invalid value. 

   function Invalid_Param3 return Mav_Mission_Result is (8)
     with Static;
   --  param3 has an invalid value. 

   function Invalid_Param4 return Mav_Mission_Result is (9)
     with Static;
   --  param4 has an invalid value. 

   function Invalid_Param5_X return Mav_Mission_Result is (10)
     with Static;
   --  x / param5 has an invalid value. 

   function Invalid_Param6_Y return Mav_Mission_Result is (11)
     with Static;
   --  y / param6 has an invalid value. 

   function Invalid_Param7 return Mav_Mission_Result is (12)
     with Static;
   --  z / param7 has an invalid value. 

   function Invalid_Sequence return Mav_Mission_Result is (13)
     with Static;
   --  Mission item received out of sequence 

   function Denied return Mav_Mission_Result is (14)
     with Static;
   --  Not accepting any mission commands from this communication partner. 

   function Operation_Cancelled return Mav_Mission_Result is (15)
     with Static;
   --  Current mission operation cancelled (e.g. mission upload, mission 
   --  download). 

   subtype Mav_Mission_Result_Well_Known is Mav_Mission_Result
     with Static_Predicate => Mav_Mission_Result_Well_Known in
       Accepted .. Operation_Cancelled;

   function Well_Known_Image
     (Value : Mav_Mission_Result_Well_Known) return String is
       (case Value is
        when Accepted => "Accepted",
        when Error => "Error",
        when Unsupported_Frame => "Unsupported_Frame",
        when Unsupported => "Unsupported",
        when No_Space => "No_Space",
        when Invalid => "Invalid",
        when Invalid_Param1 => "Invalid_Param1",
        when Invalid_Param2 => "Invalid_Param2",
        when Invalid_Param3 => "Invalid_Param3",
        when Invalid_Param4 => "Invalid_Param4",
        when Invalid_Param5_X => "Invalid_Param5_X",
        when Invalid_Param6_Y => "Invalid_Param6_Y",
        when Invalid_Param7 => "Invalid_Param7",
        when Invalid_Sequence => "Invalid_Sequence",
        when Denied => "Denied",
        when Operation_Cancelled => "Operation_Cancelled");

   function Image (Value : Mav_Mission_Result) return String is
     (if Value in Mav_Mission_Result_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Severity is new Interfaces.Unsigned_8;
   --  Indicates the severity level, generally used for status messages to 
   --  indicate their relative urgency. Based on RFC-5424 using expanded 
   --  definitions at: 
   --  http://www.kiwisyslog.com/kb/info:-syslog-message-levels/. 

   function Emergency return Mav_Severity is (0)
     with Static;
   --  System is unusable. This is a "panic" condition. 

   function Alert return Mav_Severity is (1)
     with Static;
   --  Action should be taken immediately. Indicates error in non-critical 
   --  systems. 

   function Critical return Mav_Severity is (2)
     with Static;
   --  Action must be taken immediately. Indicates failure in a primary 
   --  system. 

   function Error return Mav_Severity is (3)
     with Static;
   --  Indicates an error in secondary/redundant systems. 

   function Warning return Mav_Severity is (4)
     with Static;
   --  Indicates about a possible future error if this is not resolved within 
   --  a given timeframe. Example would be a low battery warning. 

   function Notice return Mav_Severity is (5)
     with Static;
   --  An unusual event has occurred, though not an error condition. This 
   --  should be investigated for the root cause. 

   function Info return Mav_Severity is (6)
     with Static;
   --  Normal operational messages. Useful for logging. No action is required 
   --  for these messages. 

   function Debug return Mav_Severity is (7)
     with Static;
   --  Useful non-operational messages that can assist in debugging. These 
   --  should not occur during normal operation. 

   subtype Mav_Severity_Well_Known is Mav_Severity
     with Static_Predicate => Mav_Severity_Well_Known in
       Emergency .. Debug;

   function Well_Known_Image
     (Value : Mav_Severity_Well_Known) return String is
       (case Value is
        when Emergency => "Emergency",
        when Alert => "Alert",
        when Critical => "Critical",
        when Error => "Error",
        when Warning => "Warning",
        when Notice => "Notice",
        when Info => "Info",
        when Debug => "Debug");

   function Image (Value : Mav_Severity) return String is
     (if Value in Mav_Severity_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Power_Status is record
      Brick_Valid                : Boolean := False;
      Servo_Valid                : Boolean := False;
      Usb_Connected              : Boolean := False;
      Periph_Overcurrent         : Boolean := False;
      Periph_Hipower_Overcurrent : Boolean := False;
      Changed                    : Boolean := False;
      Reserved_6                 : Boolean := False;
      Reserved_7                 : Boolean := False;
      Reserved_8                 : Boolean := False;
      Reserved_9                 : Boolean := False;
      Reserved_10                : Boolean := False;
      Reserved_11                : Boolean := False;
      Reserved_12                : Boolean := False;
      Reserved_13                : Boolean := False;
      Reserved_14                : Boolean := False;
      Reserved_15                : Boolean := False;
   end record with Size => 16;
   --  Power supply status flags (bitmask) 

   for Mav_Power_Status use record
      Brick_Valid                at 0 range 0 .. 0;
      Servo_Valid                at 0 range 1 .. 1;
      Usb_Connected              at 0 range 2 .. 2;
      Periph_Overcurrent         at 0 range 3 .. 3;
      Periph_Hipower_Overcurrent at 0 range 4 .. 4;
      Changed                    at 0 range 5 .. 5;
      Reserved_6                 at 0 range 6 .. 6;
      Reserved_7                 at 0 range 7 .. 7;
      Reserved_8                 at 0 range 8 .. 8;
      Reserved_9                 at 0 range 9 .. 9;
      Reserved_10                at 0 range 10 .. 10;
      Reserved_11                at 0 range 11 .. 11;
      Reserved_12                at 0 range 12 .. 12;
      Reserved_13                at 0 range 13 .. 13;
      Reserved_14                at 0 range 14 .. 14;
      Reserved_15                at 0 range 15 .. 15;
   end record;

   function Image (V : Mav_Power_Status) return String is
     ("["
      & (if V.Brick_Valid then "BRICK_VALID " else "")
      & (if V.Servo_Valid then "SERVO_VALID " else "")
      & (if V.Usb_Connected then "USB_CONNECTED " else "")
      & (if V.Periph_Overcurrent then "PERIPH_OVERCURRENT " else "")
      & (if V.Periph_Hipower_Overcurrent then "PERIPH_HIPOWER_OVERCURRENT " else "")
      & (if V.Changed then "CHANGED " else "")
      & "]");

   type Serial_Control_Dev is new Interfaces.Unsigned_8;
   --  SERIAL_CONTROL device types 

   function Dev_Telem1 return Serial_Control_Dev is (0)
     with Static;
   --  First telemetry port 

   function Dev_Telem2 return Serial_Control_Dev is (1)
     with Static;
   --  Second telemetry port 

   function Dev_Gps1 return Serial_Control_Dev is (2)
     with Static;
   --  First GPS port 

   function Dev_Gps2 return Serial_Control_Dev is (3)
     with Static;
   --  Second GPS port 

   function Dev_Shell return Serial_Control_Dev is (10)
     with Static;
   --  system shell 

   function Serial0 return Serial_Control_Dev is (100)
     with Static;
   --  SERIAL0 

   function Serial1 return Serial_Control_Dev is (101)
     with Static;
   --  SERIAL1 

   function Serial2 return Serial_Control_Dev is (102)
     with Static;
   --  SERIAL2 

   function Serial3 return Serial_Control_Dev is (103)
     with Static;
   --  SERIAL3 

   function Serial4 return Serial_Control_Dev is (104)
     with Static;
   --  SERIAL4 

   function Serial5 return Serial_Control_Dev is (105)
     with Static;
   --  SERIAL5 

   function Serial6 return Serial_Control_Dev is (106)
     with Static;
   --  SERIAL6 

   function Serial7 return Serial_Control_Dev is (107)
     with Static;
   --  SERIAL7 

   function Serial8 return Serial_Control_Dev is (108)
     with Static;
   --  SERIAL8 

   function Serial9 return Serial_Control_Dev is (109)
     with Static;
   --  SERIAL9 

   subtype Serial_Control_Dev_Well_Known is Serial_Control_Dev
     with Static_Predicate => Serial_Control_Dev_Well_Known in
       Dev_Telem1 .. Dev_Gps2
       | Dev_Shell
       | Serial0 .. Serial9;

   function Well_Known_Image
     (Value : Serial_Control_Dev_Well_Known) return String is
       (case Value is
        when Dev_Telem1 => "Dev_Telem1",
        when Dev_Telem2 => "Dev_Telem2",
        when Dev_Gps1 => "Dev_Gps1",
        when Dev_Gps2 => "Dev_Gps2",
        when Dev_Shell => "Dev_Shell",
        when Serial0 => "Serial0",
        when Serial1 => "Serial1",
        when Serial2 => "Serial2",
        when Serial3 => "Serial3",
        when Serial4 => "Serial4",
        when Serial5 => "Serial5",
        when Serial6 => "Serial6",
        when Serial7 => "Serial7",
        when Serial8 => "Serial8",
        when Serial9 => "Serial9");

   function Image (Value : Serial_Control_Dev) return String is
     (if Value in Serial_Control_Dev_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Serial_Control_Flag is record
      Reply      : Boolean := False;
      Respond    : Boolean := False;
      Exclusive  : Boolean := False;
      Blocking   : Boolean := False;
      Multi      : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;
   --  SERIAL_CONTROL flags (bitmask) 

   for Serial_Control_Flag use record
      Reply      at 0 range 0 .. 0;
      Respond    at 0 range 1 .. 1;
      Exclusive  at 0 range 2 .. 2;
      Blocking   at 0 range 3 .. 3;
      Multi      at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Serial_Control_Flag) return String is
     ("["
      & (if V.Reply then "REPLY " else "")
      & (if V.Respond then "RESPOND " else "")
      & (if V.Exclusive then "EXCLUSIVE " else "")
      & (if V.Blocking then "BLOCKING " else "")
      & (if V.Multi then "MULTI " else "")
      & "]");

   type Mav_Distance_Sensor is new Interfaces.Unsigned_8;
   --  Enumeration of distance sensor types 

   function Laser return Mav_Distance_Sensor is (0)
     with Static;
   --  Laser rangefinder, e.g. LightWare SF02/F or PulsedLight units 

   function Ultrasound return Mav_Distance_Sensor is (1)
     with Static;
   --  Ultrasound rangefinder, e.g. MaxBotix units 

   function Infrared return Mav_Distance_Sensor is (2)
     with Static;
   --  Infrared rangefinder, e.g. Sharp units 

   function Radar return Mav_Distance_Sensor is (3)
     with Static;
   --  Radar type, e.g. uLanding units 

   function Unknown return Mav_Distance_Sensor is (4)
     with Static;
   --  Broken or unknown type, e.g. analog units 

   subtype Mav_Distance_Sensor_Well_Known is Mav_Distance_Sensor
     with Static_Predicate => Mav_Distance_Sensor_Well_Known in
       Laser .. Unknown;

   function Well_Known_Image
     (Value : Mav_Distance_Sensor_Well_Known) return String is
       (case Value is
        when Laser => "Laser",
        when Ultrasound => "Ultrasound",
        when Infrared => "Infrared",
        when Radar => "Radar",
        when Unknown => "Unknown");

   function Image (Value : Mav_Distance_Sensor) return String is
     (if Value in Mav_Distance_Sensor_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Sensor_Orientation is new Interfaces.Unsigned_8;
   --  Enumeration of sensor orientation, according to its rotations 

   function None return Mav_Sensor_Orientation is (0)
     with Static;
   --  Roll: 0, Pitch: 0, Yaw: 0 

   function Yaw_45 return Mav_Sensor_Orientation is (1)
     with Static;
   --  Roll: 0, Pitch: 0, Yaw: 45 

   function Yaw_90 return Mav_Sensor_Orientation is (2)
     with Static;
   --  Roll: 0, Pitch: 0, Yaw: 90 

   function Yaw_135 return Mav_Sensor_Orientation is (3)
     with Static;
   --  Roll: 0, Pitch: 0, Yaw: 135 

   function Yaw_180 return Mav_Sensor_Orientation is (4)
     with Static;
   --  Roll: 0, Pitch: 0, Yaw: 180 

   function Yaw_225 return Mav_Sensor_Orientation is (5)
     with Static;
   --  Roll: 0, Pitch: 0, Yaw: 225 

   function Yaw_270 return Mav_Sensor_Orientation is (6)
     with Static;
   --  Roll: 0, Pitch: 0, Yaw: 270 

   function Yaw_315 return Mav_Sensor_Orientation is (7)
     with Static;
   --  Roll: 0, Pitch: 0, Yaw: 315 

   function Roll_180 return Mav_Sensor_Orientation is (8)
     with Static;
   --  Roll: 180, Pitch: 0, Yaw: 0 

   function Roll_180_Yaw_45 return Mav_Sensor_Orientation is (9)
     with Static;
   --  Roll: 180, Pitch: 0, Yaw: 45 

   function Roll_180_Yaw_90 return Mav_Sensor_Orientation is (10)
     with Static;
   --  Roll: 180, Pitch: 0, Yaw: 90 

   function Roll_180_Yaw_135 return Mav_Sensor_Orientation is (11)
     with Static;
   --  Roll: 180, Pitch: 0, Yaw: 135 

   function Pitch_180 return Mav_Sensor_Orientation is (12)
     with Static;
   --  Roll: 0, Pitch: 180, Yaw: 0 

   function Roll_180_Yaw_225 return Mav_Sensor_Orientation is (13)
     with Static;
   --  Roll: 180, Pitch: 0, Yaw: 225 

   function Roll_180_Yaw_270 return Mav_Sensor_Orientation is (14)
     with Static;
   --  Roll: 180, Pitch: 0, Yaw: 270 

   function Roll_180_Yaw_315 return Mav_Sensor_Orientation is (15)
     with Static;
   --  Roll: 180, Pitch: 0, Yaw: 315 

   function Roll_90 return Mav_Sensor_Orientation is (16)
     with Static;
   --  Roll: 90, Pitch: 0, Yaw: 0 

   function Roll_90_Yaw_45 return Mav_Sensor_Orientation is (17)
     with Static;
   --  Roll: 90, Pitch: 0, Yaw: 45 

   function Roll_90_Yaw_90 return Mav_Sensor_Orientation is (18)
     with Static;
   --  Roll: 90, Pitch: 0, Yaw: 90 

   function Roll_90_Yaw_135 return Mav_Sensor_Orientation is (19)
     with Static;
   --  Roll: 90, Pitch: 0, Yaw: 135 

   function Roll_270 return Mav_Sensor_Orientation is (20)
     with Static;
   --  Roll: 270, Pitch: 0, Yaw: 0 

   function Roll_270_Yaw_45 return Mav_Sensor_Orientation is (21)
     with Static;
   --  Roll: 270, Pitch: 0, Yaw: 45 

   function Roll_270_Yaw_90 return Mav_Sensor_Orientation is (22)
     with Static;
   --  Roll: 270, Pitch: 0, Yaw: 90 

   function Roll_270_Yaw_135 return Mav_Sensor_Orientation is (23)
     with Static;
   --  Roll: 270, Pitch: 0, Yaw: 135 

   function Pitch_90 return Mav_Sensor_Orientation is (24)
     with Static;
   --  Roll: 0, Pitch: 90, Yaw: 0 

   function Pitch_270 return Mav_Sensor_Orientation is (25)
     with Static;
   --  Roll: 0, Pitch: 270, Yaw: 0 

   function Pitch_180_Yaw_90 return Mav_Sensor_Orientation is (26)
     with Static;
   --  Roll: 0, Pitch: 180, Yaw: 90 

   function Pitch_180_Yaw_270 return Mav_Sensor_Orientation is (27)
     with Static;
   --  Roll: 0, Pitch: 180, Yaw: 270 

   function Roll_90_Pitch_90 return Mav_Sensor_Orientation is (28)
     with Static;
   --  Roll: 90, Pitch: 90, Yaw: 0 

   function Roll_180_Pitch_90 return Mav_Sensor_Orientation is (29)
     with Static;
   --  Roll: 180, Pitch: 90, Yaw: 0 

   function Roll_270_Pitch_90 return Mav_Sensor_Orientation is (30)
     with Static;
   --  Roll: 270, Pitch: 90, Yaw: 0 

   function Roll_90_Pitch_180 return Mav_Sensor_Orientation is (31)
     with Static;
   --  Roll: 90, Pitch: 180, Yaw: 0 

   function Roll_270_Pitch_180 return Mav_Sensor_Orientation is (32)
     with Static;
   --  Roll: 270, Pitch: 180, Yaw: 0 

   function Roll_90_Pitch_270 return Mav_Sensor_Orientation is (33)
     with Static;
   --  Roll: 90, Pitch: 270, Yaw: 0 

   function Roll_180_Pitch_270 return Mav_Sensor_Orientation is (34)
     with Static;
   --  Roll: 180, Pitch: 270, Yaw: 0 

   function Roll_270_Pitch_270 return Mav_Sensor_Orientation is (35)
     with Static;
   --  Roll: 270, Pitch: 270, Yaw: 0 

   function Roll_90_Pitch_180_Yaw_90 return Mav_Sensor_Orientation is (36)
     with Static;
   --  Roll: 90, Pitch: 180, Yaw: 90 

   function Roll_90_Yaw_270 return Mav_Sensor_Orientation is (37)
     with Static;
   --  Roll: 90, Pitch: 0, Yaw: 270 

   function Roll_90_Pitch_68_Yaw_293 return Mav_Sensor_Orientation is (38)
     with Static;
   --  Roll: 90, Pitch: 68, Yaw: 293 

   function Pitch_315 return Mav_Sensor_Orientation is (39)
     with Static;
   --  Pitch: 315 

   function Roll_90_Pitch_315 return Mav_Sensor_Orientation is (40)
     with Static;
   --  Roll: 90, Pitch: 315 

   function Custom return Mav_Sensor_Orientation is (100)
     with Static;
   --  Custom orientation 

   subtype Mav_Sensor_Orientation_Well_Known is Mav_Sensor_Orientation
     with Static_Predicate => Mav_Sensor_Orientation_Well_Known in
       None .. Roll_90_Pitch_315
       | Custom;

   function Well_Known_Image
     (Value : Mav_Sensor_Orientation_Well_Known) return String is
       (case Value is
        when None => "None",
        when Yaw_45 => "Yaw_45",
        when Yaw_90 => "Yaw_90",
        when Yaw_135 => "Yaw_135",
        when Yaw_180 => "Yaw_180",
        when Yaw_225 => "Yaw_225",
        when Yaw_270 => "Yaw_270",
        when Yaw_315 => "Yaw_315",
        when Roll_180 => "Roll_180",
        when Roll_180_Yaw_45 => "Roll_180_Yaw_45",
        when Roll_180_Yaw_90 => "Roll_180_Yaw_90",
        when Roll_180_Yaw_135 => "Roll_180_Yaw_135",
        when Pitch_180 => "Pitch_180",
        when Roll_180_Yaw_225 => "Roll_180_Yaw_225",
        when Roll_180_Yaw_270 => "Roll_180_Yaw_270",
        when Roll_180_Yaw_315 => "Roll_180_Yaw_315",
        when Roll_90 => "Roll_90",
        when Roll_90_Yaw_45 => "Roll_90_Yaw_45",
        when Roll_90_Yaw_90 => "Roll_90_Yaw_90",
        when Roll_90_Yaw_135 => "Roll_90_Yaw_135",
        when Roll_270 => "Roll_270",
        when Roll_270_Yaw_45 => "Roll_270_Yaw_45",
        when Roll_270_Yaw_90 => "Roll_270_Yaw_90",
        when Roll_270_Yaw_135 => "Roll_270_Yaw_135",
        when Pitch_90 => "Pitch_90",
        when Pitch_270 => "Pitch_270",
        when Pitch_180_Yaw_90 => "Pitch_180_Yaw_90",
        when Pitch_180_Yaw_270 => "Pitch_180_Yaw_270",
        when Roll_90_Pitch_90 => "Roll_90_Pitch_90",
        when Roll_180_Pitch_90 => "Roll_180_Pitch_90",
        when Roll_270_Pitch_90 => "Roll_270_Pitch_90",
        when Roll_90_Pitch_180 => "Roll_90_Pitch_180",
        when Roll_270_Pitch_180 => "Roll_270_Pitch_180",
        when Roll_90_Pitch_270 => "Roll_90_Pitch_270",
        when Roll_180_Pitch_270 => "Roll_180_Pitch_270",
        when Roll_270_Pitch_270 => "Roll_270_Pitch_270",
        when Roll_90_Pitch_180_Yaw_90 => "Roll_90_Pitch_180_Yaw_90",
        when Roll_90_Yaw_270 => "Roll_90_Yaw_270",
        when Roll_90_Pitch_68_Yaw_293 => "Roll_90_Pitch_68_Yaw_293",
        when Pitch_315 => "Pitch_315",
        when Roll_90_Pitch_315 => "Roll_90_Pitch_315",
        when Custom => "Custom");

   function Image (Value : Mav_Sensor_Orientation) return String is
     (if Value in Mav_Sensor_Orientation_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Estimator_Type is new Interfaces.Unsigned_8;
   --  Enumeration of estimator types 

   function Unknown return Mav_Estimator_Type is (0)
     with Static;
   --  Unknown type of the estimator. 

   function Naive return Mav_Estimator_Type is (1)
     with Static;
   --  This is a naive estimator without any real covariance feedback. 

   function Vision return Mav_Estimator_Type is (2)
     with Static;
   --  Computer vision based estimate. Might be up to scale. 

   function Vio return Mav_Estimator_Type is (3)
     with Static;
   --  Visual-inertial estimate. 

   function Gps return Mav_Estimator_Type is (4)
     with Static;
   --  Plain GPS estimate. 

   function Gps_Ins return Mav_Estimator_Type is (5)
     with Static;
   --  Estimator integrating GPS and inertial sensing. 

   function Mocap return Mav_Estimator_Type is (6)
     with Static;
   --  Estimate from external motion capturing system. 

   function Lidar return Mav_Estimator_Type is (7)
     with Static;
   --  Estimator based on lidar sensor input. 

   function Autopilot return Mav_Estimator_Type is (8)
     with Static;
   --  Estimator on autopilot. 

   subtype Mav_Estimator_Type_Well_Known is Mav_Estimator_Type
     with Static_Predicate => Mav_Estimator_Type_Well_Known in
       Unknown .. Autopilot;

   function Well_Known_Image
     (Value : Mav_Estimator_Type_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Naive => "Naive",
        when Vision => "Vision",
        when Vio => "Vio",
        when Gps => "Gps",
        when Gps_Ins => "Gps_Ins",
        when Mocap => "Mocap",
        when Lidar => "Lidar",
        when Autopilot => "Autopilot");

   function Image (Value : Mav_Estimator_Type) return String is
     (if Value in Mav_Estimator_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Battery_Type is new Interfaces.Unsigned_8;
   --  Enumeration of battery types 

   function Unknown return Mav_Battery_Type is (0)
     with Static;
   --  Not specified. 

   function Lipo return Mav_Battery_Type is (1)
     with Static;
   --  Lithium polymer battery 

   function Life return Mav_Battery_Type is (2)
     with Static;
   --  Lithium-iron-phosphate battery 

   function Lion return Mav_Battery_Type is (3)
     with Static;
   --  Lithium-ION battery 

   function Nimh return Mav_Battery_Type is (4)
     with Static;
   --  Nickel metal hydride battery 

   subtype Mav_Battery_Type_Well_Known is Mav_Battery_Type
     with Static_Predicate => Mav_Battery_Type_Well_Known in
       Unknown .. Nimh;

   function Well_Known_Image
     (Value : Mav_Battery_Type_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Lipo => "Lipo",
        when Life => "Life",
        when Lion => "Lion",
        when Nimh => "Nimh");

   function Image (Value : Mav_Battery_Type) return String is
     (if Value in Mav_Battery_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Battery_Function is new Interfaces.Unsigned_8;
   --  Enumeration of battery functions 

   function Unknown return Mav_Battery_Function is (0)
     with Static;
   --  Battery function is unknown 

   function All_Entry return Mav_Battery_Function is (1)
     with Static;
   --  Battery supports all flight systems 

   function Propulsion return Mav_Battery_Function is (2)
     with Static;
   --  Battery for the propulsion system 

   function Avionics return Mav_Battery_Function is (3)
     with Static;
   --  Avionics battery 

   function Payload return Mav_Battery_Function is (4)
     with Static;
   --  Payload battery 

   subtype Mav_Battery_Function_Well_Known is Mav_Battery_Function
     with Static_Predicate => Mav_Battery_Function_Well_Known in
       Unknown .. Payload;

   function Well_Known_Image
     (Value : Mav_Battery_Function_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when All_Entry => "All_Entry",
        when Propulsion => "Propulsion",
        when Avionics => "Avionics",
        when Payload => "Payload");

   function Image (Value : Mav_Battery_Function) return String is
     (if Value in Mav_Battery_Function_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Vtol_State is new Interfaces.Unsigned_8;
   --  Enumeration of VTOL states 

   function Undefined return Mav_Vtol_State is (0)
     with Static;
   --  MAV is not configured as VTOL 

   function Transition_To_Fw return Mav_Vtol_State is (1)
     with Static;
   --  VTOL is in transition from multicopter to fixed-wing 

   function Transition_To_Mc return Mav_Vtol_State is (2)
     with Static;
   --  VTOL is in transition from fixed-wing to multicopter 

   function Mc return Mav_Vtol_State is (3)
     with Static;
   --  VTOL is in multicopter state 

   function Fw return Mav_Vtol_State is (4)
     with Static;
   --  VTOL is in fixed-wing state 

   subtype Mav_Vtol_State_Well_Known is Mav_Vtol_State
     with Static_Predicate => Mav_Vtol_State_Well_Known in
       Undefined .. Fw;

   function Well_Known_Image
     (Value : Mav_Vtol_State_Well_Known) return String is
       (case Value is
        when Undefined => "Undefined",
        when Transition_To_Fw => "Transition_To_Fw",
        when Transition_To_Mc => "Transition_To_Mc",
        when Mc => "Mc",
        when Fw => "Fw");

   function Image (Value : Mav_Vtol_State) return String is
     (if Value in Mav_Vtol_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Landed_State is new Interfaces.Unsigned_8;
   --  Enumeration of landed detector states 

   function Undefined return Mav_Landed_State is (0)
     with Static;
   --  MAV landed state is unknown 

   function On_Ground return Mav_Landed_State is (1)
     with Static;
   --  MAV is landed (on ground) 

   function In_Air return Mav_Landed_State is (2)
     with Static;
   --  MAV is in air 

   function Takeoff return Mav_Landed_State is (3)
     with Static;
   --  MAV currently taking off 

   function Landing return Mav_Landed_State is (4)
     with Static;
   --  MAV currently landing 

   subtype Mav_Landed_State_Well_Known is Mav_Landed_State
     with Static_Predicate => Mav_Landed_State_Well_Known in
       Undefined .. Landing;

   function Well_Known_Image
     (Value : Mav_Landed_State_Well_Known) return String is
       (case Value is
        when Undefined => "Undefined",
        when On_Ground => "On_Ground",
        when In_Air => "In_Air",
        when Takeoff => "Takeoff",
        when Landing => "Landing");

   function Image (Value : Mav_Landed_State) return String is
     (if Value in Mav_Landed_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Adsb_Altitude_Type is new Interfaces.Unsigned_8;
   --  Enumeration of the ADSB altimeter types 

   function Pressure_Qnh return Adsb_Altitude_Type is (0)
     with Static;
   --  Altitude reported from a Baro source using QNH reference 

   function Geometric return Adsb_Altitude_Type is (1)
     with Static;
   --  Altitude reported from a GNSS source 

   subtype Adsb_Altitude_Type_Well_Known is Adsb_Altitude_Type
     with Static_Predicate => Adsb_Altitude_Type_Well_Known in
       Pressure_Qnh .. Geometric;

   function Well_Known_Image
     (Value : Adsb_Altitude_Type_Well_Known) return String is
       (case Value is
        when Pressure_Qnh => "Pressure_Qnh",
        when Geometric => "Geometric");

   function Image (Value : Adsb_Altitude_Type) return String is
     (if Value in Adsb_Altitude_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Adsb_Emitter_Type is new Interfaces.Unsigned_8;
   --  ADSB classification for the type of vehicle emitting the transponder 
   --  signal 

   function No_Info return Adsb_Emitter_Type is (0)
     with Static;

   function Light return Adsb_Emitter_Type is (1)
     with Static;

   function Small return Adsb_Emitter_Type is (2)
     with Static;

   function Large return Adsb_Emitter_Type is (3)
     with Static;

   function High_Vortex_Large return Adsb_Emitter_Type is (4)
     with Static;

   function Heavy return Adsb_Emitter_Type is (5)
     with Static;

   function Highly_Manuv return Adsb_Emitter_Type is (6)
     with Static;

   function Rotocraft return Adsb_Emitter_Type is (7)
     with Static;

   function Unassigned return Adsb_Emitter_Type is (8)
     with Static;

   function Glider return Adsb_Emitter_Type is (9)
     with Static;

   function Lighter_Air return Adsb_Emitter_Type is (10)
     with Static;

   function Parachute return Adsb_Emitter_Type is (11)
     with Static;

   function Ultra_Light return Adsb_Emitter_Type is (12)
     with Static;

   function Unassigned2 return Adsb_Emitter_Type is (13)
     with Static;

   function Uav return Adsb_Emitter_Type is (14)
     with Static;

   function Space return Adsb_Emitter_Type is (15)
     with Static;

   function Unassgined3 return Adsb_Emitter_Type is (16)
     with Static;

   function Emergency_Surface return Adsb_Emitter_Type is (17)
     with Static;

   function Service_Surface return Adsb_Emitter_Type is (18)
     with Static;

   function Point_Obstacle return Adsb_Emitter_Type is (19)
     with Static;

   subtype Adsb_Emitter_Type_Well_Known is Adsb_Emitter_Type
     with Static_Predicate => Adsb_Emitter_Type_Well_Known in
       No_Info .. Point_Obstacle;

   function Well_Known_Image
     (Value : Adsb_Emitter_Type_Well_Known) return String is
       (case Value is
        when No_Info => "No_Info",
        when Light => "Light",
        when Small => "Small",
        when Large => "Large",
        when High_Vortex_Large => "High_Vortex_Large",
        when Heavy => "Heavy",
        when Highly_Manuv => "Highly_Manuv",
        when Rotocraft => "Rotocraft",
        when Unassigned => "Unassigned",
        when Glider => "Glider",
        when Lighter_Air => "Lighter_Air",
        when Parachute => "Parachute",
        when Ultra_Light => "Ultra_Light",
        when Unassigned2 => "Unassigned2",
        when Uav => "Uav",
        when Space => "Space",
        when Unassgined3 => "Unassgined3",
        when Emergency_Surface => "Emergency_Surface",
        when Service_Surface => "Service_Surface",
        when Point_Obstacle => "Point_Obstacle");

   function Image (Value : Adsb_Emitter_Type) return String is
     (if Value in Adsb_Emitter_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Adsb_Flags is record
      Valid_Coords            : Boolean := False;
      Valid_Altitude          : Boolean := False;
      Valid_Heading           : Boolean := False;
      Valid_Velocity          : Boolean := False;
      Valid_Callsign          : Boolean := False;
      Valid_Squawk            : Boolean := False;
      Simulated               : Boolean := False;
      Vertical_Velocity_Valid : Boolean := False;
      Baro_Valid              : Boolean := False;
      Source_Uat              : Boolean := False;
   end record with Size => 16;
   --  These flags indicate status such as data validity of each data source. 
   --  Set = data valid 

   for Adsb_Flags use record
      Valid_Coords            at 0 range 0 .. 0;
      Valid_Altitude          at 0 range 1 .. 1;
      Valid_Heading           at 0 range 2 .. 2;
      Valid_Velocity          at 0 range 3 .. 3;
      Valid_Callsign          at 0 range 4 .. 4;
      Valid_Squawk            at 0 range 5 .. 5;
      Simulated               at 0 range 6 .. 6;
      Vertical_Velocity_Valid at 0 range 7 .. 7;
      Baro_Valid              at 0 range 8 .. 8;
      Source_Uat              at 0 range 15 .. 15;
   end record;

   function Image (V : Adsb_Flags) return String is
     ("["
      & (if V.Valid_Coords then "VALID_COORDS " else "")
      & (if V.Valid_Altitude then "VALID_ALTITUDE " else "")
      & (if V.Valid_Heading then "VALID_HEADING " else "")
      & (if V.Valid_Velocity then "VALID_VELOCITY " else "")
      & (if V.Valid_Callsign then "VALID_CALLSIGN " else "")
      & (if V.Valid_Squawk then "VALID_SQUAWK " else "")
      & (if V.Simulated then "SIMULATED " else "")
      & (if V.Vertical_Velocity_Valid then "VERTICAL_VELOCITY_VALID " else "")
      & (if V.Baro_Valid then "BARO_VALID " else "")
      & (if V.Source_Uat then "SOURCE_UAT " else "")
      & "]");

   type Estimator_Status_Flags is record
      Attitude           : Boolean := False;
      Velocity_Horiz     : Boolean := False;
      Velocity_Vert      : Boolean := False;
      Pos_Horiz_Rel      : Boolean := False;
      Pos_Horiz_Abs      : Boolean := False;
      Pos_Vert_Abs       : Boolean := False;
      Pos_Vert_Agl       : Boolean := False;
      Const_Pos_Mode     : Boolean := False;
      Pred_Pos_Horiz_Rel : Boolean := False;
      Pred_Pos_Horiz_Abs : Boolean := False;
      Gps_Glitch         : Boolean := False;
      Accel_Error        : Boolean := False;
      Reserved_12        : Boolean := False;
      Reserved_13        : Boolean := False;
      Reserved_14        : Boolean := False;
      Reserved_15        : Boolean := False;
   end record with Size => 16;
   --  Flags in ESTIMATOR_STATUS message 

   for Estimator_Status_Flags use record
      Attitude           at 0 range 0 .. 0;
      Velocity_Horiz     at 0 range 1 .. 1;
      Velocity_Vert      at 0 range 2 .. 2;
      Pos_Horiz_Rel      at 0 range 3 .. 3;
      Pos_Horiz_Abs      at 0 range 4 .. 4;
      Pos_Vert_Abs       at 0 range 5 .. 5;
      Pos_Vert_Agl       at 0 range 6 .. 6;
      Const_Pos_Mode     at 0 range 7 .. 7;
      Pred_Pos_Horiz_Rel at 0 range 8 .. 8;
      Pred_Pos_Horiz_Abs at 0 range 9 .. 9;
      Gps_Glitch         at 0 range 10 .. 10;
      Accel_Error        at 0 range 11 .. 11;
      Reserved_12        at 0 range 12 .. 12;
      Reserved_13        at 0 range 13 .. 13;
      Reserved_14        at 0 range 14 .. 14;
      Reserved_15        at 0 range 15 .. 15;
   end record;

   function Image (V : Estimator_Status_Flags) return String is
     ("["
      & (if V.Attitude then "ATTITUDE " else "")
      & (if V.Velocity_Horiz then "VELOCITY_HORIZ " else "")
      & (if V.Velocity_Vert then "VELOCITY_VERT " else "")
      & (if V.Pos_Horiz_Rel then "POS_HORIZ_REL " else "")
      & (if V.Pos_Horiz_Abs then "POS_HORIZ_ABS " else "")
      & (if V.Pos_Vert_Abs then "POS_VERT_ABS " else "")
      & (if V.Pos_Vert_Agl then "POS_VERT_AGL " else "")
      & (if V.Const_Pos_Mode then "CONST_POS_MODE " else "")
      & (if V.Pred_Pos_Horiz_Rel then "PRED_POS_HORIZ_REL " else "")
      & (if V.Pred_Pos_Horiz_Abs then "PRED_POS_HORIZ_ABS " else "")
      & (if V.Gps_Glitch then "GPS_GLITCH " else "")
      & (if V.Accel_Error then "ACCEL_ERROR " else "")
      & "]");

   type Gps_Input_Ignore_Flags is record
      Alt                 : Boolean := False;
      Hdop                : Boolean := False;
      Vdop                : Boolean := False;
      Vel_Horiz           : Boolean := False;
      Vel_Vert            : Boolean := False;
      Speed_Accuracy      : Boolean := False;
      Horizontal_Accuracy : Boolean := False;
      Vertical_Accuracy   : Boolean := False;
      Reserved_8          : Boolean := False;
      Reserved_9          : Boolean := False;
      Reserved_10         : Boolean := False;
      Reserved_11         : Boolean := False;
      Reserved_12         : Boolean := False;
      Reserved_13         : Boolean := False;
      Reserved_14         : Boolean := False;
      Reserved_15         : Boolean := False;
   end record with Size => 16;

   for Gps_Input_Ignore_Flags use record
      Alt                 at 0 range 0 .. 0;
      Hdop                at 0 range 1 .. 1;
      Vdop                at 0 range 2 .. 2;
      Vel_Horiz           at 0 range 3 .. 3;
      Vel_Vert            at 0 range 4 .. 4;
      Speed_Accuracy      at 0 range 5 .. 5;
      Horizontal_Accuracy at 0 range 6 .. 6;
      Vertical_Accuracy   at 0 range 7 .. 7;
      Reserved_8          at 0 range 8 .. 8;
      Reserved_9          at 0 range 9 .. 9;
      Reserved_10         at 0 range 10 .. 10;
      Reserved_11         at 0 range 11 .. 11;
      Reserved_12         at 0 range 12 .. 12;
      Reserved_13         at 0 range 13 .. 13;
      Reserved_14         at 0 range 14 .. 14;
      Reserved_15         at 0 range 15 .. 15;
   end record;

   function Image (V : Gps_Input_Ignore_Flags) return String is
     ("["
      & (if V.Alt then "ALT " else "")
      & (if V.Hdop then "HDOP " else "")
      & (if V.Vdop then "VDOP " else "")
      & (if V.Vel_Horiz then "VEL_HORIZ " else "")
      & (if V.Vel_Vert then "VEL_VERT " else "")
      & (if V.Speed_Accuracy then "SPEED_ACCURACY " else "")
      & (if V.Horizontal_Accuracy then "HORIZONTAL_ACCURACY " else "")
      & (if V.Vertical_Accuracy then "VERTICAL_ACCURACY " else "")
      & "]");

   type Mav_Collision_Action is new Interfaces.Unsigned_8;
   --  Possible actions an aircraft can take to avoid a collision. 

   function None return Mav_Collision_Action is (0)
     with Static;
   --  Ignore any potential collisions 

   function Report return Mav_Collision_Action is (1)
     with Static;
   --  Report potential collision 

   function Ascend_Or_Descend return Mav_Collision_Action is (2)
     with Static;
   --  Ascend or Descend to avoid threat 

   function Move_Horizontally return Mav_Collision_Action is (3)
     with Static;
   --  Move horizontally to avoid threat 

   function Move_Perpendicular return Mav_Collision_Action is (4)
     with Static;
   --  Aircraft to move perpendicular to the collision's velocity vector 

   function Rtl return Mav_Collision_Action is (5)
     with Static;
   --  Aircraft to fly directly back to its launch point 

   function Hover return Mav_Collision_Action is (6)
     with Static;
   --  Aircraft to stop in place 

   subtype Mav_Collision_Action_Well_Known is Mav_Collision_Action
     with Static_Predicate => Mav_Collision_Action_Well_Known in
       None .. Hover;

   function Well_Known_Image
     (Value : Mav_Collision_Action_Well_Known) return String is
       (case Value is
        when None => "None",
        when Report => "Report",
        when Ascend_Or_Descend => "Ascend_Or_Descend",
        when Move_Horizontally => "Move_Horizontally",
        when Move_Perpendicular => "Move_Perpendicular",
        when Rtl => "Rtl",
        when Hover => "Hover");

   function Image (Value : Mav_Collision_Action) return String is
     (if Value in Mav_Collision_Action_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Collision_Threat_Level is new Interfaces.Unsigned_8;
   --  Aircraft-rated danger from this threat. 

   function None return Mav_Collision_Threat_Level is (0)
     with Static;
   --  Not a threat 

   function Low return Mav_Collision_Threat_Level is (1)
     with Static;
   --  Craft is mildly concerned about this threat 

   function High return Mav_Collision_Threat_Level is (2)
     with Static;
   --  Craft is panicking, and may take actions to avoid threat 

   subtype Mav_Collision_Threat_Level_Well_Known is Mav_Collision_Threat_Level
     with Static_Predicate => Mav_Collision_Threat_Level_Well_Known in
       None .. High;

   function Well_Known_Image
     (Value : Mav_Collision_Threat_Level_Well_Known) return String is
       (case Value is
        when None => "None",
        when Low => "Low",
        when High => "High");

   function Image (Value : Mav_Collision_Threat_Level) return String is
     (if Value in Mav_Collision_Threat_Level_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Collision_Src is new Interfaces.Unsigned_8;
   --  Source of information about this collision. 

   function Adsb return Mav_Collision_Src is (0)
     with Static;
   --  ID field references ADSB_VEHICLE packets 

   function Mavlink_Gps_Global_Int return Mav_Collision_Src is (1)
     with Static;
   --  ID field references MAVLink SRC ID 

   subtype Mav_Collision_Src_Well_Known is Mav_Collision_Src
     with Static_Predicate => Mav_Collision_Src_Well_Known in
       Adsb .. Mavlink_Gps_Global_Int;

   function Well_Known_Image
     (Value : Mav_Collision_Src_Well_Known) return String is
       (case Value is
        when Adsb => "Adsb",
        when Mavlink_Gps_Global_Int => "Mavlink_Gps_Global_Int");

   function Image (Value : Mav_Collision_Src) return String is
     (if Value in Mav_Collision_Src_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Gps_Fix_Type is new Interfaces.Unsigned_8;
   --  Type of GPS fix 

   function No_Gps return Gps_Fix_Type is (0)
     with Static;
   --  No GPS connected 

   function No_Fix return Gps_Fix_Type is (1)
     with Static;
   --  No position information, GPS is connected 

   function A_2D_Fix return Gps_Fix_Type is (2)
     with Static;
   --  2D position 

   function A_3D_Fix return Gps_Fix_Type is (3)
     with Static;
   --  3D position 

   function Dgps return Gps_Fix_Type is (4)
     with Static;
   --  DGPS/SBAS aided 3D position 

   function Rtk_Float return Gps_Fix_Type is (5)
     with Static;
   --  RTK float, 3D position 

   function Rtk_Fixed return Gps_Fix_Type is (6)
     with Static;
   --  RTK Fixed, 3D position 

   function Static return Gps_Fix_Type is (7)
     with Static;
   --  Static fixed, typically used for base stations 

   function Ppp return Gps_Fix_Type is (8)
     with Static;
   --  PPP, 3D position. 

   subtype Gps_Fix_Type_Well_Known is Gps_Fix_Type
     with Static_Predicate => Gps_Fix_Type_Well_Known in
       No_Gps .. Ppp;

   function Well_Known_Image
     (Value : Gps_Fix_Type_Well_Known) return String is
       (case Value is
        when No_Gps => "No_Gps",
        when No_Fix => "No_Fix",
        when A_2D_Fix => "A_2D_Fix",
        when A_3D_Fix => "A_3D_Fix",
        when Dgps => "Dgps",
        when Rtk_Float => "Rtk_Float",
        when Rtk_Fixed => "Rtk_Fixed",
        when Static => "Static",
        when Ppp => "Ppp");

   function Image (Value : Gps_Fix_Type) return String is
     (if Value in Gps_Fix_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Rtk_Baseline_Coordinate_System is new Interfaces.Unsigned_8;
   --  RTK GPS baseline coordinate system, used for RTK corrections 

   function Ecef return Rtk_Baseline_Coordinate_System is (0)
     with Static;
   --  Earth-centered, Earth-fixed 

   function Ned return Rtk_Baseline_Coordinate_System is (1)
     with Static;
   --  RTK basestation centered, north, east, down 

   subtype Rtk_Baseline_Coordinate_System_Well_Known is Rtk_Baseline_Coordinate_System
     with Static_Predicate => Rtk_Baseline_Coordinate_System_Well_Known in
       Ecef .. Ned;

   function Well_Known_Image
     (Value : Rtk_Baseline_Coordinate_System_Well_Known) return String is
       (case Value is
        when Ecef => "Ecef",
        when Ned => "Ned");

   function Image (Value : Rtk_Baseline_Coordinate_System) return String is
     (if Value in Rtk_Baseline_Coordinate_System_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Position_Target_Typemask is record
      X_Ignore        : Boolean := False;
      Y_Ignore        : Boolean := False;
      Z_Ignore        : Boolean := False;
      Vx_Ignore       : Boolean := False;
      Vy_Ignore       : Boolean := False;
      Vz_Ignore       : Boolean := False;
      Ax_Ignore       : Boolean := False;
      Ay_Ignore       : Boolean := False;
      Az_Ignore       : Boolean := False;
      Force_Set       : Boolean := False;
      Yaw_Ignore      : Boolean := False;
      Yaw_Rate_Ignore : Boolean := False;
      Reserved_12     : Boolean := False;
      Reserved_13     : Boolean := False;
      Reserved_14     : Boolean := False;
      Reserved_15     : Boolean := False;
   end record with Size => 16;
   --  Bitmap to indicate which dimensions should be ignored by the vehicle: a 
   --  value of 0b0000000000000000 or 0b0000001000000000 indicates that none 
   --  of the setpoint dimensions should be ignored. If bit 9 is set the 
   --  floats afx afy afz should be interpreted as force instead of 
   --  acceleration. 

   for Position_Target_Typemask use record
      X_Ignore        at 0 range 0 .. 0;
      Y_Ignore        at 0 range 1 .. 1;
      Z_Ignore        at 0 range 2 .. 2;
      Vx_Ignore       at 0 range 3 .. 3;
      Vy_Ignore       at 0 range 4 .. 4;
      Vz_Ignore       at 0 range 5 .. 5;
      Ax_Ignore       at 0 range 6 .. 6;
      Ay_Ignore       at 0 range 7 .. 7;
      Az_Ignore       at 0 range 8 .. 8;
      Force_Set       at 0 range 9 .. 9;
      Yaw_Ignore      at 0 range 10 .. 10;
      Yaw_Rate_Ignore at 0 range 11 .. 11;
      Reserved_12     at 0 range 12 .. 12;
      Reserved_13     at 0 range 13 .. 13;
      Reserved_14     at 0 range 14 .. 14;
      Reserved_15     at 0 range 15 .. 15;
   end record;

   function Image (V : Position_Target_Typemask) return String is
     ("["
      & (if V.X_Ignore then "X_IGNORE " else "")
      & (if V.Y_Ignore then "Y_IGNORE " else "")
      & (if V.Z_Ignore then "Z_IGNORE " else "")
      & (if V.Vx_Ignore then "VX_IGNORE " else "")
      & (if V.Vy_Ignore then "VY_IGNORE " else "")
      & (if V.Vz_Ignore then "VZ_IGNORE " else "")
      & (if V.Ax_Ignore then "AX_IGNORE " else "")
      & (if V.Ay_Ignore then "AY_IGNORE " else "")
      & (if V.Az_Ignore then "AZ_IGNORE " else "")
      & (if V.Force_Set then "FORCE_SET " else "")
      & (if V.Yaw_Ignore then "YAW_IGNORE " else "")
      & (if V.Yaw_Rate_Ignore then "YAW_RATE_IGNORE " else "")
      & "]");

   type Attitude_Target_Typemask is record
      Body_Roll_Rate_Ignore  : Boolean := False;
      Body_Pitch_Rate_Ignore : Boolean := False;
      Body_Yaw_Rate_Ignore   : Boolean := False;
      Thrust_Body_Set        : Boolean := False;
      Throttle_Ignore        : Boolean := False;
      Attitude_Ignore        : Boolean := False;
   end record with Size => 8;
   --  Bitmap to indicate which dimensions should be ignored by the vehicle: a 
   --  value of 0b00000000 indicates that none of the setpoint dimensions 
   --  should be ignored. 

   for Attitude_Target_Typemask use record
      Body_Roll_Rate_Ignore  at 0 range 0 .. 0;
      Body_Pitch_Rate_Ignore at 0 range 1 .. 1;
      Body_Yaw_Rate_Ignore   at 0 range 2 .. 2;
      Thrust_Body_Set        at 0 range 5 .. 5;
      Throttle_Ignore        at 0 range 6 .. 6;
      Attitude_Ignore        at 0 range 7 .. 7;
   end record;

   function Image (V : Attitude_Target_Typemask) return String is
     ("["
      & (if V.Body_Roll_Rate_Ignore then "BODY_ROLL_RATE_IGNORE " else "")
      & (if V.Body_Pitch_Rate_Ignore then "BODY_PITCH_RATE_IGNORE " else "")
      & (if V.Body_Yaw_Rate_Ignore then "BODY_YAW_RATE_IGNORE " else "")
      & (if V.Thrust_Body_Set then "THRUST_BODY_SET " else "")
      & (if V.Throttle_Ignore then "THROTTLE_IGNORE " else "")
      & (if V.Attitude_Ignore then "ATTITUDE_IGNORE " else "")
      & "]");

   type Mag_Cal_Status is new Interfaces.Unsigned_8;

   function Not_Started return Mag_Cal_Status is (0)
     with Static;

   function Waiting_To_Start return Mag_Cal_Status is (1)
     with Static;

   function Running_Step_One return Mag_Cal_Status is (2)
     with Static;

   function Running_Step_Two return Mag_Cal_Status is (3)
     with Static;

   function Success return Mag_Cal_Status is (4)
     with Static;

   function Failed return Mag_Cal_Status is (5)
     with Static;

   function Bad_Orientation return Mag_Cal_Status is (6)
     with Static;

   function Bad_Radius return Mag_Cal_Status is (7)
     with Static;

   subtype Mag_Cal_Status_Well_Known is Mag_Cal_Status
     with Static_Predicate => Mag_Cal_Status_Well_Known in
       Not_Started .. Bad_Radius;

   function Well_Known_Image
     (Value : Mag_Cal_Status_Well_Known) return String is
       (case Value is
        when Not_Started => "Not_Started",
        when Waiting_To_Start => "Waiting_To_Start",
        when Running_Step_One => "Running_Step_One",
        when Running_Step_Two => "Running_Step_Two",
        when Success => "Success",
        when Failed => "Failed",
        when Bad_Orientation => "Bad_Orientation",
        when Bad_Radius => "Bad_Radius");

   function Image (Value : Mag_Cal_Status) return String is
     (if Value in Mag_Cal_Status_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Hil_Sensor_Updated_Flags is record
      Xacc          : Boolean := False;
      Yacc          : Boolean := False;
      Zacc          : Boolean := False;
      Xgyro         : Boolean := False;
      Ygyro         : Boolean := False;
      Zgyro         : Boolean := False;
      Xmag          : Boolean := False;
      Ymag          : Boolean := False;
      Zmag          : Boolean := False;
      Abs_Pressure  : Boolean := False;
      Diff_Pressure : Boolean := False;
      Pressure_Alt  : Boolean := False;
      Temperature   : Boolean := False;
      Reset         : Boolean := False;
   end record with Size => 32;
   --  Flags in the HIL_SENSOR message indicate which fields have updated 
   --  since the last message 

   for Hil_Sensor_Updated_Flags use record
      Xacc          at 0 range 0 .. 0;
      Yacc          at 0 range 1 .. 1;
      Zacc          at 0 range 2 .. 2;
      Xgyro         at 0 range 3 .. 3;
      Ygyro         at 0 range 4 .. 4;
      Zgyro         at 0 range 5 .. 5;
      Xmag          at 0 range 6 .. 6;
      Ymag          at 0 range 7 .. 7;
      Zmag          at 0 range 8 .. 8;
      Abs_Pressure  at 0 range 9 .. 9;
      Diff_Pressure at 0 range 10 .. 10;
      Pressure_Alt  at 0 range 11 .. 11;
      Temperature   at 0 range 12 .. 12;
      Reset         at 0 range 31 .. 31;
   end record;

   function Image (V : Hil_Sensor_Updated_Flags) return String is
     ("["
      & (if V.Xacc then "XACC " else "")
      & (if V.Yacc then "YACC " else "")
      & (if V.Zacc then "ZACC " else "")
      & (if V.Xgyro then "XGYRO " else "")
      & (if V.Ygyro then "YGYRO " else "")
      & (if V.Zgyro then "ZGYRO " else "")
      & (if V.Xmag then "XMAG " else "")
      & (if V.Ymag then "YMAG " else "")
      & (if V.Zmag then "ZMAG " else "")
      & (if V.Abs_Pressure then "ABS_PRESSURE " else "")
      & (if V.Diff_Pressure then "DIFF_PRESSURE " else "")
      & (if V.Pressure_Alt then "PRESSURE_ALT " else "")
      & (if V.Temperature then "TEMPERATURE " else "")
      & (if V.Reset then "RESET " else "")
      & "]");

   type Highres_Imu_Updated_Flags is record
      Xacc          : Boolean := False;
      Yacc          : Boolean := False;
      Zacc          : Boolean := False;
      Xgyro         : Boolean := False;
      Ygyro         : Boolean := False;
      Zgyro         : Boolean := False;
      Xmag          : Boolean := False;
      Ymag          : Boolean := False;
      Zmag          : Boolean := False;
      Abs_Pressure  : Boolean := False;
      Diff_Pressure : Boolean := False;
      Pressure_Alt  : Boolean := False;
      Temperature   : Boolean := False;
      Reserved_13   : Boolean := False;
      Reserved_14   : Boolean := False;
      Reserved_15   : Boolean := False;
   end record with Size => 16;
   --  Flags in the HIGHRES_IMU message indicate which fields have updated 
   --  since the last message 

   for Highres_Imu_Updated_Flags use record
      Xacc          at 0 range 0 .. 0;
      Yacc          at 0 range 1 .. 1;
      Zacc          at 0 range 2 .. 2;
      Xgyro         at 0 range 3 .. 3;
      Ygyro         at 0 range 4 .. 4;
      Zgyro         at 0 range 5 .. 5;
      Xmag          at 0 range 6 .. 6;
      Ymag          at 0 range 7 .. 7;
      Zmag          at 0 range 8 .. 8;
      Abs_Pressure  at 0 range 9 .. 9;
      Diff_Pressure at 0 range 10 .. 10;
      Pressure_Alt  at 0 range 11 .. 11;
      Temperature   at 0 range 12 .. 12;
      Reserved_13   at 0 range 13 .. 13;
      Reserved_14   at 0 range 14 .. 14;
      Reserved_15   at 0 range 15 .. 15;
   end record;

   function Image (V : Highres_Imu_Updated_Flags) return String is
     ("["
      & (if V.Xacc then "XACC " else "")
      & (if V.Yacc then "YACC " else "")
      & (if V.Zacc then "ZACC " else "")
      & (if V.Xgyro then "XGYRO " else "")
      & (if V.Ygyro then "YGYRO " else "")
      & (if V.Zgyro then "ZGYRO " else "")
      & (if V.Xmag then "XMAG " else "")
      & (if V.Ymag then "YMAG " else "")
      & (if V.Zmag then "ZMAG " else "")
      & (if V.Abs_Pressure then "ABS_PRESSURE " else "")
      & (if V.Diff_Pressure then "DIFF_PRESSURE " else "")
      & (if V.Pressure_Alt then "PRESSURE_ALT " else "")
      & (if V.Temperature then "TEMPERATURE " else "")
      & "]");

   type Hil_Actuator_Controls_Flags is record
      Hil_Actuator_Controls_Flags_Lockstep : Boolean := False;
      Reserved_1                           : Boolean := False;
      Reserved_2                           : Boolean := False;
      Reserved_3                           : Boolean := False;
      Reserved_4                           : Boolean := False;
      Reserved_5                           : Boolean := False;
      Reserved_6                           : Boolean := False;
      Reserved_7                           : Boolean := False;
      Reserved_8                           : Boolean := False;
      Reserved_9                           : Boolean := False;
      Reserved_10                          : Boolean := False;
      Reserved_11                          : Boolean := False;
      Reserved_12                          : Boolean := False;
      Reserved_13                          : Boolean := False;
      Reserved_14                          : Boolean := False;
      Reserved_15                          : Boolean := False;
      Reserved_16                          : Boolean := False;
      Reserved_17                          : Boolean := False;
      Reserved_18                          : Boolean := False;
      Reserved_19                          : Boolean := False;
      Reserved_20                          : Boolean := False;
      Reserved_21                          : Boolean := False;
      Reserved_22                          : Boolean := False;
      Reserved_23                          : Boolean := False;
      Reserved_24                          : Boolean := False;
      Reserved_25                          : Boolean := False;
      Reserved_26                          : Boolean := False;
      Reserved_27                          : Boolean := False;
      Reserved_28                          : Boolean := False;
      Reserved_29                          : Boolean := False;
      Reserved_30                          : Boolean := False;
      Reserved_31                          : Boolean := False;
      Reserved_32                          : Boolean := False;
      Reserved_33                          : Boolean := False;
      Reserved_34                          : Boolean := False;
      Reserved_35                          : Boolean := False;
      Reserved_36                          : Boolean := False;
      Reserved_37                          : Boolean := False;
      Reserved_38                          : Boolean := False;
      Reserved_39                          : Boolean := False;
      Reserved_40                          : Boolean := False;
      Reserved_41                          : Boolean := False;
      Reserved_42                          : Boolean := False;
      Reserved_43                          : Boolean := False;
      Reserved_44                          : Boolean := False;
      Reserved_45                          : Boolean := False;
      Reserved_46                          : Boolean := False;
      Reserved_47                          : Boolean := False;
      Reserved_48                          : Boolean := False;
      Reserved_49                          : Boolean := False;
      Reserved_50                          : Boolean := False;
      Reserved_51                          : Boolean := False;
      Reserved_52                          : Boolean := False;
      Reserved_53                          : Boolean := False;
      Reserved_54                          : Boolean := False;
      Reserved_55                          : Boolean := False;
      Reserved_56                          : Boolean := False;
      Reserved_57                          : Boolean := False;
      Reserved_58                          : Boolean := False;
      Reserved_59                          : Boolean := False;
      Reserved_60                          : Boolean := False;
      Reserved_61                          : Boolean := False;
      Reserved_62                          : Boolean := False;
      Reserved_63                          : Boolean := False;
   end record with Size => 64;
   --  Flags used in HIL_ACTUATOR_CONTROLS message. 

   for Hil_Actuator_Controls_Flags use record
      Hil_Actuator_Controls_Flags_Lockstep at 0 range 0 .. 0;
      Reserved_1                           at 0 range 1 .. 1;
      Reserved_2                           at 0 range 2 .. 2;
      Reserved_3                           at 0 range 3 .. 3;
      Reserved_4                           at 0 range 4 .. 4;
      Reserved_5                           at 0 range 5 .. 5;
      Reserved_6                           at 0 range 6 .. 6;
      Reserved_7                           at 0 range 7 .. 7;
      Reserved_8                           at 0 range 8 .. 8;
      Reserved_9                           at 0 range 9 .. 9;
      Reserved_10                          at 0 range 10 .. 10;
      Reserved_11                          at 0 range 11 .. 11;
      Reserved_12                          at 0 range 12 .. 12;
      Reserved_13                          at 0 range 13 .. 13;
      Reserved_14                          at 0 range 14 .. 14;
      Reserved_15                          at 0 range 15 .. 15;
      Reserved_16                          at 0 range 16 .. 16;
      Reserved_17                          at 0 range 17 .. 17;
      Reserved_18                          at 0 range 18 .. 18;
      Reserved_19                          at 0 range 19 .. 19;
      Reserved_20                          at 0 range 20 .. 20;
      Reserved_21                          at 0 range 21 .. 21;
      Reserved_22                          at 0 range 22 .. 22;
      Reserved_23                          at 0 range 23 .. 23;
      Reserved_24                          at 0 range 24 .. 24;
      Reserved_25                          at 0 range 25 .. 25;
      Reserved_26                          at 0 range 26 .. 26;
      Reserved_27                          at 0 range 27 .. 27;
      Reserved_28                          at 0 range 28 .. 28;
      Reserved_29                          at 0 range 29 .. 29;
      Reserved_30                          at 0 range 30 .. 30;
      Reserved_31                          at 0 range 31 .. 31;
      Reserved_32                          at 0 range 32 .. 32;
      Reserved_33                          at 0 range 33 .. 33;
      Reserved_34                          at 0 range 34 .. 34;
      Reserved_35                          at 0 range 35 .. 35;
      Reserved_36                          at 0 range 36 .. 36;
      Reserved_37                          at 0 range 37 .. 37;
      Reserved_38                          at 0 range 38 .. 38;
      Reserved_39                          at 0 range 39 .. 39;
      Reserved_40                          at 0 range 40 .. 40;
      Reserved_41                          at 0 range 41 .. 41;
      Reserved_42                          at 0 range 42 .. 42;
      Reserved_43                          at 0 range 43 .. 43;
      Reserved_44                          at 0 range 44 .. 44;
      Reserved_45                          at 0 range 45 .. 45;
      Reserved_46                          at 0 range 46 .. 46;
      Reserved_47                          at 0 range 47 .. 47;
      Reserved_48                          at 0 range 48 .. 48;
      Reserved_49                          at 0 range 49 .. 49;
      Reserved_50                          at 0 range 50 .. 50;
      Reserved_51                          at 0 range 51 .. 51;
      Reserved_52                          at 0 range 52 .. 52;
      Reserved_53                          at 0 range 53 .. 53;
      Reserved_54                          at 0 range 54 .. 54;
      Reserved_55                          at 0 range 55 .. 55;
      Reserved_56                          at 0 range 56 .. 56;
      Reserved_57                          at 0 range 57 .. 57;
      Reserved_58                          at 0 range 58 .. 58;
      Reserved_59                          at 0 range 59 .. 59;
      Reserved_60                          at 0 range 60 .. 60;
      Reserved_61                          at 0 range 61 .. 61;
      Reserved_62                          at 0 range 62 .. 62;
      Reserved_63                          at 0 range 63 .. 63;
   end record;

   function Image (V : Hil_Actuator_Controls_Flags) return String is
     ("["
      & (if V.Hil_Actuator_Controls_Flags_Lockstep then "HIL_ACTUATOR_CONTROLS_FLAGS_LOCKSTEP " else "")
      & "]");

end Mavlink.V1.Common;
