-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

with MAVLink.V2.Standard; use MAVLink.V2.Standard;

package MAVLink.V2.Common is

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

   type Mav_Goto is new Interfaces.Unsigned_8;
   --  Actions that may be specified in MAV_CMD_OVERRIDE_GOTO to override 
   --  mission execution. 

   function Do_Hold return Mav_Goto is (0)
     with Static;
   --  Hold at the current position. 

   function Do_Continue return Mav_Goto is (1)
     with Static;
   --  Continue with the next item in mission execution. 

   function Hold_At_Current_Position return Mav_Goto is (2)
     with Static;
   --  Hold at the current position of the system 

   function Hold_At_Specified_Position return Mav_Goto is (3)
     with Static;
   --  Hold at the position specified in the parameters of the DO_HOLD action 

   subtype Mav_Goto_Well_Known is Mav_Goto
     with Static_Predicate => Mav_Goto_Well_Known in
       Do_Hold .. Hold_At_Specified_Position;

   function Well_Known_Image
     (Value : Mav_Goto_Well_Known) return String is
       (case Value is
        when Do_Hold => "Do_Hold",
        when Do_Continue => "Do_Continue",
        when Hold_At_Current_Position => "Hold_At_Current_Position",
        when Hold_At_Specified_Position => "Hold_At_Specified_Position");

   function Image (Value : Mav_Goto) return String is
     (if Value in Mav_Goto_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

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

   type Mav_Sys_Status_Sensor_Extended is record
      Mav_Sys_Status_Recovery_System : Boolean := False;
      Reserved_1                     : Boolean := False;
      Reserved_2                     : Boolean := False;
      Reserved_3                     : Boolean := False;
      Reserved_4                     : Boolean := False;
      Reserved_5                     : Boolean := False;
      Reserved_6                     : Boolean := False;
      Reserved_7                     : Boolean := False;
      Reserved_8                     : Boolean := False;
      Reserved_9                     : Boolean := False;
      Reserved_10                    : Boolean := False;
      Reserved_11                    : Boolean := False;
      Reserved_12                    : Boolean := False;
      Reserved_13                    : Boolean := False;
      Reserved_14                    : Boolean := False;
      Reserved_15                    : Boolean := False;
      Reserved_16                    : Boolean := False;
      Reserved_17                    : Boolean := False;
      Reserved_18                    : Boolean := False;
      Reserved_19                    : Boolean := False;
      Reserved_20                    : Boolean := False;
      Reserved_21                    : Boolean := False;
      Reserved_22                    : Boolean := False;
      Reserved_23                    : Boolean := False;
      Reserved_24                    : Boolean := False;
      Reserved_25                    : Boolean := False;
      Reserved_26                    : Boolean := False;
      Reserved_27                    : Boolean := False;
      Reserved_28                    : Boolean := False;
      Reserved_29                    : Boolean := False;
      Reserved_30                    : Boolean := False;
      Reserved_31                    : Boolean := False;
   end record with Size => 32;
   --  These encode the sensors whose status is sent as part of the SYS_STATUS 
   --  message in the extended fields. 

   for Mav_Sys_Status_Sensor_Extended use record
      Mav_Sys_Status_Recovery_System at 0 range 0 .. 0;
      Reserved_1                     at 0 range 1 .. 1;
      Reserved_2                     at 0 range 2 .. 2;
      Reserved_3                     at 0 range 3 .. 3;
      Reserved_4                     at 0 range 4 .. 4;
      Reserved_5                     at 0 range 5 .. 5;
      Reserved_6                     at 0 range 6 .. 6;
      Reserved_7                     at 0 range 7 .. 7;
      Reserved_8                     at 0 range 8 .. 8;
      Reserved_9                     at 0 range 9 .. 9;
      Reserved_10                    at 0 range 10 .. 10;
      Reserved_11                    at 0 range 11 .. 11;
      Reserved_12                    at 0 range 12 .. 12;
      Reserved_13                    at 0 range 13 .. 13;
      Reserved_14                    at 0 range 14 .. 14;
      Reserved_15                    at 0 range 15 .. 15;
      Reserved_16                    at 0 range 16 .. 16;
      Reserved_17                    at 0 range 17 .. 17;
      Reserved_18                    at 0 range 18 .. 18;
      Reserved_19                    at 0 range 19 .. 19;
      Reserved_20                    at 0 range 20 .. 20;
      Reserved_21                    at 0 range 21 .. 21;
      Reserved_22                    at 0 range 22 .. 22;
      Reserved_23                    at 0 range 23 .. 23;
      Reserved_24                    at 0 range 24 .. 24;
      Reserved_25                    at 0 range 25 .. 25;
      Reserved_26                    at 0 range 26 .. 26;
      Reserved_27                    at 0 range 27 .. 27;
      Reserved_28                    at 0 range 28 .. 28;
      Reserved_29                    at 0 range 29 .. 29;
      Reserved_30                    at 0 range 30 .. 30;
      Reserved_31                    at 0 range 31 .. 31;
   end record;

   function Image (V : Mav_Sys_Status_Sensor_Extended) return String is
     ("["
      & (if V.Mav_Sys_Status_Recovery_System then "MAV_SYS_STATUS_RECOVERY_SYSTEM " else "")
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

   type Fence_Mitigate is new Interfaces.Unsigned_8;
   --  Actions being taken to mitigate/prevent fence breach 

   function Unknown return Fence_Mitigate is (0)
     with Static;
   --  Unknown 

   function None return Fence_Mitigate is (1)
     with Static;
   --  No actions being taken 

   function Vel_Limit return Fence_Mitigate is (2)
     with Static;
   --  Velocity limiting active to prevent breach 

   subtype Fence_Mitigate_Well_Known is Fence_Mitigate
     with Static_Predicate => Fence_Mitigate_Well_Known in
       Unknown .. Vel_Limit;

   function Well_Known_Image
     (Value : Fence_Mitigate_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when None => "None",
        when Vel_Limit => "Vel_Limit");

   function Image (Value : Fence_Mitigate) return String is
     (if Value in Fence_Mitigate_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Fence_Type is record
      Alt_Max    : Boolean := False;
      Circle     : Boolean := False;
      Polygon    : Boolean := False;
      Alt_Min    : Boolean := False;
      Reserved_4 : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;
   --  Fence types to enable or disable when using MAV_CMD_DO_FENCE_ENABLE. 
   --  Note that at least one of these flags must be set in 
   --  MAV_CMD_DO_FENCE_ENABLE.param2. If none are set, the flight stack will 
   --  ignore the field and enable/disable its default set of fences (usually 
   --  all of them). 

   for Fence_Type use record
      Alt_Max    at 0 range 0 .. 0;
      Circle     at 0 range 1 .. 1;
      Polygon    at 0 range 2 .. 2;
      Alt_Min    at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Fence_Type) return String is
     ("["
      & (if V.Alt_Max then "ALT_MAX " else "")
      & (if V.Circle then "CIRCLE " else "")
      & (if V.Polygon then "POLYGON " else "")
      & (if V.Alt_Min then "ALT_MIN " else "")
      & "]");

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

   type Gimbal_Device_Cap_Flags is record
      Has_Retract                 : Boolean := False;
      Has_Neutral                 : Boolean := False;
      Has_Roll_Axis               : Boolean := False;
      Has_Roll_Follow             : Boolean := False;
      Has_Roll_Lock               : Boolean := False;
      Has_Pitch_Axis              : Boolean := False;
      Has_Pitch_Follow            : Boolean := False;
      Has_Pitch_Lock              : Boolean := False;
      Has_Yaw_Axis                : Boolean := False;
      Has_Yaw_Follow              : Boolean := False;
      Has_Yaw_Lock                : Boolean := False;
      Supports_Infinite_Yaw       : Boolean := False;
      Supports_Yaw_In_Earth_Frame : Boolean := False;
      Has_Rc_Inputs               : Boolean := False;
      Reserved_14                 : Boolean := False;
      Reserved_15                 : Boolean := False;
   end record with Size => 16;
   --  Gimbal device (low level) capability flags (bitmap). 

   for Gimbal_Device_Cap_Flags use record
      Has_Retract                 at 0 range 0 .. 0;
      Has_Neutral                 at 0 range 1 .. 1;
      Has_Roll_Axis               at 0 range 2 .. 2;
      Has_Roll_Follow             at 0 range 3 .. 3;
      Has_Roll_Lock               at 0 range 4 .. 4;
      Has_Pitch_Axis              at 0 range 5 .. 5;
      Has_Pitch_Follow            at 0 range 6 .. 6;
      Has_Pitch_Lock              at 0 range 7 .. 7;
      Has_Yaw_Axis                at 0 range 8 .. 8;
      Has_Yaw_Follow              at 0 range 9 .. 9;
      Has_Yaw_Lock                at 0 range 10 .. 10;
      Supports_Infinite_Yaw       at 0 range 11 .. 11;
      Supports_Yaw_In_Earth_Frame at 0 range 12 .. 12;
      Has_Rc_Inputs               at 0 range 13 .. 13;
      Reserved_14                 at 0 range 14 .. 14;
      Reserved_15                 at 0 range 15 .. 15;
   end record;

   function Image (V : Gimbal_Device_Cap_Flags) return String is
     ("["
      & (if V.Has_Retract then "HAS_RETRACT " else "")
      & (if V.Has_Neutral then "HAS_NEUTRAL " else "")
      & (if V.Has_Roll_Axis then "HAS_ROLL_AXIS " else "")
      & (if V.Has_Roll_Follow then "HAS_ROLL_FOLLOW " else "")
      & (if V.Has_Roll_Lock then "HAS_ROLL_LOCK " else "")
      & (if V.Has_Pitch_Axis then "HAS_PITCH_AXIS " else "")
      & (if V.Has_Pitch_Follow then "HAS_PITCH_FOLLOW " else "")
      & (if V.Has_Pitch_Lock then "HAS_PITCH_LOCK " else "")
      & (if V.Has_Yaw_Axis then "HAS_YAW_AXIS " else "")
      & (if V.Has_Yaw_Follow then "HAS_YAW_FOLLOW " else "")
      & (if V.Has_Yaw_Lock then "HAS_YAW_LOCK " else "")
      & (if V.Supports_Infinite_Yaw then "SUPPORTS_INFINITE_YAW " else "")
      & (if V.Supports_Yaw_In_Earth_Frame then "SUPPORTS_YAW_IN_EARTH_FRAME " else "")
      & (if V.Has_Rc_Inputs then "HAS_RC_INPUTS " else "")
      & "]");

   type Gimbal_Manager_Cap_Flags is record
      Has_Retract                 : Boolean := False;
      Has_Neutral                 : Boolean := False;
      Has_Roll_Axis               : Boolean := False;
      Has_Roll_Follow             : Boolean := False;
      Has_Roll_Lock               : Boolean := False;
      Has_Pitch_Axis              : Boolean := False;
      Has_Pitch_Follow            : Boolean := False;
      Has_Pitch_Lock              : Boolean := False;
      Has_Yaw_Axis                : Boolean := False;
      Has_Yaw_Follow              : Boolean := False;
      Has_Yaw_Lock                : Boolean := False;
      Supports_Infinite_Yaw       : Boolean := False;
      Supports_Yaw_In_Earth_Frame : Boolean := False;
      Has_Rc_Inputs               : Boolean := False;
      Can_Point_Location_Local    : Boolean := False;
      Can_Point_Location_Global   : Boolean := False;
      Reserved_18                 : Boolean := False;
      Reserved_19                 : Boolean := False;
      Reserved_20                 : Boolean := False;
      Reserved_21                 : Boolean := False;
      Reserved_22                 : Boolean := False;
      Reserved_23                 : Boolean := False;
      Reserved_24                 : Boolean := False;
      Reserved_25                 : Boolean := False;
      Reserved_26                 : Boolean := False;
      Reserved_27                 : Boolean := False;
      Reserved_28                 : Boolean := False;
      Reserved_29                 : Boolean := False;
      Reserved_30                 : Boolean := False;
      Reserved_31                 : Boolean := False;
   end record with Size => 32;
   --  Gimbal manager high level capability flags (bitmap). The first 16 bits 
   --  are identical to the GIMBAL_DEVICE_CAP_FLAGS. However, the gimbal 
   --  manager does not need to copy the flags from the gimbal but can also 
   --  enhance the capabilities and thus add flags. 

   for Gimbal_Manager_Cap_Flags use record
      Has_Retract                 at 0 range 0 .. 0;
      Has_Neutral                 at 0 range 1 .. 1;
      Has_Roll_Axis               at 0 range 2 .. 2;
      Has_Roll_Follow             at 0 range 3 .. 3;
      Has_Roll_Lock               at 0 range 4 .. 4;
      Has_Pitch_Axis              at 0 range 5 .. 5;
      Has_Pitch_Follow            at 0 range 6 .. 6;
      Has_Pitch_Lock              at 0 range 7 .. 7;
      Has_Yaw_Axis                at 0 range 8 .. 8;
      Has_Yaw_Follow              at 0 range 9 .. 9;
      Has_Yaw_Lock                at 0 range 10 .. 10;
      Supports_Infinite_Yaw       at 0 range 11 .. 11;
      Supports_Yaw_In_Earth_Frame at 0 range 12 .. 12;
      Has_Rc_Inputs               at 0 range 13 .. 13;
      Can_Point_Location_Local    at 0 range 16 .. 16;
      Can_Point_Location_Global   at 0 range 17 .. 17;
      Reserved_18                 at 0 range 18 .. 18;
      Reserved_19                 at 0 range 19 .. 19;
      Reserved_20                 at 0 range 20 .. 20;
      Reserved_21                 at 0 range 21 .. 21;
      Reserved_22                 at 0 range 22 .. 22;
      Reserved_23                 at 0 range 23 .. 23;
      Reserved_24                 at 0 range 24 .. 24;
      Reserved_25                 at 0 range 25 .. 25;
      Reserved_26                 at 0 range 26 .. 26;
      Reserved_27                 at 0 range 27 .. 27;
      Reserved_28                 at 0 range 28 .. 28;
      Reserved_29                 at 0 range 29 .. 29;
      Reserved_30                 at 0 range 30 .. 30;
      Reserved_31                 at 0 range 31 .. 31;
   end record;

   function Image (V : Gimbal_Manager_Cap_Flags) return String is
     ("["
      & (if V.Has_Retract then "HAS_RETRACT " else "")
      & (if V.Has_Neutral then "HAS_NEUTRAL " else "")
      & (if V.Has_Roll_Axis then "HAS_ROLL_AXIS " else "")
      & (if V.Has_Roll_Follow then "HAS_ROLL_FOLLOW " else "")
      & (if V.Has_Roll_Lock then "HAS_ROLL_LOCK " else "")
      & (if V.Has_Pitch_Axis then "HAS_PITCH_AXIS " else "")
      & (if V.Has_Pitch_Follow then "HAS_PITCH_FOLLOW " else "")
      & (if V.Has_Pitch_Lock then "HAS_PITCH_LOCK " else "")
      & (if V.Has_Yaw_Axis then "HAS_YAW_AXIS " else "")
      & (if V.Has_Yaw_Follow then "HAS_YAW_FOLLOW " else "")
      & (if V.Has_Yaw_Lock then "HAS_YAW_LOCK " else "")
      & (if V.Supports_Infinite_Yaw then "SUPPORTS_INFINITE_YAW " else "")
      & (if V.Supports_Yaw_In_Earth_Frame then "SUPPORTS_YAW_IN_EARTH_FRAME " else "")
      & (if V.Has_Rc_Inputs then "HAS_RC_INPUTS " else "")
      & (if V.Can_Point_Location_Local then "CAN_POINT_LOCATION_LOCAL " else "")
      & (if V.Can_Point_Location_Global then "CAN_POINT_LOCATION_GLOBAL " else "")
      & "]");

   type Gimbal_Device_Flags is record
      Retract                    : Boolean := False;
      Neutral                    : Boolean := False;
      Roll_Lock                  : Boolean := False;
      Pitch_Lock                 : Boolean := False;
      Yaw_Lock                   : Boolean := False;
      Yaw_In_Vehicle_Frame       : Boolean := False;
      Yaw_In_Earth_Frame         : Boolean := False;
      Accepts_Yaw_In_Earth_Frame : Boolean := False;
      Rc_Exclusive               : Boolean := False;
      Rc_Mixed                   : Boolean := False;
      Reserved_10                : Boolean := False;
      Reserved_11                : Boolean := False;
      Reserved_12                : Boolean := False;
      Reserved_13                : Boolean := False;
      Reserved_14                : Boolean := False;
      Reserved_15                : Boolean := False;
   end record with Size => 16;
   --  Flags for gimbal device (lower level) operation. 

   for Gimbal_Device_Flags use record
      Retract                    at 0 range 0 .. 0;
      Neutral                    at 0 range 1 .. 1;
      Roll_Lock                  at 0 range 2 .. 2;
      Pitch_Lock                 at 0 range 3 .. 3;
      Yaw_Lock                   at 0 range 4 .. 4;
      Yaw_In_Vehicle_Frame       at 0 range 5 .. 5;
      Yaw_In_Earth_Frame         at 0 range 6 .. 6;
      Accepts_Yaw_In_Earth_Frame at 0 range 7 .. 7;
      Rc_Exclusive               at 0 range 8 .. 8;
      Rc_Mixed                   at 0 range 9 .. 9;
      Reserved_10                at 0 range 10 .. 10;
      Reserved_11                at 0 range 11 .. 11;
      Reserved_12                at 0 range 12 .. 12;
      Reserved_13                at 0 range 13 .. 13;
      Reserved_14                at 0 range 14 .. 14;
      Reserved_15                at 0 range 15 .. 15;
   end record;

   function Image (V : Gimbal_Device_Flags) return String is
     ("["
      & (if V.Retract then "RETRACT " else "")
      & (if V.Neutral then "NEUTRAL " else "")
      & (if V.Roll_Lock then "ROLL_LOCK " else "")
      & (if V.Pitch_Lock then "PITCH_LOCK " else "")
      & (if V.Yaw_Lock then "YAW_LOCK " else "")
      & (if V.Yaw_In_Vehicle_Frame then "YAW_IN_VEHICLE_FRAME " else "")
      & (if V.Yaw_In_Earth_Frame then "YAW_IN_EARTH_FRAME " else "")
      & (if V.Accepts_Yaw_In_Earth_Frame then "ACCEPTS_YAW_IN_EARTH_FRAME " else "")
      & (if V.Rc_Exclusive then "RC_EXCLUSIVE " else "")
      & (if V.Rc_Mixed then "RC_MIXED " else "")
      & "]");

   type Gimbal_Manager_Flags is record
      Retract                    : Boolean := False;
      Neutral                    : Boolean := False;
      Roll_Lock                  : Boolean := False;
      Pitch_Lock                 : Boolean := False;
      Yaw_Lock                   : Boolean := False;
      Yaw_In_Vehicle_Frame       : Boolean := False;
      Yaw_In_Earth_Frame         : Boolean := False;
      Accepts_Yaw_In_Earth_Frame : Boolean := False;
      Rc_Exclusive               : Boolean := False;
      Rc_Mixed                   : Boolean := False;
      Reserved_10                : Boolean := False;
      Reserved_11                : Boolean := False;
      Reserved_12                : Boolean := False;
      Reserved_13                : Boolean := False;
      Reserved_14                : Boolean := False;
      Reserved_15                : Boolean := False;
      Reserved_16                : Boolean := False;
      Reserved_17                : Boolean := False;
      Reserved_18                : Boolean := False;
      Reserved_19                : Boolean := False;
      Reserved_20                : Boolean := False;
      Reserved_21                : Boolean := False;
      Reserved_22                : Boolean := False;
      Reserved_23                : Boolean := False;
      Reserved_24                : Boolean := False;
      Reserved_25                : Boolean := False;
      Reserved_26                : Boolean := False;
      Reserved_27                : Boolean := False;
      Reserved_28                : Boolean := False;
      Reserved_29                : Boolean := False;
      Reserved_30                : Boolean := False;
      Reserved_31                : Boolean := False;
   end record with Size => 32;
   --  Flags for high level gimbal manager operation The first 16 bits are 
   --  identical to the GIMBAL_DEVICE_FLAGS. 

   for Gimbal_Manager_Flags use record
      Retract                    at 0 range 0 .. 0;
      Neutral                    at 0 range 1 .. 1;
      Roll_Lock                  at 0 range 2 .. 2;
      Pitch_Lock                 at 0 range 3 .. 3;
      Yaw_Lock                   at 0 range 4 .. 4;
      Yaw_In_Vehicle_Frame       at 0 range 5 .. 5;
      Yaw_In_Earth_Frame         at 0 range 6 .. 6;
      Accepts_Yaw_In_Earth_Frame at 0 range 7 .. 7;
      Rc_Exclusive               at 0 range 8 .. 8;
      Rc_Mixed                   at 0 range 9 .. 9;
      Reserved_10                at 0 range 10 .. 10;
      Reserved_11                at 0 range 11 .. 11;
      Reserved_12                at 0 range 12 .. 12;
      Reserved_13                at 0 range 13 .. 13;
      Reserved_14                at 0 range 14 .. 14;
      Reserved_15                at 0 range 15 .. 15;
      Reserved_16                at 0 range 16 .. 16;
      Reserved_17                at 0 range 17 .. 17;
      Reserved_18                at 0 range 18 .. 18;
      Reserved_19                at 0 range 19 .. 19;
      Reserved_20                at 0 range 20 .. 20;
      Reserved_21                at 0 range 21 .. 21;
      Reserved_22                at 0 range 22 .. 22;
      Reserved_23                at 0 range 23 .. 23;
      Reserved_24                at 0 range 24 .. 24;
      Reserved_25                at 0 range 25 .. 25;
      Reserved_26                at 0 range 26 .. 26;
      Reserved_27                at 0 range 27 .. 27;
      Reserved_28                at 0 range 28 .. 28;
      Reserved_29                at 0 range 29 .. 29;
      Reserved_30                at 0 range 30 .. 30;
      Reserved_31                at 0 range 31 .. 31;
   end record;

   function Image (V : Gimbal_Manager_Flags) return String is
     ("["
      & (if V.Retract then "RETRACT " else "")
      & (if V.Neutral then "NEUTRAL " else "")
      & (if V.Roll_Lock then "ROLL_LOCK " else "")
      & (if V.Pitch_Lock then "PITCH_LOCK " else "")
      & (if V.Yaw_Lock then "YAW_LOCK " else "")
      & (if V.Yaw_In_Vehicle_Frame then "YAW_IN_VEHICLE_FRAME " else "")
      & (if V.Yaw_In_Earth_Frame then "YAW_IN_EARTH_FRAME " else "")
      & (if V.Accepts_Yaw_In_Earth_Frame then "ACCEPTS_YAW_IN_EARTH_FRAME " else "")
      & (if V.Rc_Exclusive then "RC_EXCLUSIVE " else "")
      & (if V.Rc_Mixed then "RC_MIXED " else "")
      & "]");

   type Gimbal_Device_Error_Flags is record
      At_Roll_Limit       : Boolean := False;
      At_Pitch_Limit      : Boolean := False;
      At_Yaw_Limit        : Boolean := False;
      Encoder_Error       : Boolean := False;
      Power_Error         : Boolean := False;
      Motor_Error         : Boolean := False;
      Software_Error      : Boolean := False;
      Comms_Error         : Boolean := False;
      Calibration_Running : Boolean := False;
      No_Manager          : Boolean := False;
      Reserved_10         : Boolean := False;
      Reserved_11         : Boolean := False;
      Reserved_12         : Boolean := False;
      Reserved_13         : Boolean := False;
      Reserved_14         : Boolean := False;
      Reserved_15         : Boolean := False;
      Reserved_16         : Boolean := False;
      Reserved_17         : Boolean := False;
      Reserved_18         : Boolean := False;
      Reserved_19         : Boolean := False;
      Reserved_20         : Boolean := False;
      Reserved_21         : Boolean := False;
      Reserved_22         : Boolean := False;
      Reserved_23         : Boolean := False;
      Reserved_24         : Boolean := False;
      Reserved_25         : Boolean := False;
      Reserved_26         : Boolean := False;
      Reserved_27         : Boolean := False;
      Reserved_28         : Boolean := False;
      Reserved_29         : Boolean := False;
      Reserved_30         : Boolean := False;
      Reserved_31         : Boolean := False;
   end record with Size => 32;
   --  Gimbal device (low level) error flags (bitmap, 0 means no error) 

   for Gimbal_Device_Error_Flags use record
      At_Roll_Limit       at 0 range 0 .. 0;
      At_Pitch_Limit      at 0 range 1 .. 1;
      At_Yaw_Limit        at 0 range 2 .. 2;
      Encoder_Error       at 0 range 3 .. 3;
      Power_Error         at 0 range 4 .. 4;
      Motor_Error         at 0 range 5 .. 5;
      Software_Error      at 0 range 6 .. 6;
      Comms_Error         at 0 range 7 .. 7;
      Calibration_Running at 0 range 8 .. 8;
      No_Manager          at 0 range 9 .. 9;
      Reserved_10         at 0 range 10 .. 10;
      Reserved_11         at 0 range 11 .. 11;
      Reserved_12         at 0 range 12 .. 12;
      Reserved_13         at 0 range 13 .. 13;
      Reserved_14         at 0 range 14 .. 14;
      Reserved_15         at 0 range 15 .. 15;
      Reserved_16         at 0 range 16 .. 16;
      Reserved_17         at 0 range 17 .. 17;
      Reserved_18         at 0 range 18 .. 18;
      Reserved_19         at 0 range 19 .. 19;
      Reserved_20         at 0 range 20 .. 20;
      Reserved_21         at 0 range 21 .. 21;
      Reserved_22         at 0 range 22 .. 22;
      Reserved_23         at 0 range 23 .. 23;
      Reserved_24         at 0 range 24 .. 24;
      Reserved_25         at 0 range 25 .. 25;
      Reserved_26         at 0 range 26 .. 26;
      Reserved_27         at 0 range 27 .. 27;
      Reserved_28         at 0 range 28 .. 28;
      Reserved_29         at 0 range 29 .. 29;
      Reserved_30         at 0 range 30 .. 30;
      Reserved_31         at 0 range 31 .. 31;
   end record;

   function Image (V : Gimbal_Device_Error_Flags) return String is
     ("["
      & (if V.At_Roll_Limit then "AT_ROLL_LIMIT " else "")
      & (if V.At_Pitch_Limit then "AT_PITCH_LIMIT " else "")
      & (if V.At_Yaw_Limit then "AT_YAW_LIMIT " else "")
      & (if V.Encoder_Error then "ENCODER_ERROR " else "")
      & (if V.Power_Error then "POWER_ERROR " else "")
      & (if V.Motor_Error then "MOTOR_ERROR " else "")
      & (if V.Software_Error then "SOFTWARE_ERROR " else "")
      & (if V.Comms_Error then "COMMS_ERROR " else "")
      & (if V.Calibration_Running then "CALIBRATION_RUNNING " else "")
      & (if V.No_Manager then "NO_MANAGER " else "")
      & "]");

   type Gripper_Actions is new Interfaces.Unsigned_8;
   --  Gripper actions. 

   function Open return Gripper_Actions is (0)
     with Static;
   --  Gripper commence open. Often used to release cargo. 

   function Close return Gripper_Actions is (1)
     with Static;
   --  Gripper commence close. Often used to grab onto cargo. 

   function Stop return Gripper_Actions is (2)
     with Static;
   --  Gripper stop (maintain current grip position). 

   subtype Gripper_Actions_Well_Known is Gripper_Actions
     with Static_Predicate => Gripper_Actions_Well_Known in
       Open .. Stop;

   function Well_Known_Image
     (Value : Gripper_Actions_Well_Known) return String is
       (case Value is
        when Open => "Open",
        when Close => "Close",
        when Stop => "Stop");

   function Image (Value : Gripper_Actions) return String is
     (if Value in Gripper_Actions_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Winch_Actions is new Interfaces.Unsigned_8;
   --  Winch actions. 

   function Relaxed return Winch_Actions is (0)
     with Static;
   --  Allow motor to freewheel. 

   function Relative_Length_Control return Winch_Actions is (1)
     with Static;
   --  Wind or unwind specified length of line, optionally using specified 
   --  rate. 

   function Rate_Control return Winch_Actions is (2)
     with Static;
   --  Wind or unwind line at specified rate. 

   function Lock return Winch_Actions is (3)
     with Static;
   --  Perform the locking sequence to relieve motor while in the fully 
   --  retracted position. Only action and instance command parameters are 
   --  used, others are ignored. 

   function Deliver return Winch_Actions is (4)
     with Static;
   --  Sequence of drop, slow down, touch down, reel up, lock. Only action and 
   --  instance command parameters are used, others are ignored. 

   function Hold return Winch_Actions is (5)
     with Static;
   --  Engage motor and hold current position. Only action and instance 
   --  command parameters are used, others are ignored. 

   function Retract return Winch_Actions is (6)
     with Static;
   --  Return the reel to the fully retracted position. Only action and 
   --  instance command parameters are used, others are ignored. 

   function Load_Line return Winch_Actions is (7)
     with Static;
   --  Load the reel with line. The winch will calculate the total loaded 
   --  length and stop when the tension exceeds a threshold. Only action and 
   --  instance command parameters are used, others are ignored. 

   function Abandon_Line return Winch_Actions is (8)
     with Static;
   --  Spool out the entire length of the line. Only action and instance 
   --  command parameters are used, others are ignored. 

   function Load_Payload return Winch_Actions is (9)
     with Static;
   --  Spools out just enough to present the hook to the user to load the 
   --  payload. Only action and instance command parameters are used, others 
   --  are ignored 

   subtype Winch_Actions_Well_Known is Winch_Actions
     with Static_Predicate => Winch_Actions_Well_Known in
       Relaxed .. Load_Payload;

   function Well_Known_Image
     (Value : Winch_Actions_Well_Known) return String is
       (case Value is
        when Relaxed => "Relaxed",
        when Relative_Length_Control => "Relative_Length_Control",
        when Rate_Control => "Rate_Control",
        when Lock => "Lock",
        when Deliver => "Deliver",
        when Hold => "Hold",
        when Retract => "Retract",
        when Load_Line => "Load_Line",
        when Abandon_Line => "Abandon_Line",
        when Load_Payload => "Load_Payload");

   function Image (Value : Winch_Actions) return String is
     (if Value in Winch_Actions_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Uavcan_Node_Health is new Interfaces.Unsigned_8;
   --  Generalized UAVCAN node health 

   function Ok return Uavcan_Node_Health is (0)
     with Static;
   --  The node is functioning properly. 

   function Warning return Uavcan_Node_Health is (1)
     with Static;
   --  A critical parameter went out of range or the node has encountered a 
   --  minor failure. 

   function Error return Uavcan_Node_Health is (2)
     with Static;
   --  The node has encountered a major failure. 

   function Critical return Uavcan_Node_Health is (3)
     with Static;
   --  The node has suffered a fatal malfunction. 

   subtype Uavcan_Node_Health_Well_Known is Uavcan_Node_Health
     with Static_Predicate => Uavcan_Node_Health_Well_Known in
       Ok .. Critical;

   function Well_Known_Image
     (Value : Uavcan_Node_Health_Well_Known) return String is
       (case Value is
        when Ok => "Ok",
        when Warning => "Warning",
        when Error => "Error",
        when Critical => "Critical");

   function Image (Value : Uavcan_Node_Health) return String is
     (if Value in Uavcan_Node_Health_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Uavcan_Node_Mode is new Interfaces.Unsigned_8;
   --  Generalized UAVCAN node mode 

   function Operational return Uavcan_Node_Mode is (0)
     with Static;
   --  The node is performing its primary functions. 

   function Initialization return Uavcan_Node_Mode is (1)
     with Static;
   --  The node is initializing; this mode is entered immediately after 
   --  startup. 

   function Maintenance return Uavcan_Node_Mode is (2)
     with Static;
   --  The node is under maintenance. 

   function Software_Update return Uavcan_Node_Mode is (3)
     with Static;
   --  The node is in the process of updating its software. 

   function Offline return Uavcan_Node_Mode is (7)
     with Static;
   --  The node is no longer available online. 

   subtype Uavcan_Node_Mode_Well_Known is Uavcan_Node_Mode
     with Static_Predicate => Uavcan_Node_Mode_Well_Known in
       Operational .. Software_Update
       | Offline;

   function Well_Known_Image
     (Value : Uavcan_Node_Mode_Well_Known) return String is
       (case Value is
        when Operational => "Operational",
        when Initialization => "Initialization",
        when Maintenance => "Maintenance",
        when Software_Update => "Software_Update",
        when Offline => "Offline");

   function Image (Value : Uavcan_Node_Mode) return String is
     (if Value in Uavcan_Node_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Esc_Connection_Type is new Interfaces.Unsigned_8;
   --  Indicates the ESC connection type. 

   function Ppm return Esc_Connection_Type is (0)
     with Static;
   --  Traditional PPM ESC. 

   function Serial return Esc_Connection_Type is (1)
     with Static;
   --  Serial Bus connected ESC. 

   function Oneshot return Esc_Connection_Type is (2)
     with Static;
   --  One Shot PPM ESC. 

   function I2C return Esc_Connection_Type is (3)
     with Static;
   --  I2C ESC. 

   function Can return Esc_Connection_Type is (4)
     with Static;
   --  CAN-Bus ESC. 

   function Dshot return Esc_Connection_Type is (5)
     with Static;
   --  DShot ESC. 

   subtype Esc_Connection_Type_Well_Known is Esc_Connection_Type
     with Static_Predicate => Esc_Connection_Type_Well_Known in
       Ppm .. Dshot;

   function Well_Known_Image
     (Value : Esc_Connection_Type_Well_Known) return String is
       (case Value is
        when Ppm => "Ppm",
        when Serial => "Serial",
        when Oneshot => "Oneshot",
        when I2C => "I2C",
        when Can => "Can",
        when Dshot => "Dshot");

   function Image (Value : Esc_Connection_Type) return String is
     (if Value in Esc_Connection_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Esc_Failure_Flags is record
      Over_Current     : Boolean := False;
      Over_Voltage     : Boolean := False;
      Over_Temperature : Boolean := False;
      Over_Rpm         : Boolean := False;
      Inconsistent_Cmd : Boolean := False;
      Motor_Stuck      : Boolean := False;
      Generic_Entry    : Boolean := False;
      Reserved_7       : Boolean := False;
      Reserved_8       : Boolean := False;
      Reserved_9       : Boolean := False;
      Reserved_10      : Boolean := False;
      Reserved_11      : Boolean := False;
      Reserved_12      : Boolean := False;
      Reserved_13      : Boolean := False;
      Reserved_14      : Boolean := False;
      Reserved_15      : Boolean := False;
   end record with Size => 16;
   --  Flags to report ESC failures. 

   for Esc_Failure_Flags use record
      Over_Current     at 0 range 0 .. 0;
      Over_Voltage     at 0 range 1 .. 1;
      Over_Temperature at 0 range 2 .. 2;
      Over_Rpm         at 0 range 3 .. 3;
      Inconsistent_Cmd at 0 range 4 .. 4;
      Motor_Stuck      at 0 range 5 .. 5;
      Generic_Entry    at 0 range 6 .. 6;
      Reserved_7       at 0 range 7 .. 7;
      Reserved_8       at 0 range 8 .. 8;
      Reserved_9       at 0 range 9 .. 9;
      Reserved_10      at 0 range 10 .. 10;
      Reserved_11      at 0 range 11 .. 11;
      Reserved_12      at 0 range 12 .. 12;
      Reserved_13      at 0 range 13 .. 13;
      Reserved_14      at 0 range 14 .. 14;
      Reserved_15      at 0 range 15 .. 15;
   end record;

   function Image (V : Esc_Failure_Flags) return String is
     ("["
      & (if V.Over_Current then "OVER_CURRENT " else "")
      & (if V.Over_Voltage then "OVER_VOLTAGE " else "")
      & (if V.Over_Temperature then "OVER_TEMPERATURE " else "")
      & (if V.Over_Rpm then "OVER_RPM " else "")
      & (if V.Inconsistent_Cmd then "INCONSISTENT_CMD " else "")
      & (if V.Motor_Stuck then "MOTOR_STUCK " else "")
      & (if V.Generic_Entry then "GENERIC " else "")
      & "]");

   type Storage_Status is new Interfaces.Unsigned_8;
   --  Flags to indicate the status of camera storage. 

   function Empty return Storage_Status is (0)
     with Static;
   --  Storage is missing (no microSD card loaded for example.) 

   function Unformatted return Storage_Status is (1)
     with Static;
   --  Storage present but unformatted. 

   function Ready return Storage_Status is (2)
     with Static;
   --  Storage present and ready. 

   function Not_Supported return Storage_Status is (3)
     with Static;
   --  Camera does not supply storage status information. Capacity information 
   --  in STORAGE_INFORMATION fields will be ignored. 

   subtype Storage_Status_Well_Known is Storage_Status
     with Static_Predicate => Storage_Status_Well_Known in
       Empty .. Not_Supported;

   function Well_Known_Image
     (Value : Storage_Status_Well_Known) return String is
       (case Value is
        when Empty => "Empty",
        when Unformatted => "Unformatted",
        when Ready => "Ready",
        when Not_Supported => "Not_Supported");

   function Image (Value : Storage_Status) return String is
     (if Value in Storage_Status_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Storage_Type is new Interfaces.Unsigned_8;
   --  Flags to indicate the type of storage. 

   function Unknown return Storage_Type is (0)
     with Static;
   --  Storage type is not known. 

   function Usb_Stick return Storage_Type is (1)
     with Static;
   --  Storage type is USB device. 

   function Sd return Storage_Type is (2)
     with Static;
   --  Storage type is SD card. 

   function Microsd return Storage_Type is (3)
     with Static;
   --  Storage type is microSD card. 

   function Cf return Storage_Type is (4)
     with Static;
   --  Storage type is CFast. 

   function Cfe return Storage_Type is (5)
     with Static;
   --  Storage type is CFexpress. 

   function Xqd return Storage_Type is (6)
     with Static;
   --  Storage type is XQD. 

   function Hd return Storage_Type is (7)
     with Static;
   --  Storage type is HD mass storage type. 

   function Other return Storage_Type is (254)
     with Static;
   --  Storage type is other, not listed type. 

   subtype Storage_Type_Well_Known is Storage_Type
     with Static_Predicate => Storage_Type_Well_Known in
       Unknown .. Hd
       | Other;

   function Well_Known_Image
     (Value : Storage_Type_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Usb_Stick => "Usb_Stick",
        when Sd => "Sd",
        when Microsd => "Microsd",
        when Cf => "Cf",
        when Cfe => "Cfe",
        when Xqd => "Xqd",
        when Hd => "Hd",
        when Other => "Other");

   function Image (Value : Storage_Type) return String is
     (if Value in Storage_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Storage_Usage_Flag is record
      Set        : Boolean := False;
      Photo      : Boolean := False;
      Video      : Boolean := False;
      Logs       : Boolean := False;
      Reserved_4 : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;
   --  Flags to indicate usage for a particular storage (see 
   --  STORAGE_INFORMATION.storage_usage and MAV_CMD_SET_STORAGE_USAGE). 

   for Storage_Usage_Flag use record
      Set        at 0 range 0 .. 0;
      Photo      at 0 range 1 .. 1;
      Video      at 0 range 2 .. 2;
      Logs       at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Storage_Usage_Flag) return String is
     ("["
      & (if V.Set then "SET " else "")
      & (if V.Photo then "PHOTO " else "")
      & (if V.Video then "VIDEO " else "")
      & (if V.Logs then "LOGS " else "")
      & "]");

   type Orbit_Yaw_Behaviour is new Interfaces.Unsigned_8;
   --  Yaw behaviour during orbit flight. 

   function Hold_Front_To_Circle_Center return Orbit_Yaw_Behaviour is (0)
     with Static;
   --  Vehicle front points to the center (default). 

   function Hold_Initial_Heading return Orbit_Yaw_Behaviour is (1)
     with Static;
   --  Vehicle front holds heading when message received. 

   function Uncontrolled return Orbit_Yaw_Behaviour is (2)
     with Static;
   --  Yaw uncontrolled. 

   function Hold_Front_Tangent_To_Circle return Orbit_Yaw_Behaviour is (3)
     with Static;
   --  Vehicle front follows flight path (tangential to circle). 

   function Rc_Controlled return Orbit_Yaw_Behaviour is (4)
     with Static;
   --  Yaw controlled by RC input. 

   function Unchanged return Orbit_Yaw_Behaviour is (5)
     with Static;
   --  Vehicle uses current yaw behaviour (unchanged). The vehicle-default yaw 
   --  behaviour is used if this value is specified when orbit is first 
   --  commanded. 

   subtype Orbit_Yaw_Behaviour_Well_Known is Orbit_Yaw_Behaviour
     with Static_Predicate => Orbit_Yaw_Behaviour_Well_Known in
       Hold_Front_To_Circle_Center .. Unchanged;

   function Well_Known_Image
     (Value : Orbit_Yaw_Behaviour_Well_Known) return String is
       (case Value is
        when Hold_Front_To_Circle_Center => "Hold_Front_To_Circle_Center",
        when Hold_Initial_Heading => "Hold_Initial_Heading",
        when Uncontrolled => "Uncontrolled",
        when Hold_Front_Tangent_To_Circle => "Hold_Front_Tangent_To_Circle",
        when Rc_Controlled => "Rc_Controlled",
        when Unchanged => "Unchanged");

   function Image (Value : Orbit_Yaw_Behaviour) return String is
     (if Value in Orbit_Yaw_Behaviour_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Wifi_Config_Ap_Response is new Interfaces.Unsigned_8;
   --  Possible responses from a WIFI_CONFIG_AP message. 

   function Undefined return Wifi_Config_Ap_Response is (0)
     with Static;
   --  Undefined response. Likely an indicative of a system that doesn't 
   --  support this request. 

   function Accepted return Wifi_Config_Ap_Response is (1)
     with Static;
   --  Changes accepted. 

   function Rejected return Wifi_Config_Ap_Response is (2)
     with Static;
   --  Changes rejected. 

   function Mode_Error return Wifi_Config_Ap_Response is (3)
     with Static;
   --  Invalid Mode. 

   function Ssid_Error return Wifi_Config_Ap_Response is (4)
     with Static;
   --  Invalid SSID. 

   function Password_Error return Wifi_Config_Ap_Response is (5)
     with Static;
   --  Invalid Password. 

   subtype Wifi_Config_Ap_Response_Well_Known is Wifi_Config_Ap_Response
     with Static_Predicate => Wifi_Config_Ap_Response_Well_Known in
       Undefined .. Password_Error;

   function Well_Known_Image
     (Value : Wifi_Config_Ap_Response_Well_Known) return String is
       (case Value is
        when Undefined => "Undefined",
        when Accepted => "Accepted",
        when Rejected => "Rejected",
        when Mode_Error => "Mode_Error",
        when Ssid_Error => "Ssid_Error",
        when Password_Error => "Password_Error");

   function Image (Value : Wifi_Config_Ap_Response) return String is
     (if Value in Wifi_Config_Ap_Response_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Cellular_Config_Response is new Interfaces.Unsigned_8;
   --  Possible responses from a CELLULAR_CONFIG message. 

   function Response_Accepted return Cellular_Config_Response is (0)
     with Static;
   --  Changes accepted. 

   function Response_Apn_Error return Cellular_Config_Response is (1)
     with Static;
   --  Invalid APN. 

   function Response_Pin_Error return Cellular_Config_Response is (2)
     with Static;
   --  Invalid PIN. 

   function Response_Rejected return Cellular_Config_Response is (3)
     with Static;
   --  Changes rejected. 

   function Blocked_Puk_Required return Cellular_Config_Response is (4)
     with Static;
   --  PUK is required to unblock SIM card. 

   subtype Cellular_Config_Response_Well_Known is Cellular_Config_Response
     with Static_Predicate => Cellular_Config_Response_Well_Known in
       Response_Accepted .. Blocked_Puk_Required;

   function Well_Known_Image
     (Value : Cellular_Config_Response_Well_Known) return String is
       (case Value is
        when Response_Accepted => "Response_Accepted",
        when Response_Apn_Error => "Response_Apn_Error",
        when Response_Pin_Error => "Response_Pin_Error",
        when Response_Rejected => "Response_Rejected",
        when Blocked_Puk_Required => "Blocked_Puk_Required");

   function Image (Value : Cellular_Config_Response) return String is
     (if Value in Cellular_Config_Response_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Wifi_Config_Ap_Mode is new Interfaces.Unsigned_8;
   --  WiFi Mode. 

   function Undefined return Wifi_Config_Ap_Mode is (0)
     with Static;
   --  WiFi mode is undefined. 

   function Ap return Wifi_Config_Ap_Mode is (1)
     with Static;
   --  WiFi configured as an access point. 

   function Station return Wifi_Config_Ap_Mode is (2)
     with Static;
   --  WiFi configured as a station connected to an existing local WiFi 
   --  network. 

   function Disabled return Wifi_Config_Ap_Mode is (3)
     with Static;
   --  WiFi disabled. 

   subtype Wifi_Config_Ap_Mode_Well_Known is Wifi_Config_Ap_Mode
     with Static_Predicate => Wifi_Config_Ap_Mode_Well_Known in
       Undefined .. Disabled;

   function Well_Known_Image
     (Value : Wifi_Config_Ap_Mode_Well_Known) return String is
       (case Value is
        when Undefined => "Undefined",
        when Ap => "Ap",
        when Station => "Station",
        when Disabled => "Disabled");

   function Image (Value : Wifi_Config_Ap_Mode) return String is
     (if Value in Wifi_Config_Ap_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Comp_Metadata_Type is new Interfaces.Unsigned_8;
   --  Supported component metadata types. These are used in the "general" 
   --  metadata file returned by COMPONENT_METADATA to provide information 
   --  about supported metadata types. The types are not used directly in 
   --  MAVLink messages. 

   function General return Comp_Metadata_Type is (0)
     with Static;
   --  General information about the component. General metadata includes 
   --  information about other metadata types supported by the component. 
   --  Files of this type must be supported, and must be downloadable from 
   --  vehicle using a MAVLink FTP URI. 

   function Parameter return Comp_Metadata_Type is (1)
     with Static;
   --  Parameter meta data. 

   function Commands return Comp_Metadata_Type is (2)
     with Static;
   --  Meta data that specifies which commands and command parameters the 
   --  vehicle supports. (WIP) 

   function Peripherals return Comp_Metadata_Type is (3)
     with Static;
   --  Meta data that specifies external non-MAVLink peripherals. 

   function Events return Comp_Metadata_Type is (4)
     with Static;
   --  Meta data for the events interface. 

   function Actuators return Comp_Metadata_Type is (5)
     with Static;
   --  Meta data for actuator configuration (motors, servos and vehicle 
   --  geometry) and testing. 

   subtype Comp_Metadata_Type_Well_Known is Comp_Metadata_Type
     with Static_Predicate => Comp_Metadata_Type_Well_Known in
       General .. Actuators;

   function Well_Known_Image
     (Value : Comp_Metadata_Type_Well_Known) return String is
       (case Value is
        when General => "General",
        when Parameter => "Parameter",
        when Commands => "Commands",
        when Peripherals => "Peripherals",
        when Events => "Events",
        when Actuators => "Actuators");

   function Image (Value : Comp_Metadata_Type) return String is
     (if Value in Comp_Metadata_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Actuator_Configuration is new Interfaces.Unsigned_8;
   --  Actuator configuration, used to change a setting on an actuator. 
   --  Component information metadata can be used to know which outputs 
   --  support which commands. 

   function None return Actuator_Configuration is (0)
     with Static;
   --  Do nothing. 

   function Beep return Actuator_Configuration is (1)
     with Static;
   --  Command the actuator to beep now. 

   function A_3D_Mode_On return Actuator_Configuration is (2)
     with Static;
   --  Permanently set the actuator (ESC) to 3D mode (reversible thrust). 

   function A_3D_Mode_Off return Actuator_Configuration is (3)
     with Static;
   --  Permanently set the actuator (ESC) to non 3D mode (non-reversible 
   --  thrust). 

   function Spin_Direction1 return Actuator_Configuration is (4)
     with Static;
   --  Permanently set the actuator (ESC) to spin direction 1 (which can be 
   --  clockwise or counter-clockwise). 

   function Spin_Direction2 return Actuator_Configuration is (5)
     with Static;
   --  Permanently set the actuator (ESC) to spin direction 2 (opposite of 
   --  direction 1). 

   subtype Actuator_Configuration_Well_Known is Actuator_Configuration
     with Static_Predicate => Actuator_Configuration_Well_Known in
       None .. Spin_Direction2;

   function Well_Known_Image
     (Value : Actuator_Configuration_Well_Known) return String is
       (case Value is
        when None => "None",
        when Beep => "Beep",
        when A_3D_Mode_On => "A_3D_Mode_On",
        when A_3D_Mode_Off => "A_3D_Mode_Off",
        when Spin_Direction1 => "Spin_Direction1",
        when Spin_Direction2 => "Spin_Direction2");

   function Image (Value : Actuator_Configuration) return String is
     (if Value in Actuator_Configuration_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Actuator_Output_Function is new Interfaces.Unsigned_8;
   --  Actuator output function. Values greater or equal to 1000 are 
   --  autopilot-specific. 

   function None return Actuator_Output_Function is (0)
     with Static;
   --  No function (disabled). 

   function Motor1 return Actuator_Output_Function is (1)
     with Static;
   --  Motor 1 

   function Motor2 return Actuator_Output_Function is (2)
     with Static;
   --  Motor 2 

   function Motor3 return Actuator_Output_Function is (3)
     with Static;
   --  Motor 3 

   function Motor4 return Actuator_Output_Function is (4)
     with Static;
   --  Motor 4 

   function Motor5 return Actuator_Output_Function is (5)
     with Static;
   --  Motor 5 

   function Motor6 return Actuator_Output_Function is (6)
     with Static;
   --  Motor 6 

   function Motor7 return Actuator_Output_Function is (7)
     with Static;
   --  Motor 7 

   function Motor8 return Actuator_Output_Function is (8)
     with Static;
   --  Motor 8 

   function Motor9 return Actuator_Output_Function is (9)
     with Static;
   --  Motor 9 

   function Motor10 return Actuator_Output_Function is (10)
     with Static;
   --  Motor 10 

   function Motor11 return Actuator_Output_Function is (11)
     with Static;
   --  Motor 11 

   function Motor12 return Actuator_Output_Function is (12)
     with Static;
   --  Motor 12 

   function Motor13 return Actuator_Output_Function is (13)
     with Static;
   --  Motor 13 

   function Motor14 return Actuator_Output_Function is (14)
     with Static;
   --  Motor 14 

   function Motor15 return Actuator_Output_Function is (15)
     with Static;
   --  Motor 15 

   function Motor16 return Actuator_Output_Function is (16)
     with Static;
   --  Motor 16 

   function Servo1 return Actuator_Output_Function is (33)
     with Static;
   --  Servo 1 

   function Servo2 return Actuator_Output_Function is (34)
     with Static;
   --  Servo 2 

   function Servo3 return Actuator_Output_Function is (35)
     with Static;
   --  Servo 3 

   function Servo4 return Actuator_Output_Function is (36)
     with Static;
   --  Servo 4 

   function Servo5 return Actuator_Output_Function is (37)
     with Static;
   --  Servo 5 

   function Servo6 return Actuator_Output_Function is (38)
     with Static;
   --  Servo 6 

   function Servo7 return Actuator_Output_Function is (39)
     with Static;
   --  Servo 7 

   function Servo8 return Actuator_Output_Function is (40)
     with Static;
   --  Servo 8 

   function Servo9 return Actuator_Output_Function is (41)
     with Static;
   --  Servo 9 

   function Servo10 return Actuator_Output_Function is (42)
     with Static;
   --  Servo 10 

   function Servo11 return Actuator_Output_Function is (43)
     with Static;
   --  Servo 11 

   function Servo12 return Actuator_Output_Function is (44)
     with Static;
   --  Servo 12 

   function Servo13 return Actuator_Output_Function is (45)
     with Static;
   --  Servo 13 

   function Servo14 return Actuator_Output_Function is (46)
     with Static;
   --  Servo 14 

   function Servo15 return Actuator_Output_Function is (47)
     with Static;
   --  Servo 15 

   function Servo16 return Actuator_Output_Function is (48)
     with Static;
   --  Servo 16 

   subtype Actuator_Output_Function_Well_Known is Actuator_Output_Function
     with Static_Predicate => Actuator_Output_Function_Well_Known in
       None .. Motor16
       | Servo1 .. Servo16;

   function Well_Known_Image
     (Value : Actuator_Output_Function_Well_Known) return String is
       (case Value is
        when None => "None",
        when Motor1 => "Motor1",
        when Motor2 => "Motor2",
        when Motor3 => "Motor3",
        when Motor4 => "Motor4",
        when Motor5 => "Motor5",
        when Motor6 => "Motor6",
        when Motor7 => "Motor7",
        when Motor8 => "Motor8",
        when Motor9 => "Motor9",
        when Motor10 => "Motor10",
        when Motor11 => "Motor11",
        when Motor12 => "Motor12",
        when Motor13 => "Motor13",
        when Motor14 => "Motor14",
        when Motor15 => "Motor15",
        when Motor16 => "Motor16",
        when Servo1 => "Servo1",
        when Servo2 => "Servo2",
        when Servo3 => "Servo3",
        when Servo4 => "Servo4",
        when Servo5 => "Servo5",
        when Servo6 => "Servo6",
        when Servo7 => "Servo7",
        when Servo8 => "Servo8",
        when Servo9 => "Servo9",
        when Servo10 => "Servo10",
        when Servo11 => "Servo11",
        when Servo12 => "Servo12",
        when Servo13 => "Servo13",
        when Servo14 => "Servo14",
        when Servo15 => "Servo15",
        when Servo16 => "Servo16");

   function Image (Value : Actuator_Output_Function) return String is
     (if Value in Actuator_Output_Function_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Autotune_Axis is record
      Roll       : Boolean := False;
      Pitch      : Boolean := False;
      Yaw        : Boolean := False;
      Reserved_3 : Boolean := False;
      Reserved_4 : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;
   --  Axes that will be autotuned by MAV_CMD_DO_AUTOTUNE_ENABLE. Note that at 
   --  least one flag must be set in MAV_CMD_DO_AUTOTUNE_ENABLE.param2: if 
   --  none are set, the flight stack will tune its default set of axes. 

   for Autotune_Axis use record
      Roll       at 0 range 0 .. 0;
      Pitch      at 0 range 1 .. 1;
      Yaw        at 0 range 2 .. 2;
      Reserved_3 at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Autotune_Axis) return String is
     ("["
      & (if V.Roll then "ROLL " else "")
      & (if V.Pitch then "PITCH " else "")
      & (if V.Yaw then "YAW " else "")
      & "]");

   type Preflight_Storage_Parameter_Action is new Interfaces.Unsigned_8;
   --  Actions for reading/writing parameters between persistent and volatile 
   --  storage when using MAV_CMD_PREFLIGHT_STORAGE. (Commonly parameters are 
   --  loaded from persistent storage (flash/EEPROM) into volatile storage 
   --  (RAM) on startup and written back when they are changed.) 

   function Read_Persistent return Preflight_Storage_Parameter_Action is (0)
     with Static;
   --  Read all parameters from persistent storage. Replaces values in 
   --  volatile storage. 

   function Write_Persistent return Preflight_Storage_Parameter_Action is (1)
     with Static;
   --  Write all parameter values to persistent storage (flash/EEPROM) 

   function Reset_Config_Default return Preflight_Storage_Parameter_Action is (2)
     with Static;
   --  Reset all user configurable parameters to their default value 
   --  (including airframe selection, sensor calibration data, safety 
   --  settings, and so on). Does not reset values that contain operation 
   --  counters and vehicle computed statistics. 

   function Reset_Sensor_Default return Preflight_Storage_Parameter_Action is (3)
     with Static;
   --  Reset only sensor calibration parameters to factory defaults (or 
   --  firmware default if not available) 

   function Reset_All_Default return Preflight_Storage_Parameter_Action is (4)
     with Static;
   --  Reset all parameters, including operation counters, to default values 

   subtype Preflight_Storage_Parameter_Action_Well_Known is Preflight_Storage_Parameter_Action
     with Static_Predicate => Preflight_Storage_Parameter_Action_Well_Known in
       Read_Persistent .. Reset_All_Default;

   function Well_Known_Image
     (Value : Preflight_Storage_Parameter_Action_Well_Known) return String is
       (case Value is
        when Read_Persistent => "Read_Persistent",
        when Write_Persistent => "Write_Persistent",
        when Reset_Config_Default => "Reset_Config_Default",
        when Reset_Sensor_Default => "Reset_Sensor_Default",
        when Reset_All_Default => "Reset_All_Default");

   function Image (Value : Preflight_Storage_Parameter_Action) return String is
     (if Value in Preflight_Storage_Parameter_Action_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Preflight_Storage_Mission_Action is new Interfaces.Unsigned_8;
   --  Actions for reading and writing plan information (mission, rally 
   --  points, geofence) between persistent and volatile storage when using 
   --  MAV_CMD_PREFLIGHT_STORAGE. (Commonly missions are loaded from 
   --  persistent storage (flash/EEPROM) into volatile storage (RAM) on 
   --  startup and written back when they are changed.) 

   function Read_Persistent return Preflight_Storage_Mission_Action is (0)
     with Static;
   --  Read current mission data from persistent storage 

   function Write_Persistent return Preflight_Storage_Mission_Action is (1)
     with Static;
   --  Write current mission data to persistent storage 

   function Reset_Default return Preflight_Storage_Mission_Action is (2)
     with Static;
   --  Erase all mission data stored on the vehicle (both persistent and 
   --  volatile storage) 

   subtype Preflight_Storage_Mission_Action_Well_Known is Preflight_Storage_Mission_Action
     with Static_Predicate => Preflight_Storage_Mission_Action_Well_Known in
       Read_Persistent .. Reset_Default;

   function Well_Known_Image
     (Value : Preflight_Storage_Mission_Action_Well_Known) return String is
       (case Value is
        when Read_Persistent => "Read_Persistent",
        when Write_Persistent => "Write_Persistent",
        when Reset_Default => "Reset_Default");

   function Image (Value : Preflight_Storage_Mission_Action) return String is
     (if Value in Preflight_Storage_Mission_Action_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Reboot_Shutdown_Action is new Interfaces.Unsigned_8;
   --  Reboot/shutdown action for selected component in 
   --  MAV_CMD_PREFLIGHT_REBOOT_SHUTDOWN. 

   function None return Reboot_Shutdown_Action is (0)
     with Static;
   --  Do nothing. 

   function Reboot return Reboot_Shutdown_Action is (1)
     with Static;
   --  Reboot component. 

   function Shutdown return Reboot_Shutdown_Action is (2)
     with Static;
   --  Shutdown component. 

   function Reboot_To_Bootloader return Reboot_Shutdown_Action is (3)
     with Static;
   --  Reboot component and keep it in the bootloader until upgraded. 

   function Power_On return Reboot_Shutdown_Action is (4)
     with Static;
   --  Power on component. Do nothing if component is already powered (ACK 
   --  command with MAV_RESULT_ACCEPTED). 

   subtype Reboot_Shutdown_Action_Well_Known is Reboot_Shutdown_Action
     with Static_Predicate => Reboot_Shutdown_Action_Well_Known in
       None .. Power_On;

   function Well_Known_Image
     (Value : Reboot_Shutdown_Action_Well_Known) return String is
       (case Value is
        when None => "None",
        when Reboot => "Reboot",
        when Shutdown => "Shutdown",
        when Reboot_To_Bootloader => "Reboot_To_Bootloader",
        when Power_On => "Power_On");

   function Image (Value : Reboot_Shutdown_Action) return String is
     (if Value in Reboot_Shutdown_Action_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Reboot_Shutdown_Conditions is new Interfaces.Unsigned_32;
   --  Specifies the conditions under which the 
   --  MAV_CMD_PREFLIGHT_REBOOT_SHUTDOWN command should be accepted. 

   function Safety_Interlocked return Reboot_Shutdown_Conditions is (0)
     with Static;
   --  Reboot/Shutdown only if allowed by safety checks, such as being landed. 

   function Force return Reboot_Shutdown_Conditions is (20190226)
     with Static;
   --  Force reboot/shutdown of the autopilot/component regardless of system 
   --  state. 

   subtype Reboot_Shutdown_Conditions_Well_Known is Reboot_Shutdown_Conditions
     with Static_Predicate => Reboot_Shutdown_Conditions_Well_Known in
       Safety_Interlocked
       | Force;

   function Well_Known_Image
     (Value : Reboot_Shutdown_Conditions_Well_Known) return String is
       (case Value is
        when Safety_Interlocked => "Safety_Interlocked",
        when Force => "Force");

   function Image (Value : Reboot_Shutdown_Conditions) return String is
     (if Value in Reboot_Shutdown_Conditions_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Cmd is new Interfaces.Unsigned_16;
   --  Commands to be executed by the MAV. They can be executed on user 
   --  request, or as part of a mission script. If the action is used in a 
   --  mission, the parameter mapping to the waypoint/mission message is as 
   --  follows: Param 1, Param 2, Param 3, Param 4, X: Param 5, Y:Param 6, 
   --  Z:Param 7. This command list is similar what ARINC 424 is for 
   --  commercial aircraft: A data format how to interpret waypoint/mission 
   --  data. NaN and INT32_MAX may be used in float/integer params 
   --  (respectively) to indicate optional/default values (e.g. to use the 
   --  component's current yaw or latitude rather than a specific value). See 
   --  https://mavlink.io/en/guide/xml_schema.html#MAV_CMD for information 
   --  about the structure of the MAV_CMD entries 

   function Nav_Waypoint return Mav_Cmd is (16)
     with Static;
   --  Navigate to waypoint. This is intended for use in missions (for guided 
   --  commands outside of missions use MAV_CMD_DO_REPOSITION). 

   function Nav_Loiter_Unlim return Mav_Cmd is (17)
     with Static;
   --  Loiter around this waypoint an unlimited amount of time 

   function Nav_Loiter_Turns return Mav_Cmd is (18)
     with Static;
   --  Loiter around this waypoint for X turns 

   function Nav_Loiter_Time return Mav_Cmd is (19)
     with Static;
   --  Loiter at the specified latitude, longitude and altitude for a certain 
   --  amount of time. Multicopter vehicles stop at the point (within a 
   --  vehicle-specific acceptance radius). Forward-only moving vehicles (e.g. 
   --  fixed-wing) circle the point with the specified radius/direction. If 
   --  the Heading Required parameter (2) is non-zero forward moving aircraft 
   --  will only leave the loiter circle once heading towards the next 
   --  waypoint. 

   function Nav_Return_To_Launch return Mav_Cmd is (20)
     with Static;
   --  Return to launch location 

   function Nav_Land return Mav_Cmd is (21)
     with Static;
   --  Land at location. 

   function Nav_Takeoff return Mav_Cmd is (22)
     with Static;
   --  Takeoff from ground / hand. Vehicles that support multiple takeoff 
   --  modes (e.g. VTOL quadplane) should take off using the currently 
   --  configured mode. 

   function Nav_Land_Local return Mav_Cmd is (23)
     with Static;
   --  Land at local position (local frame only) 

   function Nav_Takeoff_Local return Mav_Cmd is (24)
     with Static;
   --  Takeoff from local position (local frame only) 

   function Nav_Follow return Mav_Cmd is (25)
     with Static;
   --  Vehicle following, i.e. this waypoint represents the position of a 
   --  moving vehicle 

   function Nav_Continue_And_Change_Alt return Mav_Cmd is (30)
     with Static;
   --  Continue on the current course and climb/descend to specified altitude. 
   --  When the altitude is reached continue to the next command (i.e., don't 
   --  proceed to the next command until the desired altitude is reached. 

   function Nav_Loiter_To_Alt return Mav_Cmd is (31)
     with Static;
   --  Begin loiter at the specified Latitude and Longitude. If Lat=Lon=0, 
   --  then loiter at the current position. Don't consider the navigation 
   --  command complete (don't leave loiter) until the altitude has been 
   --  reached. Additionally, if the Heading Required parameter is non-zero 
   --  the aircraft will not leave the loiter until heading toward the next 
   --  waypoint. 

   function Do_Follow return Mav_Cmd is (32)
     with Static;
   --  Begin following a target 

   function Do_Follow_Reposition return Mav_Cmd is (33)
     with Static;
   --  Reposition the MAV after a follow target command has been sent 

   function Do_Orbit return Mav_Cmd is (34)
     with Static;
   --  Start orbiting on the circumference of a circle defined by the 
   --  parameters. Setting values to NaN/INT32_MAX (as appropriate) results in 
   --  using defaults. 

   function Nav_Roi return Mav_Cmd is (80)
     with Static;
   pragma Obsolescent (Nav_Roi);
   ------------
   --  DEPRECATED SINCE: 2018-01 REPLACED BY: `MAV_CMD_DO_SET_ROI_*`
   ------------
   --  Sets the region of interest (ROI) for a sensor set or the vehicle 
   --  itself. This can then be used by the vehicle's control system to 
   --  control the vehicle attitude and the attitude of various sensors such 
   --  as cameras. 

   function Nav_Pathplanning return Mav_Cmd is (81)
     with Static;
   --  Control autonomous path planning on the MAV. 

   function Nav_Spline_Waypoint return Mav_Cmd is (82)
     with Static;
   --  Navigate to waypoint using a spline path. 

   function Nav_Vtol_Takeoff return Mav_Cmd is (84)
     with Static;
   --  Takeoff from ground using VTOL mode, and transition to forward flight 
   --  with specified heading. The command should be ignored by vehicles that 
   --  dont support both VTOL and fixed-wing flight (multicopters, 
   --  boats,etc.). 

   function Nav_Vtol_Land return Mav_Cmd is (85)
     with Static;
   --  Land using VTOL mode 

   function Nav_Guided_Enable return Mav_Cmd is (92)
     with Static;
   --  Hand control over to an external controller 

   function Nav_Delay return Mav_Cmd is (93)
     with Static;
   --  Delay the next navigation command a number of seconds or until a 
   --  specified time 

   function Nav_Payload_Place return Mav_Cmd is (94)
     with Static;
   --  Descend and place payload. Vehicle moves to specified location, 
   --  descends until it detects a hanging payload has reached the ground, and 
   --  then releases the payload. If ground is not detected before the 
   --  reaching the maximum descent value (param1), the command will complete 
   --  without releasing the payload. 

   function Nav_Last return Mav_Cmd is (95)
     with Static;
   --  NOP - This command is only used to mark the upper limit of the 
   --  NAV/ACTION commands in the enumeration 

   function Condition_Delay return Mav_Cmd is (112)
     with Static;
   --  Delay mission state machine. 

   function Condition_Change_Alt return Mav_Cmd is (113)
     with Static;
   --  Ascend/descend to target altitude at specified rate. Delay mission 
   --  state machine until desired altitude reached. 

   function Condition_Distance return Mav_Cmd is (114)
     with Static;
   --  Delay mission state machine until within desired distance of next NAV 
   --  point. 

   function Condition_Yaw return Mav_Cmd is (115)
     with Static;
   --  Reach a certain target angle. 

   function Condition_Last return Mav_Cmd is (159)
     with Static;
   --  NOP - This command is only used to mark the upper limit of the 
   --  CONDITION commands in the enumeration 

   function Do_Set_Mode return Mav_Cmd is (176)
     with Static;
   --  Set system mode. 

   function Do_Jump return Mav_Cmd is (177)
     with Static;
   --  Jump to the desired command in the mission list. Repeat this action 
   --  only the specified number of times 

   function Do_Change_Speed return Mav_Cmd is (178)
     with Static;
   --  Change speed and/or throttle set points. The value persists until it is 
   --  overridden or there is a mode change 

   function Do_Set_Home return Mav_Cmd is (179)
     with Static;
   --  Sets the home position to either to the current position or a specified 
   --  position. The home position is the default position that the system 
   --  will return to and land on. The position is set automatically by the 
   --  system during the takeoff (and may also be set using this command). 
   --  Note: the current home position may be emitted in a HOME_POSITION 
   --  message on request (using MAV_CMD_REQUEST_MESSAGE with param1=242). 

   function Do_Set_Parameter return Mav_Cmd is (180)
     with Static;
   pragma Obsolescent (Do_Set_Parameter);
   ------------
   --  DEPRECATED SINCE: 2024-04 REPLACED BY: PARAM_SET
   ------------
   --  Set a system parameter. Caution! Use of this command requires knowledge 
   --  of the numeric enumeration value of the parameter. 

   function Do_Set_Relay return Mav_Cmd is (181)
     with Static;
   --  Set a relay to a condition. 

   function Do_Repeat_Relay return Mav_Cmd is (182)
     with Static;
   --  Cycle a relay on and off for a desired number of cycles with a desired 
   --  period. 

   function Do_Set_Servo return Mav_Cmd is (183)
     with Static;
   --  Set a servo to a desired PWM value. 

   function Do_Repeat_Servo return Mav_Cmd is (184)
     with Static;
   --  Cycle a between its nominal setting and a desired PWM for a desired 
   --  number of cycles with a desired period. 

   function Do_Flighttermination return Mav_Cmd is (185)
     with Static;
   --  Terminate flight immediately. Flight termination immediately and 
   --  irreversibly terminates the current flight, returning the vehicle to 
   --  ground. The vehicle will ignore RC or other input until it has been 
   --  power-cycled. Termination may trigger safety measures, including: 
   --  disabling motors and deployment of parachute on multicopters, and 
   --  setting flight surfaces to initiate a landing pattern on fixed-wing). 
   --  On multicopters without a parachute it may trigger a crash landing. 
   --  Support for this command can be tested using the protocol bit: 
   --  MAV_PROTOCOL_CAPABILITY_FLIGHT_TERMINATION. Support for this command 
   --  can also be tested by sending the command with param1=0 (< 0.5); the 
   --  ACK should be either MAV_RESULT_FAILED or MAV_RESULT_UNSUPPORTED. 

   function Do_Change_Altitude return Mav_Cmd is (186)
     with Static;
   --  Change altitude set point. 

   function Do_Set_Actuator return Mav_Cmd is (187)
     with Static;
   --  Sets actuators (e.g. servos) to a desired value. The actuator numbers 
   --  are mapped to specific outputs (e.g. on any MAIN or AUX PWM or UAVCAN) 
   --  using a flight-stack specific mechanism (i.e. a parameter). 

   function Do_Return_Path_Start return Mav_Cmd is (188)
     with Static;
   --  Mission item to specify the start of a failsafe/landing return-path 
   --  segment (the end of the segment is the next MAV_CMD_DO_LAND_START 
   --  item). A vehicle that is using missions for landing (e.g. in a return 
   --  mode) will join the mission on the closest path of the return-path 
   --  segment (instead of MAV_CMD_DO_LAND_START or the nearest waypoint). The 
   --  main use case is to minimize the failsafe flight path in corridor 
   --  missions, where the inbound/outbound paths are constrained (by 
   --  geofences) to the same particular path. The 
   --  MAV_CMD_NAV_RETURN_PATH_START would be placed at the start of the 
   --  return path. If a failsafe occurs on the outbound path the vehicle will 
   --  move to the nearest point on the return path (which is parallel for 
   --  this kind of mission), effectively turning round and following the 
   --  shortest path to landing. If a failsafe occurs on the inbound path the 
   --  vehicle is already on the return segment and will continue to landing. 
   --  The Latitude/Longitude/Altitude are optional, and may be set to 0 if 
   --  not needed. If specified, the item defines the waypoint at which the 
   --  return segment starts. If sent using as a command, the vehicle will 
   --  perform a mission landing (using the land segment if defined) or reject 
   --  the command if mission landings are not supported, or no mission 
   --  landing is defined. When used as a command any position information in 
   --  the command is ignored. 

   function Do_Land_Start return Mav_Cmd is (189)
     with Static;
   --  Mission item to mark the start of a mission landing pattern, or a 
   --  command to land with a mission landing pattern. When used in a mission, 
   --  this is a marker for the start of a sequence of mission items that 
   --  represent a landing pattern. It should be followed by a navigation item 
   --  that defines the first waypoint of the landing sequence. The start 
   --  marker positional params are used only for selecting what landing 
   --  pattern to use if several are defined in the mission (the selected 
   --  pattern will be the one with the marker position that is closest to the 
   --  vehicle when a landing is commanded). If the marker item position has 
   --  zero-values for latitude, longitude, and altitude, then landing pattern 
   --  selection is instead based on the position of the first waypoint in the 
   --  landing sequence. When sent as a command it triggers a landing using a 
   --  mission landing pattern. The location parameters are not used in this 
   --  case, and should be set to 0. 

   function Do_Rally_Land return Mav_Cmd is (190)
     with Static;
   --  Mission command to perform a landing from a rally point. 

   function Do_Go_Around return Mav_Cmd is (191)
     with Static;
   --  Mission command to safely abort an autonomous landing. 

   function Do_Reposition return Mav_Cmd is (192)
     with Static;
   --  Reposition the vehicle to a specific WGS84 global position. This 
   --  command is intended for guided commands (for missions use 
   --  MAV_CMD_NAV_WAYPOINT instead). 

   function Do_Pause_Continue return Mav_Cmd is (193)
     with Static;
   --  If in a GPS controlled position mode, hold the current position or 
   --  continue. 

   function Do_Set_Reverse return Mav_Cmd is (194)
     with Static;
   --  Set moving direction to forward or reverse. 

   function Do_Set_Roi_Location return Mav_Cmd is (195)
     with Static;
   --  Sets the region of interest (ROI) to a location. This can then be used 
   --  by the vehicle's control system to control the vehicle attitude and the 
   --  attitude of various sensors such as cameras. This command can be sent 
   --  to a gimbal manager but not to a gimbal device. A gimbal is not to 
   --  react to this message. 

   function Do_Set_Roi_Wpnext_Offset return Mav_Cmd is (196)
     with Static;
   --  Sets the region of interest (ROI) to be toward next waypoint, with 
   --  optional pitch/roll/yaw offset. This can then be used by the vehicle's 
   --  control system to control the vehicle attitude and the attitude of 
   --  various sensors such as cameras. This command can be sent to a gimbal 
   --  manager but not to a gimbal device. A gimbal device is not to react to 
   --  this message. 

   function Do_Set_Roi_None return Mav_Cmd is (197)
     with Static;
   --  Cancels any previous ROI command returning the vehicle/sensors to 
   --  default flight characteristics. This can then be used by the vehicle's 
   --  control system to control the vehicle attitude and the attitude of 
   --  various sensors such as cameras. This command can be sent to a gimbal 
   --  manager but not to a gimbal device. A gimbal device is not to react to 
   --  this message. After this command the gimbal manager should go back to 
   --  manual input if available, and otherwise assume a neutral position. 

   function Do_Set_Roi_Sysid return Mav_Cmd is (198)
     with Static;
   --  Mount tracks system with specified system ID. Determination of target 
   --  vehicle position may be done with GLOBAL_POSITION_INT or any other 
   --  means. This command can be sent to a gimbal manager but not to a gimbal 
   --  device. A gimbal device is not to react to this message. 

   function Do_Control_Video return Mav_Cmd is (200)
     with Static;
   --  Control onboard camera system. 

   function Do_Set_Roi return Mav_Cmd is (201)
     with Static;
   pragma Obsolescent (Do_Set_Roi);
   ------------
   --  DEPRECATED SINCE: 2018-01 REPLACED BY: `MAV_CMD_DO_SET_ROI_*`
   ------------
   --  Sets the region of interest (ROI) for a sensor set or the vehicle 
   --  itself. This can then be used by the vehicle's control system to 
   --  control the vehicle attitude and the attitude of various sensors such 
   --  as cameras. 

   function Do_Digicam_Configure return Mav_Cmd is (202)
     with Static;
   --  Configure digital camera. This is a fallback message for systems that 
   --  have not yet implemented PARAM_EXT_XXX messages and camera definition 
   --  files (see https://mavlink.io/en/services/camera_def.html ). 

   function Do_Digicam_Control return Mav_Cmd is (203)
     with Static;
   --  Control digital camera. This is a fallback message for systems that 
   --  have not yet implemented PARAM_EXT_XXX messages and camera definition 
   --  files (see https://mavlink.io/en/services/camera_def.html ). 

   function Do_Mount_Configure return Mav_Cmd is (204)
     with Static;
   pragma Obsolescent (Do_Mount_Configure);
   ------------
   --  DEPRECATED SINCE: 2020-01 REPLACED BY: MAV_CMD_DO_GIMBAL_MANAGER_CONFIGURE
   --  This message has been superseded by 
   --  MAV_CMD_DO_GIMBAL_MANAGER_CONFIGURE. The message can still be used to 
   --  communicate with legacy gimbals implementing it. 
   ------------
   --  Mission command to configure a camera or antenna mount 

   function Do_Mount_Control return Mav_Cmd is (205)
     with Static;
   pragma Obsolescent (Do_Mount_Control);
   ------------
   --  DEPRECATED SINCE: 2020-01 REPLACED BY: MAV_CMD_DO_GIMBAL_MANAGER_PITCHYAW
   --  This message is ambiguous and inconsistent. It has been superseded by 
   --  MAV_CMD_DO_GIMBAL_MANAGER_PITCHYAW and `MAV_CMD_DO_SET_ROI_*` variants. 
   --  The message can still be used to communicate with legacy gimbals 
   --  implementing it. 
   ------------
   --  Mission command to control a camera or antenna mount 

   function Do_Set_Cam_Trigg_Dist return Mav_Cmd is (206)
     with Static;
   --  Mission command to set camera trigger distance for this flight. The 
   --  camera is triggered each time this distance is exceeded. This command 
   --  can also be used to set the shutter integration time for the camera. 

   function Do_Fence_Enable return Mav_Cmd is (207)
     with Static;
   --  Enable the geofence. This can be used in a mission or via the command 
   --  protocol. The persistence/lifetime of the setting is undefined. 
   --  Depending on flight stack implementation it may persist until 
   --  superseded, or it may revert to a system default at the end of a 
   --  mission. Flight stacks typically reset the setting to system defaults 
   --  on reboot. 

   function Do_Parachute return Mav_Cmd is (208)
     with Static;
   --  Mission item/command to release a parachute or enable/disable auto 
   --  release. 

   function Do_Motor_Test return Mav_Cmd is (209)
     with Static;
   --  Command to perform motor test. 

   function Do_Inverted_Flight return Mav_Cmd is (210)
     with Static;
   --  Change to/from inverted flight. 

   function Do_Gripper return Mav_Cmd is (211)
     with Static;
   --  Mission command to operate a gripper. 

   function Do_Autotune_Enable return Mav_Cmd is (212)
     with Static;
   --  Enable/disable autotune. 

   function Nav_Set_Yaw_Speed return Mav_Cmd is (213)
     with Static;
   --  Sets a desired vehicle turn angle and speed change. 

   function Do_Set_Cam_Trigg_Interval return Mav_Cmd is (214)
     with Static;
   --  Mission command to set camera trigger interval for this flight. If 
   --  triggering is enabled, the camera is triggered each time this interval 
   --  expires. This command can also be used to set the shutter integration 
   --  time for the camera. 

   function Do_Mount_Control_Quat return Mav_Cmd is (220)
     with Static;
   pragma Obsolescent (Do_Mount_Control_Quat);
   ------------
   --  DEPRECATED SINCE: 2020-01 REPLACED BY: MAV_CMD_DO_GIMBAL_MANAGER_PITCHYAW
   ------------
   --  Mission command to control a camera or antenna mount, using a 
   --  quaternion as reference. 

   function Do_Guided_Master return Mav_Cmd is (221)
     with Static;
   --  set id of master controller 

   function Do_Guided_Limits return Mav_Cmd is (222)
     with Static;
   --  Set limits for external control 

   function Do_Engine_Control return Mav_Cmd is (223)
     with Static;
   --  Control vehicle engine. This is interpreted by the vehicles engine 
   --  controller to change the target engine state. It is intended for 
   --  vehicles with internal combustion engines 

   function Do_Set_Mission_Current return Mav_Cmd is (224)
     with Static;
   --  Set the mission item with sequence number seq as the current item and 
   --  emit MISSION_CURRENT (whether or not the mission number changed). If a 
   --  mission is currently being executed, the system will continue to this 
   --  new mission item on the shortest path, skipping any intermediate 
   --  mission items. Note that mission jump repeat counters are not reset 
   --  unless param2 is set (see MAV_CMD_DO_JUMP param2). This command may 
   --  trigger a mission state-machine change on some systems: for example 
   --  from MISSION_STATE_NOT_STARTED or MISSION_STATE_PAUSED to 
   --  MISSION_STATE_ACTIVE. If the system is in mission mode, on those 
   --  systems this command might therefore start, restart or resume the 
   --  mission. If the system is not in mission mode this command must not 
   --  trigger a switch to mission mode. The mission may be "reset" using 
   --  param2. Resetting sets jump counters to initial values (to reset 
   --  counters without changing the current mission item set the param1 to 
   --  `-1`). Resetting also explicitly changes a mission state of 
   --  MISSION_STATE_COMPLETE to MISSION_STATE_PAUSED or MISSION_STATE_ACTIVE, 
   --  potentially allowing it to resume when it is (next) in a mission mode. 
   --  The command will ACK with MAV_RESULT_FAILED if the sequence number is 
   --  out of range (including if there is no mission item). 

   function Do_Last return Mav_Cmd is (240)
     with Static;
   --  NOP - This command is only used to mark the upper limit of the DO 
   --  commands in the enumeration 

   function Preflight_Calibration return Mav_Cmd is (241)
     with Static;
   --  Trigger calibration. This command will be only accepted if in 
   --  pre-flight mode. Except for Temperature Calibration, only one sensor 
   --  should be set in a single message and all others should be zero. 

   function Preflight_Set_Sensor_Offsets return Mav_Cmd is (242)
     with Static;
   --  Set sensor offsets. This command will be only accepted if in pre-flight 
   --  mode. 

   function Preflight_Uavcan return Mav_Cmd is (243)
     with Static;
   --  Trigger UAVCAN configuration (actuator ID assignment and direction 
   --  mapping). Note that this maps to the legacy UAVCAN v0 function 
   --  UAVCAN_ENUMERATE, which is intended to be executed just once during 
   --  initial vehicle configuration (it is not a normal pre-flight command 
   --  and has been poorly named). 

   function Preflight_Storage return Mav_Cmd is (245)
     with Static;
   --  Request storage of different parameter values and logs. This command 
   --  will be only accepted if in pre-flight mode. 

   function Preflight_Reboot_Shutdown return Mav_Cmd is (246)
     with Static;
   --  Request the reboot or shutdown of system components. 

   function Override_Goto return Mav_Cmd is (252)
     with Static;
   --  Override current mission with command to pause mission, pause mission 
   --  and move to position, continue/resume mission. When param 1 indicates 
   --  that the mission is paused (MAV_GOTO_DO_HOLD), param 2 defines whether 
   --  it holds in place or moves to another position. 

   function Oblique_Survey return Mav_Cmd is (260)
     with Static;
   --  Mission command to set a Camera Auto Mount Pivoting Oblique Survey 
   --  (Replaces CAM_TRIGG_DIST for this purpose). The camera is triggered 
   --  each time this distance is exceeded, then the mount moves to the next 
   --  position. Params 4~6 set-up the angle limits and number of positions 
   --  for oblique survey, where mount-enabled vehicles automatically roll the 
   --  camera between shots to emulate an oblique camera setup (providing an 
   --  increased HFOV). This command can also be used to set the shutter 
   --  integration time for the camera. 

   function Do_Set_Standard_Mode return Mav_Cmd is (262)
     with Static;
   --  Enable the specified standard MAVLink mode. If the specified mode is 
   --  not supported, the vehicle should ACK with MAV_RESULT_FAILED. See 
   --  https://mavlink.io/en/services/standard_modes.html 

   function Mission_Start return Mav_Cmd is (300)
     with Static;
   --  start running a mission 

   function Actuator_Test return Mav_Cmd is (310)
     with Static;
   --  Actuator testing command. This is similar to MAV_CMD_DO_MOTOR_TEST but 
   --  operates on the level of output functions, i.e. it is possible to test 
   --  Motor1 independent from which output it is configured on. Autopilots 
   --  must NACK this command with MAV_RESULT_TEMPORARILY_REJECTED while 
   --  armed. 

   function Configure_Actuator return Mav_Cmd is (311)
     with Static;
   --  Actuator configuration command. 

   function Component_Arm_Disarm return Mav_Cmd is (400)
     with Static;
   --  Arms / Disarms a component 

   function Run_Prearm_Checks return Mav_Cmd is (401)
     with Static;
   --  Instructs a target system to run pre-arm checks. This allows preflight 
   --  checks to be run on demand, which may be useful on systems that 
   --  normally run them at low rate, or which do not trigger checks when the 
   --  armable state might have changed. This command should return 
   --  MAV_RESULT_ACCEPTED if it will run the checks. The results of the 
   --  checks are usually then reported in SYS_STATUS messages (this is 
   --  system-specific). The command should return 
   --  MAV_RESULT_TEMPORARILY_REJECTED if the system is already armed. 

   function Illuminator_On_Off return Mav_Cmd is (405)
     with Static;
   --  Turns illuminators ON/OFF. An illuminator is a light source that is 
   --  used for lighting up dark areas external to the system: e.g. a torch or 
   --  searchlight (as opposed to a light source for illuminating the system 
   --  itself, e.g. an indicator light). 

   function Do_Illuminator_Configure return Mav_Cmd is (406)
     with Static;
   --  Configures illuminator settings. An illuminator is a light source that 
   --  is used for lighting up dark areas external to the system: e.g. a torch 
   --  or searchlight (as opposed to a light source for illuminating the 
   --  system itself, e.g. an indicator light). 

   function Get_Home_Position return Mav_Cmd is (410)
     with Static;
   pragma Obsolescent (Get_Home_Position);
   ------------
   --  DEPRECATED SINCE: 2022-04 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request the home position from the vehicle. The vehicle will ACK the 
   --  command and then emit the HOME_POSITION message. 

   function Inject_Failure return Mav_Cmd is (420)
     with Static;
   --  Inject artificial failure for testing purposes. Note that autopilots 
   --  should implement an additional protection before accepting this command 
   --  such as a specific param setting. 

   function Start_Rx_Pair return Mav_Cmd is (500)
     with Static;
   --  Starts receiver pairing. 

   function Get_Message_Interval return Mav_Cmd is (510)
     with Static;
   pragma Obsolescent (Get_Message_Interval);
   ------------
   --  DEPRECATED SINCE: 2022-04 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request the interval between messages for a particular MAVLink message 
   --  ID. The receiver should ACK the command and then emit its response in a 
   --  MESSAGE_INTERVAL message. 

   function Set_Message_Interval return Mav_Cmd is (511)
     with Static;
   --  Set the interval between messages for a particular MAVLink message ID. 
   --  This interface replaces REQUEST_DATA_STREAM. 

   function Request_Message return Mav_Cmd is (512)
     with Static;
   --  Request the target system(s) emit a single instance of a specified 
   --  message (i.e. a "one-shot" version of MAV_CMD_SET_MESSAGE_INTERVAL). 

   function Request_Protocol_Version return Mav_Cmd is (519)
     with Static;
   pragma Obsolescent (Request_Protocol_Version);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request MAVLink protocol version compatibility. All receivers should 
   --  ACK the command and then emit their capabilities in an PROTOCOL_VERSION 
   --  message 

   function Request_Autopilot_Capabilities return Mav_Cmd is (520)
     with Static;
   pragma Obsolescent (Request_Autopilot_Capabilities);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request autopilot capabilities. The receiver should ACK the command and 
   --  then emit its capabilities in an AUTOPILOT_VERSION message 

   function Request_Camera_Information return Mav_Cmd is (521)
     with Static;
   pragma Obsolescent (Request_Camera_Information);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request camera information (CAMERA_INFORMATION). 

   function Request_Camera_Settings return Mav_Cmd is (522)
     with Static;
   pragma Obsolescent (Request_Camera_Settings);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request camera settings (CAMERA_SETTINGS). 

   function Request_Storage_Information return Mav_Cmd is (525)
     with Static;
   pragma Obsolescent (Request_Storage_Information);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request storage information (STORAGE_INFORMATION). Use the command's 
   --  target_component to target a specific component's storage. 

   function Storage_Format return Mav_Cmd is (526)
     with Static;
   --  Format a storage medium. Once format is complete, a STORAGE_INFORMATION 
   --  message is sent. Use the command's target_component to target a 
   --  specific component's storage. 

   function Request_Camera_Capture_Status return Mav_Cmd is (527)
     with Static;
   pragma Obsolescent (Request_Camera_Capture_Status);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request camera capture status (CAMERA_CAPTURE_STATUS) 

   function Request_Flight_Information return Mav_Cmd is (528)
     with Static;
   pragma Obsolescent (Request_Flight_Information);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request flight information (FLIGHT_INFORMATION) 

   function Reset_Camera_Settings return Mav_Cmd is (529)
     with Static;
   --  Reset all camera settings to Factory Default 

   function Set_Camera_Mode return Mav_Cmd is (530)
     with Static;
   --  Set camera running mode. Use NaN for reserved values. GCS will send a 
   --  MAV_CMD_REQUEST_VIDEO_STREAM_STATUS command after a mode change if the 
   --  camera supports video streaming. 

   function Set_Camera_Zoom return Mav_Cmd is (531)
     with Static;
   --  Set camera zoom. Camera must respond with a CAMERA_SETTINGS message (on 
   --  success). 

   function Set_Camera_Focus return Mav_Cmd is (532)
     with Static;
   --  Set camera focus. Camera must respond with a CAMERA_SETTINGS message 
   --  (on success). 

   function Set_Storage_Usage return Mav_Cmd is (533)
     with Static;
   --  Set that a particular storage is the preferred location for saving 
   --  photos, videos, and/or other media (e.g. to set that an SD card is used 
   --  for storing videos). There can only be one preferred save location for 
   --  each particular media type: setting a media usage flag will clear/reset 
   --  that same flag if set on any other storage. If no flag is set the 
   --  system should use its default storage. A target system can choose to 
   --  always use default storage, in which case it should ACK the command 
   --  with MAV_RESULT_UNSUPPORTED. A target system can choose to not allow a 
   --  particular storage to be set as preferred storage, in which case it 
   --  should ACK the command with MAV_RESULT_DENIED. 

   function Set_Camera_Source return Mav_Cmd is (534)
     with Static;
   --  Set camera source. Changes the camera's active sources on cameras with 
   --  multiple image sensors. 

   function Jump_Tag return Mav_Cmd is (600)
     with Static;
   --  Tagged jump target. Can be jumped to with MAV_CMD_DO_JUMP_TAG. 

   function Do_Jump_Tag return Mav_Cmd is (601)
     with Static;
   --  Jump to the matching tag in the mission list. Repeat this action for 
   --  the specified number of times. A mission should contain a single 
   --  matching tag for each jump. If this is not the case then a jump to a 
   --  missing tag should complete the mission, and a jump where there are 
   --  multiple matching tags should always select the one with the lowest 
   --  mission sequence number. 

   function Do_Gimbal_Manager_Pitchyaw return Mav_Cmd is (1000)
     with Static;
   --  Set gimbal manager pitch/yaw setpoints (low rate command). It is 
   --  possible to set combinations of the values below. E.g. an angle as well 
   --  as a desired angular rate can be used to get to this angle at a certain 
   --  angular rate, or an angular rate only will result in continuous 
   --  turning. NaN is to be used to signal unset. Note: only the gimbal 
   --  manager will react to this command - it will be ignored by a gimbal 
   --  device. Use GIMBAL_MANAGER_SET_PITCHYAW if you need to stream pitch/yaw 
   --  setpoints at higher rate. 

   function Do_Gimbal_Manager_Configure return Mav_Cmd is (1001)
     with Static;
   --  Gimbal configuration to set which sysid/compid is in primary and 
   --  secondary control. 

   function Image_Start_Capture return Mav_Cmd is (2000)
     with Static;
   --  Start image capture sequence. CAMERA_IMAGE_CAPTURED must be emitted 
   --  after each capture. Param1 (id) may be used to specify the target 
   --  camera: 0: all cameras, 1 to 6: autopilot-connected cameras, 7-255: 
   --  MAVLink camera component ID. It is needed in order to target specific 
   --  cameras connected to the autopilot, or specific sensors in a 
   --  multi-sensor camera (neither of which have a distinct MAVLink component 
   --  ID). It is also needed to specify the target camera in missions. When 
   --  used in a mission, an autopilot should execute the MAV_CMD for a 
   --  specified local camera (param1 = 1-6), or resend it as a command if it 
   --  is intended for a MAVLink camera (param1 = 7 - 255), setting the 
   --  command's target_component as the param1 value (and setting param1 in 
   --  the command to zero). If the param1 is 0 the autopilot should do both. 
   --  When sent in a command the target MAVLink address is set using 
   --  target_component. If addressed specifically to an autopilot: param1 
   --  should be used in the same way as it is for missions (though command 
   --  should NACK with MAV_RESULT_DENIED if a specified local camera does not 
   --  exist). If addressed to a MAVLink camera, param 1 can be used to 
   --  address all cameras (0), or to separately address 1 to 7 individual 
   --  sensors. Other values should be NACKed with MAV_RESULT_DENIED. If the 
   --  command is broadcast (target_component is 0) then param 1 should be set 
   --  to 0 (any other value should be NACKED with MAV_RESULT_DENIED). An 
   --  autopilot would trigger any local cameras and forward the command to 
   --  all channels. 

   function Image_Stop_Capture return Mav_Cmd is (2001)
     with Static;
   --  Stop image capture sequence. Param1 (id) may be used to specify the 
   --  target camera: 0: all cameras, 1 to 6: autopilot-connected cameras, 
   --  7-255: MAVLink camera component ID. It is needed in order to target 
   --  specific cameras connected to the autopilot, or specific sensors in a 
   --  multi-sensor camera (neither of which have a distinct MAVLink component 
   --  ID). It is also needed to specify the target camera in missions. When 
   --  used in a mission, an autopilot should execute the MAV_CMD for a 
   --  specified local camera (param1 = 1-6), or resend it as a command if it 
   --  is intended for a MAVLink camera (param1 = 7 - 255), setting the 
   --  command's target_component as the param1 value (and setting param1 in 
   --  the command to zero). If the param1 is 0 the autopilot should do both. 
   --  When sent in a command the target MAVLink address is set using 
   --  target_component. If addressed specifically to an autopilot: param1 
   --  should be used in the same way as it is for missions (though command 
   --  should NACK with MAV_RESULT_DENIED if a specified local camera does not 
   --  exist). If addressed to a MAVLink camera, param1 can be used to address 
   --  all cameras (0), or to separately address 1 to 7 individual sensors. 
   --  Other values should be NACKed with MAV_RESULT_DENIED. If the command is 
   --  broadcast (target_component is 0) then param 1 should be set to 0 (any 
   --  other value should be NACKED with MAV_RESULT_DENIED). An autopilot 
   --  would trigger any local cameras and forward the command to all 
   --  channels. 

   function Request_Camera_Image_Capture return Mav_Cmd is (2002)
     with Static;
   pragma Obsolescent (Request_Camera_Image_Capture);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Re-request a CAMERA_IMAGE_CAPTURED message. 

   function Do_Trigger_Control return Mav_Cmd is (2003)
     with Static;
   --  Enable or disable on-board camera triggering system. 

   function Camera_Track_Point return Mav_Cmd is (2004)
     with Static;
   --  If the camera supports point visual tracking 
   --  (CAMERA_CAP_FLAGS_HAS_TRACKING_POINT is set), this command allows to 
   --  initiate the tracking. 

   function Camera_Track_Rectangle return Mav_Cmd is (2005)
     with Static;
   --  If the camera supports rectangle visual tracking 
   --  (CAMERA_CAP_FLAGS_HAS_TRACKING_RECTANGLE is set), this command allows 
   --  to initiate the tracking. 

   function Camera_Stop_Tracking return Mav_Cmd is (2010)
     with Static;
   --  Stops ongoing tracking. 

   function Video_Start_Capture return Mav_Cmd is (2500)
     with Static;
   --  Starts video capture (recording). 

   function Video_Stop_Capture return Mav_Cmd is (2501)
     with Static;
   --  Stop the current video capture (recording). 

   function Video_Start_Streaming return Mav_Cmd is (2502)
     with Static;
   --  Start video streaming 

   function Video_Stop_Streaming return Mav_Cmd is (2503)
     with Static;
   --  Stop the given video stream 

   function Request_Video_Stream_Information return Mav_Cmd is (2504)
     with Static;
   pragma Obsolescent (Request_Video_Stream_Information);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request video stream information (VIDEO_STREAM_INFORMATION) 

   function Request_Video_Stream_Status return Mav_Cmd is (2505)
     with Static;
   pragma Obsolescent (Request_Video_Stream_Status);
   ------------
   --  DEPRECATED SINCE: 2019-08 REPLACED BY: MAV_CMD_REQUEST_MESSAGE
   ------------
   --  Request video stream status (VIDEO_STREAM_STATUS) 

   function Logging_Start return Mav_Cmd is (2510)
     with Static;
   --  Request to start streaming logging data over MAVLink (see also 
   --  LOGGING_DATA message) 

   function Logging_Stop return Mav_Cmd is (2511)
     with Static;
   --  Request to stop streaming log data over MAVLink 

   function Airframe_Configuration return Mav_Cmd is (2520)
     with Static;

   function Control_High_Latency return Mav_Cmd is (2600)
     with Static;
   --  Request to start/stop transmitting over the high latency telemetry 

   function Panorama_Create return Mav_Cmd is (2800)
     with Static;
   --  Create a panorama at the current position 

   function Do_Vtol_Transition return Mav_Cmd is (3000)
     with Static;
   --  Request VTOL transition 

   function Arm_Authorization_Request return Mav_Cmd is (3001)
     with Static;
   --  Request authorization to arm the vehicle to a external entity, the arm 
   --  authorizer is responsible to request all data that is needs from the 
   --  vehicle before authorize or deny the request. If approved the 
   --  COMMAND_ACK message progress field should be set with period of time 
   --  that this authorization is valid in seconds. If the authorization is 
   --  denied COMMAND_ACK.result_param2 should be set with one of the reasons 
   --  in ARM_AUTH_DENIED_REASON. 

   function Set_Guided_Submode_Standard return Mav_Cmd is (4000)
     with Static;
   --  This command sets the submode to standard guided when vehicle is in 
   --  guided mode. The vehicle holds position and altitude and the user can 
   --  input the desired velocities along all three axes. 

   function Set_Guided_Submode_Circle return Mav_Cmd is (4001)
     with Static;
   --  This command sets submode circle when vehicle is in guided mode. 
   --  Vehicle flies along a circle facing the center of the circle. The user 
   --  can input the velocity along the circle and change the radius. If no 
   --  input is given the vehicle will hold position. 

   function Condition_Gate return Mav_Cmd is (4501)
     with Static;
   --  Delay mission state machine until gate has been reached. 

   function Nav_Fence_Return_Point return Mav_Cmd is (5000)
     with Static;
   --  Fence return point (there can only be one such point in a geofence 
   --  definition). If rally points are supported they should be used instead. 

   function Nav_Fence_Polygon_Vertex_Inclusion return Mav_Cmd is (5001)
     with Static;
   --  Fence vertex for an inclusion polygon (the polygon must not be 
   --  self-intersecting). The vehicle must stay within this area. Minimum of 
   --  3 vertices required. The vertices for a polygon must be sent 
   --  sequentially, each with param1 set to the total number of vertices in 
   --  the polygon. 

   function Nav_Fence_Polygon_Vertex_Exclusion return Mav_Cmd is (5002)
     with Static;
   --  Fence vertex for an exclusion polygon (the polygon must not be 
   --  self-intersecting). The vehicle must stay outside this area. Minimum of 
   --  3 vertices required. The vertices for a polygon must be sent 
   --  sequentially, each with param1 set to the total number of vertices in 
   --  the polygon. 

   function Nav_Fence_Circle_Inclusion return Mav_Cmd is (5003)
     with Static;
   --  Circular fence area. The vehicle must stay inside this area. 

   function Nav_Fence_Circle_Exclusion return Mav_Cmd is (5004)
     with Static;
   --  Circular fence area. The vehicle must stay outside this area. 

   function Nav_Rally_Point return Mav_Cmd is (5100)
     with Static;
   --  Rally point. You can have multiple rally points defined. 

   function Uavcan_Get_Node_Info return Mav_Cmd is (5200)
     with Static;
   --  Commands the vehicle to respond with a sequence of messages 
   --  UAVCAN_NODE_INFO, one message per every UAVCAN node that is online. 
   --  Note that some of the response messages can be lost, which the receiver 
   --  can detect easily by checking whether every received UAVCAN_NODE_STATUS 
   --  has a matching message UAVCAN_NODE_INFO received earlier; if not, this 
   --  command should be sent again in order to request re-transmission of the 
   --  node information messages. 

   function Do_Set_Safety_Switch_State return Mav_Cmd is (5300)
     with Static;
   --  Change state of safety switch. 

   function Do_Adsb_Out_Ident return Mav_Cmd is (10001)
     with Static;
   --  Trigger the start of an ADSB-out IDENT. This should only be used when 
   --  requested to do so by an Air Traffic Controller in controlled airspace. 
   --  This starts the IDENT which is then typically held for 18 seconds by 
   --  the hardware per the Mode A, C, and S transponder spec. 

   function Payload_Prepare_Deploy return Mav_Cmd is (30001)
     with Static;
   pragma Obsolescent (Payload_Prepare_Deploy);
   ------------
   --  DEPRECATED SINCE: 2021-06 REPLACED BY: 
   ------------
   --  Deploy payload on a Lat / Lon / Alt position. This includes the 
   --  navigation to reach the required release position and velocity. 

   function Payload_Control_Deploy return Mav_Cmd is (30002)
     with Static;
   pragma Obsolescent (Payload_Control_Deploy);
   ------------
   --  DEPRECATED SINCE: 2021-06 REPLACED BY: 
   ------------
   --  Control the payload deployment. 

   function Waypoint_User_1 return Mav_Cmd is (31000)
     with Static;
   --  User defined waypoint item. Ground Station will show the Vehicle as 
   --  flying through this item. 

   function Waypoint_User_2 return Mav_Cmd is (31001)
     with Static;
   --  User defined waypoint item. Ground Station will show the Vehicle as 
   --  flying through this item. 

   function Waypoint_User_3 return Mav_Cmd is (31002)
     with Static;
   --  User defined waypoint item. Ground Station will show the Vehicle as 
   --  flying through this item. 

   function Waypoint_User_4 return Mav_Cmd is (31003)
     with Static;
   --  User defined waypoint item. Ground Station will show the Vehicle as 
   --  flying through this item. 

   function Waypoint_User_5 return Mav_Cmd is (31004)
     with Static;
   --  User defined waypoint item. Ground Station will show the Vehicle as 
   --  flying through this item. 

   function Spatial_User_1 return Mav_Cmd is (31005)
     with Static;
   --  User defined spatial item. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: ROI item. 

   function Spatial_User_2 return Mav_Cmd is (31006)
     with Static;
   --  User defined spatial item. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: ROI item. 

   function Spatial_User_3 return Mav_Cmd is (31007)
     with Static;
   --  User defined spatial item. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: ROI item. 

   function Spatial_User_4 return Mav_Cmd is (31008)
     with Static;
   --  User defined spatial item. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: ROI item. 

   function Spatial_User_5 return Mav_Cmd is (31009)
     with Static;
   --  User defined spatial item. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: ROI item. 

   function User_1 return Mav_Cmd is (31010)
     with Static;
   --  User defined command. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item. 

   function User_2 return Mav_Cmd is (31011)
     with Static;
   --  User defined command. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item. 

   function User_3 return Mav_Cmd is (31012)
     with Static;
   --  User defined command. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item. 

   function User_4 return Mav_Cmd is (31013)
     with Static;
   --  User defined command. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item. 

   function User_5 return Mav_Cmd is (31014)
     with Static;
   --  User defined command. Ground Station will not show the Vehicle as 
   --  flying through this item. Example: MAV_CMD_DO_SET_PARAMETER item. 

   function Can_Forward return Mav_Cmd is (32000)
     with Static;
   --  Request forwarding of CAN packets from the given CAN bus to this 
   --  component. CAN Frames are sent using CAN_FRAME and CANFD_FRAME messages 

   function Fixed_Mag_Cal_Yaw return Mav_Cmd is (42006)
     with Static;
   --  Magnetometer calibration based on provided known yaw. This allows for 
   --  fast calibration using WMM field tables in the vehicle, given only the 
   --  known yaw of the vehicle. If Latitude and longitude are both zero then 
   --  use the current vehicle location. 

   function Do_Winch return Mav_Cmd is (42600)
     with Static;
   --  Command to operate winch. 

   function External_Position_Estimate return Mav_Cmd is (43003)
     with Static;
   --  Provide an external position estimate for use when dead-reckoning. This 
   --  is meant to be used for occasional position resets that may be provided 
   --  by a external system such as a remote pilot using landmarks over a 
   --  video link. 

   subtype Mav_Cmd_Well_Known is Mav_Cmd
     with Static_Predicate => Mav_Cmd_Well_Known in
       Nav_Waypoint .. Nav_Follow
       | Nav_Continue_And_Change_Alt .. Do_Orbit
       | Nav_Roi .. Nav_Spline_Waypoint
       | Nav_Vtol_Takeoff .. Nav_Vtol_Land
       | Nav_Guided_Enable .. Nav_Last
       | Condition_Delay .. Condition_Yaw
       | Condition_Last
       | Do_Set_Mode .. Do_Set_Roi_Sysid
       | Do_Control_Video .. Do_Set_Cam_Trigg_Interval
       | Do_Mount_Control_Quat .. Do_Set_Mission_Current
       | Do_Last .. Preflight_Uavcan
       | Preflight_Storage .. Preflight_Reboot_Shutdown
       | Override_Goto
       | Oblique_Survey
       | Do_Set_Standard_Mode
       | Mission_Start
       | Actuator_Test .. Configure_Actuator
       | Component_Arm_Disarm .. Run_Prearm_Checks
       | Illuminator_On_Off .. Do_Illuminator_Configure
       | Get_Home_Position
       | Inject_Failure
       | Start_Rx_Pair
       | Get_Message_Interval .. Request_Message
       | Request_Protocol_Version .. Request_Camera_Settings
       | Request_Storage_Information .. Set_Camera_Source
       | Jump_Tag .. Do_Jump_Tag
       | Do_Gimbal_Manager_Pitchyaw .. Do_Gimbal_Manager_Configure
       | Image_Start_Capture .. Camera_Track_Rectangle
       | Camera_Stop_Tracking
       | Video_Start_Capture .. Request_Video_Stream_Status
       | Logging_Start .. Logging_Stop
       | Airframe_Configuration
       | Control_High_Latency
       | Panorama_Create
       | Do_Vtol_Transition .. Arm_Authorization_Request
       | Set_Guided_Submode_Standard .. Set_Guided_Submode_Circle
       | Condition_Gate
       | Nav_Fence_Return_Point .. Nav_Fence_Circle_Exclusion
       | Nav_Rally_Point
       | Uavcan_Get_Node_Info
       | Do_Set_Safety_Switch_State
       | Do_Adsb_Out_Ident
       | Payload_Prepare_Deploy .. Payload_Control_Deploy
       | Waypoint_User_1 .. User_5
       | Can_Forward
       | Fixed_Mag_Cal_Yaw
       | Do_Winch
       | External_Position_Estimate;

   function Well_Known_Image
     (Value : Mav_Cmd_Well_Known) return String is
       (case Value is
        when Nav_Waypoint => "Nav_Waypoint",
        when Nav_Loiter_Unlim => "Nav_Loiter_Unlim",
        when Nav_Loiter_Turns => "Nav_Loiter_Turns",
        when Nav_Loiter_Time => "Nav_Loiter_Time",
        when Nav_Return_To_Launch => "Nav_Return_To_Launch",
        when Nav_Land => "Nav_Land",
        when Nav_Takeoff => "Nav_Takeoff",
        when Nav_Land_Local => "Nav_Land_Local",
        when Nav_Takeoff_Local => "Nav_Takeoff_Local",
        when Nav_Follow => "Nav_Follow",
        when Nav_Continue_And_Change_Alt => "Nav_Continue_And_Change_Alt",
        when Nav_Loiter_To_Alt => "Nav_Loiter_To_Alt",
        when Do_Follow => "Do_Follow",
        when Do_Follow_Reposition => "Do_Follow_Reposition",
        when Do_Orbit => "Do_Orbit",
        when Nav_Roi => "Nav_Roi",
        when Nav_Pathplanning => "Nav_Pathplanning",
        when Nav_Spline_Waypoint => "Nav_Spline_Waypoint",
        when Nav_Vtol_Takeoff => "Nav_Vtol_Takeoff",
        when Nav_Vtol_Land => "Nav_Vtol_Land",
        when Nav_Guided_Enable => "Nav_Guided_Enable",
        when Nav_Delay => "Nav_Delay",
        when Nav_Payload_Place => "Nav_Payload_Place",
        when Nav_Last => "Nav_Last",
        when Condition_Delay => "Condition_Delay",
        when Condition_Change_Alt => "Condition_Change_Alt",
        when Condition_Distance => "Condition_Distance",
        when Condition_Yaw => "Condition_Yaw",
        when Condition_Last => "Condition_Last",
        when Do_Set_Mode => "Do_Set_Mode",
        when Do_Jump => "Do_Jump",
        when Do_Change_Speed => "Do_Change_Speed",
        when Do_Set_Home => "Do_Set_Home",
        when Do_Set_Parameter => "Do_Set_Parameter",
        when Do_Set_Relay => "Do_Set_Relay",
        when Do_Repeat_Relay => "Do_Repeat_Relay",
        when Do_Set_Servo => "Do_Set_Servo",
        when Do_Repeat_Servo => "Do_Repeat_Servo",
        when Do_Flighttermination => "Do_Flighttermination",
        when Do_Change_Altitude => "Do_Change_Altitude",
        when Do_Set_Actuator => "Do_Set_Actuator",
        when Do_Return_Path_Start => "Do_Return_Path_Start",
        when Do_Land_Start => "Do_Land_Start",
        when Do_Rally_Land => "Do_Rally_Land",
        when Do_Go_Around => "Do_Go_Around",
        when Do_Reposition => "Do_Reposition",
        when Do_Pause_Continue => "Do_Pause_Continue",
        when Do_Set_Reverse => "Do_Set_Reverse",
        when Do_Set_Roi_Location => "Do_Set_Roi_Location",
        when Do_Set_Roi_Wpnext_Offset => "Do_Set_Roi_Wpnext_Offset",
        when Do_Set_Roi_None => "Do_Set_Roi_None",
        when Do_Set_Roi_Sysid => "Do_Set_Roi_Sysid",
        when Do_Control_Video => "Do_Control_Video",
        when Do_Set_Roi => "Do_Set_Roi",
        when Do_Digicam_Configure => "Do_Digicam_Configure",
        when Do_Digicam_Control => "Do_Digicam_Control",
        when Do_Mount_Configure => "Do_Mount_Configure",
        when Do_Mount_Control => "Do_Mount_Control",
        when Do_Set_Cam_Trigg_Dist => "Do_Set_Cam_Trigg_Dist",
        when Do_Fence_Enable => "Do_Fence_Enable",
        when Do_Parachute => "Do_Parachute",
        when Do_Motor_Test => "Do_Motor_Test",
        when Do_Inverted_Flight => "Do_Inverted_Flight",
        when Do_Gripper => "Do_Gripper",
        when Do_Autotune_Enable => "Do_Autotune_Enable",
        when Nav_Set_Yaw_Speed => "Nav_Set_Yaw_Speed",
        when Do_Set_Cam_Trigg_Interval => "Do_Set_Cam_Trigg_Interval",
        when Do_Mount_Control_Quat => "Do_Mount_Control_Quat",
        when Do_Guided_Master => "Do_Guided_Master",
        when Do_Guided_Limits => "Do_Guided_Limits",
        when Do_Engine_Control => "Do_Engine_Control",
        when Do_Set_Mission_Current => "Do_Set_Mission_Current",
        when Do_Last => "Do_Last",
        when Preflight_Calibration => "Preflight_Calibration",
        when Preflight_Set_Sensor_Offsets => "Preflight_Set_Sensor_Offsets",
        when Preflight_Uavcan => "Preflight_Uavcan",
        when Preflight_Storage => "Preflight_Storage",
        when Preflight_Reboot_Shutdown => "Preflight_Reboot_Shutdown",
        when Override_Goto => "Override_Goto",
        when Oblique_Survey => "Oblique_Survey",
        when Do_Set_Standard_Mode => "Do_Set_Standard_Mode",
        when Mission_Start => "Mission_Start",
        when Actuator_Test => "Actuator_Test",
        when Configure_Actuator => "Configure_Actuator",
        when Component_Arm_Disarm => "Component_Arm_Disarm",
        when Run_Prearm_Checks => "Run_Prearm_Checks",
        when Illuminator_On_Off => "Illuminator_On_Off",
        when Do_Illuminator_Configure => "Do_Illuminator_Configure",
        when Get_Home_Position => "Get_Home_Position",
        when Inject_Failure => "Inject_Failure",
        when Start_Rx_Pair => "Start_Rx_Pair",
        when Get_Message_Interval => "Get_Message_Interval",
        when Set_Message_Interval => "Set_Message_Interval",
        when Request_Message => "Request_Message",
        when Request_Protocol_Version => "Request_Protocol_Version",
        when Request_Autopilot_Capabilities => "Request_Autopilot_Capabilities",
        when Request_Camera_Information => "Request_Camera_Information",
        when Request_Camera_Settings => "Request_Camera_Settings",
        when Request_Storage_Information => "Request_Storage_Information",
        when Storage_Format => "Storage_Format",
        when Request_Camera_Capture_Status => "Request_Camera_Capture_Status",
        when Request_Flight_Information => "Request_Flight_Information",
        when Reset_Camera_Settings => "Reset_Camera_Settings",
        when Set_Camera_Mode => "Set_Camera_Mode",
        when Set_Camera_Zoom => "Set_Camera_Zoom",
        when Set_Camera_Focus => "Set_Camera_Focus",
        when Set_Storage_Usage => "Set_Storage_Usage",
        when Set_Camera_Source => "Set_Camera_Source",
        when Jump_Tag => "Jump_Tag",
        when Do_Jump_Tag => "Do_Jump_Tag",
        when Do_Gimbal_Manager_Pitchyaw => "Do_Gimbal_Manager_Pitchyaw",
        when Do_Gimbal_Manager_Configure => "Do_Gimbal_Manager_Configure",
        when Image_Start_Capture => "Image_Start_Capture",
        when Image_Stop_Capture => "Image_Stop_Capture",
        when Request_Camera_Image_Capture => "Request_Camera_Image_Capture",
        when Do_Trigger_Control => "Do_Trigger_Control",
        when Camera_Track_Point => "Camera_Track_Point",
        when Camera_Track_Rectangle => "Camera_Track_Rectangle",
        when Camera_Stop_Tracking => "Camera_Stop_Tracking",
        when Video_Start_Capture => "Video_Start_Capture",
        when Video_Stop_Capture => "Video_Stop_Capture",
        when Video_Start_Streaming => "Video_Start_Streaming",
        when Video_Stop_Streaming => "Video_Stop_Streaming",
        when Request_Video_Stream_Information => "Request_Video_Stream_Information",
        when Request_Video_Stream_Status => "Request_Video_Stream_Status",
        when Logging_Start => "Logging_Start",
        when Logging_Stop => "Logging_Stop",
        when Airframe_Configuration => "Airframe_Configuration",
        when Control_High_Latency => "Control_High_Latency",
        when Panorama_Create => "Panorama_Create",
        when Do_Vtol_Transition => "Do_Vtol_Transition",
        when Arm_Authorization_Request => "Arm_Authorization_Request",
        when Set_Guided_Submode_Standard => "Set_Guided_Submode_Standard",
        when Set_Guided_Submode_Circle => "Set_Guided_Submode_Circle",
        when Condition_Gate => "Condition_Gate",
        when Nav_Fence_Return_Point => "Nav_Fence_Return_Point",
        when Nav_Fence_Polygon_Vertex_Inclusion => "Nav_Fence_Polygon_Vertex_Inclusion",
        when Nav_Fence_Polygon_Vertex_Exclusion => "Nav_Fence_Polygon_Vertex_Exclusion",
        when Nav_Fence_Circle_Inclusion => "Nav_Fence_Circle_Inclusion",
        when Nav_Fence_Circle_Exclusion => "Nav_Fence_Circle_Exclusion",
        when Nav_Rally_Point => "Nav_Rally_Point",
        when Uavcan_Get_Node_Info => "Uavcan_Get_Node_Info",
        when Do_Set_Safety_Switch_State => "Do_Set_Safety_Switch_State",
        when Do_Adsb_Out_Ident => "Do_Adsb_Out_Ident",
        when Payload_Prepare_Deploy => "Payload_Prepare_Deploy",
        when Payload_Control_Deploy => "Payload_Control_Deploy",
        when Waypoint_User_1 => "Waypoint_User_1",
        when Waypoint_User_2 => "Waypoint_User_2",
        when Waypoint_User_3 => "Waypoint_User_3",
        when Waypoint_User_4 => "Waypoint_User_4",
        when Waypoint_User_5 => "Waypoint_User_5",
        when Spatial_User_1 => "Spatial_User_1",
        when Spatial_User_2 => "Spatial_User_2",
        when Spatial_User_3 => "Spatial_User_3",
        when Spatial_User_4 => "Spatial_User_4",
        when Spatial_User_5 => "Spatial_User_5",
        when User_1 => "User_1",
        when User_2 => "User_2",
        when User_3 => "User_3",
        when User_4 => "User_4",
        when User_5 => "User_5",
        when Can_Forward => "Can_Forward",
        when Fixed_Mag_Cal_Yaw => "Fixed_Mag_Cal_Yaw",
        when Do_Winch => "Do_Winch",
        when External_Position_Estimate => "External_Position_Estimate");

   function Image (Value : Mav_Cmd) return String is
     (if Value in Mav_Cmd_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Data_Stream is new Interfaces.Unsigned_8;
   pragma Obsolescent (Mav_Data_Stream);
   ------------
   --  DEPRECATED SINCE: 2015-06 REPLACED BY: MESSAGE_INTERVAL
   ------------
   --  A data stream is not a fixed set of messages, but rather a 
   --  recommendation to the autopilot software. Individual autopilots may or 
   --  may not obey the recommended messages. 

   function All_Entry return Mav_Data_Stream is (0)
     with Static;
   --  Enable all data streams 

   function Raw_Sensors return Mav_Data_Stream is (1)
     with Static;
   --  Enable IMU_RAW, GPS_RAW, GPS_STATUS packets. 

   function Extended_Status return Mav_Data_Stream is (2)
     with Static;
   --  Enable GPS_STATUS, CONTROL_STATUS, AUX_STATUS 

   function Rc_Channels return Mav_Data_Stream is (3)
     with Static;
   --  Enable RC_CHANNELS_SCALED, RC_CHANNELS_RAW, SERVO_OUTPUT_RAW 

   function Raw_Controller return Mav_Data_Stream is (4)
     with Static;
   --  Enable ATTITUDE_CONTROLLER_OUTPUT, POSITION_CONTROLLER_OUTPUT, 
   --  NAV_CONTROLLER_OUTPUT. 

   function Position return Mav_Data_Stream is (6)
     with Static;
   --  Enable LOCAL_POSITION, GLOBAL_POSITION_INT messages. 

   function Extra1 return Mav_Data_Stream is (10)
     with Static;
   --  Dependent on the autopilot 

   function Extra2 return Mav_Data_Stream is (11)
     with Static;
   --  Dependent on the autopilot 

   function Extra3 return Mav_Data_Stream is (12)
     with Static;
   --  Dependent on the autopilot 

   subtype Mav_Data_Stream_Well_Known is Mav_Data_Stream
     with Static_Predicate => Mav_Data_Stream_Well_Known in
       All_Entry .. Raw_Controller
       | Position
       | Extra1 .. Extra3;

   function Well_Known_Image
     (Value : Mav_Data_Stream_Well_Known) return String is
       (case Value is
        when All_Entry => "All_Entry",
        when Raw_Sensors => "Raw_Sensors",
        when Extended_Status => "Extended_Status",
        when Rc_Channels => "Rc_Channels",
        when Raw_Controller => "Raw_Controller",
        when Position => "Position",
        when Extra1 => "Extra1",
        when Extra2 => "Extra2",
        when Extra3 => "Extra3");

   function Image (Value : Mav_Data_Stream) return String is
     (if Value in Mav_Data_Stream_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Roi is new Interfaces.Unsigned_8;
   pragma Obsolescent (Mav_Roi);
   ------------
   --  DEPRECATED SINCE: 2018-01 REPLACED BY: `MAV_CMD_DO_SET_ROI_*`
   ------------
   --  The ROI (region of interest) for the vehicle. This can be be used by 
   --  the vehicle for camera/vehicle attitude alignment (see 
   --  MAV_CMD_NAV_ROI). 

   function None return Mav_Roi is (0)
     with Static;
   --  No region of interest. 

   function Wpnext return Mav_Roi is (1)
     with Static;
   --  Point toward next waypoint, with optional pitch/roll/yaw offset. 

   function Wpindex return Mav_Roi is (2)
     with Static;
   --  Point toward given waypoint. 

   function Location return Mav_Roi is (3)
     with Static;
   --  Point toward fixed location. 

   function Target return Mav_Roi is (4)
     with Static;
   --  Point toward of given id. 

   subtype Mav_Roi_Well_Known is Mav_Roi
     with Static_Predicate => Mav_Roi_Well_Known in
       None .. Target;

   function Well_Known_Image
     (Value : Mav_Roi_Well_Known) return String is
       (case Value is
        when None => "None",
        when Wpnext => "Wpnext",
        when Wpindex => "Wpindex",
        when Location => "Location",
        when Target => "Target");

   function Image (Value : Mav_Roi) return String is
     (if Value in Mav_Roi_Well_Known
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

   type Mav_Param_Error is new Interfaces.Unsigned_8;
   --  Parameter protocol error types (see PARAM_ERROR). 

   function No_Error return Mav_Param_Error is (0)
     with Static;
   --  No error occurred (not expected in PARAM_ERROR but may be used in 
   --  future implementations. 

   function Does_Not_Exist return Mav_Param_Error is (1)
     with Static;
   --  Parameter does not exist 

   function Value_Out_Of_Range return Mav_Param_Error is (2)
     with Static;
   --  Parameter value does not fit within accepted range 

   function Permission_Denied return Mav_Param_Error is (3)
     with Static;
   --  Caller is not permitted to set the value of this parameter 

   function Component_Not_Found return Mav_Param_Error is (4)
     with Static;
   --  Unknown component specified 

   function Read_Only return Mav_Param_Error is (5)
     with Static;
   --  Parameter is read-only 

   subtype Mav_Param_Error_Well_Known is Mav_Param_Error
     with Static_Predicate => Mav_Param_Error_Well_Known in
       No_Error .. Read_Only;

   function Well_Known_Image
     (Value : Mav_Param_Error_Well_Known) return String is
       (case Value is
        when No_Error => "No_Error",
        when Does_Not_Exist => "Does_Not_Exist",
        when Value_Out_Of_Range => "Value_Out_Of_Range",
        when Permission_Denied => "Permission_Denied",
        when Component_Not_Found => "Component_Not_Found",
        when Read_Only => "Read_Only");

   function Image (Value : Mav_Param_Error) return String is
     (if Value in Mav_Param_Error_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Param_Ext_Type is new Interfaces.Unsigned_8;
   --  Specifies the datatype of a MAVLink extended parameter. 

   function Uint8 return Mav_Param_Ext_Type is (1)
     with Static;
   --  8-bit unsigned integer 

   function Int8 return Mav_Param_Ext_Type is (2)
     with Static;
   --  8-bit signed integer 

   function Uint16 return Mav_Param_Ext_Type is (3)
     with Static;
   --  16-bit unsigned integer 

   function Int16 return Mav_Param_Ext_Type is (4)
     with Static;
   --  16-bit signed integer 

   function Uint32 return Mav_Param_Ext_Type is (5)
     with Static;
   --  32-bit unsigned integer 

   function Int32 return Mav_Param_Ext_Type is (6)
     with Static;
   --  32-bit signed integer 

   function Uint64 return Mav_Param_Ext_Type is (7)
     with Static;
   --  64-bit unsigned integer 

   function Int64 return Mav_Param_Ext_Type is (8)
     with Static;
   --  64-bit signed integer 

   function Real32 return Mav_Param_Ext_Type is (9)
     with Static;
   --  32-bit floating-point 

   function Real64 return Mav_Param_Ext_Type is (10)
     with Static;
   --  64-bit floating-point 

   function Custom return Mav_Param_Ext_Type is (11)
     with Static;
   --  Custom Type 

   subtype Mav_Param_Ext_Type_Well_Known is Mav_Param_Ext_Type
     with Static_Predicate => Mav_Param_Ext_Type_Well_Known in
       Uint8 .. Custom;

   function Well_Known_Image
     (Value : Mav_Param_Ext_Type_Well_Known) return String is
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
        when Real64 => "Real64",
        when Custom => "Custom");

   function Image (Value : Mav_Param_Ext_Type) return String is
     (if Value in Mav_Param_Ext_Type_Well_Known
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

   function Not_In_Control return Mav_Result is (10)
     with Static;
   --  Command has been rejected because source system is not in control of 
   --  the target system/component. 

   subtype Mav_Result_Well_Known is Mav_Result
     with Static_Predicate => Mav_Result_Well_Known in
       Accepted .. Not_In_Control;

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
        when Command_Unsupported_Mav_Frame => "Command_Unsupported_Mav_Frame",
        when Not_In_Control => "Not_In_Control");

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

   type Mav_Mission_Type is new Interfaces.Unsigned_8;
   --  Type of mission items being requested/sent in mission protocol. 

   function Mission return Mav_Mission_Type is (0)
     with Static;
   --  Items are mission commands for main mission. 

   function Fence return Mav_Mission_Type is (1)
     with Static;
   --  Specifies GeoFence area(s). Items are MAV_CMD_NAV_FENCE_ GeoFence 
   --  items. 

   function Rally return Mav_Mission_Type is (2)
     with Static;
   --  Specifies the rally points for the vehicle. Rally points are 
   --  alternative RTL points. Items are MAV_CMD_NAV_RALLY_POINT rally point 
   --  items. 

   function All_Entry return Mav_Mission_Type is (255)
     with Static;
   --  Only used in MISSION_CLEAR_ALL to clear all mission types. 

   subtype Mav_Mission_Type_Well_Known is Mav_Mission_Type
     with Static_Predicate => Mav_Mission_Type_Well_Known in
       Mission .. Rally
       | All_Entry;

   function Well_Known_Image
     (Value : Mav_Mission_Type_Well_Known) return String is
       (case Value is
        when Mission => "Mission",
        when Fence => "Fence",
        when Rally => "Rally",
        when All_Entry => "All_Entry");

   function Image (Value : Mav_Mission_Type) return String is
     (if Value in Mav_Mission_Type_Well_Known
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

   type Mav_Battery_Charge_State is new Interfaces.Unsigned_8;
   --  Enumeration for battery charge states. 

   function Undefined return Mav_Battery_Charge_State is (0)
     with Static;
   --  Low battery state is not provided 

   function Ok return Mav_Battery_Charge_State is (1)
     with Static;
   --  Battery is not in low state. Normal operation. 

   function Low return Mav_Battery_Charge_State is (2)
     with Static;
   --  Battery state is low, warn and monitor close. 

   function Critical return Mav_Battery_Charge_State is (3)
     with Static;
   --  Battery state is critical, return or abort immediately. 

   function Emergency return Mav_Battery_Charge_State is (4)
     with Static;
   --  Battery state is too low for ordinary abort sequence. Perform fastest 
   --  possible emergency stop to prevent damage. 

   function Failed return Mav_Battery_Charge_State is (5)
     with Static;
   --  Battery failed, damage unavoidable. Possible causes (faults) are listed 
   --  in MAV_BATTERY_FAULT. 

   function Unhealthy return Mav_Battery_Charge_State is (6)
     with Static;
   --  Battery is diagnosed to be defective or an error occurred, usage is 
   --  discouraged / prohibited. Possible causes (faults) are listed in 
   --  MAV_BATTERY_FAULT. 

   function Charging return Mav_Battery_Charge_State is (7)
     with Static;
   --  Battery is charging. 

   subtype Mav_Battery_Charge_State_Well_Known is Mav_Battery_Charge_State
     with Static_Predicate => Mav_Battery_Charge_State_Well_Known in
       Undefined .. Charging;

   function Well_Known_Image
     (Value : Mav_Battery_Charge_State_Well_Known) return String is
       (case Value is
        when Undefined => "Undefined",
        when Ok => "Ok",
        when Low => "Low",
        when Critical => "Critical",
        when Emergency => "Emergency",
        when Failed => "Failed",
        when Unhealthy => "Unhealthy",
        when Charging => "Charging");

   function Image (Value : Mav_Battery_Charge_State) return String is
     (if Value in Mav_Battery_Charge_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Battery_Mode is new Interfaces.Unsigned_8;
   --  Battery mode. Note, the normal operation mode (i.e. when flying) should 
   --  be reported as MAV_BATTERY_MODE_UNKNOWN to allow message trimming in 
   --  normal flight. 

   function Unknown return Mav_Battery_Mode is (0)
     with Static;
   --  Battery mode not supported/unknown battery mode/normal operation. 

   function Auto_Discharging return Mav_Battery_Mode is (1)
     with Static;
   --  Battery is auto discharging (towards storage level). 

   function Hot_Swap return Mav_Battery_Mode is (2)
     with Static;
   --  Battery in hot-swap mode (current limited to prevent spikes that might 
   --  damage sensitive electrical circuits). 

   subtype Mav_Battery_Mode_Well_Known is Mav_Battery_Mode
     with Static_Predicate => Mav_Battery_Mode_Well_Known in
       Unknown .. Hot_Swap;

   function Well_Known_Image
     (Value : Mav_Battery_Mode_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Auto_Discharging => "Auto_Discharging",
        when Hot_Swap => "Hot_Swap");

   function Image (Value : Mav_Battery_Mode) return String is
     (if Value in Mav_Battery_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Battery_Fault is record
      Mav_Battery_Fault_Deep_Discharge               : Boolean := False;
      Mav_Battery_Fault_Spikes                       : Boolean := False;
      Mav_Battery_Fault_Cell_Fail                    : Boolean := False;
      Mav_Battery_Fault_Over_Current                 : Boolean := False;
      Mav_Battery_Fault_Over_Temperature             : Boolean := False;
      Mav_Battery_Fault_Under_Temperature            : Boolean := False;
      Mav_Battery_Fault_Incompatible_Voltage         : Boolean := False;
      Mav_Battery_Fault_Incompatible_Firmware        : Boolean := False;
      Battery_Fault_Incompatible_Cells_Configuration : Boolean := False;
      Reserved_9                                     : Boolean := False;
      Reserved_10                                    : Boolean := False;
      Reserved_11                                    : Boolean := False;
      Reserved_12                                    : Boolean := False;
      Reserved_13                                    : Boolean := False;
      Reserved_14                                    : Boolean := False;
      Reserved_15                                    : Boolean := False;
      Reserved_16                                    : Boolean := False;
      Reserved_17                                    : Boolean := False;
      Reserved_18                                    : Boolean := False;
      Reserved_19                                    : Boolean := False;
      Reserved_20                                    : Boolean := False;
      Reserved_21                                    : Boolean := False;
      Reserved_22                                    : Boolean := False;
      Reserved_23                                    : Boolean := False;
      Reserved_24                                    : Boolean := False;
      Reserved_25                                    : Boolean := False;
      Reserved_26                                    : Boolean := False;
      Reserved_27                                    : Boolean := False;
      Reserved_28                                    : Boolean := False;
      Reserved_29                                    : Boolean := False;
      Reserved_30                                    : Boolean := False;
      Reserved_31                                    : Boolean := False;
   end record with Size => 32;
   --  Smart battery supply status/fault flags (bitmask) for health 
   --  indication. The battery must also report either 
   --  MAV_BATTERY_CHARGE_STATE_FAILED or MAV_BATTERY_CHARGE_STATE_UNHEALTHY 
   --  if any of these are set. 

   for Mav_Battery_Fault use record
      Mav_Battery_Fault_Deep_Discharge               at 0 range 0 .. 0;
      Mav_Battery_Fault_Spikes                       at 0 range 1 .. 1;
      Mav_Battery_Fault_Cell_Fail                    at 0 range 2 .. 2;
      Mav_Battery_Fault_Over_Current                 at 0 range 3 .. 3;
      Mav_Battery_Fault_Over_Temperature             at 0 range 4 .. 4;
      Mav_Battery_Fault_Under_Temperature            at 0 range 5 .. 5;
      Mav_Battery_Fault_Incompatible_Voltage         at 0 range 6 .. 6;
      Mav_Battery_Fault_Incompatible_Firmware        at 0 range 7 .. 7;
      Battery_Fault_Incompatible_Cells_Configuration at 0 range 8 .. 8;
      Reserved_9                                     at 0 range 9 .. 9;
      Reserved_10                                    at 0 range 10 .. 10;
      Reserved_11                                    at 0 range 11 .. 11;
      Reserved_12                                    at 0 range 12 .. 12;
      Reserved_13                                    at 0 range 13 .. 13;
      Reserved_14                                    at 0 range 14 .. 14;
      Reserved_15                                    at 0 range 15 .. 15;
      Reserved_16                                    at 0 range 16 .. 16;
      Reserved_17                                    at 0 range 17 .. 17;
      Reserved_18                                    at 0 range 18 .. 18;
      Reserved_19                                    at 0 range 19 .. 19;
      Reserved_20                                    at 0 range 20 .. 20;
      Reserved_21                                    at 0 range 21 .. 21;
      Reserved_22                                    at 0 range 22 .. 22;
      Reserved_23                                    at 0 range 23 .. 23;
      Reserved_24                                    at 0 range 24 .. 24;
      Reserved_25                                    at 0 range 25 .. 25;
      Reserved_26                                    at 0 range 26 .. 26;
      Reserved_27                                    at 0 range 27 .. 27;
      Reserved_28                                    at 0 range 28 .. 28;
      Reserved_29                                    at 0 range 29 .. 29;
      Reserved_30                                    at 0 range 30 .. 30;
      Reserved_31                                    at 0 range 31 .. 31;
   end record;

   function Image (V : Mav_Battery_Fault) return String is
     ("["
      & (if V.Mav_Battery_Fault_Deep_Discharge then "MAV_BATTERY_FAULT_DEEP_DISCHARGE " else "")
      & (if V.Mav_Battery_Fault_Spikes then "MAV_BATTERY_FAULT_SPIKES " else "")
      & (if V.Mav_Battery_Fault_Cell_Fail then "MAV_BATTERY_FAULT_CELL_FAIL " else "")
      & (if V.Mav_Battery_Fault_Over_Current then "MAV_BATTERY_FAULT_OVER_CURRENT " else "")
      & (if V.Mav_Battery_Fault_Over_Temperature then "MAV_BATTERY_FAULT_OVER_TEMPERATURE " else "")
      & (if V.Mav_Battery_Fault_Under_Temperature then "MAV_BATTERY_FAULT_UNDER_TEMPERATURE " else "")
      & (if V.Mav_Battery_Fault_Incompatible_Voltage then "MAV_BATTERY_FAULT_INCOMPATIBLE_VOLTAGE " else "")
      & (if V.Mav_Battery_Fault_Incompatible_Firmware then "MAV_BATTERY_FAULT_INCOMPATIBLE_FIRMWARE " else "")
      & (if V.Battery_Fault_Incompatible_Cells_Configuration then "BATTERY_FAULT_INCOMPATIBLE_CELLS_CONFIGURATION " else "")
      & "]");

   type Mav_Fuel_Type is new Interfaces.Unsigned_32;
   --  Fuel types for use in FUEL_TYPE. Fuel types specify the units for the 
   --  maximum, available and consumed fuel, and for the flow rates. 

   function Unknown return Mav_Fuel_Type is (0)
     with Static;
   --  Not specified. Fuel levels are normalized (i.e. maximum is 1, and other 
   --  levels are relative to 1). 

   function Liquid return Mav_Fuel_Type is (1)
     with Static;
   --  A generic liquid fuel. Fuel levels are in millilitres (ml). Fuel rates 
   --  are in millilitres/second. 

   function Gas return Mav_Fuel_Type is (2)
     with Static;
   --  A gas tank. Fuel levels are in kilo-Pascal (kPa), and flow rates are in 
   --  milliliters per second (ml/s). 

   subtype Mav_Fuel_Type_Well_Known is Mav_Fuel_Type
     with Static_Predicate => Mav_Fuel_Type_Well_Known in
       Unknown .. Gas;

   function Well_Known_Image
     (Value : Mav_Fuel_Type_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Liquid => "Liquid",
        when Gas => "Gas");

   function Image (Value : Mav_Fuel_Type) return String is
     (if Value in Mav_Fuel_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Generator_Status_Flag is record
      Off                              : Boolean := False;
      Ready                            : Boolean := False;
      Generating                       : Boolean := False;
      Charging                         : Boolean := False;
      Reduced_Power                    : Boolean := False;
      Maxpower                         : Boolean := False;
      Overtemp_Warning                 : Boolean := False;
      Overtemp_Fault                   : Boolean := False;
      Electronics_Overtemp_Warning     : Boolean := False;
      Electronics_Overtemp_Fault       : Boolean := False;
      Electronics_Fault                : Boolean := False;
      Powersource_Fault                : Boolean := False;
      Communication_Warning            : Boolean := False;
      Cooling_Warning                  : Boolean := False;
      Power_Rail_Fault                 : Boolean := False;
      Overcurrent_Fault                : Boolean := False;
      Battery_Overcharge_Current_Fault : Boolean := False;
      Overvoltage_Fault                : Boolean := False;
      Battery_Undervolt_Fault          : Boolean := False;
      Start_Inhibited                  : Boolean := False;
      Maintenance_Required             : Boolean := False;
      Warming_Up                       : Boolean := False;
      Idle                             : Boolean := False;
      Reserved_23                      : Boolean := False;
      Reserved_24                      : Boolean := False;
      Reserved_25                      : Boolean := False;
      Reserved_26                      : Boolean := False;
      Reserved_27                      : Boolean := False;
      Reserved_28                      : Boolean := False;
      Reserved_29                      : Boolean := False;
      Reserved_30                      : Boolean := False;
      Reserved_31                      : Boolean := False;
      Reserved_32                      : Boolean := False;
      Reserved_33                      : Boolean := False;
      Reserved_34                      : Boolean := False;
      Reserved_35                      : Boolean := False;
      Reserved_36                      : Boolean := False;
      Reserved_37                      : Boolean := False;
      Reserved_38                      : Boolean := False;
      Reserved_39                      : Boolean := False;
      Reserved_40                      : Boolean := False;
      Reserved_41                      : Boolean := False;
      Reserved_42                      : Boolean := False;
      Reserved_43                      : Boolean := False;
      Reserved_44                      : Boolean := False;
      Reserved_45                      : Boolean := False;
      Reserved_46                      : Boolean := False;
      Reserved_47                      : Boolean := False;
      Reserved_48                      : Boolean := False;
      Reserved_49                      : Boolean := False;
      Reserved_50                      : Boolean := False;
      Reserved_51                      : Boolean := False;
      Reserved_52                      : Boolean := False;
      Reserved_53                      : Boolean := False;
      Reserved_54                      : Boolean := False;
      Reserved_55                      : Boolean := False;
      Reserved_56                      : Boolean := False;
      Reserved_57                      : Boolean := False;
      Reserved_58                      : Boolean := False;
      Reserved_59                      : Boolean := False;
      Reserved_60                      : Boolean := False;
      Reserved_61                      : Boolean := False;
      Reserved_62                      : Boolean := False;
      Reserved_63                      : Boolean := False;
   end record with Size => 64;
   --  Flags to report status/failure cases for a power generator (used in 
   --  GENERATOR_STATUS). Note that FAULTS are conditions that cause the 
   --  generator to fail. Warnings are conditions that require attention 
   --  before the next use (they indicate the system is not operating 
   --  properly). 

   for Mav_Generator_Status_Flag use record
      Off                              at 0 range 0 .. 0;
      Ready                            at 0 range 1 .. 1;
      Generating                       at 0 range 2 .. 2;
      Charging                         at 0 range 3 .. 3;
      Reduced_Power                    at 0 range 4 .. 4;
      Maxpower                         at 0 range 5 .. 5;
      Overtemp_Warning                 at 0 range 6 .. 6;
      Overtemp_Fault                   at 0 range 7 .. 7;
      Electronics_Overtemp_Warning     at 0 range 8 .. 8;
      Electronics_Overtemp_Fault       at 0 range 9 .. 9;
      Electronics_Fault                at 0 range 10 .. 10;
      Powersource_Fault                at 0 range 11 .. 11;
      Communication_Warning            at 0 range 12 .. 12;
      Cooling_Warning                  at 0 range 13 .. 13;
      Power_Rail_Fault                 at 0 range 14 .. 14;
      Overcurrent_Fault                at 0 range 15 .. 15;
      Battery_Overcharge_Current_Fault at 0 range 16 .. 16;
      Overvoltage_Fault                at 0 range 17 .. 17;
      Battery_Undervolt_Fault          at 0 range 18 .. 18;
      Start_Inhibited                  at 0 range 19 .. 19;
      Maintenance_Required             at 0 range 20 .. 20;
      Warming_Up                       at 0 range 21 .. 21;
      Idle                             at 0 range 22 .. 22;
      Reserved_23                      at 0 range 23 .. 23;
      Reserved_24                      at 0 range 24 .. 24;
      Reserved_25                      at 0 range 25 .. 25;
      Reserved_26                      at 0 range 26 .. 26;
      Reserved_27                      at 0 range 27 .. 27;
      Reserved_28                      at 0 range 28 .. 28;
      Reserved_29                      at 0 range 29 .. 29;
      Reserved_30                      at 0 range 30 .. 30;
      Reserved_31                      at 0 range 31 .. 31;
      Reserved_32                      at 0 range 32 .. 32;
      Reserved_33                      at 0 range 33 .. 33;
      Reserved_34                      at 0 range 34 .. 34;
      Reserved_35                      at 0 range 35 .. 35;
      Reserved_36                      at 0 range 36 .. 36;
      Reserved_37                      at 0 range 37 .. 37;
      Reserved_38                      at 0 range 38 .. 38;
      Reserved_39                      at 0 range 39 .. 39;
      Reserved_40                      at 0 range 40 .. 40;
      Reserved_41                      at 0 range 41 .. 41;
      Reserved_42                      at 0 range 42 .. 42;
      Reserved_43                      at 0 range 43 .. 43;
      Reserved_44                      at 0 range 44 .. 44;
      Reserved_45                      at 0 range 45 .. 45;
      Reserved_46                      at 0 range 46 .. 46;
      Reserved_47                      at 0 range 47 .. 47;
      Reserved_48                      at 0 range 48 .. 48;
      Reserved_49                      at 0 range 49 .. 49;
      Reserved_50                      at 0 range 50 .. 50;
      Reserved_51                      at 0 range 51 .. 51;
      Reserved_52                      at 0 range 52 .. 52;
      Reserved_53                      at 0 range 53 .. 53;
      Reserved_54                      at 0 range 54 .. 54;
      Reserved_55                      at 0 range 55 .. 55;
      Reserved_56                      at 0 range 56 .. 56;
      Reserved_57                      at 0 range 57 .. 57;
      Reserved_58                      at 0 range 58 .. 58;
      Reserved_59                      at 0 range 59 .. 59;
      Reserved_60                      at 0 range 60 .. 60;
      Reserved_61                      at 0 range 61 .. 61;
      Reserved_62                      at 0 range 62 .. 62;
      Reserved_63                      at 0 range 63 .. 63;
   end record;

   function Image (V : Mav_Generator_Status_Flag) return String is
     ("["
      & (if V.Off then "OFF " else "")
      & (if V.Ready then "READY " else "")
      & (if V.Generating then "GENERATING " else "")
      & (if V.Charging then "CHARGING " else "")
      & (if V.Reduced_Power then "REDUCED_POWER " else "")
      & (if V.Maxpower then "MAXPOWER " else "")
      & (if V.Overtemp_Warning then "OVERTEMP_WARNING " else "")
      & (if V.Overtemp_Fault then "OVERTEMP_FAULT " else "")
      & (if V.Electronics_Overtemp_Warning then "ELECTRONICS_OVERTEMP_WARNING " else "")
      & (if V.Electronics_Overtemp_Fault then "ELECTRONICS_OVERTEMP_FAULT " else "")
      & (if V.Electronics_Fault then "ELECTRONICS_FAULT " else "")
      & (if V.Powersource_Fault then "POWERSOURCE_FAULT " else "")
      & (if V.Communication_Warning then "COMMUNICATION_WARNING " else "")
      & (if V.Cooling_Warning then "COOLING_WARNING " else "")
      & (if V.Power_Rail_Fault then "POWER_RAIL_FAULT " else "")
      & (if V.Overcurrent_Fault then "OVERCURRENT_FAULT " else "")
      & (if V.Battery_Overcharge_Current_Fault then "BATTERY_OVERCHARGE_CURRENT_FAULT " else "")
      & (if V.Overvoltage_Fault then "OVERVOLTAGE_FAULT " else "")
      & (if V.Battery_Undervolt_Fault then "BATTERY_UNDERVOLT_FAULT " else "")
      & (if V.Start_Inhibited then "START_INHIBITED " else "")
      & (if V.Maintenance_Required then "MAINTENANCE_REQUIRED " else "")
      & (if V.Warming_Up then "WARMING_UP " else "")
      & (if V.Idle then "IDLE " else "")
      & "]");

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

   type Mav_Do_Reposition_Flags is record
      Change_Mode  : Boolean := False;
      Relative_Yaw : Boolean := False;
      Reserved_2   : Boolean := False;
      Reserved_3   : Boolean := False;
      Reserved_4   : Boolean := False;
      Reserved_5   : Boolean := False;
      Reserved_6   : Boolean := False;
      Reserved_7   : Boolean := False;
   end record with Size => 8;
   --  Bitmap of options for the MAV_CMD_DO_REPOSITION 

   for Mav_Do_Reposition_Flags use record
      Change_Mode  at 0 range 0 .. 0;
      Relative_Yaw at 0 range 1 .. 1;
      Reserved_2   at 0 range 2 .. 2;
      Reserved_3   at 0 range 3 .. 3;
      Reserved_4   at 0 range 4 .. 4;
      Reserved_5   at 0 range 5 .. 5;
      Reserved_6   at 0 range 6 .. 6;
      Reserved_7   at 0 range 7 .. 7;
   end record;

   function Image (V : Mav_Do_Reposition_Flags) return String is
     ("["
      & (if V.Change_Mode then "CHANGE_MODE " else "")
      & (if V.Relative_Yaw then "RELATIVE_YAW " else "")
      & "]");

   type Speed_Type is new Interfaces.Unsigned_8;
   --  Speed setpoint types used in MAV_CMD_DO_CHANGE_SPEED 

   function Airspeed return Speed_Type is (0)
     with Static;
   --  Airspeed 

   function Groundspeed return Speed_Type is (1)
     with Static;
   --  Groundspeed 

   function Climb_Speed return Speed_Type is (2)
     with Static;
   --  Climb speed 

   function Descent_Speed return Speed_Type is (3)
     with Static;
   --  Descent speed 

   subtype Speed_Type_Well_Known is Speed_Type
     with Static_Predicate => Speed_Type_Well_Known in
       Airspeed .. Descent_Speed;

   function Well_Known_Image
     (Value : Speed_Type_Well_Known) return String is
       (case Value is
        when Airspeed => "Airspeed",
        when Groundspeed => "Groundspeed",
        when Climb_Speed => "Climb_Speed",
        when Descent_Speed => "Descent_Speed");

   function Image (Value : Speed_Type) return String is
     (if Value in Speed_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

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

   type Motor_Test_Order is new Interfaces.Unsigned_8;
   --  Sequence that motors are tested when using MAV_CMD_DO_MOTOR_TEST. 

   function Default return Motor_Test_Order is (0)
     with Static;
   --  Default autopilot motor test method. 

   function Sequence return Motor_Test_Order is (1)
     with Static;
   --  Motor numbers are specified as their index in a predefined 
   --  vehicle-specific sequence. 

   function Board return Motor_Test_Order is (2)
     with Static;
   --  Motor numbers are specified as the output as labeled on the board. 

   subtype Motor_Test_Order_Well_Known is Motor_Test_Order
     with Static_Predicate => Motor_Test_Order_Well_Known in
       Default .. Board;

   function Well_Known_Image
     (Value : Motor_Test_Order_Well_Known) return String is
       (case Value is
        when Default => "Default",
        when Sequence => "Sequence",
        when Board => "Board");

   function Image (Value : Motor_Test_Order) return String is
     (if Value in Motor_Test_Order_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Motor_Test_Throttle_Type is new Interfaces.Unsigned_8;
   --  Defines how throttle value is represented in MAV_CMD_DO_MOTOR_TEST. 

   function Throttle_Percent return Motor_Test_Throttle_Type is (0)
     with Static;
   --  Throttle as a percentage (0 ~ 100) 

   function Throttle_Pwm return Motor_Test_Throttle_Type is (1)
     with Static;
   --  Throttle as an absolute PWM value (normally in range of 1000~2000). 

   function Throttle_Pilot return Motor_Test_Throttle_Type is (2)
     with Static;
   --  Throttle pass-through from pilot's transmitter. 

   function Compass_Cal return Motor_Test_Throttle_Type is (3)
     with Static;
   --  Per-motor compass calibration test. 

   subtype Motor_Test_Throttle_Type_Well_Known is Motor_Test_Throttle_Type
     with Static_Predicate => Motor_Test_Throttle_Type_Well_Known in
       Throttle_Percent .. Compass_Cal;

   function Well_Known_Image
     (Value : Motor_Test_Throttle_Type_Well_Known) return String is
       (case Value is
        when Throttle_Percent => "Throttle_Percent",
        when Throttle_Pwm => "Throttle_Pwm",
        when Throttle_Pilot => "Throttle_Pilot",
        when Compass_Cal => "Compass_Cal");

   function Image (Value : Motor_Test_Throttle_Type) return String is
     (if Value in Motor_Test_Throttle_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

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

   type Landing_Target_Type is new Interfaces.Unsigned_8;
   --  Type of landing target 

   function Light_Beacon return Landing_Target_Type is (0)
     with Static;
   --  Landing target signaled by light beacon (ex: IR-LOCK) 

   function Radio_Beacon return Landing_Target_Type is (1)
     with Static;
   --  Landing target signaled by radio beacon (ex: ILS, NDB) 

   function Vision_Fiducial return Landing_Target_Type is (2)
     with Static;
   --  Landing target represented by a fiducial marker (ex: ARTag) 

   function Vision_Other return Landing_Target_Type is (3)
     with Static;
   --  Landing target represented by a pre-defined visual shape/feature (ex: 
   --  X-marker, H-marker, square) 

   subtype Landing_Target_Type_Well_Known is Landing_Target_Type
     with Static_Predicate => Landing_Target_Type_Well_Known in
       Light_Beacon .. Vision_Other;

   function Well_Known_Image
     (Value : Landing_Target_Type_Well_Known) return String is
       (case Value is
        when Light_Beacon => "Light_Beacon",
        when Radio_Beacon => "Radio_Beacon",
        when Vision_Fiducial => "Vision_Fiducial",
        when Vision_Other => "Vision_Other");

   function Image (Value : Landing_Target_Type) return String is
     (if Value in Landing_Target_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Vtol_Transition_Heading is new Interfaces.Unsigned_8;
   --  Direction of VTOL transition 

   function Vehicle_Default return Vtol_Transition_Heading is (0)
     with Static;
   --  Respect the heading configuration of the vehicle. 

   function Next_Waypoint return Vtol_Transition_Heading is (1)
     with Static;
   --  Use the heading pointing towards the next waypoint. 

   function Takeoff return Vtol_Transition_Heading is (2)
     with Static;
   --  Use the heading on takeoff (while sitting on the ground). 

   function Specified return Vtol_Transition_Heading is (3)
     with Static;
   --  Use the specified heading in parameter 4. 

   function Any return Vtol_Transition_Heading is (4)
     with Static;
   --  Use the current heading when reaching takeoff altitude (potentially 
   --  facing the wind when weather-vaning is active). 

   subtype Vtol_Transition_Heading_Well_Known is Vtol_Transition_Heading
     with Static_Predicate => Vtol_Transition_Heading_Well_Known in
       Vehicle_Default .. Any;

   function Well_Known_Image
     (Value : Vtol_Transition_Heading_Well_Known) return String is
       (case Value is
        when Vehicle_Default => "Vehicle_Default",
        when Next_Waypoint => "Next_Waypoint",
        when Takeoff => "Takeoff",
        when Specified => "Specified",
        when Any => "Any");

   function Image (Value : Vtol_Transition_Heading) return String is
     (if Value in Vtol_Transition_Heading_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Camera_Cap_Flags is record
      Capture_Video                   : Boolean := False;
      Capture_Image                   : Boolean := False;
      Has_Modes                       : Boolean := False;
      Can_Capture_Image_In_Video_Mode : Boolean := False;
      Can_Capture_Video_In_Image_Mode : Boolean := False;
      Has_Image_Survey_Mode           : Boolean := False;
      Has_Basic_Zoom                  : Boolean := False;
      Has_Basic_Focus                 : Boolean := False;
      Has_Video_Stream                : Boolean := False;
      Has_Tracking_Point              : Boolean := False;
      Has_Tracking_Rectangle          : Boolean := False;
      Has_Tracking_Geo_Status         : Boolean := False;
      Has_Thermal_Range               : Boolean := False;
      Has_Mti                         : Boolean := False;
      Reserved_14                     : Boolean := False;
      Reserved_15                     : Boolean := False;
      Reserved_16                     : Boolean := False;
      Reserved_17                     : Boolean := False;
      Reserved_18                     : Boolean := False;
      Reserved_19                     : Boolean := False;
      Reserved_20                     : Boolean := False;
      Reserved_21                     : Boolean := False;
      Reserved_22                     : Boolean := False;
      Reserved_23                     : Boolean := False;
      Reserved_24                     : Boolean := False;
      Reserved_25                     : Boolean := False;
      Reserved_26                     : Boolean := False;
      Reserved_27                     : Boolean := False;
      Reserved_28                     : Boolean := False;
      Reserved_29                     : Boolean := False;
      Reserved_30                     : Boolean := False;
      Reserved_31                     : Boolean := False;
   end record with Size => 32;
   --  Camera capability flags (Bitmap) 

   for Camera_Cap_Flags use record
      Capture_Video                   at 0 range 0 .. 0;
      Capture_Image                   at 0 range 1 .. 1;
      Has_Modes                       at 0 range 2 .. 2;
      Can_Capture_Image_In_Video_Mode at 0 range 3 .. 3;
      Can_Capture_Video_In_Image_Mode at 0 range 4 .. 4;
      Has_Image_Survey_Mode           at 0 range 5 .. 5;
      Has_Basic_Zoom                  at 0 range 6 .. 6;
      Has_Basic_Focus                 at 0 range 7 .. 7;
      Has_Video_Stream                at 0 range 8 .. 8;
      Has_Tracking_Point              at 0 range 9 .. 9;
      Has_Tracking_Rectangle          at 0 range 10 .. 10;
      Has_Tracking_Geo_Status         at 0 range 11 .. 11;
      Has_Thermal_Range               at 0 range 12 .. 12;
      Has_Mti                         at 0 range 13 .. 13;
      Reserved_14                     at 0 range 14 .. 14;
      Reserved_15                     at 0 range 15 .. 15;
      Reserved_16                     at 0 range 16 .. 16;
      Reserved_17                     at 0 range 17 .. 17;
      Reserved_18                     at 0 range 18 .. 18;
      Reserved_19                     at 0 range 19 .. 19;
      Reserved_20                     at 0 range 20 .. 20;
      Reserved_21                     at 0 range 21 .. 21;
      Reserved_22                     at 0 range 22 .. 22;
      Reserved_23                     at 0 range 23 .. 23;
      Reserved_24                     at 0 range 24 .. 24;
      Reserved_25                     at 0 range 25 .. 25;
      Reserved_26                     at 0 range 26 .. 26;
      Reserved_27                     at 0 range 27 .. 27;
      Reserved_28                     at 0 range 28 .. 28;
      Reserved_29                     at 0 range 29 .. 29;
      Reserved_30                     at 0 range 30 .. 30;
      Reserved_31                     at 0 range 31 .. 31;
   end record;

   function Image (V : Camera_Cap_Flags) return String is
     ("["
      & (if V.Capture_Video then "CAPTURE_VIDEO " else "")
      & (if V.Capture_Image then "CAPTURE_IMAGE " else "")
      & (if V.Has_Modes then "HAS_MODES " else "")
      & (if V.Can_Capture_Image_In_Video_Mode then "CAN_CAPTURE_IMAGE_IN_VIDEO_MODE " else "")
      & (if V.Can_Capture_Video_In_Image_Mode then "CAN_CAPTURE_VIDEO_IN_IMAGE_MODE " else "")
      & (if V.Has_Image_Survey_Mode then "HAS_IMAGE_SURVEY_MODE " else "")
      & (if V.Has_Basic_Zoom then "HAS_BASIC_ZOOM " else "")
      & (if V.Has_Basic_Focus then "HAS_BASIC_FOCUS " else "")
      & (if V.Has_Video_Stream then "HAS_VIDEO_STREAM " else "")
      & (if V.Has_Tracking_Point then "HAS_TRACKING_POINT " else "")
      & (if V.Has_Tracking_Rectangle then "HAS_TRACKING_RECTANGLE " else "")
      & (if V.Has_Tracking_Geo_Status then "HAS_TRACKING_GEO_STATUS " else "")
      & (if V.Has_Thermal_Range then "HAS_THERMAL_RANGE " else "")
      & (if V.Has_Mti then "HAS_MTI " else "")
      & "]");

   type Video_Stream_Status_Flags is record
      Running               : Boolean := False;
      Thermal               : Boolean := False;
      Thermal_Range_Enabled : Boolean := False;
      Reserved_3            : Boolean := False;
      Reserved_4            : Boolean := False;
      Reserved_5            : Boolean := False;
      Reserved_6            : Boolean := False;
      Reserved_7            : Boolean := False;
      Reserved_8            : Boolean := False;
      Reserved_9            : Boolean := False;
      Reserved_10           : Boolean := False;
      Reserved_11           : Boolean := False;
      Reserved_12           : Boolean := False;
      Reserved_13           : Boolean := False;
      Reserved_14           : Boolean := False;
      Reserved_15           : Boolean := False;
   end record with Size => 16;
   --  Stream status flags (Bitmap) 

   for Video_Stream_Status_Flags use record
      Running               at 0 range 0 .. 0;
      Thermal               at 0 range 1 .. 1;
      Thermal_Range_Enabled at 0 range 2 .. 2;
      Reserved_3            at 0 range 3 .. 3;
      Reserved_4            at 0 range 4 .. 4;
      Reserved_5            at 0 range 5 .. 5;
      Reserved_6            at 0 range 6 .. 6;
      Reserved_7            at 0 range 7 .. 7;
      Reserved_8            at 0 range 8 .. 8;
      Reserved_9            at 0 range 9 .. 9;
      Reserved_10           at 0 range 10 .. 10;
      Reserved_11           at 0 range 11 .. 11;
      Reserved_12           at 0 range 12 .. 12;
      Reserved_13           at 0 range 13 .. 13;
      Reserved_14           at 0 range 14 .. 14;
      Reserved_15           at 0 range 15 .. 15;
   end record;

   function Image (V : Video_Stream_Status_Flags) return String is
     ("["
      & (if V.Running then "RUNNING " else "")
      & (if V.Thermal then "THERMAL " else "")
      & (if V.Thermal_Range_Enabled then "THERMAL_RANGE_ENABLED " else "")
      & "]");

   type Video_Stream_Type is new Interfaces.Unsigned_8;
   --  Video stream types 

   function Rtsp return Video_Stream_Type is (0)
     with Static;
   --  Stream is RTSP 

   function Rtpudp return Video_Stream_Type is (1)
     with Static;
   --  Stream is RTP UDP (URI gives the port number) 

   function Tcp_Mpeg return Video_Stream_Type is (2)
     with Static;
   --  Stream is MPEG on TCP 

   function Mpeg_Ts return Video_Stream_Type is (3)
     with Static;
   --  Stream is MPEG TS (URI gives the port number) 

   subtype Video_Stream_Type_Well_Known is Video_Stream_Type
     with Static_Predicate => Video_Stream_Type_Well_Known in
       Rtsp .. Mpeg_Ts;

   function Well_Known_Image
     (Value : Video_Stream_Type_Well_Known) return String is
       (case Value is
        when Rtsp => "Rtsp",
        when Rtpudp => "Rtpudp",
        when Tcp_Mpeg => "Tcp_Mpeg",
        when Mpeg_Ts => "Mpeg_Ts");

   function Image (Value : Video_Stream_Type) return String is
     (if Value in Video_Stream_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Video_Stream_Encoding is new Interfaces.Unsigned_8;
   --  Video stream encodings 

   function Unknown return Video_Stream_Encoding is (0)
     with Static;
   --  Stream encoding is unknown 

   function H264 return Video_Stream_Encoding is (1)
     with Static;
   --  Stream encoding is H.264 

   function H265 return Video_Stream_Encoding is (2)
     with Static;
   --  Stream encoding is H.265 

   subtype Video_Stream_Encoding_Well_Known is Video_Stream_Encoding
     with Static_Predicate => Video_Stream_Encoding_Well_Known in
       Unknown .. H265;

   function Well_Known_Image
     (Value : Video_Stream_Encoding_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when H264 => "H264",
        when H265 => "H265");

   function Image (Value : Video_Stream_Encoding) return String is
     (if Value in Video_Stream_Encoding_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Camera_Tracking_Status_Flags is record
      Active     : Boolean := False;
      Error      : Boolean := False;
      Mti        : Boolean := False;
      Coasting   : Boolean := False;
      Reserved_4 : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;
   --  Camera tracking status flags 

   for Camera_Tracking_Status_Flags use record
      Active     at 0 range 0 .. 0;
      Error      at 0 range 1 .. 1;
      Mti        at 0 range 2 .. 2;
      Coasting   at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Camera_Tracking_Status_Flags) return String is
     ("["
      & (if V.Active then "ACTIVE " else "")
      & (if V.Error then "ERROR " else "")
      & (if V.Mti then "MTI " else "")
      & (if V.Coasting then "COASTING " else "")
      & "]");

   type Camera_Tracking_Mode is new Interfaces.Unsigned_8;
   --  Camera tracking modes 

   function None return Camera_Tracking_Mode is (0)
     with Static;
   --  Not tracking 

   function Point return Camera_Tracking_Mode is (1)
     with Static;
   --  Target is a point 

   function Rectangle return Camera_Tracking_Mode is (2)
     with Static;
   --  Target is a rectangle 

   subtype Camera_Tracking_Mode_Well_Known is Camera_Tracking_Mode
     with Static_Predicate => Camera_Tracking_Mode_Well_Known in
       None .. Rectangle;

   function Well_Known_Image
     (Value : Camera_Tracking_Mode_Well_Known) return String is
       (case Value is
        when None => "None",
        when Point => "Point",
        when Rectangle => "Rectangle");

   function Image (Value : Camera_Tracking_Mode) return String is
     (if Value in Camera_Tracking_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Camera_Tracking_Target_Data is record
      Embedded   : Boolean := False;
      Rendered   : Boolean := False;
      In_Status  : Boolean := False;
      Reserved_3 : Boolean := False;
      Reserved_4 : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;
   --  Camera tracking target data (shows where tracked target is within 
   --  image) 

   for Camera_Tracking_Target_Data use record
      Embedded   at 0 range 0 .. 0;
      Rendered   at 0 range 1 .. 1;
      In_Status  at 0 range 2 .. 2;
      Reserved_3 at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Camera_Tracking_Target_Data) return String is
     ("["
      & (if V.Embedded then "EMBEDDED " else "")
      & (if V.Rendered then "RENDERED " else "")
      & (if V.In_Status then "IN_STATUS " else "")
      & "]");

   type Camera_Zoom_Type is new Interfaces.Unsigned_8;
   --  Zoom types for MAV_CMD_SET_CAMERA_ZOOM 

   function Step return Camera_Zoom_Type is (0)
     with Static;
   --  Zoom one step increment (-1 for wide, 1 for tele) 

   function Continuous return Camera_Zoom_Type is (1)
     with Static;
   --  Continuous normalized zoom in/out rate until stopped. Range -1..1, 
   --  negative: wide, positive: narrow/tele, 0 to stop zooming. Other values 
   --  should be clipped to the range. 

   function Range_Entry return Camera_Zoom_Type is (2)
     with Static;
   --  Zoom value as proportion of full camera range (a percentage value 
   --  between 0.0 and 100.0) 

   function Focal_Length return Camera_Zoom_Type is (3)
     with Static;
   --  Zoom value/variable focal length in millimetres. Note that there is no 
   --  message to get the valid zoom range of the camera, so this can type can 
   --  only be used for cameras where the zoom range is known (implying that 
   --  this cannot reliably be used in a GCS for an arbitrary camera) 

   function Horizontal_Fov return Camera_Zoom_Type is (4)
     with Static;
   --  Zoom value as horizontal field of view in degrees. 

   subtype Camera_Zoom_Type_Well_Known is Camera_Zoom_Type
     with Static_Predicate => Camera_Zoom_Type_Well_Known in
       Step .. Horizontal_Fov;

   function Well_Known_Image
     (Value : Camera_Zoom_Type_Well_Known) return String is
       (case Value is
        when Step => "Step",
        when Continuous => "Continuous",
        when Range_Entry => "Range_Entry",
        when Focal_Length => "Focal_Length",
        when Horizontal_Fov => "Horizontal_Fov");

   function Image (Value : Camera_Zoom_Type) return String is
     (if Value in Camera_Zoom_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Set_Focus_Type is new Interfaces.Unsigned_8;
   --  Focus types for MAV_CMD_SET_CAMERA_FOCUS 

   function Step return Set_Focus_Type is (0)
     with Static;
   --  Focus one step increment (-1 for focusing in, 1 for focusing out 
   --  towards infinity). 

   function Continuous return Set_Focus_Type is (1)
     with Static;
   --  Continuous normalized focus in/out rate until stopped. Range -1..1, 
   --  negative: in, positive: out towards infinity, 0 to stop focusing. Other 
   --  values should be clipped to the range. 

   function Range_Entry return Set_Focus_Type is (2)
     with Static;
   --  Focus value as proportion of full camera focus range (a value between 
   --  0.0 and 100.0) 

   function Meters return Set_Focus_Type is (3)
     with Static;
   --  Focus value in metres. Note that there is no message to get the valid 
   --  focus range of the camera, so this can type can only be used for 
   --  cameras where the range is known (implying that this cannot reliably be 
   --  used in a GCS for an arbitrary camera). 

   function Auto return Set_Focus_Type is (4)
     with Static;
   --  Focus automatically. 

   function Auto_Single return Set_Focus_Type is (5)
     with Static;
   --  Single auto focus. Mainly used for still pictures. Usually abbreviated 
   --  as AF-S. 

   function Auto_Continuous return Set_Focus_Type is (6)
     with Static;
   --  Continuous auto focus. Mainly used for dynamic scenes. Abbreviated as 
   --  AF-C. 

   subtype Set_Focus_Type_Well_Known is Set_Focus_Type
     with Static_Predicate => Set_Focus_Type_Well_Known in
       Step .. Auto_Continuous;

   function Well_Known_Image
     (Value : Set_Focus_Type_Well_Known) return String is
       (case Value is
        when Step => "Step",
        when Continuous => "Continuous",
        when Range_Entry => "Range_Entry",
        when Meters => "Meters",
        when Auto => "Auto",
        when Auto_Single => "Auto_Single",
        when Auto_Continuous => "Auto_Continuous");

   function Image (Value : Set_Focus_Type) return String is
     (if Value in Set_Focus_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Camera_Source is new Interfaces.Unsigned_8;
   --  Camera sources for MAV_CMD_SET_CAMERA_SOURCE 

   function Default return Camera_Source is (0)
     with Static;
   --  Default camera source. 

   function Rgb return Camera_Source is (1)
     with Static;
   --  RGB camera source. 

   function Ir return Camera_Source is (2)
     with Static;
   --  IR camera source. 

   function Ndvi return Camera_Source is (3)
     with Static;
   --  NDVI camera source. 

   subtype Camera_Source_Well_Known is Camera_Source
     with Static_Predicate => Camera_Source_Well_Known in
       Default .. Ndvi;

   function Well_Known_Image
     (Value : Camera_Source_Well_Known) return String is
       (case Value is
        when Default => "Default",
        when Rgb => "Rgb",
        when Ir => "Ir",
        when Ndvi => "Ndvi");

   function Image (Value : Camera_Source) return String is
     (if Value in Camera_Source_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Param_Ack is new Interfaces.Unsigned_8;
   --  Result from PARAM_EXT_SET message. 

   function Accepted return Param_Ack is (0)
     with Static;
   --  Parameter value ACCEPTED and SET 

   function Value_Unsupported return Param_Ack is (1)
     with Static;
   --  Parameter value UNKNOWN/UNSUPPORTED 

   function Failed return Param_Ack is (2)
     with Static;
   --  Parameter failed to set 

   function In_Progress return Param_Ack is (3)
     with Static;
   --  Parameter value received but not yet set/accepted. A subsequent 
   --  PARAM_EXT_ACK with the final result will follow once operation is 
   --  completed. This is returned immediately for parameters that take longer 
   --  to set, indicating that the the parameter was received and does not 
   --  need to be resent. 

   subtype Param_Ack_Well_Known is Param_Ack
     with Static_Predicate => Param_Ack_Well_Known in
       Accepted .. In_Progress;

   function Well_Known_Image
     (Value : Param_Ack_Well_Known) return String is
       (case Value is
        when Accepted => "Accepted",
        when Value_Unsupported => "Value_Unsupported",
        when Failed => "Failed",
        when In_Progress => "In_Progress");

   function Image (Value : Param_Ack) return String is
     (if Value in Param_Ack_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Camera_Mode is new Interfaces.Unsigned_8;
   --  Camera Modes. 

   function Image return Camera_Mode is (0)
     with Static;
   --  Camera is in image/photo capture mode. 

   function Video return Camera_Mode is (1)
     with Static;
   --  Camera is in video capture mode. 

   function Image_Survey return Camera_Mode is (2)
     with Static;
   --  Camera is in image survey capture mode. It allows for camera controller 
   --  to do specific settings for surveys. 

   subtype Camera_Mode_Well_Known is Camera_Mode
     with Static_Predicate => Camera_Mode_Well_Known in
       Image .. Image_Survey;

   function Well_Known_Image
     (Value : Camera_Mode_Well_Known) return String is
       (case Value is
        when Image => "Image",
        when Video => "Video",
        when Image_Survey => "Image_Survey");

   function Image (Value : Camera_Mode) return String is
     (if Value in Camera_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Arm_Auth_Denied_Reason is new Interfaces.Unsigned_8;

   function Generic_Entry return Mav_Arm_Auth_Denied_Reason is (0)
     with Static;
   --  Not a specific reason 

   function None return Mav_Arm_Auth_Denied_Reason is (1)
     with Static;
   --  Authorizer will send the error as string to GCS 

   function Invalid_Waypoint return Mav_Arm_Auth_Denied_Reason is (2)
     with Static;
   --  At least one waypoint have a invalid value 

   function Timeout return Mav_Arm_Auth_Denied_Reason is (3)
     with Static;
   --  Timeout in the authorizer process(in case it depends on network) 

   function Airspace_In_Use return Mav_Arm_Auth_Denied_Reason is (4)
     with Static;
   --  Airspace of the mission in use by another vehicle, second result 
   --  parameter can have the waypoint id that caused it to be denied. 

   function Bad_Weather return Mav_Arm_Auth_Denied_Reason is (5)
     with Static;
   --  Weather is not good to fly 

   subtype Mav_Arm_Auth_Denied_Reason_Well_Known is Mav_Arm_Auth_Denied_Reason
     with Static_Predicate => Mav_Arm_Auth_Denied_Reason_Well_Known in
       Generic_Entry .. Bad_Weather;

   function Well_Known_Image
     (Value : Mav_Arm_Auth_Denied_Reason_Well_Known) return String is
       (case Value is
        when Generic_Entry => "Generic_Entry",
        when None => "None",
        when Invalid_Waypoint => "Invalid_Waypoint",
        when Timeout => "Timeout",
        when Airspace_In_Use => "Airspace_In_Use",
        when Bad_Weather => "Bad_Weather");

   function Image (Value : Mav_Arm_Auth_Denied_Reason) return String is
     (if Value in Mav_Arm_Auth_Denied_Reason_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Rc_Type is new Interfaces.Unsigned_8;
   --  RC type. Used in MAV_CMD_START_RX_PAIR. 

   function Spektrum return Rc_Type is (0)
     with Static;
   --  Spektrum 

   function Crsf return Rc_Type is (1)
     with Static;
   --  CRSF 

   subtype Rc_Type_Well_Known is Rc_Type
     with Static_Predicate => Rc_Type_Well_Known in
       Spektrum .. Crsf;

   function Well_Known_Image
     (Value : Rc_Type_Well_Known) return String is
       (case Value is
        when Spektrum => "Spektrum",
        when Crsf => "Crsf");

   function Image (Value : Rc_Type) return String is
     (if Value in Rc_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Rc_Sub_Type is new Interfaces.Unsigned_8;
   --  RC sub-type of types defined in RC_TYPE. Used in MAV_CMD_START_RX_PAIR. 
   --  Ignored if value does not correspond to the set RC_TYPE. 

   function A_2 return Rc_Sub_Type is (0)
     with Static;
   --  Spektrum DSM2 

   function X return Rc_Sub_Type is (1)
     with Static;
   --  Spektrum DSMX 

   function X8 return Rc_Sub_Type is (2)
     with Static;
   --  Spektrum DSMX8 

   subtype Rc_Sub_Type_Well_Known is Rc_Sub_Type
     with Static_Predicate => Rc_Sub_Type_Well_Known in
       A_2 .. X8;

   function Well_Known_Image
     (Value : Rc_Sub_Type_Well_Known) return String is
       (case Value is
        when A_2 => "A_2",
        when X => "X",
        when X8 => "X8");

   function Image (Value : Rc_Sub_Type) return String is
     (if Value in Rc_Sub_Type_Well_Known
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

   type Utm_Flight_State is new Interfaces.Unsigned_8;
   --  Airborne status of UAS. 

   function Unknown return Utm_Flight_State is (1)
     with Static;
   --  The flight state can't be determined. 

   function Ground return Utm_Flight_State is (2)
     with Static;
   --  UAS on ground. 

   function Airborne return Utm_Flight_State is (3)
     with Static;
   --  UAS airborne. 

   function Emergency return Utm_Flight_State is (16)
     with Static;
   --  UAS is in an emergency flight state. 

   function Noctrl return Utm_Flight_State is (32)
     with Static;
   --  UAS has no active controls. 

   subtype Utm_Flight_State_Well_Known is Utm_Flight_State
     with Static_Predicate => Utm_Flight_State_Well_Known in
       Unknown .. Airborne
       | Emergency
       | Noctrl;

   function Well_Known_Image
     (Value : Utm_Flight_State_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Ground => "Ground",
        when Airborne => "Airborne",
        when Emergency => "Emergency",
        when Noctrl => "Noctrl");

   function Image (Value : Utm_Flight_State) return String is
     (if Value in Utm_Flight_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Utm_Data_Avail_Flags is record
      Time_Valid                  : Boolean := False;
      Uas_Id_Available            : Boolean := False;
      Position_Available          : Boolean := False;
      Altitude_Available          : Boolean := False;
      Relative_Altitude_Available : Boolean := False;
      Horizontal_Velo_Available   : Boolean := False;
      Vertical_Velo_Available     : Boolean := False;
      Next_Waypoint_Available     : Boolean := False;
   end record with Size => 8;
   --  Flags for the global position report. 

   for Utm_Data_Avail_Flags use record
      Time_Valid                  at 0 range 0 .. 0;
      Uas_Id_Available            at 0 range 1 .. 1;
      Position_Available          at 0 range 2 .. 2;
      Altitude_Available          at 0 range 3 .. 3;
      Relative_Altitude_Available at 0 range 4 .. 4;
      Horizontal_Velo_Available   at 0 range 5 .. 5;
      Vertical_Velo_Available     at 0 range 6 .. 6;
      Next_Waypoint_Available     at 0 range 7 .. 7;
   end record;

   function Image (V : Utm_Data_Avail_Flags) return String is
     ("["
      & (if V.Time_Valid then "TIME_VALID " else "")
      & (if V.Uas_Id_Available then "UAS_ID_AVAILABLE " else "")
      & (if V.Position_Available then "POSITION_AVAILABLE " else "")
      & (if V.Altitude_Available then "ALTITUDE_AVAILABLE " else "")
      & (if V.Relative_Altitude_Available then "RELATIVE_ALTITUDE_AVAILABLE " else "")
      & (if V.Horizontal_Velo_Available then "HORIZONTAL_VELO_AVAILABLE " else "")
      & (if V.Vertical_Velo_Available then "VERTICAL_VELO_AVAILABLE " else "")
      & (if V.Next_Waypoint_Available then "NEXT_WAYPOINT_AVAILABLE " else "")
      & "]");

   type Cellular_Status_Flag is new Interfaces.Unsigned_8;
   --  These flags encode the cellular network status 

   function Unknown return Cellular_Status_Flag is (0)
     with Static;
   --  State unknown or not reportable. 

   function Failed return Cellular_Status_Flag is (1)
     with Static;
   --  Modem is unusable 

   function Initializing return Cellular_Status_Flag is (2)
     with Static;
   --  Modem is being initialized 

   function Locked return Cellular_Status_Flag is (3)
     with Static;
   --  Modem is locked 

   function Disabled return Cellular_Status_Flag is (4)
     with Static;
   --  Modem is not enabled and is powered down 

   function Disabling return Cellular_Status_Flag is (5)
     with Static;
   --  Modem is currently transitioning to the CELLULAR_STATUS_FLAG_DISABLED 
   --  state 

   function Enabling return Cellular_Status_Flag is (6)
     with Static;
   --  Modem is currently transitioning to the CELLULAR_STATUS_FLAG_ENABLED 
   --  state 

   function Enabled return Cellular_Status_Flag is (7)
     with Static;
   --  Modem is enabled and powered on but not registered with a network 
   --  provider and not available for data connections 

   function Searching return Cellular_Status_Flag is (8)
     with Static;
   --  Modem is searching for a network provider to register 

   function Registered return Cellular_Status_Flag is (9)
     with Static;
   --  Modem is registered with a network provider, and data connections and 
   --  messaging may be available for use 

   function Disconnecting return Cellular_Status_Flag is (10)
     with Static;
   --  Modem is disconnecting and deactivating the last active packet data 
   --  bearer. This state will not be entered if more than one packet data 
   --  bearer is active and one of the active bearers is deactivated 

   function Connecting return Cellular_Status_Flag is (11)
     with Static;
   --  Modem is activating and connecting the first packet data bearer. 
   --  Subsequent bearer activations when another bearer is already active do 
   --  not cause this state to be entered 

   function Connected return Cellular_Status_Flag is (12)
     with Static;
   --  One or more packet data bearers is active and connected 

   subtype Cellular_Status_Flag_Well_Known is Cellular_Status_Flag
     with Static_Predicate => Cellular_Status_Flag_Well_Known in
       Unknown .. Connected;

   function Well_Known_Image
     (Value : Cellular_Status_Flag_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Failed => "Failed",
        when Initializing => "Initializing",
        when Locked => "Locked",
        when Disabled => "Disabled",
        when Disabling => "Disabling",
        when Enabling => "Enabling",
        when Enabled => "Enabled",
        when Searching => "Searching",
        when Registered => "Registered",
        when Disconnecting => "Disconnecting",
        when Connecting => "Connecting",
        when Connected => "Connected");

   function Image (Value : Cellular_Status_Flag) return String is
     (if Value in Cellular_Status_Flag_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Cellular_Network_Failed_Reason is new Interfaces.Unsigned_8;
   --  These flags are used to diagnose the failure state of CELLULAR_STATUS 

   function None return Cellular_Network_Failed_Reason is (0)
     with Static;
   --  No error 

   function Unknown return Cellular_Network_Failed_Reason is (1)
     with Static;
   --  Error state is unknown 

   function Sim_Missing return Cellular_Network_Failed_Reason is (2)
     with Static;
   --  SIM is required for the modem but missing 

   function Sim_Error return Cellular_Network_Failed_Reason is (3)
     with Static;
   --  SIM is available, but not usable for connection 

   subtype Cellular_Network_Failed_Reason_Well_Known is Cellular_Network_Failed_Reason
     with Static_Predicate => Cellular_Network_Failed_Reason_Well_Known in
       None .. Sim_Error;

   function Well_Known_Image
     (Value : Cellular_Network_Failed_Reason_Well_Known) return String is
       (case Value is
        when None => "None",
        when Unknown => "Unknown",
        when Sim_Missing => "Sim_Missing",
        when Sim_Error => "Sim_Error");

   function Image (Value : Cellular_Network_Failed_Reason) return String is
     (if Value in Cellular_Network_Failed_Reason_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Cellular_Network_Radio_Type is new Interfaces.Unsigned_8;
   --  Cellular network radio type 

   function None return Cellular_Network_Radio_Type is (0)
     with Static;

   function Gsm return Cellular_Network_Radio_Type is (1)
     with Static;

   function Cdma return Cellular_Network_Radio_Type is (2)
     with Static;

   function Wcdma return Cellular_Network_Radio_Type is (3)
     with Static;

   function Lte return Cellular_Network_Radio_Type is (4)
     with Static;

   subtype Cellular_Network_Radio_Type_Well_Known is Cellular_Network_Radio_Type
     with Static_Predicate => Cellular_Network_Radio_Type_Well_Known in
       None .. Lte;

   function Well_Known_Image
     (Value : Cellular_Network_Radio_Type_Well_Known) return String is
       (case Value is
        when None => "None",
        when Gsm => "Gsm",
        when Cdma => "Cdma",
        when Wcdma => "Wcdma",
        when Lte => "Lte");

   function Image (Value : Cellular_Network_Radio_Type) return String is
     (if Value in Cellular_Network_Radio_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Precision_Land_Mode is new Interfaces.Unsigned_8;
   --  Precision land modes (used in MAV_CMD_NAV_LAND). 

   function Disabled return Precision_Land_Mode is (0)
     with Static;
   --  Normal (non-precision) landing. 

   function Opportunistic return Precision_Land_Mode is (1)
     with Static;
   --  Use precision landing if beacon detected when land command accepted, 
   --  otherwise land normally. 

   function Required return Precision_Land_Mode is (2)
     with Static;
   --  Use precision landing, searching for beacon if not found when land 
   --  command accepted (land normally if beacon cannot be found). 

   subtype Precision_Land_Mode_Well_Known is Precision_Land_Mode
     with Static_Predicate => Precision_Land_Mode_Well_Known in
       Disabled .. Required;

   function Well_Known_Image
     (Value : Precision_Land_Mode_Well_Known) return String is
       (case Value is
        when Disabled => "Disabled",
        when Opportunistic => "Opportunistic",
        when Required => "Required");

   function Image (Value : Precision_Land_Mode) return String is
     (if Value in Precision_Land_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Parachute_Action is new Interfaces.Unsigned_8;
   --  Parachute actions. Trigger release and enable/disable auto-release. 

   function Disable return Parachute_Action is (0)
     with Static;
   --  Disable auto-release of parachute (i.e. release triggered by crash 
   --  detectors). 

   function Enable return Parachute_Action is (1)
     with Static;
   --  Enable auto-release of parachute. 

   function Release return Parachute_Action is (2)
     with Static;
   --  Release parachute and kill motors. 

   subtype Parachute_Action_Well_Known is Parachute_Action
     with Static_Predicate => Parachute_Action_Well_Known in
       Disable .. Release;

   function Well_Known_Image
     (Value : Parachute_Action_Well_Known) return String is
       (case Value is
        when Disable => "Disable",
        when Enable => "Enable",
        when Release => "Release");

   function Image (Value : Parachute_Action) return String is
     (if Value in Parachute_Action_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Tunnel_Payload_Type is new Interfaces.Unsigned_16;

   function Unknown return Mav_Tunnel_Payload_Type is (0)
     with Static;
   --  Encoding of payload unknown. 

   function Storm32_Reserved0 return Mav_Tunnel_Payload_Type is (200)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved1 return Mav_Tunnel_Payload_Type is (201)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved2 return Mav_Tunnel_Payload_Type is (202)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved3 return Mav_Tunnel_Payload_Type is (203)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved4 return Mav_Tunnel_Payload_Type is (204)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved5 return Mav_Tunnel_Payload_Type is (205)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved6 return Mav_Tunnel_Payload_Type is (206)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved7 return Mav_Tunnel_Payload_Type is (207)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved8 return Mav_Tunnel_Payload_Type is (208)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Storm32_Reserved9 return Mav_Tunnel_Payload_Type is (209)
     with Static;
   --  Registered for STorM32 gimbal controller. 

   function Modalai_Remote_Osd return Mav_Tunnel_Payload_Type is (210)
     with Static;
   --  Registered for ModalAI remote OSD protocol. 

   function Modalai_Esc_Uart_Passthru return Mav_Tunnel_Payload_Type is (211)
     with Static;
   --  Registered for ModalAI ESC UART passthru protocol. 

   function Modalai_Io_Uart_Passthru return Mav_Tunnel_Payload_Type is (212)
     with Static;
   --  Registered for ModalAI vendor use. 

   subtype Mav_Tunnel_Payload_Type_Well_Known is Mav_Tunnel_Payload_Type
     with Static_Predicate => Mav_Tunnel_Payload_Type_Well_Known in
       Unknown
       | Storm32_Reserved0 .. Modalai_Io_Uart_Passthru;

   function Well_Known_Image
     (Value : Mav_Tunnel_Payload_Type_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Storm32_Reserved0 => "Storm32_Reserved0",
        when Storm32_Reserved1 => "Storm32_Reserved1",
        when Storm32_Reserved2 => "Storm32_Reserved2",
        when Storm32_Reserved3 => "Storm32_Reserved3",
        when Storm32_Reserved4 => "Storm32_Reserved4",
        when Storm32_Reserved5 => "Storm32_Reserved5",
        when Storm32_Reserved6 => "Storm32_Reserved6",
        when Storm32_Reserved7 => "Storm32_Reserved7",
        when Storm32_Reserved8 => "Storm32_Reserved8",
        when Storm32_Reserved9 => "Storm32_Reserved9",
        when Modalai_Remote_Osd => "Modalai_Remote_Osd",
        when Modalai_Esc_Uart_Passthru => "Modalai_Esc_Uart_Passthru",
        when Modalai_Io_Uart_Passthru => "Modalai_Io_Uart_Passthru");

   function Image (Value : Mav_Tunnel_Payload_Type) return String is
     (if Value in Mav_Tunnel_Payload_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Id_Type is new Interfaces.Unsigned_8;

   function None return Mav_Odid_Id_Type is (0)
     with Static;
   --  No type defined. 

   function Serial_Number return Mav_Odid_Id_Type is (1)
     with Static;
   --  Manufacturer Serial Number (ANSI/CTA-2063 format). 

   function Caa_Registration_Id return Mav_Odid_Id_Type is (2)
     with Static;
   --  CAA (Civil Aviation Authority) registered ID. Format: [ICAO Country 
   --  Code].[CAA Assigned ID]. 

   function Utm_Assigned_Uuid return Mav_Odid_Id_Type is (3)
     with Static;
   --  UTM (Unmanned Traffic Management) assigned UUID (RFC4122). 

   function Specific_Session_Id return Mav_Odid_Id_Type is (4)
     with Static;
   --  A 20 byte ID for a specific flight/session. The exact ID type is 
   --  indicated by the first byte of uas_id and these type values are managed 
   --  by ICAO. 

   subtype Mav_Odid_Id_Type_Well_Known is Mav_Odid_Id_Type
     with Static_Predicate => Mav_Odid_Id_Type_Well_Known in
       None .. Specific_Session_Id;

   function Well_Known_Image
     (Value : Mav_Odid_Id_Type_Well_Known) return String is
       (case Value is
        when None => "None",
        when Serial_Number => "Serial_Number",
        when Caa_Registration_Id => "Caa_Registration_Id",
        when Utm_Assigned_Uuid => "Utm_Assigned_Uuid",
        when Specific_Session_Id => "Specific_Session_Id");

   function Image (Value : Mav_Odid_Id_Type) return String is
     (if Value in Mav_Odid_Id_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Ua_Type is new Interfaces.Unsigned_8;

   function None return Mav_Odid_Ua_Type is (0)
     with Static;
   --  No UA (Unmanned Aircraft) type defined. 

   function Aeroplane return Mav_Odid_Ua_Type is (1)
     with Static;
   --  Aeroplane/Airplane. Fixed wing. 

   function Helicopter_Or_Multirotor return Mav_Odid_Ua_Type is (2)
     with Static;
   --  Helicopter or multirotor. 

   function Gyroplane return Mav_Odid_Ua_Type is (3)
     with Static;
   --  Gyroplane. 

   function Hybrid_Lift return Mav_Odid_Ua_Type is (4)
     with Static;
   --  VTOL (Vertical Take-Off and Landing). Fixed wing aircraft that can take 
   --  off vertically. 

   function Ornithopter return Mav_Odid_Ua_Type is (5)
     with Static;
   --  Ornithopter. 

   function Glider return Mav_Odid_Ua_Type is (6)
     with Static;
   --  Glider. 

   function Kite return Mav_Odid_Ua_Type is (7)
     with Static;
   --  Kite. 

   function Free_Balloon return Mav_Odid_Ua_Type is (8)
     with Static;
   --  Free Balloon. 

   function Captive_Balloon return Mav_Odid_Ua_Type is (9)
     with Static;
   --  Captive Balloon. 

   function Airship return Mav_Odid_Ua_Type is (10)
     with Static;
   --  Airship. E.g. a blimp. 

   function Free_Fall_Parachute return Mav_Odid_Ua_Type is (11)
     with Static;
   --  Free Fall/Parachute (unpowered). 

   function Rocket return Mav_Odid_Ua_Type is (12)
     with Static;
   --  Rocket. 

   function Tethered_Powered_Aircraft return Mav_Odid_Ua_Type is (13)
     with Static;
   --  Tethered powered aircraft. 

   function Ground_Obstacle return Mav_Odid_Ua_Type is (14)
     with Static;
   --  Ground Obstacle. 

   function Other return Mav_Odid_Ua_Type is (15)
     with Static;
   --  Other type of aircraft not listed earlier. 

   subtype Mav_Odid_Ua_Type_Well_Known is Mav_Odid_Ua_Type
     with Static_Predicate => Mav_Odid_Ua_Type_Well_Known in
       None .. Other;

   function Well_Known_Image
     (Value : Mav_Odid_Ua_Type_Well_Known) return String is
       (case Value is
        when None => "None",
        when Aeroplane => "Aeroplane",
        when Helicopter_Or_Multirotor => "Helicopter_Or_Multirotor",
        when Gyroplane => "Gyroplane",
        when Hybrid_Lift => "Hybrid_Lift",
        when Ornithopter => "Ornithopter",
        when Glider => "Glider",
        when Kite => "Kite",
        when Free_Balloon => "Free_Balloon",
        when Captive_Balloon => "Captive_Balloon",
        when Airship => "Airship",
        when Free_Fall_Parachute => "Free_Fall_Parachute",
        when Rocket => "Rocket",
        when Tethered_Powered_Aircraft => "Tethered_Powered_Aircraft",
        when Ground_Obstacle => "Ground_Obstacle",
        when Other => "Other");

   function Image (Value : Mav_Odid_Ua_Type) return String is
     (if Value in Mav_Odid_Ua_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Status is new Interfaces.Unsigned_8;

   function Undeclared return Mav_Odid_Status is (0)
     with Static;
   --  The status of the (UA) Unmanned Aircraft is undefined. 

   function Ground return Mav_Odid_Status is (1)
     with Static;
   --  The UA is on the ground. 

   function Airborne return Mav_Odid_Status is (2)
     with Static;
   --  The UA is in the air. 

   function Emergency return Mav_Odid_Status is (3)
     with Static;
   --  The UA is having an emergency. 

   function Remote_Id_System_Failure return Mav_Odid_Status is (4)
     with Static;
   --  The remote ID system is failing or unreliable in some way. 

   subtype Mav_Odid_Status_Well_Known is Mav_Odid_Status
     with Static_Predicate => Mav_Odid_Status_Well_Known in
       Undeclared .. Remote_Id_System_Failure;

   function Well_Known_Image
     (Value : Mav_Odid_Status_Well_Known) return String is
       (case Value is
        when Undeclared => "Undeclared",
        when Ground => "Ground",
        when Airborne => "Airborne",
        when Emergency => "Emergency",
        when Remote_Id_System_Failure => "Remote_Id_System_Failure");

   function Image (Value : Mav_Odid_Status) return String is
     (if Value in Mav_Odid_Status_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Height_Ref is new Interfaces.Unsigned_8;

   function Takeoff return Mav_Odid_Height_Ref is (0)
     with Static;
   --  The height field is relative to the take-off location. 

   function Ground return Mav_Odid_Height_Ref is (1)
     with Static;
   --  The height field is relative to ground. 

   subtype Mav_Odid_Height_Ref_Well_Known is Mav_Odid_Height_Ref
     with Static_Predicate => Mav_Odid_Height_Ref_Well_Known in
       Takeoff .. Ground;

   function Well_Known_Image
     (Value : Mav_Odid_Height_Ref_Well_Known) return String is
       (case Value is
        when Takeoff => "Takeoff",
        when Ground => "Ground");

   function Image (Value : Mav_Odid_Height_Ref) return String is
     (if Value in Mav_Odid_Height_Ref_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Hor_Acc is new Interfaces.Unsigned_8;

   function Unknown return Mav_Odid_Hor_Acc is (0)
     with Static;
   --  The horizontal accuracy is unknown. 

   function A_10Nm return Mav_Odid_Hor_Acc is (1)
     with Static;
   --  The horizontal accuracy is smaller than 10 Nautical Miles. 18.52 km. 

   function A_4Nm return Mav_Odid_Hor_Acc is (2)
     with Static;
   --  The horizontal accuracy is smaller than 4 Nautical Miles. 7.408 km. 

   function A_2Nm return Mav_Odid_Hor_Acc is (3)
     with Static;
   --  The horizontal accuracy is smaller than 2 Nautical Miles. 3.704 km. 

   function A_1Nm return Mav_Odid_Hor_Acc is (4)
     with Static;
   --  The horizontal accuracy is smaller than 1 Nautical Miles. 1.852 km. 

   function A_0_5Nm return Mav_Odid_Hor_Acc is (5)
     with Static;
   --  The horizontal accuracy is smaller than 0.5 Nautical Miles. 926 m. 

   function A_0_3Nm return Mav_Odid_Hor_Acc is (6)
     with Static;
   --  The horizontal accuracy is smaller than 0.3 Nautical Miles. 555.6 m. 

   function A_0_1Nm return Mav_Odid_Hor_Acc is (7)
     with Static;
   --  The horizontal accuracy is smaller than 0.1 Nautical Miles. 185.2 m. 

   function A_0_05Nm return Mav_Odid_Hor_Acc is (8)
     with Static;
   --  The horizontal accuracy is smaller than 0.05 Nautical Miles. 92.6 m. 

   function A_30_Meter return Mav_Odid_Hor_Acc is (9)
     with Static;
   --  The horizontal accuracy is smaller than 30 meter. 

   function A_10_Meter return Mav_Odid_Hor_Acc is (10)
     with Static;
   --  The horizontal accuracy is smaller than 10 meter. 

   function A_3_Meter return Mav_Odid_Hor_Acc is (11)
     with Static;
   --  The horizontal accuracy is smaller than 3 meter. 

   function A_1_Meter return Mav_Odid_Hor_Acc is (12)
     with Static;
   --  The horizontal accuracy is smaller than 1 meter. 

   subtype Mav_Odid_Hor_Acc_Well_Known is Mav_Odid_Hor_Acc
     with Static_Predicate => Mav_Odid_Hor_Acc_Well_Known in
       Unknown .. A_1_Meter;

   function Well_Known_Image
     (Value : Mav_Odid_Hor_Acc_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when A_10Nm => "A_10Nm",
        when A_4Nm => "A_4Nm",
        when A_2Nm => "A_2Nm",
        when A_1Nm => "A_1Nm",
        when A_0_5Nm => "A_0_5Nm",
        when A_0_3Nm => "A_0_3Nm",
        when A_0_1Nm => "A_0_1Nm",
        when A_0_05Nm => "A_0_05Nm",
        when A_30_Meter => "A_30_Meter",
        when A_10_Meter => "A_10_Meter",
        when A_3_Meter => "A_3_Meter",
        when A_1_Meter => "A_1_Meter");

   function Image (Value : Mav_Odid_Hor_Acc) return String is
     (if Value in Mav_Odid_Hor_Acc_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Ver_Acc is new Interfaces.Unsigned_8;

   function Unknown return Mav_Odid_Ver_Acc is (0)
     with Static;
   --  The vertical accuracy is unknown. 

   function A_150_Meter return Mav_Odid_Ver_Acc is (1)
     with Static;
   --  The vertical accuracy is smaller than 150 meter. 

   function A_45_Meter return Mav_Odid_Ver_Acc is (2)
     with Static;
   --  The vertical accuracy is smaller than 45 meter. 

   function A_25_Meter return Mav_Odid_Ver_Acc is (3)
     with Static;
   --  The vertical accuracy is smaller than 25 meter. 

   function A_10_Meter return Mav_Odid_Ver_Acc is (4)
     with Static;
   --  The vertical accuracy is smaller than 10 meter. 

   function A_3_Meter return Mav_Odid_Ver_Acc is (5)
     with Static;
   --  The vertical accuracy is smaller than 3 meter. 

   function A_1_Meter return Mav_Odid_Ver_Acc is (6)
     with Static;
   --  The vertical accuracy is smaller than 1 meter. 

   subtype Mav_Odid_Ver_Acc_Well_Known is Mav_Odid_Ver_Acc
     with Static_Predicate => Mav_Odid_Ver_Acc_Well_Known in
       Unknown .. A_1_Meter;

   function Well_Known_Image
     (Value : Mav_Odid_Ver_Acc_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when A_150_Meter => "A_150_Meter",
        when A_45_Meter => "A_45_Meter",
        when A_25_Meter => "A_25_Meter",
        when A_10_Meter => "A_10_Meter",
        when A_3_Meter => "A_3_Meter",
        when A_1_Meter => "A_1_Meter");

   function Image (Value : Mav_Odid_Ver_Acc) return String is
     (if Value in Mav_Odid_Ver_Acc_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Speed_Acc is new Interfaces.Unsigned_8;

   function Unknown return Mav_Odid_Speed_Acc is (0)
     with Static;
   --  The speed accuracy is unknown. 

   function A_10_Meters_Per_Second return Mav_Odid_Speed_Acc is (1)
     with Static;
   --  The speed accuracy is smaller than 10 meters per second. 

   function A_3_Meters_Per_Second return Mav_Odid_Speed_Acc is (2)
     with Static;
   --  The speed accuracy is smaller than 3 meters per second. 

   function A_1_Meters_Per_Second return Mav_Odid_Speed_Acc is (3)
     with Static;
   --  The speed accuracy is smaller than 1 meters per second. 

   function A_0_3_Meters_Per_Second return Mav_Odid_Speed_Acc is (4)
     with Static;
   --  The speed accuracy is smaller than 0.3 meters per second. 

   subtype Mav_Odid_Speed_Acc_Well_Known is Mav_Odid_Speed_Acc
     with Static_Predicate => Mav_Odid_Speed_Acc_Well_Known in
       Unknown .. A_0_3_Meters_Per_Second;

   function Well_Known_Image
     (Value : Mav_Odid_Speed_Acc_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when A_10_Meters_Per_Second => "A_10_Meters_Per_Second",
        when A_3_Meters_Per_Second => "A_3_Meters_Per_Second",
        when A_1_Meters_Per_Second => "A_1_Meters_Per_Second",
        when A_0_3_Meters_Per_Second => "A_0_3_Meters_Per_Second");

   function Image (Value : Mav_Odid_Speed_Acc) return String is
     (if Value in Mav_Odid_Speed_Acc_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Time_Acc is new Interfaces.Unsigned_8;

   function Unknown return Mav_Odid_Time_Acc is (0)
     with Static;
   --  The timestamp accuracy is unknown. 

   function A_0_1_Second return Mav_Odid_Time_Acc is (1)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.1 second. 

   function A_0_2_Second return Mav_Odid_Time_Acc is (2)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.2 second. 

   function A_0_3_Second return Mav_Odid_Time_Acc is (3)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.3 second. 

   function A_0_4_Second return Mav_Odid_Time_Acc is (4)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.4 second. 

   function A_0_5_Second return Mav_Odid_Time_Acc is (5)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.5 second. 

   function A_0_6_Second return Mav_Odid_Time_Acc is (6)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.6 second. 

   function A_0_7_Second return Mav_Odid_Time_Acc is (7)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.7 second. 

   function A_0_8_Second return Mav_Odid_Time_Acc is (8)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.8 second. 

   function A_0_9_Second return Mav_Odid_Time_Acc is (9)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 0.9 second. 

   function A_1_0_Second return Mav_Odid_Time_Acc is (10)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 1.0 second. 

   function A_1_1_Second return Mav_Odid_Time_Acc is (11)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 1.1 second. 

   function A_1_2_Second return Mav_Odid_Time_Acc is (12)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 1.2 second. 

   function A_1_3_Second return Mav_Odid_Time_Acc is (13)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 1.3 second. 

   function A_1_4_Second return Mav_Odid_Time_Acc is (14)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 1.4 second. 

   function A_1_5_Second return Mav_Odid_Time_Acc is (15)
     with Static;
   --  The timestamp accuracy is smaller than or equal to 1.5 second. 

   subtype Mav_Odid_Time_Acc_Well_Known is Mav_Odid_Time_Acc
     with Static_Predicate => Mav_Odid_Time_Acc_Well_Known in
       Unknown .. A_1_5_Second;

   function Well_Known_Image
     (Value : Mav_Odid_Time_Acc_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when A_0_1_Second => "A_0_1_Second",
        when A_0_2_Second => "A_0_2_Second",
        when A_0_3_Second => "A_0_3_Second",
        when A_0_4_Second => "A_0_4_Second",
        when A_0_5_Second => "A_0_5_Second",
        when A_0_6_Second => "A_0_6_Second",
        when A_0_7_Second => "A_0_7_Second",
        when A_0_8_Second => "A_0_8_Second",
        when A_0_9_Second => "A_0_9_Second",
        when A_1_0_Second => "A_1_0_Second",
        when A_1_1_Second => "A_1_1_Second",
        when A_1_2_Second => "A_1_2_Second",
        when A_1_3_Second => "A_1_3_Second",
        when A_1_4_Second => "A_1_4_Second",
        when A_1_5_Second => "A_1_5_Second");

   function Image (Value : Mav_Odid_Time_Acc) return String is
     (if Value in Mav_Odid_Time_Acc_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Auth_Type is new Interfaces.Unsigned_8;

   function None return Mav_Odid_Auth_Type is (0)
     with Static;
   --  No authentication type is specified. 

   function Uas_Id_Signature return Mav_Odid_Auth_Type is (1)
     with Static;
   --  Signature for the UAS (Unmanned Aircraft System) ID. 

   function Operator_Id_Signature return Mav_Odid_Auth_Type is (2)
     with Static;
   --  Signature for the Operator ID. 

   function Message_Set_Signature return Mav_Odid_Auth_Type is (3)
     with Static;
   --  Signature for the entire message set. 

   function Network_Remote_Id return Mav_Odid_Auth_Type is (4)
     with Static;
   --  Authentication is provided by Network Remote ID. 

   function Specific_Authentication return Mav_Odid_Auth_Type is (5)
     with Static;
   --  The exact authentication type is indicated by the first byte of 
   --  authentication_data and these type values are managed by ICAO. 

   subtype Mav_Odid_Auth_Type_Well_Known is Mav_Odid_Auth_Type
     with Static_Predicate => Mav_Odid_Auth_Type_Well_Known in
       None .. Specific_Authentication;

   function Well_Known_Image
     (Value : Mav_Odid_Auth_Type_Well_Known) return String is
       (case Value is
        when None => "None",
        when Uas_Id_Signature => "Uas_Id_Signature",
        when Operator_Id_Signature => "Operator_Id_Signature",
        when Message_Set_Signature => "Message_Set_Signature",
        when Network_Remote_Id => "Network_Remote_Id",
        when Specific_Authentication => "Specific_Authentication");

   function Image (Value : Mav_Odid_Auth_Type) return String is
     (if Value in Mav_Odid_Auth_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Desc_Type is new Interfaces.Unsigned_8;

   function Text return Mav_Odid_Desc_Type is (0)
     with Static;
   --  Optional free-form text description of the purpose of the flight. 

   function Emergency return Mav_Odid_Desc_Type is (1)
     with Static;
   --  Optional additional clarification when status == 
   --  MAV_ODID_STATUS_EMERGENCY. 

   function Extended_Status return Mav_Odid_Desc_Type is (2)
     with Static;
   --  Optional additional clarification when status != 
   --  MAV_ODID_STATUS_EMERGENCY. 

   subtype Mav_Odid_Desc_Type_Well_Known is Mav_Odid_Desc_Type
     with Static_Predicate => Mav_Odid_Desc_Type_Well_Known in
       Text .. Extended_Status;

   function Well_Known_Image
     (Value : Mav_Odid_Desc_Type_Well_Known) return String is
       (case Value is
        when Text => "Text",
        when Emergency => "Emergency",
        when Extended_Status => "Extended_Status");

   function Image (Value : Mav_Odid_Desc_Type) return String is
     (if Value in Mav_Odid_Desc_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Operator_Location_Type is new Interfaces.Unsigned_8;

   function Takeoff return Mav_Odid_Operator_Location_Type is (0)
     with Static;
   --  The location/altitude of the operator is the same as the take-off 
   --  location. 

   function Live_Gnss return Mav_Odid_Operator_Location_Type is (1)
     with Static;
   --  The location/altitude of the operator is dynamic. E.g. based on live 
   --  GNSS data. 

   function Fixed return Mav_Odid_Operator_Location_Type is (2)
     with Static;
   --  The location/altitude of the operator are fixed values. 

   subtype Mav_Odid_Operator_Location_Type_Well_Known is Mav_Odid_Operator_Location_Type
     with Static_Predicate => Mav_Odid_Operator_Location_Type_Well_Known in
       Takeoff .. Fixed;

   function Well_Known_Image
     (Value : Mav_Odid_Operator_Location_Type_Well_Known) return String is
       (case Value is
        when Takeoff => "Takeoff",
        when Live_Gnss => "Live_Gnss",
        when Fixed => "Fixed");

   function Image (Value : Mav_Odid_Operator_Location_Type) return String is
     (if Value in Mav_Odid_Operator_Location_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Classification_Type is new Interfaces.Unsigned_8;

   function Undeclared return Mav_Odid_Classification_Type is (0)
     with Static;
   --  The classification type for the UA is undeclared. 

   function Eu return Mav_Odid_Classification_Type is (1)
     with Static;
   --  The classification type for the UA follows EU (European Union) 
   --  specifications. 

   subtype Mav_Odid_Classification_Type_Well_Known is Mav_Odid_Classification_Type
     with Static_Predicate => Mav_Odid_Classification_Type_Well_Known in
       Undeclared .. Eu;

   function Well_Known_Image
     (Value : Mav_Odid_Classification_Type_Well_Known) return String is
       (case Value is
        when Undeclared => "Undeclared",
        when Eu => "Eu");

   function Image (Value : Mav_Odid_Classification_Type) return String is
     (if Value in Mav_Odid_Classification_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Category_Eu is new Interfaces.Unsigned_8;

   function Undeclared return Mav_Odid_Category_Eu is (0)
     with Static;
   --  The category for the UA, according to the EU specification, is 
   --  undeclared. 

   function Open return Mav_Odid_Category_Eu is (1)
     with Static;
   --  The category for the UA, according to the EU specification, is the Open 
   --  category. 

   function Specific return Mav_Odid_Category_Eu is (2)
     with Static;
   --  The category for the UA, according to the EU specification, is the 
   --  Specific category. 

   function Certified return Mav_Odid_Category_Eu is (3)
     with Static;
   --  The category for the UA, according to the EU specification, is the 
   --  Certified category. 

   subtype Mav_Odid_Category_Eu_Well_Known is Mav_Odid_Category_Eu
     with Static_Predicate => Mav_Odid_Category_Eu_Well_Known in
       Undeclared .. Certified;

   function Well_Known_Image
     (Value : Mav_Odid_Category_Eu_Well_Known) return String is
       (case Value is
        when Undeclared => "Undeclared",
        when Open => "Open",
        when Specific => "Specific",
        when Certified => "Certified");

   function Image (Value : Mav_Odid_Category_Eu) return String is
     (if Value in Mav_Odid_Category_Eu_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Class_Eu is new Interfaces.Unsigned_8;

   function Undeclared return Mav_Odid_Class_Eu is (0)
     with Static;
   --  The class for the UA, according to the EU specification, is undeclared. 

   function Class_0 return Mav_Odid_Class_Eu is (1)
     with Static;
   --  The class for the UA, according to the EU specification, is Class 0. 

   function Class_1 return Mav_Odid_Class_Eu is (2)
     with Static;
   --  The class for the UA, according to the EU specification, is Class 1. 

   function Class_2 return Mav_Odid_Class_Eu is (3)
     with Static;
   --  The class for the UA, according to the EU specification, is Class 2. 

   function Class_3 return Mav_Odid_Class_Eu is (4)
     with Static;
   --  The class for the UA, according to the EU specification, is Class 3. 

   function Class_4 return Mav_Odid_Class_Eu is (5)
     with Static;
   --  The class for the UA, according to the EU specification, is Class 4. 

   function Class_5 return Mav_Odid_Class_Eu is (6)
     with Static;
   --  The class for the UA, according to the EU specification, is Class 5. 

   function Class_6 return Mav_Odid_Class_Eu is (7)
     with Static;
   --  The class for the UA, according to the EU specification, is Class 6. 

   subtype Mav_Odid_Class_Eu_Well_Known is Mav_Odid_Class_Eu
     with Static_Predicate => Mav_Odid_Class_Eu_Well_Known in
       Undeclared .. Class_6;

   function Well_Known_Image
     (Value : Mav_Odid_Class_Eu_Well_Known) return String is
       (case Value is
        when Undeclared => "Undeclared",
        when Class_0 => "Class_0",
        when Class_1 => "Class_1",
        when Class_2 => "Class_2",
        when Class_3 => "Class_3",
        when Class_4 => "Class_4",
        when Class_5 => "Class_5",
        when Class_6 => "Class_6");

   function Image (Value : Mav_Odid_Class_Eu) return String is
     (if Value in Mav_Odid_Class_Eu_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Operator_Id_Type is new Interfaces.Unsigned_8;

   function Mav_Odid_Operator_Id_Type_Caa return Mav_Odid_Operator_Id_Type is (0)
     with Static;
   --  CAA (Civil Aviation Authority) registered operator ID. 

   subtype Mav_Odid_Operator_Id_Type_Well_Known is Mav_Odid_Operator_Id_Type
     with Static_Predicate => Mav_Odid_Operator_Id_Type_Well_Known in
       Mav_Odid_Operator_Id_Type_Caa;

   function Well_Known_Image
     (Value : Mav_Odid_Operator_Id_Type_Well_Known) return String is
       (case Value is
        when Mav_Odid_Operator_Id_Type_Caa => "Mav_Odid_Operator_Id_Type_Caa");

   function Image (Value : Mav_Odid_Operator_Id_Type) return String is
     (if Value in Mav_Odid_Operator_Id_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Odid_Arm_Status is new Interfaces.Unsigned_8;

   function Good_To_Arm return Mav_Odid_Arm_Status is (0)
     with Static;
   --  Passing arming checks. 

   function Pre_Arm_Fail_Generic return Mav_Odid_Arm_Status is (1)
     with Static;
   --  Generic arming failure, see error string for details. 

   subtype Mav_Odid_Arm_Status_Well_Known is Mav_Odid_Arm_Status
     with Static_Predicate => Mav_Odid_Arm_Status_Well_Known in
       Good_To_Arm .. Pre_Arm_Fail_Generic;

   function Well_Known_Image
     (Value : Mav_Odid_Arm_Status_Well_Known) return String is
       (case Value is
        when Good_To_Arm => "Good_To_Arm",
        when Pre_Arm_Fail_Generic => "Pre_Arm_Fail_Generic");

   function Image (Value : Mav_Odid_Arm_Status) return String is
     (if Value in Mav_Odid_Arm_Status_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Tune_Format is new Interfaces.Unsigned_32;
   --  Tune formats (used for vehicle buzzer/tone generation). 

   function Qbasic1_1 return Tune_Format is (1)
     with Static;
   --  Format is QBasic 1.1 Play: 
   --  https://www.qbasic.net/en/reference/qb11/Statement/PLAY-006.htm. 

   function Mml_Modern return Tune_Format is (2)
     with Static;
   --  Format is Modern Music Markup Language (MML): 
   --  https://en.wikipedia.org/wiki/Music_Macro_Language#Modern_MML. 

   subtype Tune_Format_Well_Known is Tune_Format
     with Static_Predicate => Tune_Format_Well_Known in
       Qbasic1_1 .. Mml_Modern;

   function Well_Known_Image
     (Value : Tune_Format_Well_Known) return String is
       (case Value is
        when Qbasic1_1 => "Qbasic1_1",
        when Mml_Modern => "Mml_Modern");

   function Image (Value : Tune_Format) return String is
     (if Value in Tune_Format_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Ais_Type is new Interfaces.Unsigned_8;
   --  Type of AIS vessel, enum duplicated from AIS standard, 
   --  https://gpsd.gitlab.io/gpsd/AIVDM.html 

   function Unknown return Ais_Type is (0)
     with Static;
   --  Not available (default). 

   function Reserved_1 return Ais_Type is (1)
     with Static;

   function Reserved_2 return Ais_Type is (2)
     with Static;

   function Reserved_3 return Ais_Type is (3)
     with Static;

   function Reserved_4 return Ais_Type is (4)
     with Static;

   function Reserved_5 return Ais_Type is (5)
     with Static;

   function Reserved_6 return Ais_Type is (6)
     with Static;

   function Reserved_7 return Ais_Type is (7)
     with Static;

   function Reserved_8 return Ais_Type is (8)
     with Static;

   function Reserved_9 return Ais_Type is (9)
     with Static;

   function Reserved_10 return Ais_Type is (10)
     with Static;

   function Reserved_11 return Ais_Type is (11)
     with Static;

   function Reserved_12 return Ais_Type is (12)
     with Static;

   function Reserved_13 return Ais_Type is (13)
     with Static;

   function Reserved_14 return Ais_Type is (14)
     with Static;

   function Reserved_15 return Ais_Type is (15)
     with Static;

   function Reserved_16 return Ais_Type is (16)
     with Static;

   function Reserved_17 return Ais_Type is (17)
     with Static;

   function Reserved_18 return Ais_Type is (18)
     with Static;

   function Reserved_19 return Ais_Type is (19)
     with Static;

   function Wig return Ais_Type is (20)
     with Static;
   --  Wing In Ground effect. 

   function Wig_Hazardous_A return Ais_Type is (21)
     with Static;

   function Wig_Hazardous_B return Ais_Type is (22)
     with Static;

   function Wig_Hazardous_C return Ais_Type is (23)
     with Static;

   function Wig_Hazardous_D return Ais_Type is (24)
     with Static;

   function Wig_Reserved_1 return Ais_Type is (25)
     with Static;

   function Wig_Reserved_2 return Ais_Type is (26)
     with Static;

   function Wig_Reserved_3 return Ais_Type is (27)
     with Static;

   function Wig_Reserved_4 return Ais_Type is (28)
     with Static;

   function Wig_Reserved_5 return Ais_Type is (29)
     with Static;

   function Fishing return Ais_Type is (30)
     with Static;

   function Towing return Ais_Type is (31)
     with Static;

   function Towing_Large return Ais_Type is (32)
     with Static;
   --  Towing: length exceeds 200m or breadth exceeds 25m. 

   function Dredging return Ais_Type is (33)
     with Static;
   --  Dredging or other underwater ops. 

   function Diving return Ais_Type is (34)
     with Static;

   function Military return Ais_Type is (35)
     with Static;

   function Sailing return Ais_Type is (36)
     with Static;

   function Pleasure return Ais_Type is (37)
     with Static;

   function Reserved_20 return Ais_Type is (38)
     with Static;

   function Reserved_21 return Ais_Type is (39)
     with Static;

   function Hsc return Ais_Type is (40)
     with Static;
   --  High Speed Craft. 

   function Hsc_Hazardous_A return Ais_Type is (41)
     with Static;

   function Hsc_Hazardous_B return Ais_Type is (42)
     with Static;

   function Hsc_Hazardous_C return Ais_Type is (43)
     with Static;

   function Hsc_Hazardous_D return Ais_Type is (44)
     with Static;

   function Hsc_Reserved_1 return Ais_Type is (45)
     with Static;

   function Hsc_Reserved_2 return Ais_Type is (46)
     with Static;

   function Hsc_Reserved_3 return Ais_Type is (47)
     with Static;

   function Hsc_Reserved_4 return Ais_Type is (48)
     with Static;

   function Hsc_Unknown return Ais_Type is (49)
     with Static;

   function Pilot return Ais_Type is (50)
     with Static;

   function Sar return Ais_Type is (51)
     with Static;
   --  Search And Rescue vessel. 

   function Tug return Ais_Type is (52)
     with Static;

   function Port_Tender return Ais_Type is (53)
     with Static;

   function Anti_Pollution return Ais_Type is (54)
     with Static;
   --  Anti-pollution equipment. 

   function Law_Enforcement return Ais_Type is (55)
     with Static;

   function Spare_Local_1 return Ais_Type is (56)
     with Static;

   function Spare_Local_2 return Ais_Type is (57)
     with Static;

   function Medical_Transport return Ais_Type is (58)
     with Static;

   function Nonecombatant return Ais_Type is (59)
     with Static;
   --  Noncombatant ship according to RR Resolution No. 18. 

   function Passenger return Ais_Type is (60)
     with Static;

   function Passenger_Hazardous_A return Ais_Type is (61)
     with Static;

   function Passenger_Hazardous_B return Ais_Type is (62)
     with Static;

   function Passenger_Hazardous_C return Ais_Type is (63)
     with Static;

   function Passenger_Hazardous_D return Ais_Type is (64)
     with Static;

   function Passenger_Reserved_1 return Ais_Type is (65)
     with Static;

   function Passenger_Reserved_2 return Ais_Type is (66)
     with Static;

   function Passenger_Reserved_3 return Ais_Type is (67)
     with Static;

   function Passenger_Reserved_4 return Ais_Type is (68)
     with Static;

   function Passenger_Unknown return Ais_Type is (69)
     with Static;

   function Cargo return Ais_Type is (70)
     with Static;

   function Cargo_Hazardous_A return Ais_Type is (71)
     with Static;

   function Cargo_Hazardous_B return Ais_Type is (72)
     with Static;

   function Cargo_Hazardous_C return Ais_Type is (73)
     with Static;

   function Cargo_Hazardous_D return Ais_Type is (74)
     with Static;

   function Cargo_Reserved_1 return Ais_Type is (75)
     with Static;

   function Cargo_Reserved_2 return Ais_Type is (76)
     with Static;

   function Cargo_Reserved_3 return Ais_Type is (77)
     with Static;

   function Cargo_Reserved_4 return Ais_Type is (78)
     with Static;

   function Cargo_Unknown return Ais_Type is (79)
     with Static;

   function Tanker return Ais_Type is (80)
     with Static;

   function Tanker_Hazardous_A return Ais_Type is (81)
     with Static;

   function Tanker_Hazardous_B return Ais_Type is (82)
     with Static;

   function Tanker_Hazardous_C return Ais_Type is (83)
     with Static;

   function Tanker_Hazardous_D return Ais_Type is (84)
     with Static;

   function Tanker_Reserved_1 return Ais_Type is (85)
     with Static;

   function Tanker_Reserved_2 return Ais_Type is (86)
     with Static;

   function Tanker_Reserved_3 return Ais_Type is (87)
     with Static;

   function Tanker_Reserved_4 return Ais_Type is (88)
     with Static;

   function Tanker_Unknown return Ais_Type is (89)
     with Static;

   function Other return Ais_Type is (90)
     with Static;

   function Other_Hazardous_A return Ais_Type is (91)
     with Static;

   function Other_Hazardous_B return Ais_Type is (92)
     with Static;

   function Other_Hazardous_C return Ais_Type is (93)
     with Static;

   function Other_Hazardous_D return Ais_Type is (94)
     with Static;

   function Other_Reserved_1 return Ais_Type is (95)
     with Static;

   function Other_Reserved_2 return Ais_Type is (96)
     with Static;

   function Other_Reserved_3 return Ais_Type is (97)
     with Static;

   function Other_Reserved_4 return Ais_Type is (98)
     with Static;

   function Other_Unknown return Ais_Type is (99)
     with Static;

   subtype Ais_Type_Well_Known is Ais_Type
     with Static_Predicate => Ais_Type_Well_Known in
       Unknown .. Other_Unknown;

   function Well_Known_Image
     (Value : Ais_Type_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Reserved_1 => "Reserved_1",
        when Reserved_2 => "Reserved_2",
        when Reserved_3 => "Reserved_3",
        when Reserved_4 => "Reserved_4",
        when Reserved_5 => "Reserved_5",
        when Reserved_6 => "Reserved_6",
        when Reserved_7 => "Reserved_7",
        when Reserved_8 => "Reserved_8",
        when Reserved_9 => "Reserved_9",
        when Reserved_10 => "Reserved_10",
        when Reserved_11 => "Reserved_11",
        when Reserved_12 => "Reserved_12",
        when Reserved_13 => "Reserved_13",
        when Reserved_14 => "Reserved_14",
        when Reserved_15 => "Reserved_15",
        when Reserved_16 => "Reserved_16",
        when Reserved_17 => "Reserved_17",
        when Reserved_18 => "Reserved_18",
        when Reserved_19 => "Reserved_19",
        when Wig => "Wig",
        when Wig_Hazardous_A => "Wig_Hazardous_A",
        when Wig_Hazardous_B => "Wig_Hazardous_B",
        when Wig_Hazardous_C => "Wig_Hazardous_C",
        when Wig_Hazardous_D => "Wig_Hazardous_D",
        when Wig_Reserved_1 => "Wig_Reserved_1",
        when Wig_Reserved_2 => "Wig_Reserved_2",
        when Wig_Reserved_3 => "Wig_Reserved_3",
        when Wig_Reserved_4 => "Wig_Reserved_4",
        when Wig_Reserved_5 => "Wig_Reserved_5",
        when Fishing => "Fishing",
        when Towing => "Towing",
        when Towing_Large => "Towing_Large",
        when Dredging => "Dredging",
        when Diving => "Diving",
        when Military => "Military",
        when Sailing => "Sailing",
        when Pleasure => "Pleasure",
        when Reserved_20 => "Reserved_20",
        when Reserved_21 => "Reserved_21",
        when Hsc => "Hsc",
        when Hsc_Hazardous_A => "Hsc_Hazardous_A",
        when Hsc_Hazardous_B => "Hsc_Hazardous_B",
        when Hsc_Hazardous_C => "Hsc_Hazardous_C",
        when Hsc_Hazardous_D => "Hsc_Hazardous_D",
        when Hsc_Reserved_1 => "Hsc_Reserved_1",
        when Hsc_Reserved_2 => "Hsc_Reserved_2",
        when Hsc_Reserved_3 => "Hsc_Reserved_3",
        when Hsc_Reserved_4 => "Hsc_Reserved_4",
        when Hsc_Unknown => "Hsc_Unknown",
        when Pilot => "Pilot",
        when Sar => "Sar",
        when Tug => "Tug",
        when Port_Tender => "Port_Tender",
        when Anti_Pollution => "Anti_Pollution",
        when Law_Enforcement => "Law_Enforcement",
        when Spare_Local_1 => "Spare_Local_1",
        when Spare_Local_2 => "Spare_Local_2",
        when Medical_Transport => "Medical_Transport",
        when Nonecombatant => "Nonecombatant",
        when Passenger => "Passenger",
        when Passenger_Hazardous_A => "Passenger_Hazardous_A",
        when Passenger_Hazardous_B => "Passenger_Hazardous_B",
        when Passenger_Hazardous_C => "Passenger_Hazardous_C",
        when Passenger_Hazardous_D => "Passenger_Hazardous_D",
        when Passenger_Reserved_1 => "Passenger_Reserved_1",
        when Passenger_Reserved_2 => "Passenger_Reserved_2",
        when Passenger_Reserved_3 => "Passenger_Reserved_3",
        when Passenger_Reserved_4 => "Passenger_Reserved_4",
        when Passenger_Unknown => "Passenger_Unknown",
        when Cargo => "Cargo",
        when Cargo_Hazardous_A => "Cargo_Hazardous_A",
        when Cargo_Hazardous_B => "Cargo_Hazardous_B",
        when Cargo_Hazardous_C => "Cargo_Hazardous_C",
        when Cargo_Hazardous_D => "Cargo_Hazardous_D",
        when Cargo_Reserved_1 => "Cargo_Reserved_1",
        when Cargo_Reserved_2 => "Cargo_Reserved_2",
        when Cargo_Reserved_3 => "Cargo_Reserved_3",
        when Cargo_Reserved_4 => "Cargo_Reserved_4",
        when Cargo_Unknown => "Cargo_Unknown",
        when Tanker => "Tanker",
        when Tanker_Hazardous_A => "Tanker_Hazardous_A",
        when Tanker_Hazardous_B => "Tanker_Hazardous_B",
        when Tanker_Hazardous_C => "Tanker_Hazardous_C",
        when Tanker_Hazardous_D => "Tanker_Hazardous_D",
        when Tanker_Reserved_1 => "Tanker_Reserved_1",
        when Tanker_Reserved_2 => "Tanker_Reserved_2",
        when Tanker_Reserved_3 => "Tanker_Reserved_3",
        when Tanker_Reserved_4 => "Tanker_Reserved_4",
        when Tanker_Unknown => "Tanker_Unknown",
        when Other => "Other",
        when Other_Hazardous_A => "Other_Hazardous_A",
        when Other_Hazardous_B => "Other_Hazardous_B",
        when Other_Hazardous_C => "Other_Hazardous_C",
        when Other_Hazardous_D => "Other_Hazardous_D",
        when Other_Reserved_1 => "Other_Reserved_1",
        when Other_Reserved_2 => "Other_Reserved_2",
        when Other_Reserved_3 => "Other_Reserved_3",
        when Other_Reserved_4 => "Other_Reserved_4",
        when Other_Unknown => "Other_Unknown");

   function Image (Value : Ais_Type) return String is
     (if Value in Ais_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Ais_Nav_Status is new Interfaces.Unsigned_8;
   --  Navigational status of AIS vessel, enum duplicated from AIS standard, 
   --  https://gpsd.gitlab.io/gpsd/AIVDM.html 

   function Under_Way return Ais_Nav_Status is (0)
     with Static;
   --  Under way using engine. 

   function Anchored return Ais_Nav_Status is (1)
     with Static;

   function Un_Commanded return Ais_Nav_Status is (2)
     with Static;

   function Restricted_Manoeuverability return Ais_Nav_Status is (3)
     with Static;

   function Draught_Constrained return Ais_Nav_Status is (4)
     with Static;

   function Moored return Ais_Nav_Status is (5)
     with Static;

   function Aground return Ais_Nav_Status is (6)
     with Static;

   function Fishing return Ais_Nav_Status is (7)
     with Static;

   function Sailing return Ais_Nav_Status is (8)
     with Static;

   function Reserved_Hsc return Ais_Nav_Status is (9)
     with Static;

   function Reserved_Wig return Ais_Nav_Status is (10)
     with Static;

   function Reserved_1 return Ais_Nav_Status is (11)
     with Static;

   function Reserved_2 return Ais_Nav_Status is (12)
     with Static;

   function Reserved_3 return Ais_Nav_Status is (13)
     with Static;

   function Ais_Sart return Ais_Nav_Status is (14)
     with Static;
   --  Search And Rescue Transponder. 

   function Unknown return Ais_Nav_Status is (15)
     with Static;
   --  Not available (default). 

   subtype Ais_Nav_Status_Well_Known is Ais_Nav_Status
     with Static_Predicate => Ais_Nav_Status_Well_Known in
       Under_Way .. Unknown;

   function Well_Known_Image
     (Value : Ais_Nav_Status_Well_Known) return String is
       (case Value is
        when Under_Way => "Under_Way",
        when Anchored => "Anchored",
        when Un_Commanded => "Un_Commanded",
        when Restricted_Manoeuverability => "Restricted_Manoeuverability",
        when Draught_Constrained => "Draught_Constrained",
        when Moored => "Moored",
        when Aground => "Aground",
        when Fishing => "Fishing",
        when Sailing => "Sailing",
        when Reserved_Hsc => "Reserved_Hsc",
        when Reserved_Wig => "Reserved_Wig",
        when Reserved_1 => "Reserved_1",
        when Reserved_2 => "Reserved_2",
        when Reserved_3 => "Reserved_3",
        when Ais_Sart => "Ais_Sart",
        when Unknown => "Unknown");

   function Image (Value : Ais_Nav_Status) return String is
     (if Value in Ais_Nav_Status_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Ais_Flags is record
      Position_Accuracy         : Boolean := False;
      Valid_Cog                 : Boolean := False;
      Valid_Velocity            : Boolean := False;
      High_Velocity             : Boolean := False;
      Valid_Turn_Rate           : Boolean := False;
      Turn_Rate_Sign_Only       : Boolean := False;
      Valid_Dimensions          : Boolean := False;
      Large_Bow_Dimension       : Boolean := False;
      Large_Stern_Dimension     : Boolean := False;
      Large_Port_Dimension      : Boolean := False;
      Large_Starboard_Dimension : Boolean := False;
      Valid_Callsign            : Boolean := False;
      Valid_Name                : Boolean := False;
      Reserved_13               : Boolean := False;
      Reserved_14               : Boolean := False;
      Reserved_15               : Boolean := False;
   end record with Size => 16;
   --  These flags are used in the AIS_VESSEL.fields bitmask to indicate 
   --  validity of data in the other message fields. When set, the data is 
   --  valid. 

   for Ais_Flags use record
      Position_Accuracy         at 0 range 0 .. 0;
      Valid_Cog                 at 0 range 1 .. 1;
      Valid_Velocity            at 0 range 2 .. 2;
      High_Velocity             at 0 range 3 .. 3;
      Valid_Turn_Rate           at 0 range 4 .. 4;
      Turn_Rate_Sign_Only       at 0 range 5 .. 5;
      Valid_Dimensions          at 0 range 6 .. 6;
      Large_Bow_Dimension       at 0 range 7 .. 7;
      Large_Stern_Dimension     at 0 range 8 .. 8;
      Large_Port_Dimension      at 0 range 9 .. 9;
      Large_Starboard_Dimension at 0 range 10 .. 10;
      Valid_Callsign            at 0 range 11 .. 11;
      Valid_Name                at 0 range 12 .. 12;
      Reserved_13               at 0 range 13 .. 13;
      Reserved_14               at 0 range 14 .. 14;
      Reserved_15               at 0 range 15 .. 15;
   end record;

   function Image (V : Ais_Flags) return String is
     ("["
      & (if V.Position_Accuracy then "POSITION_ACCURACY " else "")
      & (if V.Valid_Cog then "VALID_COG " else "")
      & (if V.Valid_Velocity then "VALID_VELOCITY " else "")
      & (if V.High_Velocity then "HIGH_VELOCITY " else "")
      & (if V.Valid_Turn_Rate then "VALID_TURN_RATE " else "")
      & (if V.Turn_Rate_Sign_Only then "TURN_RATE_SIGN_ONLY " else "")
      & (if V.Valid_Dimensions then "VALID_DIMENSIONS " else "")
      & (if V.Large_Bow_Dimension then "LARGE_BOW_DIMENSION " else "")
      & (if V.Large_Stern_Dimension then "LARGE_STERN_DIMENSION " else "")
      & (if V.Large_Port_Dimension then "LARGE_PORT_DIMENSION " else "")
      & (if V.Large_Starboard_Dimension then "LARGE_STARBOARD_DIMENSION " else "")
      & (if V.Valid_Callsign then "VALID_CALLSIGN " else "")
      & (if V.Valid_Name then "VALID_NAME " else "")
      & "]");

   type Failure_Unit is new Interfaces.Unsigned_8;
   --  List of possible units where failures can be injected. 

   function Ensor_Gyro return Failure_Unit is (0)
     with Static;

   function Ensor_Accel return Failure_Unit is (1)
     with Static;

   function Ensor_Mag return Failure_Unit is (2)
     with Static;

   function Ensor_Baro return Failure_Unit is (3)
     with Static;

   function Ensor_Gps return Failure_Unit is (4)
     with Static;

   function Ensor_Optical_Flow return Failure_Unit is (5)
     with Static;

   function Ensor_Vio return Failure_Unit is (6)
     with Static;

   function Ensor_Distance_Sensor return Failure_Unit is (7)
     with Static;

   function Ensor_Airspeed return Failure_Unit is (8)
     with Static;

   function Ystem_Battery return Failure_Unit is (100)
     with Static;

   function Ystem_Motor return Failure_Unit is (101)
     with Static;

   function Ystem_Servo return Failure_Unit is (102)
     with Static;

   function Ystem_Avoidance return Failure_Unit is (103)
     with Static;

   function Ystem_Rc_Signal return Failure_Unit is (104)
     with Static;

   function Ystem_Mavlink_Signal return Failure_Unit is (105)
     with Static;

   subtype Failure_Unit_Well_Known is Failure_Unit
     with Static_Predicate => Failure_Unit_Well_Known in
       Ensor_Gyro .. Ensor_Airspeed
       | Ystem_Battery .. Ystem_Mavlink_Signal;

   function Well_Known_Image
     (Value : Failure_Unit_Well_Known) return String is
       (case Value is
        when Ensor_Gyro => "Ensor_Gyro",
        when Ensor_Accel => "Ensor_Accel",
        when Ensor_Mag => "Ensor_Mag",
        when Ensor_Baro => "Ensor_Baro",
        when Ensor_Gps => "Ensor_Gps",
        when Ensor_Optical_Flow => "Ensor_Optical_Flow",
        when Ensor_Vio => "Ensor_Vio",
        when Ensor_Distance_Sensor => "Ensor_Distance_Sensor",
        when Ensor_Airspeed => "Ensor_Airspeed",
        when Ystem_Battery => "Ystem_Battery",
        when Ystem_Motor => "Ystem_Motor",
        when Ystem_Servo => "Ystem_Servo",
        when Ystem_Avoidance => "Ystem_Avoidance",
        when Ystem_Rc_Signal => "Ystem_Rc_Signal",
        when Ystem_Mavlink_Signal => "Ystem_Mavlink_Signal");

   function Image (Value : Failure_Unit) return String is
     (if Value in Failure_Unit_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Failure_Type is new Interfaces.Unsigned_8;
   --  List of possible failure type to inject. 

   function Ok return Failure_Type is (0)
     with Static;
   --  No failure injected, used to reset a previous failure. 

   function Off return Failure_Type is (1)
     with Static;
   --  Sets unit off, so completely non-responsive. 

   function Stuck return Failure_Type is (2)
     with Static;
   --  Unit is stuck e.g. keeps reporting the same value. 

   function Garbage return Failure_Type is (3)
     with Static;
   --  Unit is reporting complete garbage. 

   function Wrong return Failure_Type is (4)
     with Static;
   --  Unit is consistently wrong. 

   function Slow return Failure_Type is (5)
     with Static;
   --  Unit is slow, so e.g. reporting at slower than expected rate. 

   function Delayed return Failure_Type is (6)
     with Static;
   --  Data of unit is delayed in time. 

   function Intermittent return Failure_Type is (7)
     with Static;
   --  Unit is sometimes working, sometimes not. 

   subtype Failure_Type_Well_Known is Failure_Type
     with Static_Predicate => Failure_Type_Well_Known in
       Ok .. Intermittent;

   function Well_Known_Image
     (Value : Failure_Type_Well_Known) return String is
       (case Value is
        when Ok => "Ok",
        when Off => "Off",
        when Stuck => "Stuck",
        when Garbage => "Garbage",
        when Wrong => "Wrong",
        when Slow => "Slow",
        when Delayed => "Delayed",
        when Intermittent => "Intermittent");

   function Image (Value : Failure_Type) return String is
     (if Value in Failure_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Nav_Vtol_Land_Options is new Interfaces.Unsigned_8;

   function Default return Nav_Vtol_Land_Options is (0)
     with Static;
   --  Default autopilot landing behaviour. 

   function Fw_Descent return Nav_Vtol_Land_Options is (1)
     with Static;
   --  Descend in fixed wing mode, transitioning to multicopter mode for 
   --  vertical landing when close to the ground. The fixed wing descent 
   --  pattern is at the discretion of the vehicle (e.g. transition altitude, 
   --  loiter direction, radius, and speed, etc.). 

   function Hover_Descent return Nav_Vtol_Land_Options is (2)
     with Static;
   --  Land in multicopter mode on reaching the landing coordinates (the whole 
   --  landing is by "hover descent"). 

   subtype Nav_Vtol_Land_Options_Well_Known is Nav_Vtol_Land_Options
     with Static_Predicate => Nav_Vtol_Land_Options_Well_Known in
       Default .. Hover_Descent;

   function Well_Known_Image
     (Value : Nav_Vtol_Land_Options_Well_Known) return String is
       (case Value is
        when Default => "Default",
        when Fw_Descent => "Fw_Descent",
        when Hover_Descent => "Hover_Descent");

   function Image (Value : Nav_Vtol_Land_Options) return String is
     (if Value in Nav_Vtol_Land_Options_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Winch_Status_Flag is record
      Healthy         : Boolean := False;
      Fully_Retracted : Boolean := False;
      Moving          : Boolean := False;
      Clutch_Engaged  : Boolean := False;
      Locked          : Boolean := False;
      Dropping        : Boolean := False;
      Arresting       : Boolean := False;
      Ground_Sense    : Boolean := False;
      Retracting      : Boolean := False;
      Redeliver       : Boolean := False;
      Abandon_Line    : Boolean := False;
      Locking         : Boolean := False;
      Load_Line       : Boolean := False;
      Load_Payload    : Boolean := False;
      Reserved_14     : Boolean := False;
      Reserved_15     : Boolean := False;
      Reserved_16     : Boolean := False;
      Reserved_17     : Boolean := False;
      Reserved_18     : Boolean := False;
      Reserved_19     : Boolean := False;
      Reserved_20     : Boolean := False;
      Reserved_21     : Boolean := False;
      Reserved_22     : Boolean := False;
      Reserved_23     : Boolean := False;
      Reserved_24     : Boolean := False;
      Reserved_25     : Boolean := False;
      Reserved_26     : Boolean := False;
      Reserved_27     : Boolean := False;
      Reserved_28     : Boolean := False;
      Reserved_29     : Boolean := False;
      Reserved_30     : Boolean := False;
      Reserved_31     : Boolean := False;
   end record with Size => 32;
   --  Winch status flags used in WINCH_STATUS 

   for Mav_Winch_Status_Flag use record
      Healthy         at 0 range 0 .. 0;
      Fully_Retracted at 0 range 1 .. 1;
      Moving          at 0 range 2 .. 2;
      Clutch_Engaged  at 0 range 3 .. 3;
      Locked          at 0 range 4 .. 4;
      Dropping        at 0 range 5 .. 5;
      Arresting       at 0 range 6 .. 6;
      Ground_Sense    at 0 range 7 .. 7;
      Retracting      at 0 range 8 .. 8;
      Redeliver       at 0 range 9 .. 9;
      Abandon_Line    at 0 range 10 .. 10;
      Locking         at 0 range 11 .. 11;
      Load_Line       at 0 range 12 .. 12;
      Load_Payload    at 0 range 13 .. 13;
      Reserved_14     at 0 range 14 .. 14;
      Reserved_15     at 0 range 15 .. 15;
      Reserved_16     at 0 range 16 .. 16;
      Reserved_17     at 0 range 17 .. 17;
      Reserved_18     at 0 range 18 .. 18;
      Reserved_19     at 0 range 19 .. 19;
      Reserved_20     at 0 range 20 .. 20;
      Reserved_21     at 0 range 21 .. 21;
      Reserved_22     at 0 range 22 .. 22;
      Reserved_23     at 0 range 23 .. 23;
      Reserved_24     at 0 range 24 .. 24;
      Reserved_25     at 0 range 25 .. 25;
      Reserved_26     at 0 range 26 .. 26;
      Reserved_27     at 0 range 27 .. 27;
      Reserved_28     at 0 range 28 .. 28;
      Reserved_29     at 0 range 29 .. 29;
      Reserved_30     at 0 range 30 .. 30;
      Reserved_31     at 0 range 31 .. 31;
   end record;

   function Image (V : Mav_Winch_Status_Flag) return String is
     ("["
      & (if V.Healthy then "HEALTHY " else "")
      & (if V.Fully_Retracted then "FULLY_RETRACTED " else "")
      & (if V.Moving then "MOVING " else "")
      & (if V.Clutch_Engaged then "CLUTCH_ENGAGED " else "")
      & (if V.Locked then "LOCKED " else "")
      & (if V.Dropping then "DROPPING " else "")
      & (if V.Arresting then "ARRESTING " else "")
      & (if V.Ground_Sense then "GROUND_SENSE " else "")
      & (if V.Retracting then "RETRACTING " else "")
      & (if V.Redeliver then "REDELIVER " else "")
      & (if V.Abandon_Line then "ABANDON_LINE " else "")
      & (if V.Locking then "LOCKING " else "")
      & (if V.Load_Line then "LOAD_LINE " else "")
      & (if V.Load_Payload then "LOAD_PAYLOAD " else "")
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

   type Mav_Event_Error_Reason is new Interfaces.Unsigned_8;
   --  Reason for an event error response. 

   function Mav_Event_Error_Reason_Unavailable return Mav_Event_Error_Reason is (0)
     with Static;
   --  The requested event is not available (anymore). 

   subtype Mav_Event_Error_Reason_Well_Known is Mav_Event_Error_Reason
     with Static_Predicate => Mav_Event_Error_Reason_Well_Known in
       Mav_Event_Error_Reason_Unavailable;

   function Well_Known_Image
     (Value : Mav_Event_Error_Reason_Well_Known) return String is
       (case Value is
        when Mav_Event_Error_Reason_Unavailable => "Mav_Event_Error_Reason_Unavailable");

   function Image (Value : Mav_Event_Error_Reason) return String is
     (if Value in Mav_Event_Error_Reason_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Event_Current_Sequence_Flags is record
      Mav_Event_Current_Sequence_Flags_Reset : Boolean := False;
      Reserved_1                             : Boolean := False;
      Reserved_2                             : Boolean := False;
      Reserved_3                             : Boolean := False;
      Reserved_4                             : Boolean := False;
      Reserved_5                             : Boolean := False;
      Reserved_6                             : Boolean := False;
      Reserved_7                             : Boolean := False;
   end record with Size => 8;
   --  Flags for CURRENT_EVENT_SEQUENCE. 

   for Mav_Event_Current_Sequence_Flags use record
      Mav_Event_Current_Sequence_Flags_Reset at 0 range 0 .. 0;
      Reserved_1                             at 0 range 1 .. 1;
      Reserved_2                             at 0 range 2 .. 2;
      Reserved_3                             at 0 range 3 .. 3;
      Reserved_4                             at 0 range 4 .. 4;
      Reserved_5                             at 0 range 5 .. 5;
      Reserved_6                             at 0 range 6 .. 6;
      Reserved_7                             at 0 range 7 .. 7;
   end record;

   function Image (V : Mav_Event_Current_Sequence_Flags) return String is
     ("["
      & (if V.Mav_Event_Current_Sequence_Flags_Reset then "MAV_EVENT_CURRENT_SEQUENCE_FLAGS_RESET " else "")
      & "]");

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

   type Can_Filter_Op is new Interfaces.Unsigned_8;

   function Replace return Can_Filter_Op is (0)
     with Static;

   function Add return Can_Filter_Op is (1)
     with Static;

   function Remove return Can_Filter_Op is (2)
     with Static;

   subtype Can_Filter_Op_Well_Known is Can_Filter_Op
     with Static_Predicate => Can_Filter_Op_Well_Known in
       Replace .. Remove;

   function Well_Known_Image
     (Value : Can_Filter_Op_Well_Known) return String is
       (case Value is
        when Replace => "Replace",
        when Add => "Add",
        when Remove => "Remove");

   function Image (Value : Can_Filter_Op) return String is
     (if Value in Can_Filter_Op_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Ftp_Err is new Interfaces.Unsigned_8;
   --  MAV FTP error codes (https://mavlink.io/en/services/ftp.html) 

   function None return Mav_Ftp_Err is (0)
     with Static;
   --  None: No error 

   function Fail return Mav_Ftp_Err is (1)
     with Static;
   --  Fail: Unknown failure 

   function Failerrno return Mav_Ftp_Err is (2)
     with Static;
   --  FailErrno: Command failed, Err number sent back in 
   --  PayloadHeader.data[1]. This is a file-system error number understood by 
   --  the server operating system. 

   function Invaliddatasize return Mav_Ftp_Err is (3)
     with Static;
   --  InvalidDataSize: Payload size is invalid 

   function Invalidsession return Mav_Ftp_Err is (4)
     with Static;
   --  InvalidSession: Session is not currently open 

   function Nosessionsavailable return Mav_Ftp_Err is (5)
     with Static;
   --  NoSessionsAvailable: All available sessions are already in use 

   function Eof return Mav_Ftp_Err is (6)
     with Static;
   --  EOF: Offset past end of file for ListDirectory and ReadFile commands 

   function Unknowncommand return Mav_Ftp_Err is (7)
     with Static;
   --  UnknownCommand: Unknown command / opcode 

   function Fileexists return Mav_Ftp_Err is (8)
     with Static;
   --  FileExists: File/directory already exists 

   function Fileprotected return Mav_Ftp_Err is (9)
     with Static;
   --  FileProtected: File/directory is write protected 

   function Filenotfound return Mav_Ftp_Err is (10)
     with Static;
   --  FileNotFound: File/directory not found 

   subtype Mav_Ftp_Err_Well_Known is Mav_Ftp_Err
     with Static_Predicate => Mav_Ftp_Err_Well_Known in
       None .. Filenotfound;

   function Well_Known_Image
     (Value : Mav_Ftp_Err_Well_Known) return String is
       (case Value is
        when None => "None",
        when Fail => "Fail",
        when Failerrno => "Failerrno",
        when Invaliddatasize => "Invaliddatasize",
        when Invalidsession => "Invalidsession",
        when Nosessionsavailable => "Nosessionsavailable",
        when Eof => "Eof",
        when Unknowncommand => "Unknowncommand",
        when Fileexists => "Fileexists",
        when Fileprotected => "Fileprotected",
        when Filenotfound => "Filenotfound");

   function Image (Value : Mav_Ftp_Err) return String is
     (if Value in Mav_Ftp_Err_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Ftp_Opcode is new Interfaces.Unsigned_8;
   --  MAV FTP opcodes: https://mavlink.io/en/services/ftp.html 

   function None return Mav_Ftp_Opcode is (0)
     with Static;
   --  None. Ignored, always ACKed 

   function Terminatesession return Mav_Ftp_Opcode is (1)
     with Static;
   --  TerminateSession: Terminates open Read session 

   function Resetsession return Mav_Ftp_Opcode is (2)
     with Static;
   --  ResetSessions: Terminates all open read sessions 

   function Listdirectory return Mav_Ftp_Opcode is (3)
     with Static;
   --  ListDirectory. List files and directories in path from offset 

   function Openfilero return Mav_Ftp_Opcode is (4)
     with Static;
   --  OpenFileRO: Opens file at path for reading, returns session 

   function Readfile return Mav_Ftp_Opcode is (5)
     with Static;
   --  ReadFile: Reads size bytes from offset in session 

   function Createfile return Mav_Ftp_Opcode is (6)
     with Static;
   --  CreateFile: Creates file at path for writing, returns session 

   function Writefile return Mav_Ftp_Opcode is (7)
     with Static;
   --  WriteFile: Writes size bytes to offset in session 

   function Removefile return Mav_Ftp_Opcode is (8)
     with Static;
   --  RemoveFile: Remove file at path 

   function Createdirectory return Mav_Ftp_Opcode is (9)
     with Static;
   --  CreateDirectory: Creates directory at path 

   function Removedirectory return Mav_Ftp_Opcode is (10)
     with Static;
   --  RemoveDirectory: Removes directory at path. The directory must be 
   --  empty. 

   function Openfilewo return Mav_Ftp_Opcode is (11)
     with Static;
   --  OpenFileWO: Opens file at path for writing, returns session 

   function Truncatefile return Mav_Ftp_Opcode is (12)
     with Static;
   --  TruncateFile: Truncate file at path to offset length 

   function Rename return Mav_Ftp_Opcode is (13)
     with Static;
   --  Rename: Rename path1 to path2 

   function Calcfilecrc return Mav_Ftp_Opcode is (14)
     with Static;
   --  CalcFileCRC32: Calculate CRC32 for file at path 

   function Burstreadfile return Mav_Ftp_Opcode is (15)
     with Static;
   --  BurstReadFile: Burst download session file 

   function Ack return Mav_Ftp_Opcode is (128)
     with Static;
   --  ACK: ACK response 

   function Nak return Mav_Ftp_Opcode is (129)
     with Static;
   --  NAK: NAK response 

   subtype Mav_Ftp_Opcode_Well_Known is Mav_Ftp_Opcode
     with Static_Predicate => Mav_Ftp_Opcode_Well_Known in
       None .. Burstreadfile
       | Ack .. Nak;

   function Well_Known_Image
     (Value : Mav_Ftp_Opcode_Well_Known) return String is
       (case Value is
        when None => "None",
        when Terminatesession => "Terminatesession",
        when Resetsession => "Resetsession",
        when Listdirectory => "Listdirectory",
        when Openfilero => "Openfilero",
        when Readfile => "Readfile",
        when Createfile => "Createfile",
        when Writefile => "Writefile",
        when Removefile => "Removefile",
        when Createdirectory => "Createdirectory",
        when Removedirectory => "Removedirectory",
        when Openfilewo => "Openfilewo",
        when Truncatefile => "Truncatefile",
        when Rename => "Rename",
        when Calcfilecrc => "Calcfilecrc",
        when Burstreadfile => "Burstreadfile",
        when Ack => "Ack",
        when Nak => "Nak");

   function Image (Value : Mav_Ftp_Opcode) return String is
     (if Value in Mav_Ftp_Opcode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mission_State is new Interfaces.Unsigned_8;
   --  States of the mission state machine. Note that these states are 
   --  independent of whether the mission is in a mode that can execute 
   --  mission items or not (is suspended). They may not all be relevant on 
   --  all vehicles. 

   function Unknown return Mission_State is (0)
     with Static;
   --  The mission status reporting is not supported. 

   function No_Mission return Mission_State is (1)
     with Static;
   --  No mission on the vehicle. 

   function Not_Started return Mission_State is (2)
     with Static;
   --  Mission has not started. This is the case after a mission has uploaded 
   --  but not yet started executing. 

   function Active return Mission_State is (3)
     with Static;
   --  Mission is active, and will execute mission items when in auto mode. 

   function Paused return Mission_State is (4)
     with Static;
   --  Mission is paused when in auto mode. 

   function Complete return Mission_State is (5)
     with Static;
   --  Mission has executed all mission items. 

   subtype Mission_State_Well_Known is Mission_State
     with Static_Predicate => Mission_State_Well_Known in
       Unknown .. Complete;

   function Well_Known_Image
     (Value : Mission_State_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when No_Mission => "No_Mission",
        when Not_Started => "Not_Started",
        when Active => "Active",
        when Paused => "Paused",
        when Complete => "Complete");

   function Image (Value : Mission_State) return String is
     (if Value in Mission_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Safety_Switch_State is new Interfaces.Unsigned_8;
   --  Possible safety switch states. 

   function Safe return Safety_Switch_State is (0)
     with Static;
   --  Safety switch is engaged and vehicle should be safe to approach. 

   function Dangerous return Safety_Switch_State is (1)
     with Static;
   --  Safety switch is NOT engaged and motors, propellers and other actuators 
   --  should be considered active. 

   subtype Safety_Switch_State_Well_Known is Safety_Switch_State
     with Static_Predicate => Safety_Switch_State_Well_Known in
       Safe .. Dangerous;

   function Well_Known_Image
     (Value : Safety_Switch_State_Well_Known) return String is
       (case Value is
        when Safe => "Safe",
        when Dangerous => "Dangerous");

   function Image (Value : Safety_Switch_State) return String is
     (if Value in Safety_Switch_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Illuminator_Mode is new Interfaces.Unsigned_8;
   --  Modes of illuminator 

   function Unknown return Illuminator_Mode is (0)
     with Static;
   --  Illuminator mode is not specified/unknown 

   function Internal_Control return Illuminator_Mode is (1)
     with Static;
   --  Illuminator behavior is controlled by MAV_CMD_DO_ILLUMINATOR_CONFIGURE 
   --  settings 

   function External_Sync return Illuminator_Mode is (2)
     with Static;
   --  Illuminator behavior is controlled by external factors: e.g. an 
   --  external hardware signal 

   subtype Illuminator_Mode_Well_Known is Illuminator_Mode
     with Static_Predicate => Illuminator_Mode_Well_Known in
       Unknown .. External_Sync;

   function Well_Known_Image
     (Value : Illuminator_Mode_Well_Known) return String is
       (case Value is
        when Unknown => "Unknown",
        when Internal_Control => "Internal_Control",
        when External_Sync => "External_Sync");

   function Image (Value : Illuminator_Mode) return String is
     (if Value in Illuminator_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Illuminator_Error_Flags is record
      Thermal_Throttling        : Boolean := False;
      Over_Temperature_Shutdown : Boolean := False;
      Thermistor_Failure        : Boolean := False;
      Reserved_3                : Boolean := False;
      Reserved_4                : Boolean := False;
      Reserved_5                : Boolean := False;
      Reserved_6                : Boolean := False;
      Reserved_7                : Boolean := False;
      Reserved_8                : Boolean := False;
      Reserved_9                : Boolean := False;
      Reserved_10               : Boolean := False;
      Reserved_11               : Boolean := False;
      Reserved_12               : Boolean := False;
      Reserved_13               : Boolean := False;
      Reserved_14               : Boolean := False;
      Reserved_15               : Boolean := False;
      Reserved_16               : Boolean := False;
      Reserved_17               : Boolean := False;
      Reserved_18               : Boolean := False;
      Reserved_19               : Boolean := False;
      Reserved_20               : Boolean := False;
      Reserved_21               : Boolean := False;
      Reserved_22               : Boolean := False;
      Reserved_23               : Boolean := False;
      Reserved_24               : Boolean := False;
      Reserved_25               : Boolean := False;
      Reserved_26               : Boolean := False;
      Reserved_27               : Boolean := False;
      Reserved_28               : Boolean := False;
      Reserved_29               : Boolean := False;
      Reserved_30               : Boolean := False;
      Reserved_31               : Boolean := False;
   end record with Size => 32;
   --  Illuminator module error flags (bitmap, 0 means no error) 

   for Illuminator_Error_Flags use record
      Thermal_Throttling        at 0 range 0 .. 0;
      Over_Temperature_Shutdown at 0 range 1 .. 1;
      Thermistor_Failure        at 0 range 2 .. 2;
      Reserved_3                at 0 range 3 .. 3;
      Reserved_4                at 0 range 4 .. 4;
      Reserved_5                at 0 range 5 .. 5;
      Reserved_6                at 0 range 6 .. 6;
      Reserved_7                at 0 range 7 .. 7;
      Reserved_8                at 0 range 8 .. 8;
      Reserved_9                at 0 range 9 .. 9;
      Reserved_10               at 0 range 10 .. 10;
      Reserved_11               at 0 range 11 .. 11;
      Reserved_12               at 0 range 12 .. 12;
      Reserved_13               at 0 range 13 .. 13;
      Reserved_14               at 0 range 14 .. 14;
      Reserved_15               at 0 range 15 .. 15;
      Reserved_16               at 0 range 16 .. 16;
      Reserved_17               at 0 range 17 .. 17;
      Reserved_18               at 0 range 18 .. 18;
      Reserved_19               at 0 range 19 .. 19;
      Reserved_20               at 0 range 20 .. 20;
      Reserved_21               at 0 range 21 .. 21;
      Reserved_22               at 0 range 22 .. 22;
      Reserved_23               at 0 range 23 .. 23;
      Reserved_24               at 0 range 24 .. 24;
      Reserved_25               at 0 range 25 .. 25;
      Reserved_26               at 0 range 26 .. 26;
      Reserved_27               at 0 range 27 .. 27;
      Reserved_28               at 0 range 28 .. 28;
      Reserved_29               at 0 range 29 .. 29;
      Reserved_30               at 0 range 30 .. 30;
      Reserved_31               at 0 range 31 .. 31;
   end record;

   function Image (V : Illuminator_Error_Flags) return String is
     ("["
      & (if V.Thermal_Throttling then "THERMAL_THROTTLING " else "")
      & (if V.Over_Temperature_Shutdown then "OVER_TEMPERATURE_SHUTDOWN " else "")
      & (if V.Thermistor_Failure then "THERMISTOR_FAILURE " else "")
      & "]");

   type Mav_Standard_Mode is new Interfaces.Unsigned_8;
   --  Standard modes with a well understood meaning across flight stacks and 
   --  vehicle types. For example, most flight stack have the concept of a 
   --  "return" or "RTL" mode that takes a vehicle to safety, even though the 
   --  precise mechanics of this mode may differ. The modes supported by a 
   --  flight stack can be queried using AVAILABLE_MODES and set using 
   --  MAV_CMD_DO_SET_STANDARD_MODE. The current mode is streamed in 
   --  CURRENT_MODE. See https://mavlink.io/en/services/standard_modes.html 

   function Non_Standard return Mav_Standard_Mode is (0)
     with Static;
   --  Non standard mode. This may be used when reporting the mode if the 
   --  current flight mode is not a standard mode. 

   function Position_Hold return Mav_Standard_Mode is (1)
     with Static;
   --  Position mode (manual). Position-controlled and stabilized manual mode. 
   --  When sticks are released vehicles return to their level-flight 
   --  orientation and hold both position and altitude against wind and 
   --  external forces. This mode can only be set by vehicles that can hold a 
   --  fixed position. Multicopter (MC) vehicles actively brake and hold both 
   --  position and altitude against wind and external forces. Hybrid MC/FW 
   --  ("VTOL") vehicles first transition to multicopter mode (if needed) but 
   --  otherwise behave in the same way as MC vehicles. Fixed-wing (FW) 
   --  vehicles must not support this mode. Other vehicle types must not 
   --  support this mode (this may be revisited through the PR process). 

   function Orbit return Mav_Standard_Mode is (2)
     with Static;
   --  Orbit (manual). Position-controlled and stabilized manual mode. The 
   --  vehicle circles around a fixed setpoint in the horizontal plane at a 
   --  particular radius, altitude, and direction. Flight stacks may further 
   --  allow manual control over the setpoint position, radius, direction, 
   --  speed, and/or altitude of the circle, but this is not mandated. Flight 
   --  stacks may support the 
   --  [MAV_CMD_DO_ORBIT](https://mavlink.io/en/messages/common.html#MAV_CMD_DO_ORBIT) 
   --  for changing the orbit parameters. MC and FW vehicles may support this 
   --  mode. Hybrid MC/FW ("VTOL") vehicles may support this mode in MC/FW or 
   --  both modes; if the mode is not supported by the current configuration 
   --  the vehicle should transition to the supported configuration. Other 
   --  vehicle types must not support this mode (this may be revisited through 
   --  the PR process). 

   function Cruise return Mav_Standard_Mode is (3)
     with Static;
   --  Cruise mode (manual). Position-controlled and stabilized manual mode. 
   --  When sticks are released vehicles return to their level-flight 
   --  orientation and hold their original track against wind and external 
   --  forces. Fixed-wing (FW) vehicles level orientation and maintain current 
   --  track and altitude against wind and external forces. Hybrid MC/FW 
   --  ("VTOL") vehicles first transition to FW mode (if needed) but otherwise 
   --  behave in the same way as MC vehicles. Multicopter (MC) vehicles must 
   --  not support this mode. Other vehicle types must not support this mode 
   --  (this may be revisited through the PR process). 

   function Altitude_Hold return Mav_Standard_Mode is (4)
     with Static;
   --  Altitude hold (manual). Altitude-controlled and stabilized manual mode. 
   --  When sticks are released vehicles return to their level-flight 
   --  orientation and hold their altitude. MC vehicles continue with existing 
   --  momentum and may move with wind (or other external forces). FW vehicles 
   --  continue with current heading, but may be moved off-track by wind. 
   --  Hybrid MC/FW ("VTOL") vehicles behave according to their current 
   --  configuration/mode (FW or MC). Other vehicle types must not support 
   --  this mode (this may be revisited through the PR process). 

   function Safe_Recovery return Mav_Standard_Mode is (5)
     with Static;
   --  Safe recovery mode (auto). Automatic mode that takes vehicle to a 
   --  predefined safe location via a safe flight path, and may also 
   --  automatically land the vehicle. This mode is more commonly referred to 
   --  as RTL and/or or Smart RTL. The precise return location, flight path, 
   --  and landing behaviour depend on vehicle configuration and type. For 
   --  example, the vehicle might return to the home/launch location, a rally 
   --  point, or the start of a mission landing, it might follow a direct 
   --  path, mission path, or breadcrumb path, and land using a mission 
   --  landing pattern or some other kind of descent. 

   function Mission return Mav_Standard_Mode is (6)
     with Static;
   --  Mission mode (automatic). Automatic mode that executes MAVLink 
   --  missions. Missions are executed from the current waypoint as soon as 
   --  the mode is enabled. 

   function Land return Mav_Standard_Mode is (7)
     with Static;
   --  Land mode (auto). Automatic mode that lands the vehicle at the current 
   --  location. The precise landing behaviour depends on vehicle 
   --  configuration and type. 

   function Takeoff return Mav_Standard_Mode is (8)
     with Static;
   --  Takeoff mode (auto). Automatic takeoff mode. The precise takeoff 
   --  behaviour depends on vehicle configuration and type. 

   subtype Mav_Standard_Mode_Well_Known is Mav_Standard_Mode
     with Static_Predicate => Mav_Standard_Mode_Well_Known in
       Non_Standard .. Takeoff;

   function Well_Known_Image
     (Value : Mav_Standard_Mode_Well_Known) return String is
       (case Value is
        when Non_Standard => "Non_Standard",
        when Position_Hold => "Position_Hold",
        when Orbit => "Orbit",
        when Cruise => "Cruise",
        when Altitude_Hold => "Altitude_Hold",
        when Safe_Recovery => "Safe_Recovery",
        when Mission => "Mission",
        when Land => "Land",
        when Takeoff => "Takeoff");

   function Image (Value : Mav_Standard_Mode) return String is
     (if Value in Mav_Standard_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Mode_Property is record
      Advanced            : Boolean := False;
      Not_User_Selectable : Boolean := False;
      Auto_Mode           : Boolean := False;
      Reserved_3          : Boolean := False;
      Reserved_4          : Boolean := False;
      Reserved_5          : Boolean := False;
      Reserved_6          : Boolean := False;
      Reserved_7          : Boolean := False;
      Reserved_8          : Boolean := False;
      Reserved_9          : Boolean := False;
      Reserved_10         : Boolean := False;
      Reserved_11         : Boolean := False;
      Reserved_12         : Boolean := False;
      Reserved_13         : Boolean := False;
      Reserved_14         : Boolean := False;
      Reserved_15         : Boolean := False;
      Reserved_16         : Boolean := False;
      Reserved_17         : Boolean := False;
      Reserved_18         : Boolean := False;
      Reserved_19         : Boolean := False;
      Reserved_20         : Boolean := False;
      Reserved_21         : Boolean := False;
      Reserved_22         : Boolean := False;
      Reserved_23         : Boolean := False;
      Reserved_24         : Boolean := False;
      Reserved_25         : Boolean := False;
      Reserved_26         : Boolean := False;
      Reserved_27         : Boolean := False;
      Reserved_28         : Boolean := False;
      Reserved_29         : Boolean := False;
      Reserved_30         : Boolean := False;
      Reserved_31         : Boolean := False;
   end record with Size => 32;
   --  Mode properties. 

   for Mav_Mode_Property use record
      Advanced            at 0 range 0 .. 0;
      Not_User_Selectable at 0 range 1 .. 1;
      Auto_Mode           at 0 range 2 .. 2;
      Reserved_3          at 0 range 3 .. 3;
      Reserved_4          at 0 range 4 .. 4;
      Reserved_5          at 0 range 5 .. 5;
      Reserved_6          at 0 range 6 .. 6;
      Reserved_7          at 0 range 7 .. 7;
      Reserved_8          at 0 range 8 .. 8;
      Reserved_9          at 0 range 9 .. 9;
      Reserved_10         at 0 range 10 .. 10;
      Reserved_11         at 0 range 11 .. 11;
      Reserved_12         at 0 range 12 .. 12;
      Reserved_13         at 0 range 13 .. 13;
      Reserved_14         at 0 range 14 .. 14;
      Reserved_15         at 0 range 15 .. 15;
      Reserved_16         at 0 range 16 .. 16;
      Reserved_17         at 0 range 17 .. 17;
      Reserved_18         at 0 range 18 .. 18;
      Reserved_19         at 0 range 19 .. 19;
      Reserved_20         at 0 range 20 .. 20;
      Reserved_21         at 0 range 21 .. 21;
      Reserved_22         at 0 range 22 .. 22;
      Reserved_23         at 0 range 23 .. 23;
      Reserved_24         at 0 range 24 .. 24;
      Reserved_25         at 0 range 25 .. 25;
      Reserved_26         at 0 range 26 .. 26;
      Reserved_27         at 0 range 27 .. 27;
      Reserved_28         at 0 range 28 .. 28;
      Reserved_29         at 0 range 29 .. 29;
      Reserved_30         at 0 range 30 .. 30;
      Reserved_31         at 0 range 31 .. 31;
   end record;

   function Image (V : Mav_Mode_Property) return String is
     ("["
      & (if V.Advanced then "ADVANCED " else "")
      & (if V.Not_User_Selectable then "NOT_USER_SELECTABLE " else "")
      & (if V.Auto_Mode then "AUTO_MODE " else "")
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

   type Computer_Status_Flags is record
      Under_Voltage    : Boolean := False;
      Cpu_Throttle     : Boolean := False;
      Thermal_Throttle : Boolean := False;
      Disk_Full        : Boolean := False;
      Reserved_4       : Boolean := False;
      Reserved_5       : Boolean := False;
      Reserved_6       : Boolean := False;
      Reserved_7       : Boolean := False;
      Reserved_8       : Boolean := False;
      Reserved_9       : Boolean := False;
      Reserved_10      : Boolean := False;
      Reserved_11      : Boolean := False;
      Reserved_12      : Boolean := False;
      Reserved_13      : Boolean := False;
      Reserved_14      : Boolean := False;
      Reserved_15      : Boolean := False;
   end record with Size => 16;
   --  Flags used to report computer status. 

   for Computer_Status_Flags use record
      Under_Voltage    at 0 range 0 .. 0;
      Cpu_Throttle     at 0 range 1 .. 1;
      Thermal_Throttle at 0 range 2 .. 2;
      Disk_Full        at 0 range 3 .. 3;
      Reserved_4       at 0 range 4 .. 4;
      Reserved_5       at 0 range 5 .. 5;
      Reserved_6       at 0 range 6 .. 6;
      Reserved_7       at 0 range 7 .. 7;
      Reserved_8       at 0 range 8 .. 8;
      Reserved_9       at 0 range 9 .. 9;
      Reserved_10      at 0 range 10 .. 10;
      Reserved_11      at 0 range 11 .. 11;
      Reserved_12      at 0 range 12 .. 12;
      Reserved_13      at 0 range 13 .. 13;
      Reserved_14      at 0 range 14 .. 14;
      Reserved_15      at 0 range 15 .. 15;
   end record;

   function Image (V : Computer_Status_Flags) return String is
     ("["
      & (if V.Under_Voltage then "UNDER_VOLTAGE " else "")
      & (if V.Cpu_Throttle then "CPU_THROTTLE " else "")
      & (if V.Thermal_Throttle then "THERMAL_THROTTLE " else "")
      & (if V.Disk_Full then "DISK_FULL " else "")
      & "]");

end MAVLink.V2.Common;
