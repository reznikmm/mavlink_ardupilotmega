-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

with Mavlink.V1.Common;    use Mavlink.V1.Common;
with Mavlink.V1.Uavionix;  use Mavlink.V1.Uavionix;
with Mavlink.V1.Icarous;   use Mavlink.V1.Icarous;
with Mavlink.V1.Loweheiser; use Mavlink.V1.Loweheiser;
with Mavlink.V1.Cubepilot; use Mavlink.V1.Cubepilot;
with Mavlink.V1.Csairlink; use Mavlink.V1.Csairlink;

package Mavlink.V1.Ardupilotmega is

   pragma Preelaborate;

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

   function Nav_Altitude_Wait return Mav_Cmd is (83)
     with Static;
   --  Mission command to wait for an altitude or downwards vertical speed. 
   --  This is meant for high altitude balloon launches, allowing the aircraft 
   --  to be idle until either an altitude is reached or a negative vertical 
   --  speed is reached (indicating early balloon burst). The wiggle time is 
   --  how often to wiggle the control surfaces to prevent them seizing up. 

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

   function Do_Set_Resume_Repeat_Dist return Mav_Cmd is (215)
     with Static;
   --  Set the distance to be repeated on mission resume 

   function Do_Sprayer return Mav_Cmd is (216)
     with Static;
   --  Control attached liquid sprayer 

   function Do_Send_Script_Message return Mav_Cmd is (217)
     with Static;
   --  Pass instructions onto scripting, a script should be checking for a new 
   --  command 

   function Do_Aux_Function return Mav_Cmd is (218)
     with Static;
   --  Execute auxiliary function 

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

   function Loweheiser_Set_State return Mav_Cmd is (10151)
     with Static;
   --  Set Loweheiser desired states 

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

   function Power_Off_Initiated return Mav_Cmd is (42000)
     with Static;
   --  A system wide power-off event has been initiated. 

   function Solo_Btn_Fly_Click return Mav_Cmd is (42001)
     with Static;
   --  FLY button has been clicked. 

   function Solo_Btn_Fly_Hold return Mav_Cmd is (42002)
     with Static;
   --  FLY button has been held for 1.5 seconds. 

   function Solo_Btn_Pause_Click return Mav_Cmd is (42003)
     with Static;
   --  PAUSE button has been clicked. 

   function Fixed_Mag_Cal return Mav_Cmd is (42004)
     with Static;
   --  Magnetometer calibration based on fixed position in earth field given 
   --  by inclination, declination and intensity. 

   function Fixed_Mag_Cal_Field return Mav_Cmd is (42005)
     with Static;
   --  Magnetometer calibration based on fixed expected field values. 

   function Fixed_Mag_Cal_Yaw return Mav_Cmd is (42006)
     with Static;
   --  Magnetometer calibration based on provided known yaw. This allows for 
   --  fast calibration using WMM field tables in the vehicle, given only the 
   --  known yaw of the vehicle. If Latitude and longitude are both zero then 
   --  use the current vehicle location. 

   function Set_Ekf_Source_Set return Mav_Cmd is (42007)
     with Static;
   --  Set EKF sensor source set. 

   function Do_Start_Mag_Cal return Mav_Cmd is (42424)
     with Static;
   --  Initiate a magnetometer calibration. 

   function Do_Accept_Mag_Cal return Mav_Cmd is (42425)
     with Static;
   --  Accept a magnetometer calibration. 

   function Do_Cancel_Mag_Cal return Mav_Cmd is (42426)
     with Static;
   --  Cancel a running magnetometer calibration. 

   function Set_Factory_Test_Mode return Mav_Cmd is (42427)
     with Static;
   --  Command autopilot to get into factory test/diagnostic mode. 

   function Do_Send_Banner return Mav_Cmd is (42428)
     with Static;
   --  Reply with the version banner. 

   function Mav_Cmd_Accelcal_Vehicle_Pos return Mav_Cmd is (42429)
     with Static;
   --  Used when doing accelerometer calibration. When sent to the GCS tells 
   --  it what position to put the vehicle in. When sent to the vehicle says 
   --  what position the vehicle is in. 

   function Gimbal_Reset return Mav_Cmd is (42501)
     with Static;
   --  Causes the gimbal to reset and boot as if it was just powered on. 

   function Mav_Cmd_Gimbal_Axis_Calibration_Status return Mav_Cmd is (42502)
     with Static;
   --  Reports progress and success or failure of gimbal axis calibration 
   --  procedure. 

   function Gimbal_Request_Axis_Calibration return Mav_Cmd is (42503)
     with Static;
   --  Starts commutation calibration on the gimbal. 

   function Gimbal_Full_Reset return Mav_Cmd is (42505)
     with Static;
   --  Erases gimbal application and parameters. 

   function Do_Winch return Mav_Cmd is (42600)
     with Static;
   --  Command to operate winch. 

   function Flash_Bootloader return Mav_Cmd is (42650)
     with Static;
   --  Update the bootloader 

   function Battery_Reset return Mav_Cmd is (42651)
     with Static;
   --  Reset battery capacity for batteries that accumulate consumed battery 
   --  via integration. 

   function Debug_Trap return Mav_Cmd is (42700)
     with Static;
   --  Issue a trap signal to the autopilot process, presumably to enter the 
   --  debugger. 

   function Scripting return Mav_Cmd is (42701)
     with Static;
   --  Control onboard scripting. 

   function Nav_Script_Time return Mav_Cmd is (42702)
     with Static;
   --  Scripting command as NAV command with wait for completion. 

   function Nav_Attitude_Time return Mav_Cmd is (42703)
     with Static;
   --  Maintain an attitude for a specified time. 

   function Guided_Change_Speed return Mav_Cmd is (43000)
     with Static;
   --  Change flight speed at a given rate. This slews the vehicle at a 
   --  controllable rate between it's previous speed and the new one. (affects 
   --  GUIDED only. Outside GUIDED, aircraft ignores these commands. Designed 
   --  for onboard companion-computer command-and-control, not normally 
   --  operator/GCS control.) 

   function Guided_Change_Altitude return Mav_Cmd is (43001)
     with Static;
   --  Change target altitude at a given rate. This slews the vehicle at a 
   --  controllable rate between it's previous altitude and the new one. 
   --  (affects GUIDED only. Outside GUIDED, aircraft ignores these commands. 
   --  Designed for onboard companion-computer command-and-control, not 
   --  normally operator/GCS control.) 

   function Guided_Change_Heading return Mav_Cmd is (43002)
     with Static;
   --  Change to target heading at a given rate, overriding previous 
   --  heading/s. This slews the vehicle at a controllable rate between it's 
   --  previous heading and the new one. (affects GUIDED only. Exiting GUIDED 
   --  returns aircraft to normal behaviour defined elsewhere. Designed for 
   --  onboard companion-computer command-and-control, not normally 
   --  operator/GCS control.) 

   function External_Position_Estimate return Mav_Cmd is (43003)
     with Static;
   --  Provide an external position estimate for use when dead-reckoning. This 
   --  is meant to be used for occasional position resets that may be provided 
   --  by a external system such as a remote pilot using landmarks over a 
   --  video link. 

   function Set_Hagl return Mav_Cmd is (43005)
     with Static;
   --  Provide a value for height above ground level. This can be used for 
   --  things like fixed wing and VTOL landing. 

   subtype Mav_Cmd_Well_Known is Mav_Cmd
     with Static_Predicate => Mav_Cmd_Well_Known in
       Nav_Waypoint .. Nav_Follow
       | Nav_Continue_And_Change_Alt .. Do_Orbit
       | Nav_Roi .. Nav_Vtol_Land
       | Nav_Guided_Enable .. Nav_Last
       | Condition_Delay .. Condition_Yaw
       | Condition_Last
       | Do_Set_Mode .. Do_Set_Roi_Sysid
       | Do_Control_Video .. Do_Aux_Function
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
       | Loweheiser_Set_State
       | Payload_Prepare_Deploy .. Payload_Control_Deploy
       | Waypoint_User_1 .. User_5
       | Can_Forward
       | Power_Off_Initiated .. Set_Ekf_Source_Set
       | Do_Start_Mag_Cal .. Mav_Cmd_Accelcal_Vehicle_Pos
       | Gimbal_Reset .. Gimbal_Request_Axis_Calibration
       | Gimbal_Full_Reset
       | Do_Winch
       | Flash_Bootloader .. Battery_Reset
       | Debug_Trap .. Nav_Attitude_Time
       | Guided_Change_Speed .. External_Position_Estimate
       | Set_Hagl;

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
        when Nav_Altitude_Wait => "Nav_Altitude_Wait",
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
        when Do_Set_Resume_Repeat_Dist => "Do_Set_Resume_Repeat_Dist",
        when Do_Sprayer => "Do_Sprayer",
        when Do_Send_Script_Message => "Do_Send_Script_Message",
        when Do_Aux_Function => "Do_Aux_Function",
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
        when Loweheiser_Set_State => "Loweheiser_Set_State",
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
        when Power_Off_Initiated => "Power_Off_Initiated",
        when Solo_Btn_Fly_Click => "Solo_Btn_Fly_Click",
        when Solo_Btn_Fly_Hold => "Solo_Btn_Fly_Hold",
        when Solo_Btn_Pause_Click => "Solo_Btn_Pause_Click",
        when Fixed_Mag_Cal => "Fixed_Mag_Cal",
        when Fixed_Mag_Cal_Field => "Fixed_Mag_Cal_Field",
        when Fixed_Mag_Cal_Yaw => "Fixed_Mag_Cal_Yaw",
        when Set_Ekf_Source_Set => "Set_Ekf_Source_Set",
        when Do_Start_Mag_Cal => "Do_Start_Mag_Cal",
        when Do_Accept_Mag_Cal => "Do_Accept_Mag_Cal",
        when Do_Cancel_Mag_Cal => "Do_Cancel_Mag_Cal",
        when Set_Factory_Test_Mode => "Set_Factory_Test_Mode",
        when Do_Send_Banner => "Do_Send_Banner",
        when Mav_Cmd_Accelcal_Vehicle_Pos => "Mav_Cmd_Accelcal_Vehicle_Pos",
        when Gimbal_Reset => "Gimbal_Reset",
        when Mav_Cmd_Gimbal_Axis_Calibration_Status => "Mav_Cmd_Gimbal_Axis_Calibration_Status",
        when Gimbal_Request_Axis_Calibration => "Gimbal_Request_Axis_Calibration",
        when Gimbal_Full_Reset => "Gimbal_Full_Reset",
        when Do_Winch => "Do_Winch",
        when Flash_Bootloader => "Flash_Bootloader",
        when Battery_Reset => "Battery_Reset",
        when Debug_Trap => "Debug_Trap",
        when Scripting => "Scripting",
        when Nav_Script_Time => "Nav_Script_Time",
        when Nav_Attitude_Time => "Nav_Attitude_Time",
        when Guided_Change_Speed => "Guided_Change_Speed",
        when Guided_Change_Altitude => "Guided_Change_Altitude",
        when Guided_Change_Heading => "Guided_Change_Heading",
        when External_Position_Estimate => "External_Position_Estimate",
        when Set_Hagl => "Set_Hagl");

   function Image (Value : Mav_Cmd) return String is
     (if Value in Mav_Cmd_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Limits_State is new Interfaces.Unsigned_8;

   function Init return Limits_State is (0)
     with Static;
   --  Pre-initialization. 

   function Disabled return Limits_State is (1)
     with Static;
   --  Disabled. 

   function Enabled return Limits_State is (2)
     with Static;
   --  Checking limits. 

   function Triggered return Limits_State is (3)
     with Static;
   --  A limit has been breached. 

   function Recovering return Limits_State is (4)
     with Static;
   --  Taking action e.g. Return/RTL. 

   function Recovered return Limits_State is (5)
     with Static;
   --  We're no longer in breach of a limit. 

   subtype Limits_State_Well_Known is Limits_State
     with Static_Predicate => Limits_State_Well_Known in
       Init .. Recovered;

   function Well_Known_Image
     (Value : Limits_State_Well_Known) return String is
       (case Value is
        when Init => "Init",
        when Disabled => "Disabled",
        when Enabled => "Enabled",
        when Triggered => "Triggered",
        when Recovering => "Recovering",
        when Recovered => "Recovered");

   function Image (Value : Limits_State) return String is
     (if Value in Limits_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Limit_Module is record
      Gpslock    : Boolean := False;
      Geofence   : Boolean := False;
      Altitude   : Boolean := False;
      Reserved_3 : Boolean := False;
      Reserved_4 : Boolean := False;
      Reserved_5 : Boolean := False;
      Reserved_6 : Boolean := False;
      Reserved_7 : Boolean := False;
   end record with Size => 8;

   for Limit_Module use record
      Gpslock    at 0 range 0 .. 0;
      Geofence   at 0 range 1 .. 1;
      Altitude   at 0 range 2 .. 2;
      Reserved_3 at 0 range 3 .. 3;
      Reserved_4 at 0 range 4 .. 4;
      Reserved_5 at 0 range 5 .. 5;
      Reserved_6 at 0 range 6 .. 6;
      Reserved_7 at 0 range 7 .. 7;
   end record;

   function Image (V : Limit_Module) return String is
     ("["
      & (if V.Gpslock then "GPSLOCK " else "")
      & (if V.Geofence then "GEOFENCE " else "")
      & (if V.Altitude then "ALTITUDE " else "")
      & "]");

   type Rally_Flags is new Interfaces.Unsigned_8;
   --  Flags in RALLY_POINT message. 

   function Favorable_Wind return Rally_Flags is (1)
     with Static;
   --  Flag set when requiring favorable winds for landing. 

   function Land_Immediately return Rally_Flags is (2)
     with Static;
   --  Flag set when plane is to immediately descend to break altitude and 
   --  land without GCS intervention. Flag not set when plane is to loiter at 
   --  Rally point until commanded to land. 

   function Alt_Frame_Valid return Rally_Flags is (4)
     with Static;
   --  True if the following altitude frame value is valid. 

   function Alt_Frame return Rally_Flags is (24)
     with Static;
   --  2 bit value representing altitude frame. 0: absolute, 1: relative home, 
   --  2: relative origin, 3: relative terrain 

   subtype Rally_Flags_Well_Known is Rally_Flags
     with Static_Predicate => Rally_Flags_Well_Known in
       Favorable_Wind .. Land_Immediately
       | Alt_Frame_Valid
       | Alt_Frame;

   function Well_Known_Image
     (Value : Rally_Flags_Well_Known) return String is
       (case Value is
        when Favorable_Wind => "Favorable_Wind",
        when Land_Immediately => "Land_Immediately",
        when Alt_Frame_Valid => "Alt_Frame_Valid",
        when Alt_Frame => "Alt_Frame");

   function Image (Value : Rally_Flags) return String is
     (if Value in Rally_Flags_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Camera_Status_Types is new Interfaces.Unsigned_8;

   function Heartbeat return Camera_Status_Types is (0)
     with Static;
   --  Camera heartbeat, announce camera component ID at 1Hz. 

   function Trigger return Camera_Status_Types is (1)
     with Static;
   --  Camera image triggered. 

   function Disconnect return Camera_Status_Types is (2)
     with Static;
   --  Camera connection lost. 

   function Error return Camera_Status_Types is (3)
     with Static;
   --  Camera unknown error. 

   function Lowbatt return Camera_Status_Types is (4)
     with Static;
   --  Camera battery low. Parameter p1 shows reported voltage. 

   function Lowstore return Camera_Status_Types is (5)
     with Static;
   --  Camera storage low. Parameter p1 shows reported shots remaining. 

   function Lowstorev return Camera_Status_Types is (6)
     with Static;
   --  Camera storage low. Parameter p1 shows reported video minutes 
   --  remaining. 

   subtype Camera_Status_Types_Well_Known is Camera_Status_Types
     with Static_Predicate => Camera_Status_Types_Well_Known in
       Heartbeat .. Lowstorev;

   function Well_Known_Image
     (Value : Camera_Status_Types_Well_Known) return String is
       (case Value is
        when Heartbeat => "Heartbeat",
        when Trigger => "Trigger",
        when Disconnect => "Disconnect",
        when Error => "Error",
        when Lowbatt => "Lowbatt",
        when Lowstore => "Lowstore",
        when Lowstorev => "Lowstorev");

   function Image (Value : Camera_Status_Types) return String is
     (if Value in Camera_Status_Types_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Camera_Feedback_Flags is new Interfaces.Unsigned_8;

   function Photo return Camera_Feedback_Flags is (0)
     with Static;
   --  Shooting photos, not video. 

   function Video return Camera_Feedback_Flags is (1)
     with Static;
   --  Shooting video, not stills. 

   function Badexposure return Camera_Feedback_Flags is (2)
     with Static;
   --  Unable to achieve requested exposure (e.g. shutter speed too low). 

   function Closedloop return Camera_Feedback_Flags is (3)
     with Static;
   --  Closed loop feedback from camera, we know for sure it has successfully 
   --  taken a picture. 

   function Openloop return Camera_Feedback_Flags is (4)
     with Static;
   --  Open loop camera, an image trigger has been requested but we can't know 
   --  for sure it has successfully taken a picture. 

   subtype Camera_Feedback_Flags_Well_Known is Camera_Feedback_Flags
     with Static_Predicate => Camera_Feedback_Flags_Well_Known in
       Photo .. Openloop;

   function Well_Known_Image
     (Value : Camera_Feedback_Flags_Well_Known) return String is
       (case Value is
        when Photo => "Photo",
        when Video => "Video",
        when Badexposure => "Badexposure",
        when Closedloop => "Closedloop",
        when Openloop => "Openloop");

   function Image (Value : Camera_Feedback_Flags) return String is
     (if Value in Camera_Feedback_Flags_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Gopro_Heartbeat_Status is new Interfaces.Unsigned_8;

   function Disconnected return Gopro_Heartbeat_Status is (0)
     with Static;
   --  No GoPro connected. 

   function Incompatible return Gopro_Heartbeat_Status is (1)
     with Static;
   --  The detected GoPro is not HeroBus compatible. 

   function Connected return Gopro_Heartbeat_Status is (2)
     with Static;
   --  A HeroBus compatible GoPro is connected. 

   function Error return Gopro_Heartbeat_Status is (3)
     with Static;
   --  An unrecoverable error was encountered with the connected GoPro, it may 
   --  require a power cycle. 

   subtype Gopro_Heartbeat_Status_Well_Known is Gopro_Heartbeat_Status
     with Static_Predicate => Gopro_Heartbeat_Status_Well_Known in
       Disconnected .. Error;

   function Well_Known_Image
     (Value : Gopro_Heartbeat_Status_Well_Known) return String is
       (case Value is
        when Disconnected => "Disconnected",
        when Incompatible => "Incompatible",
        when Connected => "Connected",
        when Error => "Error");

   function Image (Value : Gopro_Heartbeat_Status) return String is
     (if Value in Gopro_Heartbeat_Status_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Gopro_Heartbeat_Flags is record
      Gopro_Flag_Recording : Boolean := False;
      Reserved_1           : Boolean := False;
      Reserved_2           : Boolean := False;
      Reserved_3           : Boolean := False;
      Reserved_4           : Boolean := False;
      Reserved_5           : Boolean := False;
      Reserved_6           : Boolean := False;
      Reserved_7           : Boolean := False;
   end record with Size => 8;

   for Gopro_Heartbeat_Flags use record
      Gopro_Flag_Recording at 0 range 0 .. 0;
      Reserved_1           at 0 range 1 .. 1;
      Reserved_2           at 0 range 2 .. 2;
      Reserved_3           at 0 range 3 .. 3;
      Reserved_4           at 0 range 4 .. 4;
      Reserved_5           at 0 range 5 .. 5;
      Reserved_6           at 0 range 6 .. 6;
      Reserved_7           at 0 range 7 .. 7;
   end record;

   function Image (V : Gopro_Heartbeat_Flags) return String is
     ("["
      & (if V.Gopro_Flag_Recording then "GOPRO_FLAG_RECORDING " else "")
      & "]");

   type Gopro_Request_Status is new Interfaces.Unsigned_8;

   function Success return Gopro_Request_Status is (0)
     with Static;
   --  The write message with ID indicated succeeded. 

   function Failed return Gopro_Request_Status is (1)
     with Static;
   --  The write message with ID indicated failed. 

   subtype Gopro_Request_Status_Well_Known is Gopro_Request_Status
     with Static_Predicate => Gopro_Request_Status_Well_Known in
       Success .. Failed;

   function Well_Known_Image
     (Value : Gopro_Request_Status_Well_Known) return String is
       (case Value is
        when Success => "Success",
        when Failed => "Failed");

   function Image (Value : Gopro_Request_Status) return String is
     (if Value in Gopro_Request_Status_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Gopro_Command is new Interfaces.Unsigned_8;

   function Power return Gopro_Command is (0)
     with Static;
   --  (Get/Set). 

   function Capture_Mode return Gopro_Command is (1)
     with Static;
   --  (Get/Set). 

   function Shutter return Gopro_Command is (2)
     with Static;
   --  (___/Set). 

   function Battery return Gopro_Command is (3)
     with Static;
   --  (Get/___). 

   function Model return Gopro_Command is (4)
     with Static;
   --  (Get/___). 

   function Video_Settings return Gopro_Command is (5)
     with Static;
   --  (Get/Set). 

   function Low_Light return Gopro_Command is (6)
     with Static;
   --  (Get/Set). 

   function Photo_Resolution return Gopro_Command is (7)
     with Static;
   --  (Get/Set). 

   function Photo_Burst_Rate return Gopro_Command is (8)
     with Static;
   --  (Get/Set). 

   function Protune return Gopro_Command is (9)
     with Static;
   --  (Get/Set). 

   function Protune_White_Balance return Gopro_Command is (10)
     with Static;
   --  (Get/Set) Hero 3+ Only. 

   function Protune_Colour return Gopro_Command is (11)
     with Static;
   --  (Get/Set) Hero 3+ Only. 

   function Protune_Gain return Gopro_Command is (12)
     with Static;
   --  (Get/Set) Hero 3+ Only. 

   function Protune_Sharpness return Gopro_Command is (13)
     with Static;
   --  (Get/Set) Hero 3+ Only. 

   function Protune_Exposure return Gopro_Command is (14)
     with Static;
   --  (Get/Set) Hero 3+ Only. 

   function Time return Gopro_Command is (15)
     with Static;
   --  (Get/Set). 

   function Charging return Gopro_Command is (16)
     with Static;
   --  (Get/Set). 

   subtype Gopro_Command_Well_Known is Gopro_Command
     with Static_Predicate => Gopro_Command_Well_Known in
       Power .. Charging;

   function Well_Known_Image
     (Value : Gopro_Command_Well_Known) return String is
       (case Value is
        when Power => "Power",
        when Capture_Mode => "Capture_Mode",
        when Shutter => "Shutter",
        when Battery => "Battery",
        when Model => "Model",
        when Video_Settings => "Video_Settings",
        when Low_Light => "Low_Light",
        when Photo_Resolution => "Photo_Resolution",
        when Photo_Burst_Rate => "Photo_Burst_Rate",
        when Protune => "Protune",
        when Protune_White_Balance => "Protune_White_Balance",
        when Protune_Colour => "Protune_Colour",
        when Protune_Gain => "Protune_Gain",
        when Protune_Sharpness => "Protune_Sharpness",
        when Protune_Exposure => "Protune_Exposure",
        when Time => "Time",
        when Charging => "Charging");

   function Image (Value : Gopro_Command) return String is
     (if Value in Gopro_Command_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Gopro_Capture_Mode is new Interfaces.Unsigned_8;

   function Video return Gopro_Capture_Mode is (0)
     with Static;
   --  Video mode. 

   function Photo return Gopro_Capture_Mode is (1)
     with Static;
   --  Photo mode. 

   function Burst return Gopro_Capture_Mode is (2)
     with Static;
   --  Burst mode, Hero 3+ only. 

   function Time_Lapse return Gopro_Capture_Mode is (3)
     with Static;
   --  Time lapse mode, Hero 3+ only. 

   function Multi_Shot return Gopro_Capture_Mode is (4)
     with Static;
   --  Multi shot mode, Hero 4 only. 

   function Playback return Gopro_Capture_Mode is (5)
     with Static;
   --  Playback mode, Hero 4 only, silver only except when LCD or HDMI is 
   --  connected to black. 

   function Setup return Gopro_Capture_Mode is (6)
     with Static;
   --  Playback mode, Hero 4 only. 

   function Unknown return Gopro_Capture_Mode is (255)
     with Static;
   --  Mode not yet known. 

   subtype Gopro_Capture_Mode_Well_Known is Gopro_Capture_Mode
     with Static_Predicate => Gopro_Capture_Mode_Well_Known in
       Video .. Setup
       | Unknown;

   function Well_Known_Image
     (Value : Gopro_Capture_Mode_Well_Known) return String is
       (case Value is
        when Video => "Video",
        when Photo => "Photo",
        when Burst => "Burst",
        when Time_Lapse => "Time_Lapse",
        when Multi_Shot => "Multi_Shot",
        when Playback => "Playback",
        when Setup => "Setup",
        when Unknown => "Unknown");

   function Image (Value : Gopro_Capture_Mode) return String is
     (if Value in Gopro_Capture_Mode_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Ekf_Status_Flags is record
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
      Uninitialized      : Boolean := False;
      Gps_Glitching      : Boolean := False;
   end record with Size => 16;
   --  Flags in EKF_STATUS message. 

   for Ekf_Status_Flags use record
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
      Uninitialized      at 0 range 10 .. 10;
      Gps_Glitching      at 0 range 15 .. 15;
   end record;

   function Image (V : Ekf_Status_Flags) return String is
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
      & (if V.Uninitialized then "UNINITIALIZED " else "")
      & (if V.Gps_Glitching then "GPS_GLITCHING " else "")
      & "]");

   type Pid_Tuning_Axis is new Interfaces.Unsigned_8;

   function Roll return Pid_Tuning_Axis is (1)
     with Static;

   function Pitch return Pid_Tuning_Axis is (2)
     with Static;

   function Yaw return Pid_Tuning_Axis is (3)
     with Static;

   function Accz return Pid_Tuning_Axis is (4)
     with Static;

   function Steer return Pid_Tuning_Axis is (5)
     with Static;

   function Landing return Pid_Tuning_Axis is (6)
     with Static;

   subtype Pid_Tuning_Axis_Well_Known is Pid_Tuning_Axis
     with Static_Predicate => Pid_Tuning_Axis_Well_Known in
       Roll .. Landing;

   function Well_Known_Image
     (Value : Pid_Tuning_Axis_Well_Known) return String is
       (case Value is
        when Roll => "Roll",
        when Pitch => "Pitch",
        when Yaw => "Yaw",
        when Accz => "Accz",
        when Steer => "Steer",
        when Landing => "Landing");

   function Image (Value : Pid_Tuning_Axis) return String is
     (if Value in Pid_Tuning_Axis_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Remote_Log_Data_Block_Commands is new Interfaces.Unsigned_32;
   --  Special ACK block numbers control activation of dataflash log 
   --  streaming. 

   function Op return Mav_Remote_Log_Data_Block_Commands is (2147483645)
     with Static;
   --  UAV to stop sending DataFlash blocks. 

   function Art return Mav_Remote_Log_Data_Block_Commands is (2147483646)
     with Static;
   --  UAV to start sending DataFlash blocks. 

   subtype Mav_Remote_Log_Data_Block_Commands_Well_Known is Mav_Remote_Log_Data_Block_Commands
     with Static_Predicate => Mav_Remote_Log_Data_Block_Commands_Well_Known in
       Op .. Art;

   function Well_Known_Image
     (Value : Mav_Remote_Log_Data_Block_Commands_Well_Known) return String is
       (case Value is
        when Op => "Op",
        when Art => "Art");

   function Image (Value : Mav_Remote_Log_Data_Block_Commands) return String is
     (if Value in Mav_Remote_Log_Data_Block_Commands_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Remote_Log_Data_Block_Statuses is new Interfaces.Unsigned_8;
   --  Possible remote log data block statuses. 

   function Nack return Mav_Remote_Log_Data_Block_Statuses is (0)
     with Static;
   --  This block has NOT been received. 

   function Ack return Mav_Remote_Log_Data_Block_Statuses is (1)
     with Static;
   --  This block has been received. 

   subtype Mav_Remote_Log_Data_Block_Statuses_Well_Known is Mav_Remote_Log_Data_Block_Statuses
     with Static_Predicate => Mav_Remote_Log_Data_Block_Statuses_Well_Known in
       Nack .. Ack;

   function Well_Known_Image
     (Value : Mav_Remote_Log_Data_Block_Statuses_Well_Known) return String is
       (case Value is
        when Nack => "Nack",
        when Ack => "Ack");

   function Image (Value : Mav_Remote_Log_Data_Block_Statuses) return String is
     (if Value in Mav_Remote_Log_Data_Block_Statuses_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Deepstall_Stage is new Interfaces.Unsigned_8;
   --  Deepstall flight stage. 

   function Fly_To_Landing return Deepstall_Stage is (0)
     with Static;
   --  Flying to the landing point. 

   function Estimate_Wind return Deepstall_Stage is (1)
     with Static;
   --  Building an estimate of the wind. 

   function Wait_For_Breakout return Deepstall_Stage is (2)
     with Static;
   --  Waiting to breakout of the loiter to fly the approach. 

   function Fly_To_Arc return Deepstall_Stage is (3)
     with Static;
   --  Flying to the first arc point to turn around to the landing point. 

   function Arc return Deepstall_Stage is (4)
     with Static;
   --  Turning around back to the deepstall landing point. 

   function Approach return Deepstall_Stage is (5)
     with Static;
   --  Approaching the landing point. 

   function Land return Deepstall_Stage is (6)
     with Static;
   --  Stalling and steering towards the land point. 

   subtype Deepstall_Stage_Well_Known is Deepstall_Stage
     with Static_Predicate => Deepstall_Stage_Well_Known in
       Fly_To_Landing .. Land;

   function Well_Known_Image
     (Value : Deepstall_Stage_Well_Known) return String is
       (case Value is
        when Fly_To_Landing => "Fly_To_Landing",
        when Estimate_Wind => "Estimate_Wind",
        when Wait_For_Breakout => "Wait_For_Breakout",
        when Fly_To_Arc => "Fly_To_Arc",
        when Arc => "Arc",
        when Approach => "Approach",
        when Land => "Land");

   function Image (Value : Deepstall_Stage) return String is
     (if Value in Deepstall_Stage_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

end Mavlink.V1.Ardupilotmega;
