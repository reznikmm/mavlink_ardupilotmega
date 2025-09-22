-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

with MAVLink.V1.Standard; use MAVLink.V1.Standard;

package MAVLink.V1.Common is

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

end MAVLink.V1.Common;
