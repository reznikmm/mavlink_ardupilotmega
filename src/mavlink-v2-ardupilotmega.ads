-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega is

   pragma Pure;

   Heartbeat_Id                               : constant Msg_Id := 0;
   Sys_Status_Id                              : constant Msg_Id := 1;
   System_Time_Id                             : constant Msg_Id := 2;
   Ping_Id                                    : constant Msg_Id := 4;
   Change_Operator_Control_Id                 : constant Msg_Id := 5;
   Change_Operator_Control_Ack_Id             : constant Msg_Id := 6;
   Auth_Key_Id                                : constant Msg_Id := 7;
   Link_Node_Status_Id                        : constant Msg_Id := 8;
   Set_Mode_Id                                : constant Msg_Id := 11;
   Param_Request_Read_Id                      : constant Msg_Id := 20;
   Param_Request_List_Id                      : constant Msg_Id := 21;
   Param_Value_Id                             : constant Msg_Id := 22;
   Param_Set_Id                               : constant Msg_Id := 23;
   Gps_Raw_Int_Id                             : constant Msg_Id := 24;
   Gps_Status_Id                              : constant Msg_Id := 25;
   Scaled_Imu_Id                              : constant Msg_Id := 26;
   Raw_Imu_Id                                 : constant Msg_Id := 27;
   Raw_Pressure_Id                            : constant Msg_Id := 28;
   Scaled_Pressure_Id                         : constant Msg_Id := 29;
   Attitude_Id                                : constant Msg_Id := 30;
   Attitude_Quaternion_Id                     : constant Msg_Id := 31;
   Local_Position_Ned_Id                      : constant Msg_Id := 32;
   Global_Position_Int_Id                     : constant Msg_Id := 33;
   Rc_Channels_Scaled_Id                      : constant Msg_Id := 34;
   Rc_Channels_Raw_Id                         : constant Msg_Id := 35;
   Servo_Output_Raw_Id                        : constant Msg_Id := 36;
   Mission_Request_Partial_List_Id            : constant Msg_Id := 37;
   Mission_Write_Partial_List_Id              : constant Msg_Id := 38;
   Mission_Item_Id                            : constant Msg_Id := 39;
   Mission_Request_Id                         : constant Msg_Id := 40;
   Mission_Set_Current_Id                     : constant Msg_Id := 41;
   Mission_Current_Id                         : constant Msg_Id := 42;
   Mission_Request_List_Id                    : constant Msg_Id := 43;
   Mission_Count_Id                           : constant Msg_Id := 44;
   Mission_Clear_All_Id                       : constant Msg_Id := 45;
   Mission_Item_Reached_Id                    : constant Msg_Id := 46;
   Mission_Ack_Id                             : constant Msg_Id := 47;
   Set_Gps_Global_Origin_Id                   : constant Msg_Id := 48;
   Gps_Global_Origin_Id                       : constant Msg_Id := 49;
   Param_Map_Rc_Id                            : constant Msg_Id := 50;
   Mission_Request_Int_Id                     : constant Msg_Id := 51;
   Safety_Set_Allowed_Area_Id                 : constant Msg_Id := 54;
   Safety_Allowed_Area_Id                     : constant Msg_Id := 55;
   Attitude_Quaternion_Cov_Id                 : constant Msg_Id := 61;
   Nav_Controller_Output_Id                   : constant Msg_Id := 62;
   Global_Position_Int_Cov_Id                 : constant Msg_Id := 63;
   Local_Position_Ned_Cov_Id                  : constant Msg_Id := 64;
   Rc_Channels_Id                             : constant Msg_Id := 65;
   Request_Data_Stream_Id                     : constant Msg_Id := 66;
   Data_Stream_Id                             : constant Msg_Id := 67;
   Manual_Control_Id                          : constant Msg_Id := 69;
   Rc_Channels_Override_Id                    : constant Msg_Id := 70;
   Mission_Item_Int_Id                        : constant Msg_Id := 73;
   Vfr_Hud_Id                                 : constant Msg_Id := 74;
   Command_Int_Id                             : constant Msg_Id := 75;
   Command_Long_Id                            : constant Msg_Id := 76;
   Command_Ack_Id                             : constant Msg_Id := 77;
   Command_Cancel_Id                          : constant Msg_Id := 80;
   Manual_Setpoint_Id                         : constant Msg_Id := 81;
   Set_Attitude_Target_Id                     : constant Msg_Id := 82;
   Attitude_Target_Id                         : constant Msg_Id := 83;
   Set_Position_Target_Local_Ned_Id           : constant Msg_Id := 84;
   Position_Target_Local_Ned_Id               : constant Msg_Id := 85;
   Set_Position_Target_Global_Int_Id          : constant Msg_Id := 86;
   Position_Target_Global_Int_Id              : constant Msg_Id := 87;
   Local_Position_Ned_System_Global_Offset_Id : constant Msg_Id := 89;
   Hil_State_Id                               : constant Msg_Id := 90;
   Hil_Controls_Id                            : constant Msg_Id := 91;
   Hil_Rc_Inputs_Raw_Id                       : constant Msg_Id := 92;
   Hil_Actuator_Controls_Id                   : constant Msg_Id := 93;
   Optical_Flow_Id                            : constant Msg_Id := 100;
   Global_Vision_Position_Estimate_Id         : constant Msg_Id := 101;
   Vision_Position_Estimate_Id                : constant Msg_Id := 102;
   Vision_Speed_Estimate_Id                   : constant Msg_Id := 103;
   Vicon_Position_Estimate_Id                 : constant Msg_Id := 104;
   Highres_Imu_Id                             : constant Msg_Id := 105;
   Optical_Flow_Rad_Id                        : constant Msg_Id := 106;
   Hil_Sensor_Id                              : constant Msg_Id := 107;
   Sim_State_Id                               : constant Msg_Id := 108;
   Radio_Status_Id                            : constant Msg_Id := 109;
   File_Transfer_Protocol_Id                  : constant Msg_Id := 110;
   Timesync_Id                                : constant Msg_Id := 111;
   Camera_Trigger_Id                          : constant Msg_Id := 112;
   Hil_Gps_Id                                 : constant Msg_Id := 113;
   Hil_Optical_Flow_Id                        : constant Msg_Id := 114;
   Hil_State_Quaternion_Id                    : constant Msg_Id := 115;
   Scaled_Imu2_Id                             : constant Msg_Id := 116;
   Log_Request_List_Id                        : constant Msg_Id := 117;
   Log_Entry_Id                               : constant Msg_Id := 118;
   Log_Request_Data_Id                        : constant Msg_Id := 119;
   Log_Data_Id                                : constant Msg_Id := 120;
   Log_Erase_Id                               : constant Msg_Id := 121;
   Log_Request_End_Id                         : constant Msg_Id := 122;
   Gps_Inject_Data_Id                         : constant Msg_Id := 123;
   Gps2_Raw_Id                                : constant Msg_Id := 124;
   Power_Status_Id                            : constant Msg_Id := 125;
   Serial_Control_Id                          : constant Msg_Id := 126;
   Gps_Rtk_Id                                 : constant Msg_Id := 127;
   Gps2_Rtk_Id                                : constant Msg_Id := 128;
   Scaled_Imu3_Id                             : constant Msg_Id := 129;
   Data_Transmission_Handshake_Id             : constant Msg_Id := 130;
   Encapsulated_Data_Id                       : constant Msg_Id := 131;
   Distance_Sensor_Id                         : constant Msg_Id := 132;
   Terrain_Request_Id                         : constant Msg_Id := 133;
   Terrain_Data_Id                            : constant Msg_Id := 134;
   Terrain_Check_Id                           : constant Msg_Id := 135;
   Terrain_Report_Id                          : constant Msg_Id := 136;
   Scaled_Pressure2_Id                        : constant Msg_Id := 137;
   Att_Pos_Mocap_Id                           : constant Msg_Id := 138;
   Set_Actuator_Control_Target_Id             : constant Msg_Id := 139;
   Actuator_Control_Target_Id                 : constant Msg_Id := 140;
   Altitude_Id                                : constant Msg_Id := 141;
   Resource_Request_Id                        : constant Msg_Id := 142;
   Scaled_Pressure3_Id                        : constant Msg_Id := 143;
   Follow_Target_Id                           : constant Msg_Id := 144;
   Control_System_State_Id                    : constant Msg_Id := 146;
   Battery_Status_Id                          : constant Msg_Id := 147;
   Autopilot_Version_Id                       : constant Msg_Id := 148;
   Landing_Target_Id                          : constant Msg_Id := 149;
   Sensor_Offsets_Id                          : constant Msg_Id := 150;
   Set_Mag_Offsets_Id                         : constant Msg_Id := 151;
   Meminfo_Id                                 : constant Msg_Id := 152;
   Ap_Adc_Id                                  : constant Msg_Id := 153;
   Digicam_Configure_Id                       : constant Msg_Id := 154;
   Digicam_Control_Id                         : constant Msg_Id := 155;
   Mount_Configure_Id                         : constant Msg_Id := 156;
   Mount_Control_Id                           : constant Msg_Id := 157;
   Mount_Status_Id                            : constant Msg_Id := 158;
   Fence_Point_Id                             : constant Msg_Id := 160;
   Fence_Fetch_Point_Id                       : constant Msg_Id := 161;
   Fence_Status_Id                            : constant Msg_Id := 162;
   Ahrs_Id                                    : constant Msg_Id := 163;
   Simstate_Id                                : constant Msg_Id := 164;
   Hwstatus_Id                                : constant Msg_Id := 165;
   Radio_Id                                   : constant Msg_Id := 166;
   Limits_Status_Id                           : constant Msg_Id := 167;
   Wind_Id                                    : constant Msg_Id := 168;
   Data16_Id                                  : constant Msg_Id := 169;
   Data32_Id                                  : constant Msg_Id := 170;
   Data64_Id                                  : constant Msg_Id := 171;
   Data96_Id                                  : constant Msg_Id := 172;
   Rangefinder_Id                             : constant Msg_Id := 173;
   Airspeed_Autocal_Id                        : constant Msg_Id := 174;
   Rally_Point_Id                             : constant Msg_Id := 175;
   Rally_Fetch_Point_Id                       : constant Msg_Id := 176;
   Compassmot_Status_Id                       : constant Msg_Id := 177;
   Ahrs2_Id                                   : constant Msg_Id := 178;
   Camera_Status_Id                           : constant Msg_Id := 179;
   Camera_Feedback_Id                         : constant Msg_Id := 180;
   Battery2_Id                                : constant Msg_Id := 181;
   Ahrs3_Id                                   : constant Msg_Id := 182;
   Autopilot_Version_Request_Id               : constant Msg_Id := 183;
   Remote_Log_Data_Block_Id                   : constant Msg_Id := 184;
   Remote_Log_Block_Status_Id                 : constant Msg_Id := 185;
   Led_Control_Id                             : constant Msg_Id := 186;
   Mag_Cal_Progress_Id                        : constant Msg_Id := 191;
   Mag_Cal_Report_Id                          : constant Msg_Id := 192;
   Ekf_Status_Report_Id                       : constant Msg_Id := 193;
   Pid_Tuning_Id                              : constant Msg_Id := 194;
   Deepstall_Id                               : constant Msg_Id := 195;
   Gimbal_Report_Id                           : constant Msg_Id := 200;
   Gimbal_Control_Id                          : constant Msg_Id := 201;
   Gimbal_Torque_Cmd_Report_Id                : constant Msg_Id := 214;
   Gopro_Heartbeat_Id                         : constant Msg_Id := 215;
   Gopro_Get_Request_Id                       : constant Msg_Id := 216;
   Gopro_Get_Response_Id                      : constant Msg_Id := 217;
   Gopro_Set_Request_Id                       : constant Msg_Id := 218;
   Gopro_Set_Response_Id                      : constant Msg_Id := 219;
   Efi_Status_Id                              : constant Msg_Id := 225;
   Rpm_Id                                     : constant Msg_Id := 226;
   Estimator_Status_Id                        : constant Msg_Id := 230;
   Wind_Cov_Id                                : constant Msg_Id := 231;
   Gps_Input_Id                               : constant Msg_Id := 232;
   Gps_Rtcm_Data_Id                           : constant Msg_Id := 233;
   High_Latency_Id                            : constant Msg_Id := 234;
   High_Latency2_Id                           : constant Msg_Id := 235;
   Vibration_Id                               : constant Msg_Id := 241;
   Home_Position_Id                           : constant Msg_Id := 242;
   Set_Home_Position_Id                       : constant Msg_Id := 243;
   Message_Interval_Id                        : constant Msg_Id := 244;
   Extended_Sys_State_Id                      : constant Msg_Id := 245;
   Adsb_Vehicle_Id                            : constant Msg_Id := 246;
   Collision_Id                               : constant Msg_Id := 247;
   V2_Extension_Id                            : constant Msg_Id := 248;
   Memory_Vect_Id                             : constant Msg_Id := 249;
   Debug_Vect_Id                              : constant Msg_Id := 250;
   Named_Value_Float_Id                       : constant Msg_Id := 251;
   Named_Value_Int_Id                         : constant Msg_Id := 252;
   Statustext_Id                              : constant Msg_Id := 253;
   Debug_Id                                   : constant Msg_Id := 254;
   Setup_Signing_Id                           : constant Msg_Id := 256;
   Button_Change_Id                           : constant Msg_Id := 257;
   Play_Tune_Id                               : constant Msg_Id := 258;
   Camera_Information_Id                      : constant Msg_Id := 259;
   Camera_Settings_Id                         : constant Msg_Id := 260;
   Storage_Information_Id                     : constant Msg_Id := 261;
   Camera_Capture_Status_Id                   : constant Msg_Id := 262;
   Camera_Image_Captured_Id                   : constant Msg_Id := 263;
   Flight_Information_Id                      : constant Msg_Id := 264;
   Mount_Orientation_Id                       : constant Msg_Id := 265;
   Logging_Data_Id                            : constant Msg_Id := 266;
   Logging_Data_Acked_Id                      : constant Msg_Id := 267;
   Logging_Ack_Id                             : constant Msg_Id := 268;
   Video_Stream_Information_Id                : constant Msg_Id := 269;
   Video_Stream_Status_Id                     : constant Msg_Id := 270;
   Camera_Fov_Status_Id                       : constant Msg_Id := 271;
   Camera_Tracking_Image_Status_Id            : constant Msg_Id := 275;
   Camera_Tracking_Geo_Status_Id              : constant Msg_Id := 276;
   Camera_Thermal_Range_Id                    : constant Msg_Id := 277;
   Gimbal_Manager_Information_Id              : constant Msg_Id := 280;
   Gimbal_Manager_Status_Id                   : constant Msg_Id := 281;
   Gimbal_Manager_Set_Attitude_Id             : constant Msg_Id := 282;
   Gimbal_Device_Information_Id               : constant Msg_Id := 283;
   Gimbal_Device_Set_Attitude_Id              : constant Msg_Id := 284;
   Gimbal_Device_Attitude_Status_Id           : constant Msg_Id := 285;
   Autopilot_State_For_Gimbal_Device_Id       : constant Msg_Id := 286;
   Gimbal_Manager_Set_Pitchyaw_Id             : constant Msg_Id := 287;
   Gimbal_Manager_Set_Manual_Control_Id       : constant Msg_Id := 288;
   Esc_Info_Id                                : constant Msg_Id := 290;
   Esc_Status_Id                              : constant Msg_Id := 291;
   Airspeed_Id                                : constant Msg_Id := 295;
   Global_Position_Sensor_Id                  : constant Msg_Id := 296;
   Wifi_Config_Ap_Id                          : constant Msg_Id := 299;
   Protocol_Version_Id                        : constant Msg_Id := 300;
   Ais_Vessel_Id                              : constant Msg_Id := 301;
   Uavcan_Node_Status_Id                      : constant Msg_Id := 310;
   Uavcan_Node_Info_Id                        : constant Msg_Id := 311;
   Param_Ext_Request_Read_Id                  : constant Msg_Id := 320;
   Param_Ext_Request_List_Id                  : constant Msg_Id := 321;
   Param_Ext_Value_Id                         : constant Msg_Id := 322;
   Param_Ext_Set_Id                           : constant Msg_Id := 323;
   Param_Ext_Ack_Id                           : constant Msg_Id := 324;
   Obstacle_Distance_Id                       : constant Msg_Id := 330;
   Odometry_Id                                : constant Msg_Id := 331;
   Trajectory_Representation_Waypoints_Id     : constant Msg_Id := 332;
   Trajectory_Representation_Bezier_Id        : constant Msg_Id := 333;
   Cellular_Status_Id                         : constant Msg_Id := 334;
   Isbd_Link_Status_Id                        : constant Msg_Id := 335;
   Cellular_Config_Id                         : constant Msg_Id := 336;
   Raw_Rpm_Id                                 : constant Msg_Id := 339;
   Utm_Global_Position_Id                     : constant Msg_Id := 340;
   Param_Error_Id                             : constant Msg_Id := 345;
   Debug_Float_Array_Id                       : constant Msg_Id := 350;
   Orbit_Execution_Status_Id                  : constant Msg_Id := 360;
   Figure_Eight_Execution_Status_Id           : constant Msg_Id := 361;
   Smart_Battery_Info_Id                      : constant Msg_Id := 370;
   Fuel_Status_Id                             : constant Msg_Id := 371;
   Battery_Info_Id                            : constant Msg_Id := 372;
   Generator_Status_Id                        : constant Msg_Id := 373;
   Actuator_Output_Status_Id                  : constant Msg_Id := 375;
   Relay_Status_Id                            : constant Msg_Id := 376;
   Time_Estimate_To_Target_Id                 : constant Msg_Id := 380;
   Tunnel_Id                                  : constant Msg_Id := 385;
   Can_Frame_Id                               : constant Msg_Id := 386;
   Canfd_Frame_Id                             : constant Msg_Id := 387;
   Can_Filter_Modify_Id                       : constant Msg_Id := 388;
   Onboard_Computer_Status_Id                 : constant Msg_Id := 390;
   Component_Information_Id                   : constant Msg_Id := 395;
   Component_Information_Basic_Id             : constant Msg_Id := 396;
   Component_Metadata_Id                      : constant Msg_Id := 397;
   Play_Tune_V2_Id                            : constant Msg_Id := 400;
   Supported_Tunes_Id                         : constant Msg_Id := 401;
   Event_Id                                   : constant Msg_Id := 410;
   Current_Event_Sequence_Id                  : constant Msg_Id := 411;
   Request_Event_Id                           : constant Msg_Id := 412;
   Response_Event_Error_Id                    : constant Msg_Id := 413;
   Available_Modes_Id                         : constant Msg_Id := 435;
   Current_Mode_Id                            : constant Msg_Id := 436;
   Available_Modes_Monitor_Id                 : constant Msg_Id := 437;
   Illuminator_Status_Id                      : constant Msg_Id := 440;
   Wheel_Distance_Id                          : constant Msg_Id := 9000;
   Winch_Status_Id                            : constant Msg_Id := 9005;
   Uavionix_Adsb_Out_Cfg_Id                   : constant Msg_Id := 10001;
   Uavionix_Adsb_Out_Dynamic_Id               : constant Msg_Id := 10002;
   Uavionix_Adsb_Transceiver_Health_Report_Id : constant Msg_Id := 10003;
   Uavionix_Adsb_Out_Cfg_Registration_Id      : constant Msg_Id := 10004;
   Uavionix_Adsb_Out_Cfg_Flightid_Id          : constant Msg_Id := 10005;
   Uavionix_Adsb_Get_Id                       : constant Msg_Id := 10006;
   Uavionix_Adsb_Out_Control_Id               : constant Msg_Id := 10007;
   Uavionix_Adsb_Out_Status_Id                : constant Msg_Id := 10008;
   Loweheiser_Gov_Efi_Id                      : constant Msg_Id := 10151;
   Device_Op_Read_Id                          : constant Msg_Id := 11000;
   Device_Op_Read_Reply_Id                    : constant Msg_Id := 11001;
   Device_Op_Write_Id                         : constant Msg_Id := 11002;
   Device_Op_Write_Reply_Id                   : constant Msg_Id := 11003;
   Secure_Command_Id                          : constant Msg_Id := 11004;
   Secure_Command_Reply_Id                    : constant Msg_Id := 11005;
   Adap_Tuning_Id                             : constant Msg_Id := 11010;
   Vision_Position_Delta_Id                   : constant Msg_Id := 11011;
   Aoa_Ssa_Id                                 : constant Msg_Id := 11020;
   Esc_Telemetry_1_To_4_Id                    : constant Msg_Id := 11030;
   Esc_Telemetry_5_To_8_Id                    : constant Msg_Id := 11031;
   Esc_Telemetry_9_To_12_Id                   : constant Msg_Id := 11032;
   Osd_Param_Config_Id                        : constant Msg_Id := 11033;
   Osd_Param_Config_Reply_Id                  : constant Msg_Id := 11034;
   Osd_Param_Show_Config_Id                   : constant Msg_Id := 11035;
   Osd_Param_Show_Config_Reply_Id             : constant Msg_Id := 11036;
   Obstacle_Distance_3D_Id                    : constant Msg_Id := 11037;
   Water_Depth_Id                             : constant Msg_Id := 11038;
   Mcu_Status_Id                              : constant Msg_Id := 11039;
   Esc_Telemetry_13_To_16_Id                  : constant Msg_Id := 11040;
   Esc_Telemetry_17_To_20_Id                  : constant Msg_Id := 11041;
   Esc_Telemetry_21_To_24_Id                  : constant Msg_Id := 11042;
   Esc_Telemetry_25_To_28_Id                  : constant Msg_Id := 11043;
   Esc_Telemetry_29_To_32_Id                  : constant Msg_Id := 11044;
   Named_Value_String_Id                      : constant Msg_Id := 11060;
   Open_Drone_Id_Basic_Id_Id                  : constant Msg_Id := 12900;
   Open_Drone_Id_Location_Id                  : constant Msg_Id := 12901;
   Open_Drone_Id_Authentication_Id            : constant Msg_Id := 12902;
   Open_Drone_Id_Self_Id_Id                   : constant Msg_Id := 12903;
   Open_Drone_Id_System_Id                    : constant Msg_Id := 12904;
   Open_Drone_Id_Operator_Id_Id               : constant Msg_Id := 12905;
   Open_Drone_Id_Message_Pack_Id              : constant Msg_Id := 12915;
   Open_Drone_Id_Arm_Status_Id                : constant Msg_Id := 12918;
   Open_Drone_Id_System_Update_Id             : constant Msg_Id := 12919;
   Hygrometer_Sensor_Id                       : constant Msg_Id := 12920;
   Icarous_Heartbeat_Id                       : constant Msg_Id := 42000;
   Icarous_Kinematic_Bands_Id                 : constant Msg_Id := 42001;
   Cubepilot_Raw_Rc_Id                        : constant Msg_Id := 50001;
   Herelink_Video_Stream_Information_Id       : constant Msg_Id := 50002;
   Herelink_Telem_Id                          : constant Msg_Id := 50003;
   Cubepilot_Firmware_Update_Start_Id         : constant Msg_Id := 50004;
   Cubepilot_Firmware_Update_Resp_Id          : constant Msg_Id := 50005;
   Airlink_Auth_Id                            : constant Msg_Id := 52000;
   Airlink_Auth_Response_Id                   : constant Msg_Id := 52001;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       0     .. 2     |
       4     .. 8     |
       11    .. 11    |
       20    .. 51    |
       54    .. 55    |
       61    .. 67    |
       69    .. 70    |
       73    .. 77    |
       80    .. 87    |
       89    .. 93    |
       100   .. 144   |
       146   .. 158   |
       160   .. 186   |
       191   .. 195   |
       200   .. 201   |
       214   .. 219   |
       225   .. 226   |
       230   .. 235   |
       241   .. 254   |
       256   .. 271   |
       275   .. 277   |
       280   .. 288   |
       290   .. 291   |
       295   .. 296   |
       299   .. 301   |
       310   .. 311   |
       320   .. 324   |
       330   .. 336   |
       339   .. 340   |
       345   .. 345   |
       350   .. 350   |
       360   .. 361   |
       370   .. 373   |
       375   .. 376   |
       380   .. 380   |
       385   .. 388   |
       390   .. 390   |
       395   .. 397   |
       400   .. 401   |
       410   .. 413   |
       435   .. 437   |
       440   .. 440   |
       9000  .. 9000  |
       9005  .. 9005  |
       10001 .. 10008 |
       10151 .. 10151 |
       11000 .. 11005 |
       11010 .. 11011 |
       11020 .. 11020 |
       11030 .. 11044 |
       11060 .. 11060 |
       12900 .. 12905 |
       12915 .. 12915 |
       12918 .. 12920 |
       42000 .. 42001 |
       50001 .. 50005 |
       52000 .. 52001;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 0     => "Heartbeat",
         when 1     => "Sys_Status",
         when 2     => "System_Time",
         when 4     => "Ping",
         when 5     => "Change_Operator_Control",
         when 6     => "Change_Operator_Control_Ack",
         when 7     => "Auth_Key",
         when 8     => "Link_Node_Status",
         when 11    => "Set_Mode",
         when 20    => "Param_Request_Read",
         when 21    => "Param_Request_List",
         when 22    => "Param_Value",
         when 23    => "Param_Set",
         when 24    => "Gps_Raw_Int",
         when 25    => "Gps_Status",
         when 26    => "Scaled_Imu",
         when 27    => "Raw_Imu",
         when 28    => "Raw_Pressure",
         when 29    => "Scaled_Pressure",
         when 30    => "Attitude",
         when 31    => "Attitude_Quaternion",
         when 32    => "Local_Position_Ned",
         when 33    => "Global_Position_Int",
         when 34    => "Rc_Channels_Scaled",
         when 35    => "Rc_Channels_Raw",
         when 36    => "Servo_Output_Raw",
         when 37    => "Mission_Request_Partial_List",
         when 38    => "Mission_Write_Partial_List",
         when 39    => "Mission_Item",
         when 40    => "Mission_Request",
         when 41    => "Mission_Set_Current",
         when 42    => "Mission_Current",
         when 43    => "Mission_Request_List",
         when 44    => "Mission_Count",
         when 45    => "Mission_Clear_All",
         when 46    => "Mission_Item_Reached",
         when 47    => "Mission_Ack",
         when 48    => "Set_Gps_Global_Origin",
         when 49    => "Gps_Global_Origin",
         when 50    => "Param_Map_Rc",
         when 51    => "Mission_Request_Int",
         when 54    => "Safety_Set_Allowed_Area",
         when 55    => "Safety_Allowed_Area",
         when 61    => "Attitude_Quaternion_Cov",
         when 62    => "Nav_Controller_Output",
         when 63    => "Global_Position_Int_Cov",
         when 64    => "Local_Position_Ned_Cov",
         when 65    => "Rc_Channels",
         when 66    => "Request_Data_Stream",
         when 67    => "Data_Stream",
         when 69    => "Manual_Control",
         when 70    => "Rc_Channels_Override",
         when 73    => "Mission_Item_Int",
         when 74    => "Vfr_Hud",
         when 75    => "Command_Int",
         when 76    => "Command_Long",
         when 77    => "Command_Ack",
         when 80    => "Command_Cancel",
         when 81    => "Manual_Setpoint",
         when 82    => "Set_Attitude_Target",
         when 83    => "Attitude_Target",
         when 84    => "Set_Position_Target_Local_Ned",
         when 85    => "Position_Target_Local_Ned",
         when 86    => "Set_Position_Target_Global_Int",
         when 87    => "Position_Target_Global_Int",
         when 89    => "Local_Position_Ned_System_Global_Offset",
         when 90    => "Hil_State",
         when 91    => "Hil_Controls",
         when 92    => "Hil_Rc_Inputs_Raw",
         when 93    => "Hil_Actuator_Controls",
         when 100   => "Optical_Flow",
         when 101   => "Global_Vision_Position_Estimate",
         when 102   => "Vision_Position_Estimate",
         when 103   => "Vision_Speed_Estimate",
         when 104   => "Vicon_Position_Estimate",
         when 105   => "Highres_Imu",
         when 106   => "Optical_Flow_Rad",
         when 107   => "Hil_Sensor",
         when 108   => "Sim_State",
         when 109   => "Radio_Status",
         when 110   => "File_Transfer_Protocol",
         when 111   => "Timesync",
         when 112   => "Camera_Trigger",
         when 113   => "Hil_Gps",
         when 114   => "Hil_Optical_Flow",
         when 115   => "Hil_State_Quaternion",
         when 116   => "Scaled_Imu2",
         when 117   => "Log_Request_List",
         when 118   => "Log_Entry",
         when 119   => "Log_Request_Data",
         when 120   => "Log_Data",
         when 121   => "Log_Erase",
         when 122   => "Log_Request_End",
         when 123   => "Gps_Inject_Data",
         when 124   => "Gps2_Raw",
         when 125   => "Power_Status",
         when 126   => "Serial_Control",
         when 127   => "Gps_Rtk",
         when 128   => "Gps2_Rtk",
         when 129   => "Scaled_Imu3",
         when 130   => "Data_Transmission_Handshake",
         when 131   => "Encapsulated_Data",
         when 132   => "Distance_Sensor",
         when 133   => "Terrain_Request",
         when 134   => "Terrain_Data",
         when 135   => "Terrain_Check",
         when 136   => "Terrain_Report",
         when 137   => "Scaled_Pressure2",
         when 138   => "Att_Pos_Mocap",
         when 139   => "Set_Actuator_Control_Target",
         when 140   => "Actuator_Control_Target",
         when 141   => "Altitude",
         when 142   => "Resource_Request",
         when 143   => "Scaled_Pressure3",
         when 144   => "Follow_Target",
         when 146   => "Control_System_State",
         when 147   => "Battery_Status",
         when 148   => "Autopilot_Version",
         when 149   => "Landing_Target",
         when 150   => "Sensor_Offsets",
         when 151   => "Set_Mag_Offsets",
         when 152   => "Meminfo",
         when 153   => "Ap_Adc",
         when 154   => "Digicam_Configure",
         when 155   => "Digicam_Control",
         when 156   => "Mount_Configure",
         when 157   => "Mount_Control",
         when 158   => "Mount_Status",
         when 160   => "Fence_Point",
         when 161   => "Fence_Fetch_Point",
         when 162   => "Fence_Status",
         when 163   => "Ahrs",
         when 164   => "Simstate",
         when 165   => "Hwstatus",
         when 166   => "Radio",
         when 167   => "Limits_Status",
         when 168   => "Wind",
         when 169   => "Data16",
         when 170   => "Data32",
         when 171   => "Data64",
         when 172   => "Data96",
         when 173   => "Rangefinder",
         when 174   => "Airspeed_Autocal",
         when 175   => "Rally_Point",
         when 176   => "Rally_Fetch_Point",
         when 177   => "Compassmot_Status",
         when 178   => "Ahrs2",
         when 179   => "Camera_Status",
         when 180   => "Camera_Feedback",
         when 181   => "Battery2",
         when 182   => "Ahrs3",
         when 183   => "Autopilot_Version_Request",
         when 184   => "Remote_Log_Data_Block",
         when 185   => "Remote_Log_Block_Status",
         when 186   => "Led_Control",
         when 191   => "Mag_Cal_Progress",
         when 192   => "Mag_Cal_Report",
         when 193   => "Ekf_Status_Report",
         when 194   => "Pid_Tuning",
         when 195   => "Deepstall",
         when 200   => "Gimbal_Report",
         when 201   => "Gimbal_Control",
         when 214   => "Gimbal_Torque_Cmd_Report",
         when 215   => "Gopro_Heartbeat",
         when 216   => "Gopro_Get_Request",
         when 217   => "Gopro_Get_Response",
         when 218   => "Gopro_Set_Request",
         when 219   => "Gopro_Set_Response",
         when 225   => "Efi_Status",
         when 226   => "Rpm",
         when 230   => "Estimator_Status",
         when 231   => "Wind_Cov",
         when 232   => "Gps_Input",
         when 233   => "Gps_Rtcm_Data",
         when 234   => "High_Latency",
         when 235   => "High_Latency2",
         when 241   => "Vibration",
         when 242   => "Home_Position",
         when 243   => "Set_Home_Position",
         when 244   => "Message_Interval",
         when 245   => "Extended_Sys_State",
         when 246   => "Adsb_Vehicle",
         when 247   => "Collision",
         when 248   => "V2_Extension",
         when 249   => "Memory_Vect",
         when 250   => "Debug_Vect",
         when 251   => "Named_Value_Float",
         when 252   => "Named_Value_Int",
         when 253   => "Statustext",
         when 254   => "Debug",
         when 256   => "Setup_Signing",
         when 257   => "Button_Change",
         when 258   => "Play_Tune",
         when 259   => "Camera_Information",
         when 260   => "Camera_Settings",
         when 261   => "Storage_Information",
         when 262   => "Camera_Capture_Status",
         when 263   => "Camera_Image_Captured",
         when 264   => "Flight_Information",
         when 265   => "Mount_Orientation",
         when 266   => "Logging_Data",
         when 267   => "Logging_Data_Acked",
         when 268   => "Logging_Ack",
         when 269   => "Video_Stream_Information",
         when 270   => "Video_Stream_Status",
         when 271   => "Camera_Fov_Status",
         when 275   => "Camera_Tracking_Image_Status",
         when 276   => "Camera_Tracking_Geo_Status",
         when 277   => "Camera_Thermal_Range",
         when 280   => "Gimbal_Manager_Information",
         when 281   => "Gimbal_Manager_Status",
         when 282   => "Gimbal_Manager_Set_Attitude",
         when 283   => "Gimbal_Device_Information",
         when 284   => "Gimbal_Device_Set_Attitude",
         when 285   => "Gimbal_Device_Attitude_Status",
         when 286   => "Autopilot_State_For_Gimbal_Device",
         when 287   => "Gimbal_Manager_Set_Pitchyaw",
         when 288   => "Gimbal_Manager_Set_Manual_Control",
         when 290   => "Esc_Info",
         when 291   => "Esc_Status",
         when 295   => "Airspeed",
         when 296   => "Global_Position_Sensor",
         when 299   => "Wifi_Config_Ap",
         when 300   => "Protocol_Version",
         when 301   => "Ais_Vessel",
         when 310   => "Uavcan_Node_Status",
         when 311   => "Uavcan_Node_Info",
         when 320   => "Param_Ext_Request_Read",
         when 321   => "Param_Ext_Request_List",
         when 322   => "Param_Ext_Value",
         when 323   => "Param_Ext_Set",
         when 324   => "Param_Ext_Ack",
         when 330   => "Obstacle_Distance",
         when 331   => "Odometry",
         when 332   => "Trajectory_Representation_Waypoints",
         when 333   => "Trajectory_Representation_Bezier",
         when 334   => "Cellular_Status",
         when 335   => "Isbd_Link_Status",
         when 336   => "Cellular_Config",
         when 339   => "Raw_Rpm",
         when 340   => "Utm_Global_Position",
         when 345   => "Param_Error",
         when 350   => "Debug_Float_Array",
         when 360   => "Orbit_Execution_Status",
         when 361   => "Figure_Eight_Execution_Status",
         when 370   => "Smart_Battery_Info",
         when 371   => "Fuel_Status",
         when 372   => "Battery_Info",
         when 373   => "Generator_Status",
         when 375   => "Actuator_Output_Status",
         when 376   => "Relay_Status",
         when 380   => "Time_Estimate_To_Target",
         when 385   => "Tunnel",
         when 386   => "Can_Frame",
         when 387   => "Canfd_Frame",
         when 388   => "Can_Filter_Modify",
         when 390   => "Onboard_Computer_Status",
         when 395   => "Component_Information",
         when 396   => "Component_Information_Basic",
         when 397   => "Component_Metadata",
         when 400   => "Play_Tune_V2",
         when 401   => "Supported_Tunes",
         when 410   => "Event",
         when 411   => "Current_Event_Sequence",
         when 412   => "Request_Event",
         when 413   => "Response_Event_Error",
         when 435   => "Available_Modes",
         when 436   => "Current_Mode",
         when 437   => "Available_Modes_Monitor",
         when 440   => "Illuminator_Status",
         when 9000  => "Wheel_Distance",
         when 9005  => "Winch_Status",
         when 10001 => "Uavionix_Adsb_Out_Cfg",
         when 10002 => "Uavionix_Adsb_Out_Dynamic",
         when 10003 => "Uavionix_Adsb_Transceiver_Health_Report",
         when 10004 => "Uavionix_Adsb_Out_Cfg_Registration",
         when 10005 => "Uavionix_Adsb_Out_Cfg_Flightid",
         when 10006 => "Uavionix_Adsb_Get",
         when 10007 => "Uavionix_Adsb_Out_Control",
         when 10008 => "Uavionix_Adsb_Out_Status",
         when 10151 => "Loweheiser_Gov_Efi",
         when 11000 => "Device_Op_Read",
         when 11001 => "Device_Op_Read_Reply",
         when 11002 => "Device_Op_Write",
         when 11003 => "Device_Op_Write_Reply",
         when 11004 => "Secure_Command",
         when 11005 => "Secure_Command_Reply",
         when 11010 => "Adap_Tuning",
         when 11011 => "Vision_Position_Delta",
         when 11020 => "Aoa_Ssa",
         when 11030 => "Esc_Telemetry_1_To_4",
         when 11031 => "Esc_Telemetry_5_To_8",
         when 11032 => "Esc_Telemetry_9_To_12",
         when 11033 => "Osd_Param_Config",
         when 11034 => "Osd_Param_Config_Reply",
         when 11035 => "Osd_Param_Show_Config",
         when 11036 => "Osd_Param_Show_Config_Reply",
         when 11037 => "Obstacle_Distance_3D",
         when 11038 => "Water_Depth",
         when 11039 => "Mcu_Status",
         when 11040 => "Esc_Telemetry_13_To_16",
         when 11041 => "Esc_Telemetry_17_To_20",
         when 11042 => "Esc_Telemetry_21_To_24",
         when 11043 => "Esc_Telemetry_25_To_28",
         when 11044 => "Esc_Telemetry_29_To_32",
         when 11060 => "Named_Value_String",
         when 12900 => "Open_Drone_Id_Basic_Id",
         when 12901 => "Open_Drone_Id_Location",
         when 12902 => "Open_Drone_Id_Authentication",
         when 12903 => "Open_Drone_Id_Self_Id",
         when 12904 => "Open_Drone_Id_System",
         when 12905 => "Open_Drone_Id_Operator_Id",
         when 12915 => "Open_Drone_Id_Message_Pack",
         when 12918 => "Open_Drone_Id_Arm_Status",
         when 12919 => "Open_Drone_Id_System_Update",
         when 12920 => "Hygrometer_Sensor",
         when 42000 => "Icarous_Heartbeat",
         when 42001 => "Icarous_Kinematic_Bands",
         when 50001 => "Cubepilot_Raw_Rc",
         when 50002 => "Herelink_Video_Stream_Information",
         when 50003 => "Herelink_Telem",
         when 50004 => "Cubepilot_Firmware_Update_Start",
         when 50005 => "Cubepilot_Firmware_Update_Resp",
         when 52000 => "Airlink_Auth",
         when 52001 => "Airlink_Auth_Response");

end MAVLink.V2.Ardupilotmega;
