--  Defines MAVLink types
--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

package MAVLink.Types is

   pragma Pure;

   type Mav_Cmd is new Interfaces.Unsigned_16;

   function Nav_Waypoint return Mav_Cmd is (16)
     with Static;

   function Nav_Loiter_Unlim return Mav_Cmd is (17)
     with Static;

   function Nav_Loiter_Turns return Mav_Cmd is (18)
     with Static;

   function Nav_Loiter_Time return Mav_Cmd is (19)
     with Static;

   function Nav_Return_To_Launch return Mav_Cmd is (20)
     with Static;

   function Nav_Land return Mav_Cmd is (21)
     with Static;

   function Nav_Takeoff return Mav_Cmd is (22)
     with Static;

   function Nav_Land_Local return Mav_Cmd is (23)
     with Static;

   function Nav_Takeoff_Local return Mav_Cmd is (24)
     with Static;

   function Nav_Follow return Mav_Cmd is (25)
     with Static;

   function Nav_Continue_And_Change_Alt return Mav_Cmd is (30)
     with Static;

   function Nav_Loiter_To_Alt return Mav_Cmd is (31)
     with Static;

   function Do_Follow return Mav_Cmd is (32)
     with Static;

   function Do_Follow_Reposition return Mav_Cmd is (33)
     with Static;

   function Do_Orbit return Mav_Cmd is (34)
     with Static;

   function Nav_Roi return Mav_Cmd is (80)
     with Static;

   function Nav_Pathplanning return Mav_Cmd is (81)
     with Static;

   function Nav_Spline_Waypoint return Mav_Cmd is (82)
     with Static;

   function Nav_Altitude_Wait return Mav_Cmd is (83)
     with Static;

   function Nav_Vtol_Takeoff return Mav_Cmd is (84)
     with Static;

   function Nav_Vtol_Land return Mav_Cmd is (85)
     with Static;

   function Nav_Guided_Enable return Mav_Cmd is (92)
     with Static;

   function Nav_Delay return Mav_Cmd is (93)
     with Static;

   function Nav_Payload_Place return Mav_Cmd is (94)
     with Static;

   function Nav_Last return Mav_Cmd is (95)
     with Static;

   function Condition_Delay return Mav_Cmd is (112)
     with Static;

   function Condition_Change_Alt return Mav_Cmd is (113)
     with Static;

   function Condition_Distance return Mav_Cmd is (114)
     with Static;

   function Condition_Yaw return Mav_Cmd is (115)
     with Static;

   function Condition_Last return Mav_Cmd is (159)
     with Static;

   function Do_Set_Mode return Mav_Cmd is (176)
     with Static;

   function Do_Jump return Mav_Cmd is (177)
     with Static;

   function Do_Change_Speed return Mav_Cmd is (178)
     with Static;

   function Do_Set_Home return Mav_Cmd is (179)
     with Static;

   function Do_Set_Parameter return Mav_Cmd is (180)
     with Static;

   function Do_Set_Relay return Mav_Cmd is (181)
     with Static;

   function Do_Repeat_Relay return Mav_Cmd is (182)
     with Static;

   function Do_Set_Servo return Mav_Cmd is (183)
     with Static;

   function Do_Repeat_Servo return Mav_Cmd is (184)
     with Static;

   function Do_Flighttermination return Mav_Cmd is (185)
     with Static;

   function Do_Change_Altitude return Mav_Cmd is (186)
     with Static;

   function Do_Set_Actuator return Mav_Cmd is (187)
     with Static;

   function Do_Return_Path_Start return Mav_Cmd is (188)
     with Static;

   function Do_Land_Start return Mav_Cmd is (189)
     with Static;

   function Do_Rally_Land return Mav_Cmd is (190)
     with Static;

   function Do_Go_Around return Mav_Cmd is (191)
     with Static;

   function Do_Reposition return Mav_Cmd is (192)
     with Static;

   function Do_Pause_Continue return Mav_Cmd is (193)
     with Static;

   function Do_Set_Reverse return Mav_Cmd is (194)
     with Static;

   function Do_Set_Roi_Location return Mav_Cmd is (195)
     with Static;

   function Do_Set_Roi_Wpnext_Offset return Mav_Cmd is (196)
     with Static;

   function Do_Set_Roi_None return Mav_Cmd is (197)
     with Static;

   function Do_Set_Roi_Sysid return Mav_Cmd is (198)
     with Static;

   function Do_Control_Video return Mav_Cmd is (200)
     with Static;

   function Do_Set_Roi return Mav_Cmd is (201)
     with Static;

   function Do_Digicam_Configure return Mav_Cmd is (202)
     with Static;

   function Do_Digicam_Control return Mav_Cmd is (203)
     with Static;

   function Do_Mount_Configure return Mav_Cmd is (204)
     with Static;

   function Do_Mount_Control return Mav_Cmd is (205)
     with Static;

   function Do_Set_Cam_Trigg_Dist return Mav_Cmd is (206)
     with Static;

   function Do_Fence_Enable return Mav_Cmd is (207)
     with Static;

   function Do_Parachute return Mav_Cmd is (208)
     with Static;

   function Do_Motor_Test return Mav_Cmd is (209)
     with Static;

   function Do_Inverted_Flight return Mav_Cmd is (210)
     with Static;

   function Do_Gripper return Mav_Cmd is (211)
     with Static;

   function Do_Autotune_Enable return Mav_Cmd is (212)
     with Static;

   function Nav_Set_Yaw_Speed return Mav_Cmd is (213)
     with Static;

   function Do_Set_Cam_Trigg_Interval return Mav_Cmd is (214)
     with Static;

   function Do_Set_Resume_Repeat_Dist return Mav_Cmd is (215)
     with Static;

   function Do_Sprayer return Mav_Cmd is (216)
     with Static;

   function Do_Send_Script_Message return Mav_Cmd is (217)
     with Static;

   function Do_Aux_Function return Mav_Cmd is (218)
     with Static;

   function Do_Mount_Control_Quat return Mav_Cmd is (220)
     with Static;

   function Do_Guided_Master return Mav_Cmd is (221)
     with Static;

   function Do_Guided_Limits return Mav_Cmd is (222)
     with Static;

   function Do_Engine_Control return Mav_Cmd is (223)
     with Static;

   function Do_Set_Mission_Current return Mav_Cmd is (224)
     with Static;

   function Do_Last return Mav_Cmd is (240)
     with Static;

   function Preflight_Calibration return Mav_Cmd is (241)
     with Static;

   function Preflight_Set_Sensor_Offsets return Mav_Cmd is (242)
     with Static;

   function Preflight_Uavcan return Mav_Cmd is (243)
     with Static;

   function Preflight_Storage return Mav_Cmd is (245)
     with Static;

   function Preflight_Reboot_Shutdown return Mav_Cmd is (246)
     with Static;

   function Override_Goto return Mav_Cmd is (252)
     with Static;

   function Oblique_Survey return Mav_Cmd is (260)
     with Static;

   function Do_Set_Standard_Mode return Mav_Cmd is (262)
     with Static;

   function Mission_Start return Mav_Cmd is (300)
     with Static;

   function Actuator_Test return Mav_Cmd is (310)
     with Static;

   function Configure_Actuator return Mav_Cmd is (311)
     with Static;

   function Component_Arm_Disarm return Mav_Cmd is (400)
     with Static;

   function Run_Prearm_Checks return Mav_Cmd is (401)
     with Static;

   function Illuminator_On_Off return Mav_Cmd is (405)
     with Static;

   function Do_Illuminator_Configure return Mav_Cmd is (406)
     with Static;

   function Get_Home_Position return Mav_Cmd is (410)
     with Static;

   function Inject_Failure return Mav_Cmd is (420)
     with Static;

   function Start_Rx_Pair return Mav_Cmd is (500)
     with Static;

   function Get_Message_Interval return Mav_Cmd is (510)
     with Static;

   function Set_Message_Interval return Mav_Cmd is (511)
     with Static;

   function Request_Message return Mav_Cmd is (512)
     with Static;

   function Request_Protocol_Version return Mav_Cmd is (519)
     with Static;

   function Request_Autopilot_Capabilities return Mav_Cmd is (520)
     with Static;

   function Request_Camera_Information return Mav_Cmd is (521)
     with Static;

   function Request_Camera_Settings return Mav_Cmd is (522)
     with Static;

   function Request_Storage_Information return Mav_Cmd is (525)
     with Static;

   function Storage_Format return Mav_Cmd is (526)
     with Static;

   function Request_Camera_Capture_Status return Mav_Cmd is (527)
     with Static;

   function Request_Flight_Information return Mav_Cmd is (528)
     with Static;

   function Reset_Camera_Settings return Mav_Cmd is (529)
     with Static;

   function Set_Camera_Mode return Mav_Cmd is (530)
     with Static;

   function Set_Camera_Zoom return Mav_Cmd is (531)
     with Static;

   function Set_Camera_Focus return Mav_Cmd is (532)
     with Static;

   function Set_Storage_Usage return Mav_Cmd is (533)
     with Static;

   function Set_Camera_Source return Mav_Cmd is (534)
     with Static;

   function Jump_Tag return Mav_Cmd is (600)
     with Static;

   function Do_Jump_Tag return Mav_Cmd is (601)
     with Static;

   function Do_Gimbal_Manager_Pitchyaw return Mav_Cmd is (1000)
     with Static;

   function Do_Gimbal_Manager_Configure return Mav_Cmd is (1001)
     with Static;

   function Image_Start_Capture return Mav_Cmd is (2000)
     with Static;

   function Image_Stop_Capture return Mav_Cmd is (2001)
     with Static;

   function Request_Camera_Image_Capture return Mav_Cmd is (2002)
     with Static;

   function Do_Trigger_Control return Mav_Cmd is (2003)
     with Static;

   function Camera_Track_Point return Mav_Cmd is (2004)
     with Static;

   function Camera_Track_Rectangle return Mav_Cmd is (2005)
     with Static;

   function Camera_Stop_Tracking return Mav_Cmd is (2010)
     with Static;

   function Video_Start_Capture return Mav_Cmd is (2500)
     with Static;

   function Video_Stop_Capture return Mav_Cmd is (2501)
     with Static;

   function Video_Start_Streaming return Mav_Cmd is (2502)
     with Static;

   function Video_Stop_Streaming return Mav_Cmd is (2503)
     with Static;

   function Request_Video_Stream_Information return Mav_Cmd is (2504)
     with Static;

   function Request_Video_Stream_Status return Mav_Cmd is (2505)
     with Static;

   function Logging_Start return Mav_Cmd is (2510)
     with Static;

   function Logging_Stop return Mav_Cmd is (2511)
     with Static;

   function Airframe_Configuration return Mav_Cmd is (2520)
     with Static;

   function Control_High_Latency return Mav_Cmd is (2600)
     with Static;

   function Panorama_Create return Mav_Cmd is (2800)
     with Static;

   function Do_Vtol_Transition return Mav_Cmd is (3000)
     with Static;

   function Arm_Authorization_Request return Mav_Cmd is (3001)
     with Static;

   function Set_Guided_Submode_Standard return Mav_Cmd is (4000)
     with Static;

   function Set_Guided_Submode_Circle return Mav_Cmd is (4001)
     with Static;

   function Condition_Gate return Mav_Cmd is (4501)
     with Static;

   function Nav_Fence_Return_Point return Mav_Cmd is (5000)
     with Static;

   function Nav_Fence_Polygon_Vertex_Inclusion return Mav_Cmd is (5001)
     with Static;

   function Nav_Fence_Polygon_Vertex_Exclusion return Mav_Cmd is (5002)
     with Static;

   function Nav_Fence_Circle_Inclusion return Mav_Cmd is (5003)
     with Static;

   function Nav_Fence_Circle_Exclusion return Mav_Cmd is (5004)
     with Static;

   function Nav_Rally_Point return Mav_Cmd is (5100)
     with Static;

   function Uavcan_Get_Node_Info return Mav_Cmd is (5200)
     with Static;

   function Do_Set_Safety_Switch_State return Mav_Cmd is (5300)
     with Static;

   function Do_Adsb_Out_Ident return Mav_Cmd is (10001)
     with Static;

   function Loweheiser_Set_State return Mav_Cmd is (10151)
     with Static;

   function Payload_Prepare_Deploy return Mav_Cmd is (30001)
     with Static;

   function Payload_Control_Deploy return Mav_Cmd is (30002)
     with Static;

   function Waypoint_User_1 return Mav_Cmd is (31000)
     with Static;

   function Waypoint_User_2 return Mav_Cmd is (31001)
     with Static;

   function Waypoint_User_3 return Mav_Cmd is (31002)
     with Static;

   function Waypoint_User_4 return Mav_Cmd is (31003)
     with Static;

   function Waypoint_User_5 return Mav_Cmd is (31004)
     with Static;

   function Spatial_User_1 return Mav_Cmd is (31005)
     with Static;

   function Spatial_User_2 return Mav_Cmd is (31006)
     with Static;

   function Spatial_User_3 return Mav_Cmd is (31007)
     with Static;

   function Spatial_User_4 return Mav_Cmd is (31008)
     with Static;

   function Spatial_User_5 return Mav_Cmd is (31009)
     with Static;

   function User_1 return Mav_Cmd is (31010)
     with Static;

   function User_2 return Mav_Cmd is (31011)
     with Static;

   function User_3 return Mav_Cmd is (31012)
     with Static;

   function User_4 return Mav_Cmd is (31013)
     with Static;

   function User_5 return Mav_Cmd is (31014)
     with Static;

   function Can_Forward return Mav_Cmd is (32000)
     with Static;

   function Power_Off_Initiated return Mav_Cmd is (42000)
     with Static;

   function Solo_Btn_Fly_Click return Mav_Cmd is (42001)
     with Static;

   function Solo_Btn_Fly_Hold return Mav_Cmd is (42002)
     with Static;

   function Solo_Btn_Pause_Click return Mav_Cmd is (42003)
     with Static;

   function Fixed_Mag_Cal return Mav_Cmd is (42004)
     with Static;

   function Fixed_Mag_Cal_Field return Mav_Cmd is (42005)
     with Static;

   function Fixed_Mag_Cal_Yaw return Mav_Cmd is (42006)
     with Static;

   function Set_Ekf_Source_Set return Mav_Cmd is (42007)
     with Static;

   function Do_Start_Mag_Cal return Mav_Cmd is (42424)
     with Static;

   function Do_Accept_Mag_Cal return Mav_Cmd is (42425)
     with Static;

   function Do_Cancel_Mag_Cal return Mav_Cmd is (42426)
     with Static;

   function Set_Factory_Test_Mode return Mav_Cmd is (42427)
     with Static;

   function Do_Send_Banner return Mav_Cmd is (42428)
     with Static;

   function Accelcal_Vehicle_Pos return Mav_Cmd is (42429)
     with Static;

   function Gimbal_Reset return Mav_Cmd is (42501)
     with Static;

   function Gimbal_Axis_Calibration_Status return Mav_Cmd is (42502)
     with Static;

   function Gimbal_Request_Axis_Calibration return Mav_Cmd is (42503)
     with Static;

   function Gimbal_Full_Reset return Mav_Cmd is (42505)
     with Static;

   function Do_Winch return Mav_Cmd is (42600)
     with Static;

   function Flash_Bootloader return Mav_Cmd is (42650)
     with Static;

   function Battery_Reset return Mav_Cmd is (42651)
     with Static;

   function Debug_Trap return Mav_Cmd is (42700)
     with Static;

   function Scripting return Mav_Cmd is (42701)
     with Static;

   function Nav_Script_Time return Mav_Cmd is (42702)
     with Static;

   function Nav_Attitude_Time return Mav_Cmd is (42703)
     with Static;

   function Guided_Change_Speed return Mav_Cmd is (43000)
     with Static;

   function Guided_Change_Altitude return Mav_Cmd is (43001)
     with Static;

   function Guided_Change_Heading return Mav_Cmd is (43002)
     with Static;

   function External_Position_Estimate return Mav_Cmd is (43003)
     with Static;

   function Set_Hagl return Mav_Cmd is (43005)
     with Static;

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
       | Do_Start_Mag_Cal .. Accelcal_Vehicle_Pos
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
        when Accelcal_Vehicle_Pos => "Accelcal_Vehicle_Pos",
        when Gimbal_Reset => "Gimbal_Reset",
        when Gimbal_Axis_Calibration_Status => "Gimbal_Axis_Calibration_Status",
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

   function Disabled return Limits_State is (1)
     with Static;

   function Enabled return Limits_State is (2)
     with Static;

   function Triggered return Limits_State is (3)
     with Static;

   function Recovering return Limits_State is (4)
     with Static;

   function Recovered return Limits_State is (5)
     with Static;

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

   function Favorable_Wind return Rally_Flags is (1)
     with Static;

   function Land_Immediately return Rally_Flags is (2)
     with Static;

   function Alt_Frame_Valid return Rally_Flags is (4)
     with Static;

   function Alt_Frame return Rally_Flags is (24)
     with Static;

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

   function Trigger return Camera_Status_Types is (1)
     with Static;

   function Disconnect return Camera_Status_Types is (2)
     with Static;

   function Error return Camera_Status_Types is (3)
     with Static;

   function Lowbatt return Camera_Status_Types is (4)
     with Static;

   function Lowstore return Camera_Status_Types is (5)
     with Static;

   function Lowstorev return Camera_Status_Types is (6)
     with Static;

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

   function Video return Camera_Feedback_Flags is (1)
     with Static;

   function Badexposure return Camera_Feedback_Flags is (2)
     with Static;

   function Closedloop return Camera_Feedback_Flags is (3)
     with Static;

   function Openloop return Camera_Feedback_Flags is (4)
     with Static;

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

   function Incompatible return Gopro_Heartbeat_Status is (1)
     with Static;

   function Connected return Gopro_Heartbeat_Status is (2)
     with Static;

   function Error return Gopro_Heartbeat_Status is (3)
     with Static;

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

   function Failed return Gopro_Request_Status is (1)
     with Static;

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

   function Capture_Mode return Gopro_Command is (1)
     with Static;

   function Shutter return Gopro_Command is (2)
     with Static;

   function Battery return Gopro_Command is (3)
     with Static;

   function Model return Gopro_Command is (4)
     with Static;

   function Video_Settings return Gopro_Command is (5)
     with Static;

   function Low_Light return Gopro_Command is (6)
     with Static;

   function Photo_Resolution return Gopro_Command is (7)
     with Static;

   function Photo_Burst_Rate return Gopro_Command is (8)
     with Static;

   function Protune return Gopro_Command is (9)
     with Static;

   function Protune_White_Balance return Gopro_Command is (10)
     with Static;

   function Protune_Colour return Gopro_Command is (11)
     with Static;

   function Protune_Gain return Gopro_Command is (12)
     with Static;

   function Protune_Sharpness return Gopro_Command is (13)
     with Static;

   function Protune_Exposure return Gopro_Command is (14)
     with Static;

   function Time return Gopro_Command is (15)
     with Static;

   function Charging return Gopro_Command is (16)
     with Static;

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

   function Photo return Gopro_Capture_Mode is (1)
     with Static;

   function Burst return Gopro_Capture_Mode is (2)
     with Static;

   function Time_Lapse return Gopro_Capture_Mode is (3)
     with Static;

   function Multi_Shot return Gopro_Capture_Mode is (4)
     with Static;

   function Playback return Gopro_Capture_Mode is (5)
     with Static;

   function Setup return Gopro_Capture_Mode is (6)
     with Static;

   function Unknown return Gopro_Capture_Mode is (255)
     with Static;

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

   function Op return Mav_Remote_Log_Data_Block_Commands is (2147483645)
     with Static;

   function Art return Mav_Remote_Log_Data_Block_Commands is (2147483646)
     with Static;

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

   function Nack return Mav_Remote_Log_Data_Block_Statuses is (0)
     with Static;

   function Ack return Mav_Remote_Log_Data_Block_Statuses is (1)
     with Static;

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

   function Fly_To_Landing return Deepstall_Stage is (0)
     with Static;

   function Estimate_Wind return Deepstall_Stage is (1)
     with Static;

   function Wait_For_Breakout return Deepstall_Stage is (2)
     with Static;

   function Fly_To_Arc return Deepstall_Stage is (3)
     with Static;

   function Arc return Deepstall_Stage is (4)
     with Static;

   function Approach return Deepstall_Stage is (5)
     with Static;

   function Land return Deepstall_Stage is (6)
     with Static;

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

   function Preflight return Mav_Mode is (0)
     with Static;

   function Manual_Disarmed return Mav_Mode is (64)
     with Static;

   function Test_Disarmed return Mav_Mode is (66)
     with Static;

   function Stabilize_Disarmed return Mav_Mode is (80)
     with Static;

   function Guided_Disarmed return Mav_Mode is (88)
     with Static;

   function Auto_Disarmed return Mav_Mode is (92)
     with Static;

   function Manual_Armed return Mav_Mode is (192)
     with Static;

   function Test_Armed return Mav_Mode is (194)
     with Static;

   function Stabilize_Armed return Mav_Mode is (208)
     with Static;

   function Guided_Armed return Mav_Mode is (216)
     with Static;

   function Auto_Armed return Mav_Mode is (220)
     with Static;

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

   function Global return Mav_Frame is (0)
     with Static;

   function Local_Ned return Mav_Frame is (1)
     with Static;

   function Mission return Mav_Frame is (2)
     with Static;

   function Global_Relative_Alt return Mav_Frame is (3)
     with Static;

   function Local_Enu return Mav_Frame is (4)
     with Static;

   function Global_Int return Mav_Frame is (5)
     with Static;

   function Global_Relative_Alt_Int return Mav_Frame is (6)
     with Static;

   function Local_Offset_Ned return Mav_Frame is (7)
     with Static;

   function Body_Ned return Mav_Frame is (8)
     with Static;

   function Body_Offset_Ned return Mav_Frame is (9)
     with Static;

   function Global_Terrain_Alt return Mav_Frame is (10)
     with Static;

   function Global_Terrain_Alt_Int return Mav_Frame is (11)
     with Static;

   function Body_Frd return Mav_Frame is (12)
     with Static;

   function Reserved_13 return Mav_Frame is (13)
     with Static;

   function Reserved_14 return Mav_Frame is (14)
     with Static;

   function Reserved_15 return Mav_Frame is (15)
     with Static;

   function Reserved_16 return Mav_Frame is (16)
     with Static;

   function Reserved_17 return Mav_Frame is (17)
     with Static;

   function Reserved_18 return Mav_Frame is (18)
     with Static;

   function Reserved_19 return Mav_Frame is (19)
     with Static;

   function Local_Frd return Mav_Frame is (20)
     with Static;

   function Local_Flu return Mav_Frame is (21)
     with Static;

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

   function Minalt return Fence_Breach is (1)
     with Static;

   function Maxalt return Fence_Breach is (2)
     with Static;

   function Boundary return Fence_Breach is (3)
     with Static;

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

   function Retract return Mav_Mount_Mode is (0)
     with Static;

   function Neutral return Mav_Mount_Mode is (1)
     with Static;

   function Mavlink_Targeting return Mav_Mount_Mode is (2)
     with Static;

   function Rc_Targeting return Mav_Mount_Mode is (3)
     with Static;

   function Gps_Point return Mav_Mount_Mode is (4)
     with Static;

   function Sysid_Target return Mav_Mount_Mode is (5)
     with Static;

   function Home_Location return Mav_Mount_Mode is (6)
     with Static;

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

   function Uint8 return Mav_Param_Type is (1)
     with Static;

   function Int8 return Mav_Param_Type is (2)
     with Static;

   function Uint16 return Mav_Param_Type is (3)
     with Static;

   function Int16 return Mav_Param_Type is (4)
     with Static;

   function Uint32 return Mav_Param_Type is (5)
     with Static;

   function Int32 return Mav_Param_Type is (6)
     with Static;

   function Uint64 return Mav_Param_Type is (7)
     with Static;

   function Int64 return Mav_Param_Type is (8)
     with Static;

   function Real32 return Mav_Param_Type is (9)
     with Static;

   function Real64 return Mav_Param_Type is (10)
     with Static;

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

   function Accepted return Mav_Result is (0)
     with Static;

   function Temporarily_Rejected return Mav_Result is (1)
     with Static;

   function Denied return Mav_Result is (2)
     with Static;

   function Unsupported return Mav_Result is (3)
     with Static;

   function Failed return Mav_Result is (4)
     with Static;

   function In_Progress return Mav_Result is (5)
     with Static;

   function Cancelled return Mav_Result is (6)
     with Static;

   function Command_Long_Only return Mav_Result is (7)
     with Static;

   function Command_Int_Only return Mav_Result is (8)
     with Static;

   function Command_Unsupported_Mav_Frame return Mav_Result is (9)
     with Static;

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

   function Accepted return Mav_Mission_Result is (0)
     with Static;

   function Error return Mav_Mission_Result is (1)
     with Static;

   function Unsupported_Frame return Mav_Mission_Result is (2)
     with Static;

   function Unsupported return Mav_Mission_Result is (3)
     with Static;

   function No_Space return Mav_Mission_Result is (4)
     with Static;

   function Invalid return Mav_Mission_Result is (5)
     with Static;

   function Invalid_Param1 return Mav_Mission_Result is (6)
     with Static;

   function Invalid_Param2 return Mav_Mission_Result is (7)
     with Static;

   function Invalid_Param3 return Mav_Mission_Result is (8)
     with Static;

   function Invalid_Param4 return Mav_Mission_Result is (9)
     with Static;

   function Invalid_Param5_X return Mav_Mission_Result is (10)
     with Static;

   function Invalid_Param6_Y return Mav_Mission_Result is (11)
     with Static;

   function Invalid_Param7 return Mav_Mission_Result is (12)
     with Static;

   function Invalid_Sequence return Mav_Mission_Result is (13)
     with Static;

   function Denied return Mav_Mission_Result is (14)
     with Static;

   function Operation_Cancelled return Mav_Mission_Result is (15)
     with Static;

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

   function Emergency return Mav_Severity is (0)
     with Static;

   function Alert return Mav_Severity is (1)
     with Static;

   function Critical return Mav_Severity is (2)
     with Static;

   function Error return Mav_Severity is (3)
     with Static;

   function Warning return Mav_Severity is (4)
     with Static;

   function Notice return Mav_Severity is (5)
     with Static;

   function Info return Mav_Severity is (6)
     with Static;

   function Debug return Mav_Severity is (7)
     with Static;

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

   function Dev_Telem1 return Serial_Control_Dev is (0)
     with Static;

   function Dev_Telem2 return Serial_Control_Dev is (1)
     with Static;

   function Dev_Gps1 return Serial_Control_Dev is (2)
     with Static;

   function Dev_Gps2 return Serial_Control_Dev is (3)
     with Static;

   function Dev_Shell return Serial_Control_Dev is (10)
     with Static;

   function Serial0 return Serial_Control_Dev is (100)
     with Static;

   function Serial1 return Serial_Control_Dev is (101)
     with Static;

   function Serial2 return Serial_Control_Dev is (102)
     with Static;

   function Serial3 return Serial_Control_Dev is (103)
     with Static;

   function Serial4 return Serial_Control_Dev is (104)
     with Static;

   function Serial5 return Serial_Control_Dev is (105)
     with Static;

   function Serial6 return Serial_Control_Dev is (106)
     with Static;

   function Serial7 return Serial_Control_Dev is (107)
     with Static;

   function Serial8 return Serial_Control_Dev is (108)
     with Static;

   function Serial9 return Serial_Control_Dev is (109)
     with Static;

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

   function Laser return Mav_Distance_Sensor is (0)
     with Static;

   function Ultrasound return Mav_Distance_Sensor is (1)
     with Static;

   function Infrared return Mav_Distance_Sensor is (2)
     with Static;

   function Radar return Mav_Distance_Sensor is (3)
     with Static;

   function Unknown return Mav_Distance_Sensor is (4)
     with Static;

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

   function None return Mav_Sensor_Orientation is (0)
     with Static;

   function Yaw_45 return Mav_Sensor_Orientation is (1)
     with Static;

   function Yaw_90 return Mav_Sensor_Orientation is (2)
     with Static;

   function Yaw_135 return Mav_Sensor_Orientation is (3)
     with Static;

   function Yaw_180 return Mav_Sensor_Orientation is (4)
     with Static;

   function Yaw_225 return Mav_Sensor_Orientation is (5)
     with Static;

   function Yaw_270 return Mav_Sensor_Orientation is (6)
     with Static;

   function Yaw_315 return Mav_Sensor_Orientation is (7)
     with Static;

   function Roll_180 return Mav_Sensor_Orientation is (8)
     with Static;

   function Roll_180_Yaw_45 return Mav_Sensor_Orientation is (9)
     with Static;

   function Roll_180_Yaw_90 return Mav_Sensor_Orientation is (10)
     with Static;

   function Roll_180_Yaw_135 return Mav_Sensor_Orientation is (11)
     with Static;

   function Pitch_180 return Mav_Sensor_Orientation is (12)
     with Static;

   function Roll_180_Yaw_225 return Mav_Sensor_Orientation is (13)
     with Static;

   function Roll_180_Yaw_270 return Mav_Sensor_Orientation is (14)
     with Static;

   function Roll_180_Yaw_315 return Mav_Sensor_Orientation is (15)
     with Static;

   function Roll_90 return Mav_Sensor_Orientation is (16)
     with Static;

   function Roll_90_Yaw_45 return Mav_Sensor_Orientation is (17)
     with Static;

   function Roll_90_Yaw_90 return Mav_Sensor_Orientation is (18)
     with Static;

   function Roll_90_Yaw_135 return Mav_Sensor_Orientation is (19)
     with Static;

   function Roll_270 return Mav_Sensor_Orientation is (20)
     with Static;

   function Roll_270_Yaw_45 return Mav_Sensor_Orientation is (21)
     with Static;

   function Roll_270_Yaw_90 return Mav_Sensor_Orientation is (22)
     with Static;

   function Roll_270_Yaw_135 return Mav_Sensor_Orientation is (23)
     with Static;

   function Pitch_90 return Mav_Sensor_Orientation is (24)
     with Static;

   function Pitch_270 return Mav_Sensor_Orientation is (25)
     with Static;

   function Pitch_180_Yaw_90 return Mav_Sensor_Orientation is (26)
     with Static;

   function Pitch_180_Yaw_270 return Mav_Sensor_Orientation is (27)
     with Static;

   function Roll_90_Pitch_90 return Mav_Sensor_Orientation is (28)
     with Static;

   function Roll_180_Pitch_90 return Mav_Sensor_Orientation is (29)
     with Static;

   function Roll_270_Pitch_90 return Mav_Sensor_Orientation is (30)
     with Static;

   function Roll_90_Pitch_180 return Mav_Sensor_Orientation is (31)
     with Static;

   function Roll_270_Pitch_180 return Mav_Sensor_Orientation is (32)
     with Static;

   function Roll_90_Pitch_270 return Mav_Sensor_Orientation is (33)
     with Static;

   function Roll_180_Pitch_270 return Mav_Sensor_Orientation is (34)
     with Static;

   function Roll_270_Pitch_270 return Mav_Sensor_Orientation is (35)
     with Static;

   function Roll_90_Pitch_180_Yaw_90 return Mav_Sensor_Orientation is (36)
     with Static;

   function Roll_90_Yaw_270 return Mav_Sensor_Orientation is (37)
     with Static;

   function Roll_90_Pitch_68_Yaw_293 return Mav_Sensor_Orientation is (38)
     with Static;

   function Pitch_315 return Mav_Sensor_Orientation is (39)
     with Static;

   function Roll_90_Pitch_315 return Mav_Sensor_Orientation is (40)
     with Static;

   function Custom return Mav_Sensor_Orientation is (100)
     with Static;

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

   type Mav_Protocol_Capability is record
      Mission_Float                       : Boolean := False;
      Param_Float                         : Boolean := False;
      Mission_Int                         : Boolean := False;
      Command_Int                         : Boolean := False;
      Param_Encode_Bytewise               : Boolean := False;
      Ftp                                 : Boolean := False;
      Set_Attitude_Target                 : Boolean := False;
      Set_Position_Target_Local_Ned       : Boolean := False;
      Set_Position_Target_Global_Int      : Boolean := False;
      Terrain                             : Boolean := False;
      Reserved3                           : Boolean := False;
      Flight_Termination                  : Boolean := False;
      Compass_Calibration                 : Boolean := False;
      Mavlink2                            : Boolean := False;
      Mission_Fence                       : Boolean := False;
      Mission_Rally                       : Boolean := False;
      Reserved2                           : Boolean := False;
      Param_Encode_C_Cast                 : Boolean := False;
      Component_Implements_Gimbal_Manager : Boolean := False;
      Component_Accepts_Gcs_Control       : Boolean := False;
      Reserved_20                         : Boolean := False;
      Reserved_21                         : Boolean := False;
      Reserved_22                         : Boolean := False;
      Reserved_23                         : Boolean := False;
      Reserved_24                         : Boolean := False;
      Reserved_25                         : Boolean := False;
      Reserved_26                         : Boolean := False;
      Reserved_27                         : Boolean := False;
      Reserved_28                         : Boolean := False;
      Reserved_29                         : Boolean := False;
      Reserved_30                         : Boolean := False;
      Reserved_31                         : Boolean := False;
      Reserved_32                         : Boolean := False;
      Reserved_33                         : Boolean := False;
      Reserved_34                         : Boolean := False;
      Reserved_35                         : Boolean := False;
      Reserved_36                         : Boolean := False;
      Reserved_37                         : Boolean := False;
      Reserved_38                         : Boolean := False;
      Reserved_39                         : Boolean := False;
      Reserved_40                         : Boolean := False;
      Reserved_41                         : Boolean := False;
      Reserved_42                         : Boolean := False;
      Reserved_43                         : Boolean := False;
      Reserved_44                         : Boolean := False;
      Reserved_45                         : Boolean := False;
      Reserved_46                         : Boolean := False;
      Reserved_47                         : Boolean := False;
      Reserved_48                         : Boolean := False;
      Reserved_49                         : Boolean := False;
      Reserved_50                         : Boolean := False;
      Reserved_51                         : Boolean := False;
      Reserved_52                         : Boolean := False;
      Reserved_53                         : Boolean := False;
      Reserved_54                         : Boolean := False;
      Reserved_55                         : Boolean := False;
      Reserved_56                         : Boolean := False;
      Reserved_57                         : Boolean := False;
      Reserved_58                         : Boolean := False;
      Reserved_59                         : Boolean := False;
      Reserved_60                         : Boolean := False;
      Reserved_61                         : Boolean := False;
      Reserved_62                         : Boolean := False;
      Reserved_63                         : Boolean := False;
   end record with Size => 64;
   for Mav_Protocol_Capability use record
      Mission_Float                       at 0 range 0 .. 0;
      Param_Float                         at 0 range 1 .. 1;
      Mission_Int                         at 0 range 2 .. 2;
      Command_Int                         at 0 range 3 .. 3;
      Param_Encode_Bytewise               at 0 range 4 .. 4;
      Ftp                                 at 0 range 5 .. 5;
      Set_Attitude_Target                 at 0 range 6 .. 6;
      Set_Position_Target_Local_Ned       at 0 range 7 .. 7;
      Set_Position_Target_Global_Int      at 0 range 8 .. 8;
      Terrain                             at 0 range 9 .. 9;
      Reserved3                           at 0 range 10 .. 10;
      Flight_Termination                  at 0 range 11 .. 11;
      Compass_Calibration                 at 0 range 12 .. 12;
      Mavlink2                            at 0 range 13 .. 13;
      Mission_Fence                       at 0 range 14 .. 14;
      Mission_Rally                       at 0 range 15 .. 15;
      Reserved2                           at 0 range 16 .. 16;
      Param_Encode_C_Cast                 at 0 range 17 .. 17;
      Component_Implements_Gimbal_Manager at 0 range 18 .. 18;
      Component_Accepts_Gcs_Control       at 0 range 19 .. 19;
      Reserved_20                         at 0 range 20 .. 20;
      Reserved_21                         at 0 range 21 .. 21;
      Reserved_22                         at 0 range 22 .. 22;
      Reserved_23                         at 0 range 23 .. 23;
      Reserved_24                         at 0 range 24 .. 24;
      Reserved_25                         at 0 range 25 .. 25;
      Reserved_26                         at 0 range 26 .. 26;
      Reserved_27                         at 0 range 27 .. 27;
      Reserved_28                         at 0 range 28 .. 28;
      Reserved_29                         at 0 range 29 .. 29;
      Reserved_30                         at 0 range 30 .. 30;
      Reserved_31                         at 0 range 31 .. 31;
      Reserved_32                         at 0 range 32 .. 32;
      Reserved_33                         at 0 range 33 .. 33;
      Reserved_34                         at 0 range 34 .. 34;
      Reserved_35                         at 0 range 35 .. 35;
      Reserved_36                         at 0 range 36 .. 36;
      Reserved_37                         at 0 range 37 .. 37;
      Reserved_38                         at 0 range 38 .. 38;
      Reserved_39                         at 0 range 39 .. 39;
      Reserved_40                         at 0 range 40 .. 40;
      Reserved_41                         at 0 range 41 .. 41;
      Reserved_42                         at 0 range 42 .. 42;
      Reserved_43                         at 0 range 43 .. 43;
      Reserved_44                         at 0 range 44 .. 44;
      Reserved_45                         at 0 range 45 .. 45;
      Reserved_46                         at 0 range 46 .. 46;
      Reserved_47                         at 0 range 47 .. 47;
      Reserved_48                         at 0 range 48 .. 48;
      Reserved_49                         at 0 range 49 .. 49;
      Reserved_50                         at 0 range 50 .. 50;
      Reserved_51                         at 0 range 51 .. 51;
      Reserved_52                         at 0 range 52 .. 52;
      Reserved_53                         at 0 range 53 .. 53;
      Reserved_54                         at 0 range 54 .. 54;
      Reserved_55                         at 0 range 55 .. 55;
      Reserved_56                         at 0 range 56 .. 56;
      Reserved_57                         at 0 range 57 .. 57;
      Reserved_58                         at 0 range 58 .. 58;
      Reserved_59                         at 0 range 59 .. 59;
      Reserved_60                         at 0 range 60 .. 60;
      Reserved_61                         at 0 range 61 .. 61;
      Reserved_62                         at 0 range 62 .. 62;
      Reserved_63                         at 0 range 63 .. 63;
   end record;

   function Image (V : Mav_Protocol_Capability) return String is
     ("["
      & (if V.Mission_Float then "MISSION_FLOAT " else "")
      & (if V.Param_Float then "PARAM_FLOAT " else "")
      & (if V.Mission_Int then "MISSION_INT " else "")
      & (if V.Command_Int then "COMMAND_INT " else "")
      & (if V.Param_Encode_Bytewise then "PARAM_ENCODE_BYTEWISE " else "")
      & (if V.Ftp then "FTP " else "")
      & (if V.Set_Attitude_Target then "SET_ATTITUDE_TARGET " else "")
      & (if V.Set_Position_Target_Local_Ned then "SET_POSITION_TARGET_LOCAL_NED " else "")
      & (if V.Set_Position_Target_Global_Int then "SET_POSITION_TARGET_GLOBAL_INT " else "")
      & (if V.Terrain then "TERRAIN " else "")
      & (if V.Reserved3 then "RESERVED3 " else "")
      & (if V.Flight_Termination then "FLIGHT_TERMINATION " else "")
      & (if V.Compass_Calibration then "COMPASS_CALIBRATION " else "")
      & (if V.Mavlink2 then "MAVLINK2 " else "")
      & (if V.Mission_Fence then "MISSION_FENCE " else "")
      & (if V.Mission_Rally then "MISSION_RALLY " else "")
      & (if V.Reserved2 then "RESERVED2 " else "")
      & (if V.Param_Encode_C_Cast then "PARAM_ENCODE_C_CAST " else "")
      & (if V.Component_Implements_Gimbal_Manager then "COMPONENT_IMPLEMENTS_GIMBAL_MANAGER " else "")
      & (if V.Component_Accepts_Gcs_Control then "COMPONENT_ACCEPTS_GCS_CONTROL " else "")
      & "]");

   type Mav_Estimator_Type is new Interfaces.Unsigned_8;

   function Unknown return Mav_Estimator_Type is (0)
     with Static;

   function Naive return Mav_Estimator_Type is (1)
     with Static;

   function Vision return Mav_Estimator_Type is (2)
     with Static;

   function Vio return Mav_Estimator_Type is (3)
     with Static;

   function Gps return Mav_Estimator_Type is (4)
     with Static;

   function Gps_Ins return Mav_Estimator_Type is (5)
     with Static;

   function Mocap return Mav_Estimator_Type is (6)
     with Static;

   function Lidar return Mav_Estimator_Type is (7)
     with Static;

   function Autopilot return Mav_Estimator_Type is (8)
     with Static;

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

   function Unknown return Mav_Battery_Type is (0)
     with Static;

   function Lipo return Mav_Battery_Type is (1)
     with Static;

   function Life return Mav_Battery_Type is (2)
     with Static;

   function Lion return Mav_Battery_Type is (3)
     with Static;

   function Nimh return Mav_Battery_Type is (4)
     with Static;

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

   function Unknown return Mav_Battery_Function is (0)
     with Static;

   function All_Entry return Mav_Battery_Function is (1)
     with Static;

   function Propulsion return Mav_Battery_Function is (2)
     with Static;

   function Avionics return Mav_Battery_Function is (3)
     with Static;

   function Payload return Mav_Battery_Function is (4)
     with Static;

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

   function Undefined return Mav_Vtol_State is (0)
     with Static;

   function Transition_To_Fw return Mav_Vtol_State is (1)
     with Static;

   function Transition_To_Mc return Mav_Vtol_State is (2)
     with Static;

   function Mc return Mav_Vtol_State is (3)
     with Static;

   function Fw return Mav_Vtol_State is (4)
     with Static;

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

   function Undefined return Mav_Landed_State is (0)
     with Static;

   function On_Ground return Mav_Landed_State is (1)
     with Static;

   function In_Air return Mav_Landed_State is (2)
     with Static;

   function Takeoff return Mav_Landed_State is (3)
     with Static;

   function Landing return Mav_Landed_State is (4)
     with Static;

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

   function Pressure_Qnh return Adsb_Altitude_Type is (0)
     with Static;

   function Geometric return Adsb_Altitude_Type is (1)
     with Static;

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

   function None return Mav_Collision_Action is (0)
     with Static;

   function Report return Mav_Collision_Action is (1)
     with Static;

   function Ascend_Or_Descend return Mav_Collision_Action is (2)
     with Static;

   function Move_Horizontally return Mav_Collision_Action is (3)
     with Static;

   function Move_Perpendicular return Mav_Collision_Action is (4)
     with Static;

   function Rtl return Mav_Collision_Action is (5)
     with Static;

   function Hover return Mav_Collision_Action is (6)
     with Static;

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

   function None return Mav_Collision_Threat_Level is (0)
     with Static;

   function Low return Mav_Collision_Threat_Level is (1)
     with Static;

   function High return Mav_Collision_Threat_Level is (2)
     with Static;

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

   function Adsb return Mav_Collision_Src is (0)
     with Static;

   function Mavlink_Gps_Global_Int return Mav_Collision_Src is (1)
     with Static;

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

   function No_Gps return Gps_Fix_Type is (0)
     with Static;

   function No_Fix return Gps_Fix_Type is (1)
     with Static;

   function A_2D_Fix return Gps_Fix_Type is (2)
     with Static;

   function A_3D_Fix return Gps_Fix_Type is (3)
     with Static;

   function Dgps return Gps_Fix_Type is (4)
     with Static;

   function Rtk_Float return Gps_Fix_Type is (5)
     with Static;

   function Rtk_Fixed return Gps_Fix_Type is (6)
     with Static;

   function Static return Gps_Fix_Type is (7)
     with Static;

   function Ppp return Gps_Fix_Type is (8)
     with Static;

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

   function Ecef return Rtk_Baseline_Coordinate_System is (0)
     with Static;

   function Ned return Rtk_Baseline_Coordinate_System is (1)
     with Static;

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

   type Mav_Autopilot is new Interfaces.Unsigned_8;

   function Generic_Entry return Mav_Autopilot is (0)
     with Static;

   function Reserved return Mav_Autopilot is (1)
     with Static;

   function Slugs return Mav_Autopilot is (2)
     with Static;

   function Ardupilotmega return Mav_Autopilot is (3)
     with Static;

   function Openpilot return Mav_Autopilot is (4)
     with Static;

   function Generic_Waypoints_Only return Mav_Autopilot is (5)
     with Static;

   function Generic_Waypoints_And_Simple_Navigation_Only return Mav_Autopilot is (6)
     with Static;

   function Generic_Mission_Full return Mav_Autopilot is (7)
     with Static;

   function Invalid return Mav_Autopilot is (8)
     with Static;

   function Ppz return Mav_Autopilot is (9)
     with Static;

   function Udb return Mav_Autopilot is (10)
     with Static;

   function Fp return Mav_Autopilot is (11)
     with Static;

   function Px4 return Mav_Autopilot is (12)
     with Static;

   function Smaccmpilot return Mav_Autopilot is (13)
     with Static;

   function Autoquad return Mav_Autopilot is (14)
     with Static;

   function Armazila return Mav_Autopilot is (15)
     with Static;

   function Aerob return Mav_Autopilot is (16)
     with Static;

   function Asluav return Mav_Autopilot is (17)
     with Static;

   function Smartap return Mav_Autopilot is (18)
     with Static;

   function Airrails return Mav_Autopilot is (19)
     with Static;

   function Reflex return Mav_Autopilot is (20)
     with Static;

   subtype Mav_Autopilot_Well_Known is Mav_Autopilot
     with Static_Predicate => Mav_Autopilot_Well_Known in
       Generic_Entry .. Reflex;

   function Well_Known_Image
     (Value : Mav_Autopilot_Well_Known) return String is
       (case Value is
        when Generic_Entry => "Generic_Entry",
        when Reserved => "Reserved",
        when Slugs => "Slugs",
        when Ardupilotmega => "Ardupilotmega",
        when Openpilot => "Openpilot",
        when Generic_Waypoints_Only => "Generic_Waypoints_Only",
        when Generic_Waypoints_And_Simple_Navigation_Only => "Generic_Waypoints_And_Simple_Navigation_Only",
        when Generic_Mission_Full => "Generic_Mission_Full",
        when Invalid => "Invalid",
        when Ppz => "Ppz",
        when Udb => "Udb",
        when Fp => "Fp",
        when Px4 => "Px4",
        when Smaccmpilot => "Smaccmpilot",
        when Autoquad => "Autoquad",
        when Armazila => "Armazila",
        when Aerob => "Aerob",
        when Asluav => "Asluav",
        when Smartap => "Smartap",
        when Airrails => "Airrails",
        when Reflex => "Reflex");

   function Image (Value : Mav_Autopilot) return String is
     (if Value in Mav_Autopilot_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Type is new Interfaces.Unsigned_8;

   function Generic_Entry return Mav_Type is (0)
     with Static;

   function Fixed_Wing return Mav_Type is (1)
     with Static;

   function Quadrotor return Mav_Type is (2)
     with Static;

   function Coaxial return Mav_Type is (3)
     with Static;

   function Helicopter return Mav_Type is (4)
     with Static;

   function Antenna_Tracker return Mav_Type is (5)
     with Static;

   function Gcs return Mav_Type is (6)
     with Static;

   function Airship return Mav_Type is (7)
     with Static;

   function Free_Balloon return Mav_Type is (8)
     with Static;

   function Rocket return Mav_Type is (9)
     with Static;

   function Ground_Rover return Mav_Type is (10)
     with Static;

   function Surface_Boat return Mav_Type is (11)
     with Static;

   function Submarine return Mav_Type is (12)
     with Static;

   function Hexarotor return Mav_Type is (13)
     with Static;

   function Octorotor return Mav_Type is (14)
     with Static;

   function Tricopter return Mav_Type is (15)
     with Static;

   function Flapping_Wing return Mav_Type is (16)
     with Static;

   function Kite return Mav_Type is (17)
     with Static;

   function Onboard_Controller return Mav_Type is (18)
     with Static;

   function Vtol_Tailsitter_Duorotor return Mav_Type is (19)
     with Static;

   function Vtol_Tailsitter_Quadrotor return Mav_Type is (20)
     with Static;

   function Vtol_Tiltrotor return Mav_Type is (21)
     with Static;

   function Vtol_Fixedrotor return Mav_Type is (22)
     with Static;

   function Vtol_Tailsitter return Mav_Type is (23)
     with Static;

   function Vtol_Tiltwing return Mav_Type is (24)
     with Static;

   function Vtol_Reserved5 return Mav_Type is (25)
     with Static;

   function Gimbal return Mav_Type is (26)
     with Static;

   function Adsb return Mav_Type is (27)
     with Static;

   function Parafoil return Mav_Type is (28)
     with Static;

   function Dodecarotor return Mav_Type is (29)
     with Static;

   function Camera return Mav_Type is (30)
     with Static;

   function Charging_Station return Mav_Type is (31)
     with Static;

   function Flarm return Mav_Type is (32)
     with Static;

   function Servo return Mav_Type is (33)
     with Static;

   function Odid return Mav_Type is (34)
     with Static;

   function Decarotor return Mav_Type is (35)
     with Static;

   function Battery return Mav_Type is (36)
     with Static;

   function Parachute return Mav_Type is (37)
     with Static;

   function Log return Mav_Type is (38)
     with Static;

   function Osd return Mav_Type is (39)
     with Static;

   function Imu return Mav_Type is (40)
     with Static;

   function Gps return Mav_Type is (41)
     with Static;

   function Winch return Mav_Type is (42)
     with Static;

   function Generic_Multirotor return Mav_Type is (43)
     with Static;

   function Illuminator return Mav_Type is (44)
     with Static;

   function Spacecraft_Orbiter return Mav_Type is (45)
     with Static;

   subtype Mav_Type_Well_Known is Mav_Type
     with Static_Predicate => Mav_Type_Well_Known in
       Generic_Entry .. Spacecraft_Orbiter;

   function Well_Known_Image
     (Value : Mav_Type_Well_Known) return String is
       (case Value is
        when Generic_Entry => "Generic_Entry",
        when Fixed_Wing => "Fixed_Wing",
        when Quadrotor => "Quadrotor",
        when Coaxial => "Coaxial",
        when Helicopter => "Helicopter",
        when Antenna_Tracker => "Antenna_Tracker",
        when Gcs => "Gcs",
        when Airship => "Airship",
        when Free_Balloon => "Free_Balloon",
        when Rocket => "Rocket",
        when Ground_Rover => "Ground_Rover",
        when Surface_Boat => "Surface_Boat",
        when Submarine => "Submarine",
        when Hexarotor => "Hexarotor",
        when Octorotor => "Octorotor",
        when Tricopter => "Tricopter",
        when Flapping_Wing => "Flapping_Wing",
        when Kite => "Kite",
        when Onboard_Controller => "Onboard_Controller",
        when Vtol_Tailsitter_Duorotor => "Vtol_Tailsitter_Duorotor",
        when Vtol_Tailsitter_Quadrotor => "Vtol_Tailsitter_Quadrotor",
        when Vtol_Tiltrotor => "Vtol_Tiltrotor",
        when Vtol_Fixedrotor => "Vtol_Fixedrotor",
        when Vtol_Tailsitter => "Vtol_Tailsitter",
        when Vtol_Tiltwing => "Vtol_Tiltwing",
        when Vtol_Reserved5 => "Vtol_Reserved5",
        when Gimbal => "Gimbal",
        when Adsb => "Adsb",
        when Parafoil => "Parafoil",
        when Dodecarotor => "Dodecarotor",
        when Camera => "Camera",
        when Charging_Station => "Charging_Station",
        when Flarm => "Flarm",
        when Servo => "Servo",
        when Odid => "Odid",
        when Decarotor => "Decarotor",
        when Battery => "Battery",
        when Parachute => "Parachute",
        when Log => "Log",
        when Osd => "Osd",
        when Imu => "Imu",
        when Gps => "Gps",
        when Winch => "Winch",
        when Generic_Multirotor => "Generic_Multirotor",
        when Illuminator => "Illuminator",
        when Spacecraft_Orbiter => "Spacecraft_Orbiter");

   function Image (Value : Mav_Type) return String is
     (if Value in Mav_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Mode_Flag is record
      Custom_Mode_Enabled  : Boolean := False;
      Test_Enabled         : Boolean := False;
      Auto_Enabled         : Boolean := False;
      Guided_Enabled       : Boolean := False;
      Stabilize_Enabled    : Boolean := False;
      Hil_Enabled          : Boolean := False;
      Manual_Input_Enabled : Boolean := False;
      Safety_Armed         : Boolean := False;
   end record with Size => 8;
   for Mav_Mode_Flag use record
      Custom_Mode_Enabled  at 0 range 0 .. 0;
      Test_Enabled         at 0 range 1 .. 1;
      Auto_Enabled         at 0 range 2 .. 2;
      Guided_Enabled       at 0 range 3 .. 3;
      Stabilize_Enabled    at 0 range 4 .. 4;
      Hil_Enabled          at 0 range 5 .. 5;
      Manual_Input_Enabled at 0 range 6 .. 6;
      Safety_Armed         at 0 range 7 .. 7;
   end record;

   function Image (V : Mav_Mode_Flag) return String is
     ("["
      & (if V.Custom_Mode_Enabled then "CUSTOM_MODE_ENABLED " else "")
      & (if V.Test_Enabled then "TEST_ENABLED " else "")
      & (if V.Auto_Enabled then "AUTO_ENABLED " else "")
      & (if V.Guided_Enabled then "GUIDED_ENABLED " else "")
      & (if V.Stabilize_Enabled then "STABILIZE_ENABLED " else "")
      & (if V.Hil_Enabled then "HIL_ENABLED " else "")
      & (if V.Manual_Input_Enabled then "MANUAL_INPUT_ENABLED " else "")
      & (if V.Safety_Armed then "SAFETY_ARMED " else "")
      & "]");

   type Mav_State is new Interfaces.Unsigned_8;

   function Uninit return Mav_State is (0)
     with Static;

   function Boot return Mav_State is (1)
     with Static;

   function Calibrating return Mav_State is (2)
     with Static;

   function Standby return Mav_State is (3)
     with Static;

   function Active return Mav_State is (4)
     with Static;

   function Critical return Mav_State is (5)
     with Static;

   function Emergency return Mav_State is (6)
     with Static;

   function Poweroff return Mav_State is (7)
     with Static;

   function Flight_Termination return Mav_State is (8)
     with Static;

   subtype Mav_State_Well_Known is Mav_State
     with Static_Predicate => Mav_State_Well_Known in
       Uninit .. Flight_Termination;

   function Well_Known_Image
     (Value : Mav_State_Well_Known) return String is
       (case Value is
        when Uninit => "Uninit",
        when Boot => "Boot",
        when Calibrating => "Calibrating",
        when Standby => "Standby",
        when Active => "Active",
        when Critical => "Critical",
        when Emergency => "Emergency",
        when Poweroff => "Poweroff",
        when Flight_Termination => "Flight_Termination");

   function Image (Value : Mav_State) return String is
     (if Value in Mav_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

end MAVLink.Types;