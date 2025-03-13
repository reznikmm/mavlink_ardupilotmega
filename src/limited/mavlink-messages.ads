--  Defines MAVLink messages
--  Copyright Fil Andrii root.fi36@gmail.com 2022

with Interfaces;
with MAVLink.Types; use MAVLink.Types;

package MAVLink.Messages is

   pragma Pure;

   type Message
     (Message_Id : Msg_Id;
      Payload_Length : Interfaces.Unsigned_8) is abstract tagged limited record
      Sequence     : Interfaces.Unsigned_8;
      System_Id    : Interfaces.Unsigned_8;
      Component_Id : Interfaces.Unsigned_8;
   end record with Alignment => Message_Alignment, Size => Message_Size * 8;
   for Message use record
      Payload_Length at Tag_Length + 0 range 0 .. 7;
      Sequence       at Tag_Length + 1 range 0 .. 7;
      System_Id      at Tag_Length + 2 range 0 .. 7;
      Component_Id   at Tag_Length + 3 range 0 .. 7;
      Message_Id     at Tag_Length + 4 range 0 .. 7;
   end record;

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

   type Heartbeat is new Message
     (Message_Id => Heartbeat_Id,
      Payload_Length => 9) with record
      Type_Field      : Types.Mav_Type;
      Autopilot       : Types.Mav_Autopilot;
      Base_Mode       : Types.Mav_Mode_Flag;
      Custom_Mode     : Interfaces.Unsigned_32;
      System_Status   : Types.Mav_State;
      Mavlink_Version : Interfaces.Unsigned_8;
   end record;
   for Heartbeat use record
      Custom_Mode     at Message_Size + 0 range 0 .. 31;
      Type_Field      at Message_Size + 4 range 0 .. 7;
      Autopilot       at Message_Size + 5 range 0 .. 7;
      Base_Mode       at Message_Size + 6 range 0 .. 7;
      System_Status   at Message_Size + 7 range 0 .. 7;
      Mavlink_Version at Message_Size + 8 range 0 .. 7;
   end record;

   type Sys_Status is new Message
     (Message_Id => Sys_Status_Id,
      Payload_Length => 31) with record
      Onboard_Control_Sensors_Present : Types.Mav_Sys_Status_Sensor;
      Onboard_Control_Sensors_Enabled : Types.Mav_Sys_Status_Sensor;
      Onboard_Control_Sensors_Health  : Types.Mav_Sys_Status_Sensor;
      Load                            : Interfaces.Unsigned_16;
      Voltage_Battery                 : Interfaces.Unsigned_16;
      Current_Battery                 : Interfaces.Integer_16;
      Battery_Remaining               : Interfaces.Integer_8;
      Drop_Rate_Comm                  : Interfaces.Unsigned_16;
      Errors_Comm                     : Interfaces.Unsigned_16;
      Errors_Count1                   : Interfaces.Unsigned_16;
      Errors_Count2                   : Interfaces.Unsigned_16;
      Errors_Count3                   : Interfaces.Unsigned_16;
      Errors_Count4                   : Interfaces.Unsigned_16;
   end record;
   for Sys_Status use record
      Onboard_Control_Sensors_Present at Message_Size + 0 range 0 .. 31;
      Onboard_Control_Sensors_Enabled at Message_Size + 4 range 0 .. 31;
      Onboard_Control_Sensors_Health  at Message_Size + 8 range 0 .. 31;
      Load                            at Message_Size + 12 range 0 .. 15;
      Voltage_Battery                 at Message_Size + 14 range 0 .. 15;
      Current_Battery                 at Message_Size + 16 range 0 .. 15;
      Drop_Rate_Comm                  at Message_Size + 18 range 0 .. 15;
      Errors_Comm                     at Message_Size + 20 range 0 .. 15;
      Errors_Count1                   at Message_Size + 22 range 0 .. 15;
      Errors_Count2                   at Message_Size + 24 range 0 .. 15;
      Errors_Count3                   at Message_Size + 26 range 0 .. 15;
      Errors_Count4                   at Message_Size + 28 range 0 .. 15;
      Battery_Remaining               at Message_Size + 30 range 0 .. 7;
   end record;

   type System_Time is new Message
     (Message_Id => System_Time_Id,
      Payload_Length => 12) with record
      Time_Unix_Usec : Interfaces.Unsigned_64;
      Time_Boot_Ms   : Interfaces.Unsigned_32;
   end record;
   for System_Time use record
      Time_Unix_Usec at Message_Size + 0 range 0 .. 63;
      Time_Boot_Ms   at Message_Size + 8 range 0 .. 31;
   end record;

   type Ping is new Message
     (Message_Id => Ping_Id,
      Payload_Length => 14) with record
      Time_Usec        : Interfaces.Unsigned_64;
      Seq              : Interfaces.Unsigned_32;
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
   end record;
   for Ping use record
      Time_Usec        at Message_Size + 0 range 0 .. 63;
      Seq              at Message_Size + 8 range 0 .. 31;
      Target_System    at Message_Size + 12 range 0 .. 7;
      Target_Component at Message_Size + 13 range 0 .. 7;
   end record;

   type Change_Operator_Control is new Message
     (Message_Id => Change_Operator_Control_Id,
      Payload_Length => 28) with record
      Target_System   : Interfaces.Unsigned_8;
      Control_Request : Interfaces.Unsigned_8;
      Version         : Interfaces.Unsigned_8;
      Passkey         : String (1..25);
   end record;
   for Change_Operator_Control use record
      Target_System   at Message_Size + 0 range 0 .. 7;
      Control_Request at Message_Size + 1 range 0 .. 7;
      Version         at Message_Size + 2 range 0 .. 7;
      Passkey         at Message_Size + 3 range 0 .. 199;
   end record;

   type Change_Operator_Control_Ack is new Message
     (Message_Id => Change_Operator_Control_Ack_Id,
      Payload_Length => 3) with record
      Gcs_System_Id   : Interfaces.Unsigned_8;
      Control_Request : Interfaces.Unsigned_8;
      Ack             : Interfaces.Unsigned_8;
   end record;
   for Change_Operator_Control_Ack use record
      Gcs_System_Id   at Message_Size + 0 range 0 .. 7;
      Control_Request at Message_Size + 1 range 0 .. 7;
      Ack             at Message_Size + 2 range 0 .. 7;
   end record;

   type Auth_Key is new Message
     (Message_Id => Auth_Key_Id,
      Payload_Length => 32) with record
      Key : String (1..32);
   end record;
   for Auth_Key use record
      Key at Message_Size + 0 range 0 .. 255;
   end record;

   type Link_Node_Status is new Message
     (Message_Id => Link_Node_Status_Id,
      Payload_Length => 36) with record
      Timestamp         : Interfaces.Unsigned_64;
      Tx_Buf            : Interfaces.Unsigned_8;
      Rx_Buf            : Interfaces.Unsigned_8;
      Tx_Rate           : Interfaces.Unsigned_32;
      Rx_Rate           : Interfaces.Unsigned_32;
      Rx_Parse_Err      : Interfaces.Unsigned_16;
      Tx_Overflows      : Interfaces.Unsigned_16;
      Rx_Overflows      : Interfaces.Unsigned_16;
      Messages_Sent     : Interfaces.Unsigned_32;
      Messages_Received : Interfaces.Unsigned_32;
      Messages_Lost     : Interfaces.Unsigned_32;
   end record;
   for Link_Node_Status use record
      Timestamp         at Message_Size + 0 range 0 .. 63;
      Tx_Rate           at Message_Size + 8 range 0 .. 31;
      Rx_Rate           at Message_Size + 12 range 0 .. 31;
      Messages_Sent     at Message_Size + 16 range 0 .. 31;
      Messages_Received at Message_Size + 20 range 0 .. 31;
      Messages_Lost     at Message_Size + 24 range 0 .. 31;
      Rx_Parse_Err      at Message_Size + 28 range 0 .. 15;
      Tx_Overflows      at Message_Size + 30 range 0 .. 15;
      Rx_Overflows      at Message_Size + 32 range 0 .. 15;
      Tx_Buf            at Message_Size + 34 range 0 .. 7;
      Rx_Buf            at Message_Size + 35 range 0 .. 7;
   end record;

   type Set_Mode is new Message
     (Message_Id => Set_Mode_Id,
      Payload_Length => 6) with record
      Target_System : Interfaces.Unsigned_8;
      Base_Mode     : Types.Mav_Mode;
      Custom_Mode   : Interfaces.Unsigned_32;
   end record;
   for Set_Mode use record
      Custom_Mode   at Message_Size + 0 range 0 .. 31;
      Target_System at Message_Size + 4 range 0 .. 7;
      Base_Mode     at Message_Size + 5 range 0 .. 7;
   end record;

   type Param_Request_Read is new Message
     (Message_Id => Param_Request_Read_Id,
      Payload_Length => 20) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Param_Id         : String (1..16);
      Param_Index      : Interfaces.Integer_16;
   end record;
   for Param_Request_Read use record
      Param_Index      at Message_Size + 0 range 0 .. 15;
      Target_System    at Message_Size + 2 range 0 .. 7;
      Target_Component at Message_Size + 3 range 0 .. 7;
      Param_Id         at Message_Size + 4 range 0 .. 127;
   end record;

   type Param_Request_List is new Message
     (Message_Id => Param_Request_List_Id,
      Payload_Length => 2) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
   end record;
   for Param_Request_List use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
   end record;

   type Param_Value is new Message
     (Message_Id => Param_Value_Id,
      Payload_Length => 25) with record
      Param_Id    : String (1..16);
      Param_Value : Short_Float;
      Param_Type  : Types.Mav_Param_Type;
      Param_Count : Interfaces.Unsigned_16;
      Param_Index : Interfaces.Unsigned_16;
   end record;
   for Param_Value use record
      Param_Value at Message_Size + 0 range 0 .. 31;
      Param_Count at Message_Size + 4 range 0 .. 15;
      Param_Index at Message_Size + 6 range 0 .. 15;
      Param_Id    at Message_Size + 8 range 0 .. 127;
      Param_Type  at Message_Size + 24 range 0 .. 7;
   end record;

   type Param_Set is new Message
     (Message_Id => Param_Set_Id,
      Payload_Length => 23) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Param_Id         : String (1..16);
      Param_Value      : Short_Float;
      Param_Type       : Types.Mav_Param_Type;
   end record;
   for Param_Set use record
      Param_Value      at Message_Size + 0 range 0 .. 31;
      Target_System    at Message_Size + 4 range 0 .. 7;
      Target_Component at Message_Size + 5 range 0 .. 7;
      Param_Id         at Message_Size + 6 range 0 .. 127;
      Param_Type       at Message_Size + 22 range 0 .. 7;
   end record;

   type Gps_Raw_Int is new Message
     (Message_Id => Gps_Raw_Int_Id,
      Payload_Length => 30) with record
      Time_Usec          : Interfaces.Unsigned_64;
      Fix_Type           : Types.Gps_Fix_Type;
      Lat                : Interfaces.Integer_32;
      Lon                : Interfaces.Integer_32;
      Alt                : Interfaces.Integer_32;
      Eph                : Interfaces.Unsigned_16;
      Epv                : Interfaces.Unsigned_16;
      Vel                : Interfaces.Unsigned_16;
      Cog                : Interfaces.Unsigned_16;
      Satellites_Visible : Interfaces.Unsigned_8;
   end record;
   for Gps_Raw_Int use record
      Time_Usec          at Message_Size + 0 range 0 .. 63;
      Lat                at Message_Size + 8 range 0 .. 31;
      Lon                at Message_Size + 12 range 0 .. 31;
      Alt                at Message_Size + 16 range 0 .. 31;
      Eph                at Message_Size + 20 range 0 .. 15;
      Epv                at Message_Size + 22 range 0 .. 15;
      Vel                at Message_Size + 24 range 0 .. 15;
      Cog                at Message_Size + 26 range 0 .. 15;
      Fix_Type           at Message_Size + 28 range 0 .. 7;
      Satellites_Visible at Message_Size + 29 range 0 .. 7;
   end record;

   type Gps_Status is new Message
     (Message_Id => Gps_Status_Id,
      Payload_Length => 101) with record
      Satellites_Visible  : Interfaces.Unsigned_8;
      Satellite_Prn       : Unsigned_8_Array (1..20);
      Satellite_Used      : Unsigned_8_Array (1..20);
      Satellite_Elevation : Unsigned_8_Array (1..20);
      Satellite_Azimuth   : Unsigned_8_Array (1..20);
      Satellite_Snr       : Unsigned_8_Array (1..20);
   end record;
   for Gps_Status use record
      Satellites_Visible  at Message_Size + 0 range 0 .. 7;
      Satellite_Prn       at Message_Size + 1 range 0 .. 159;
      Satellite_Used      at Message_Size + 21 range 0 .. 159;
      Satellite_Elevation at Message_Size + 41 range 0 .. 159;
      Satellite_Azimuth   at Message_Size + 61 range 0 .. 159;
      Satellite_Snr       at Message_Size + 81 range 0 .. 159;
   end record;

   type Scaled_Imu is new Message
     (Message_Id => Scaled_Imu_Id,
      Payload_Length => 22) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Xacc         : Interfaces.Integer_16;
      Yacc         : Interfaces.Integer_16;
      Zacc         : Interfaces.Integer_16;
      Xgyro        : Interfaces.Integer_16;
      Ygyro        : Interfaces.Integer_16;
      Zgyro        : Interfaces.Integer_16;
      Xmag         : Interfaces.Integer_16;
      Ymag         : Interfaces.Integer_16;
      Zmag         : Interfaces.Integer_16;
   end record;
   for Scaled_Imu use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Xacc         at Message_Size + 4 range 0 .. 15;
      Yacc         at Message_Size + 6 range 0 .. 15;
      Zacc         at Message_Size + 8 range 0 .. 15;
      Xgyro        at Message_Size + 10 range 0 .. 15;
      Ygyro        at Message_Size + 12 range 0 .. 15;
      Zgyro        at Message_Size + 14 range 0 .. 15;
      Xmag         at Message_Size + 16 range 0 .. 15;
      Ymag         at Message_Size + 18 range 0 .. 15;
      Zmag         at Message_Size + 20 range 0 .. 15;
   end record;

   type Raw_Imu is new Message
     (Message_Id => Raw_Imu_Id,
      Payload_Length => 26) with record
      Time_Usec : Interfaces.Unsigned_64;
      Xacc      : Interfaces.Integer_16;
      Yacc      : Interfaces.Integer_16;
      Zacc      : Interfaces.Integer_16;
      Xgyro     : Interfaces.Integer_16;
      Ygyro     : Interfaces.Integer_16;
      Zgyro     : Interfaces.Integer_16;
      Xmag      : Interfaces.Integer_16;
      Ymag      : Interfaces.Integer_16;
      Zmag      : Interfaces.Integer_16;
   end record;
   for Raw_Imu use record
      Time_Usec at Message_Size + 0 range 0 .. 63;
      Xacc      at Message_Size + 8 range 0 .. 15;
      Yacc      at Message_Size + 10 range 0 .. 15;
      Zacc      at Message_Size + 12 range 0 .. 15;
      Xgyro     at Message_Size + 14 range 0 .. 15;
      Ygyro     at Message_Size + 16 range 0 .. 15;
      Zgyro     at Message_Size + 18 range 0 .. 15;
      Xmag      at Message_Size + 20 range 0 .. 15;
      Ymag      at Message_Size + 22 range 0 .. 15;
      Zmag      at Message_Size + 24 range 0 .. 15;
   end record;

   type Raw_Pressure is new Message
     (Message_Id => Raw_Pressure_Id,
      Payload_Length => 16) with record
      Time_Usec   : Interfaces.Unsigned_64;
      Press_Abs   : Interfaces.Integer_16;
      Press_Diff1 : Interfaces.Integer_16;
      Press_Diff2 : Interfaces.Integer_16;
      Temperature : Interfaces.Integer_16;
   end record;
   for Raw_Pressure use record
      Time_Usec   at Message_Size + 0 range 0 .. 63;
      Press_Abs   at Message_Size + 8 range 0 .. 15;
      Press_Diff1 at Message_Size + 10 range 0 .. 15;
      Press_Diff2 at Message_Size + 12 range 0 .. 15;
      Temperature at Message_Size + 14 range 0 .. 15;
   end record;

   type Scaled_Pressure is new Message
     (Message_Id => Scaled_Pressure_Id,
      Payload_Length => 14) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Press_Abs    : Short_Float;
      Press_Diff   : Short_Float;
      Temperature  : Interfaces.Integer_16;
   end record;
   for Scaled_Pressure use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Press_Abs    at Message_Size + 4 range 0 .. 31;
      Press_Diff   at Message_Size + 8 range 0 .. 31;
      Temperature  at Message_Size + 12 range 0 .. 15;
   end record;

   type Attitude is new Message
     (Message_Id => Attitude_Id,
      Payload_Length => 28) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Roll         : Short_Float;
      Pitch        : Short_Float;
      Yaw          : Short_Float;
      Rollspeed    : Short_Float;
      Pitchspeed   : Short_Float;
      Yawspeed     : Short_Float;
   end record;
   for Attitude use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Roll         at Message_Size + 4 range 0 .. 31;
      Pitch        at Message_Size + 8 range 0 .. 31;
      Yaw          at Message_Size + 12 range 0 .. 31;
      Rollspeed    at Message_Size + 16 range 0 .. 31;
      Pitchspeed   at Message_Size + 20 range 0 .. 31;
      Yawspeed     at Message_Size + 24 range 0 .. 31;
   end record;

   type Attitude_Quaternion is new Message
     (Message_Id => Attitude_Quaternion_Id,
      Payload_Length => 32) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Q1           : Short_Float;
      Q2           : Short_Float;
      Q3           : Short_Float;
      Q4           : Short_Float;
      Rollspeed    : Short_Float;
      Pitchspeed   : Short_Float;
      Yawspeed     : Short_Float;
   end record;
   for Attitude_Quaternion use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Q1           at Message_Size + 4 range 0 .. 31;
      Q2           at Message_Size + 8 range 0 .. 31;
      Q3           at Message_Size + 12 range 0 .. 31;
      Q4           at Message_Size + 16 range 0 .. 31;
      Rollspeed    at Message_Size + 20 range 0 .. 31;
      Pitchspeed   at Message_Size + 24 range 0 .. 31;
      Yawspeed     at Message_Size + 28 range 0 .. 31;
   end record;

   type Local_Position_Ned is new Message
     (Message_Id => Local_Position_Ned_Id,
      Payload_Length => 28) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      X            : Short_Float;
      Y            : Short_Float;
      Z            : Short_Float;
      Vx           : Short_Float;
      Vy           : Short_Float;
      Vz           : Short_Float;
   end record;
   for Local_Position_Ned use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      X            at Message_Size + 4 range 0 .. 31;
      Y            at Message_Size + 8 range 0 .. 31;
      Z            at Message_Size + 12 range 0 .. 31;
      Vx           at Message_Size + 16 range 0 .. 31;
      Vy           at Message_Size + 20 range 0 .. 31;
      Vz           at Message_Size + 24 range 0 .. 31;
   end record;

   type Global_Position_Int is new Message
     (Message_Id => Global_Position_Int_Id,
      Payload_Length => 28) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Lat          : Interfaces.Integer_32;
      Lon          : Interfaces.Integer_32;
      Alt          : Interfaces.Integer_32;
      Relative_Alt : Interfaces.Integer_32;
      Vx           : Interfaces.Integer_16;
      Vy           : Interfaces.Integer_16;
      Vz           : Interfaces.Integer_16;
      Hdg          : Interfaces.Unsigned_16;
   end record;
   for Global_Position_Int use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Lat          at Message_Size + 4 range 0 .. 31;
      Lon          at Message_Size + 8 range 0 .. 31;
      Alt          at Message_Size + 12 range 0 .. 31;
      Relative_Alt at Message_Size + 16 range 0 .. 31;
      Vx           at Message_Size + 20 range 0 .. 15;
      Vy           at Message_Size + 22 range 0 .. 15;
      Vz           at Message_Size + 24 range 0 .. 15;
      Hdg          at Message_Size + 26 range 0 .. 15;
   end record;

   type Rc_Channels_Scaled is new Message
     (Message_Id => Rc_Channels_Scaled_Id,
      Payload_Length => 22) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Port         : Interfaces.Unsigned_8;
      Chan1_Scaled : Interfaces.Integer_16;
      Chan2_Scaled : Interfaces.Integer_16;
      Chan3_Scaled : Interfaces.Integer_16;
      Chan4_Scaled : Interfaces.Integer_16;
      Chan5_Scaled : Interfaces.Integer_16;
      Chan6_Scaled : Interfaces.Integer_16;
      Chan7_Scaled : Interfaces.Integer_16;
      Chan8_Scaled : Interfaces.Integer_16;
      Rssi         : Interfaces.Unsigned_8;
   end record;
   for Rc_Channels_Scaled use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Chan1_Scaled at Message_Size + 4 range 0 .. 15;
      Chan2_Scaled at Message_Size + 6 range 0 .. 15;
      Chan3_Scaled at Message_Size + 8 range 0 .. 15;
      Chan4_Scaled at Message_Size + 10 range 0 .. 15;
      Chan5_Scaled at Message_Size + 12 range 0 .. 15;
      Chan6_Scaled at Message_Size + 14 range 0 .. 15;
      Chan7_Scaled at Message_Size + 16 range 0 .. 15;
      Chan8_Scaled at Message_Size + 18 range 0 .. 15;
      Port         at Message_Size + 20 range 0 .. 7;
      Rssi         at Message_Size + 21 range 0 .. 7;
   end record;

   type Rc_Channels_Raw is new Message
     (Message_Id => Rc_Channels_Raw_Id,
      Payload_Length => 22) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Port         : Interfaces.Unsigned_8;
      Chan1_Raw    : Interfaces.Unsigned_16;
      Chan2_Raw    : Interfaces.Unsigned_16;
      Chan3_Raw    : Interfaces.Unsigned_16;
      Chan4_Raw    : Interfaces.Unsigned_16;
      Chan5_Raw    : Interfaces.Unsigned_16;
      Chan6_Raw    : Interfaces.Unsigned_16;
      Chan7_Raw    : Interfaces.Unsigned_16;
      Chan8_Raw    : Interfaces.Unsigned_16;
      Rssi         : Interfaces.Unsigned_8;
   end record;
   for Rc_Channels_Raw use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Chan1_Raw    at Message_Size + 4 range 0 .. 15;
      Chan2_Raw    at Message_Size + 6 range 0 .. 15;
      Chan3_Raw    at Message_Size + 8 range 0 .. 15;
      Chan4_Raw    at Message_Size + 10 range 0 .. 15;
      Chan5_Raw    at Message_Size + 12 range 0 .. 15;
      Chan6_Raw    at Message_Size + 14 range 0 .. 15;
      Chan7_Raw    at Message_Size + 16 range 0 .. 15;
      Chan8_Raw    at Message_Size + 18 range 0 .. 15;
      Port         at Message_Size + 20 range 0 .. 7;
      Rssi         at Message_Size + 21 range 0 .. 7;
   end record;

   type Servo_Output_Raw is new Message
     (Message_Id => Servo_Output_Raw_Id,
      Payload_Length => 21) with record
      Time_Usec  : Interfaces.Unsigned_32;
      Port       : Interfaces.Unsigned_8;
      Servo1_Raw : Interfaces.Unsigned_16;
      Servo2_Raw : Interfaces.Unsigned_16;
      Servo3_Raw : Interfaces.Unsigned_16;
      Servo4_Raw : Interfaces.Unsigned_16;
      Servo5_Raw : Interfaces.Unsigned_16;
      Servo6_Raw : Interfaces.Unsigned_16;
      Servo7_Raw : Interfaces.Unsigned_16;
      Servo8_Raw : Interfaces.Unsigned_16;
   end record;
   for Servo_Output_Raw use record
      Time_Usec  at Message_Size + 0 range 0 .. 31;
      Servo1_Raw at Message_Size + 4 range 0 .. 15;
      Servo2_Raw at Message_Size + 6 range 0 .. 15;
      Servo3_Raw at Message_Size + 8 range 0 .. 15;
      Servo4_Raw at Message_Size + 10 range 0 .. 15;
      Servo5_Raw at Message_Size + 12 range 0 .. 15;
      Servo6_Raw at Message_Size + 14 range 0 .. 15;
      Servo7_Raw at Message_Size + 16 range 0 .. 15;
      Servo8_Raw at Message_Size + 18 range 0 .. 15;
      Port       at Message_Size + 20 range 0 .. 7;
   end record;

   type Mission_Request_Partial_List is new Message
     (Message_Id => Mission_Request_Partial_List_Id,
      Payload_Length => 6) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Start_Index      : Interfaces.Integer_16;
      End_Index        : Interfaces.Integer_16;
   end record;
   for Mission_Request_Partial_List use record
      Start_Index      at Message_Size + 0 range 0 .. 15;
      End_Index        at Message_Size + 2 range 0 .. 15;
      Target_System    at Message_Size + 4 range 0 .. 7;
      Target_Component at Message_Size + 5 range 0 .. 7;
   end record;

   type Mission_Write_Partial_List is new Message
     (Message_Id => Mission_Write_Partial_List_Id,
      Payload_Length => 6) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Start_Index      : Interfaces.Integer_16;
      End_Index        : Interfaces.Integer_16;
   end record;
   for Mission_Write_Partial_List use record
      Start_Index      at Message_Size + 0 range 0 .. 15;
      End_Index        at Message_Size + 2 range 0 .. 15;
      Target_System    at Message_Size + 4 range 0 .. 7;
      Target_Component at Message_Size + 5 range 0 .. 7;
   end record;

   type Mission_Item is new Message
     (Message_Id => Mission_Item_Id,
      Payload_Length => 37) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Seq              : Interfaces.Unsigned_16;
      Frame            : Types.Mav_Frame;
      Command          : Types.Mav_Cmd;
      Current          : Interfaces.Unsigned_8;
      Autocontinue     : Interfaces.Unsigned_8;
      Param1           : Short_Float;
      Param2           : Short_Float;
      Param3           : Short_Float;
      Param4           : Short_Float;
      X                : Short_Float;
      Y                : Short_Float;
      Z                : Short_Float;
   end record;
   for Mission_Item use record
      Param1           at Message_Size + 0 range 0 .. 31;
      Param2           at Message_Size + 4 range 0 .. 31;
      Param3           at Message_Size + 8 range 0 .. 31;
      Param4           at Message_Size + 12 range 0 .. 31;
      X                at Message_Size + 16 range 0 .. 31;
      Y                at Message_Size + 20 range 0 .. 31;
      Z                at Message_Size + 24 range 0 .. 31;
      Seq              at Message_Size + 28 range 0 .. 15;
      Command          at Message_Size + 30 range 0 .. 15;
      Target_System    at Message_Size + 32 range 0 .. 7;
      Target_Component at Message_Size + 33 range 0 .. 7;
      Frame            at Message_Size + 34 range 0 .. 7;
      Current          at Message_Size + 35 range 0 .. 7;
      Autocontinue     at Message_Size + 36 range 0 .. 7;
   end record;

   type Mission_Request is new Message
     (Message_Id => Mission_Request_Id,
      Payload_Length => 4) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Seq              : Interfaces.Unsigned_16;
   end record;
   for Mission_Request use record
      Seq              at Message_Size + 0 range 0 .. 15;
      Target_System    at Message_Size + 2 range 0 .. 7;
      Target_Component at Message_Size + 3 range 0 .. 7;
   end record;

   type Mission_Set_Current is new Message
     (Message_Id => Mission_Set_Current_Id,
      Payload_Length => 4) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Seq              : Interfaces.Unsigned_16;
   end record;
   for Mission_Set_Current use record
      Seq              at Message_Size + 0 range 0 .. 15;
      Target_System    at Message_Size + 2 range 0 .. 7;
      Target_Component at Message_Size + 3 range 0 .. 7;
   end record;

   type Mission_Current is new Message
     (Message_Id => Mission_Current_Id,
      Payload_Length => 2) with record
      Seq : Interfaces.Unsigned_16;
   end record;
   for Mission_Current use record
      Seq at Message_Size + 0 range 0 .. 15;
   end record;

   type Mission_Request_List is new Message
     (Message_Id => Mission_Request_List_Id,
      Payload_Length => 2) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
   end record;
   for Mission_Request_List use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
   end record;

   type Mission_Count is new Message
     (Message_Id => Mission_Count_Id,
      Payload_Length => 4) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Count            : Interfaces.Unsigned_16;
   end record;
   for Mission_Count use record
      Count            at Message_Size + 0 range 0 .. 15;
      Target_System    at Message_Size + 2 range 0 .. 7;
      Target_Component at Message_Size + 3 range 0 .. 7;
   end record;

   type Mission_Clear_All is new Message
     (Message_Id => Mission_Clear_All_Id,
      Payload_Length => 2) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
   end record;
   for Mission_Clear_All use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
   end record;

   type Mission_Item_Reached is new Message
     (Message_Id => Mission_Item_Reached_Id,
      Payload_Length => 2) with record
      Seq : Interfaces.Unsigned_16;
   end record;
   for Mission_Item_Reached use record
      Seq at Message_Size + 0 range 0 .. 15;
   end record;

   type Mission_Ack is new Message
     (Message_Id => Mission_Ack_Id,
      Payload_Length => 3) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Type_Field       : Types.Mav_Mission_Result;
   end record;
   for Mission_Ack use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
      Type_Field       at Message_Size + 2 range 0 .. 7;
   end record;

   type Set_Gps_Global_Origin is new Message
     (Message_Id => Set_Gps_Global_Origin_Id,
      Payload_Length => 13) with record
      Target_System : Interfaces.Unsigned_8;
      Latitude      : Interfaces.Integer_32;
      Longitude     : Interfaces.Integer_32;
      Altitude      : Interfaces.Integer_32;
   end record;
   for Set_Gps_Global_Origin use record
      Latitude      at Message_Size + 0 range 0 .. 31;
      Longitude     at Message_Size + 4 range 0 .. 31;
      Altitude      at Message_Size + 8 range 0 .. 31;
      Target_System at Message_Size + 12 range 0 .. 7;
   end record;

   type Gps_Global_Origin is new Message
     (Message_Id => Gps_Global_Origin_Id,
      Payload_Length => 12) with record
      Latitude  : Interfaces.Integer_32;
      Longitude : Interfaces.Integer_32;
      Altitude  : Interfaces.Integer_32;
   end record;
   for Gps_Global_Origin use record
      Latitude  at Message_Size + 0 range 0 .. 31;
      Longitude at Message_Size + 4 range 0 .. 31;
      Altitude  at Message_Size + 8 range 0 .. 31;
   end record;

   type Param_Map_Rc is new Message
     (Message_Id => Param_Map_Rc_Id,
      Payload_Length => 37) with record
      Target_System              : Interfaces.Unsigned_8;
      Target_Component           : Interfaces.Unsigned_8;
      Param_Id                   : String (1..16);
      Param_Index                : Interfaces.Integer_16;
      Parameter_Rc_Channel_Index : Interfaces.Unsigned_8;
      Param_Value0               : Short_Float;
      Scale                      : Short_Float;
      Param_Value_Min            : Short_Float;
      Param_Value_Max            : Short_Float;
   end record;
   for Param_Map_Rc use record
      Param_Value0               at Message_Size + 0 range 0 .. 31;
      Scale                      at Message_Size + 4 range 0 .. 31;
      Param_Value_Min            at Message_Size + 8 range 0 .. 31;
      Param_Value_Max            at Message_Size + 12 range 0 .. 31;
      Param_Index                at Message_Size + 16 range 0 .. 15;
      Target_System              at Message_Size + 18 range 0 .. 7;
      Target_Component           at Message_Size + 19 range 0 .. 7;
      Param_Id                   at Message_Size + 20 range 0 .. 127;
      Parameter_Rc_Channel_Index at Message_Size + 36 range 0 .. 7;
   end record;

   type Mission_Request_Int is new Message
     (Message_Id => Mission_Request_Int_Id,
      Payload_Length => 4) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Seq              : Interfaces.Unsigned_16;
   end record;
   for Mission_Request_Int use record
      Seq              at Message_Size + 0 range 0 .. 15;
      Target_System    at Message_Size + 2 range 0 .. 7;
      Target_Component at Message_Size + 3 range 0 .. 7;
   end record;

   type Safety_Set_Allowed_Area is new Message
     (Message_Id => Safety_Set_Allowed_Area_Id,
      Payload_Length => 27) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Frame            : Types.Mav_Frame;
      P1X              : Short_Float;
      P1Y              : Short_Float;
      P1Z              : Short_Float;
      P2X              : Short_Float;
      P2Y              : Short_Float;
      P2Z              : Short_Float;
   end record;
   for Safety_Set_Allowed_Area use record
      P1X              at Message_Size + 0 range 0 .. 31;
      P1Y              at Message_Size + 4 range 0 .. 31;
      P1Z              at Message_Size + 8 range 0 .. 31;
      P2X              at Message_Size + 12 range 0 .. 31;
      P2Y              at Message_Size + 16 range 0 .. 31;
      P2Z              at Message_Size + 20 range 0 .. 31;
      Target_System    at Message_Size + 24 range 0 .. 7;
      Target_Component at Message_Size + 25 range 0 .. 7;
      Frame            at Message_Size + 26 range 0 .. 7;
   end record;

   type Safety_Allowed_Area is new Message
     (Message_Id => Safety_Allowed_Area_Id,
      Payload_Length => 25) with record
      Frame : Types.Mav_Frame;
      P1X   : Short_Float;
      P1Y   : Short_Float;
      P1Z   : Short_Float;
      P2X   : Short_Float;
      P2Y   : Short_Float;
      P2Z   : Short_Float;
   end record;
   for Safety_Allowed_Area use record
      P1X   at Message_Size + 0 range 0 .. 31;
      P1Y   at Message_Size + 4 range 0 .. 31;
      P1Z   at Message_Size + 8 range 0 .. 31;
      P2X   at Message_Size + 12 range 0 .. 31;
      P2Y   at Message_Size + 16 range 0 .. 31;
      P2Z   at Message_Size + 20 range 0 .. 31;
      Frame at Message_Size + 24 range 0 .. 7;
   end record;

   type Attitude_Quaternion_Cov is new Message
     (Message_Id => Attitude_Quaternion_Cov_Id,
      Payload_Length => 72) with record
      Time_Usec  : Interfaces.Unsigned_64;
      Q          : Short_Float_Array (1..4);
      Rollspeed  : Short_Float;
      Pitchspeed : Short_Float;
      Yawspeed   : Short_Float;
      Covariance : Short_Float_Array (1..9);
   end record;
   for Attitude_Quaternion_Cov use record
      Time_Usec  at Message_Size + 0 range 0 .. 63;
      Q          at Message_Size + 8 range 0 .. 127;
      Rollspeed  at Message_Size + 24 range 0 .. 31;
      Pitchspeed at Message_Size + 28 range 0 .. 31;
      Yawspeed   at Message_Size + 32 range 0 .. 31;
      Covariance at Message_Size + 36 range 0 .. 287;
   end record;

   type Nav_Controller_Output is new Message
     (Message_Id => Nav_Controller_Output_Id,
      Payload_Length => 26) with record
      Nav_Roll       : Short_Float;
      Nav_Pitch      : Short_Float;
      Nav_Bearing    : Interfaces.Integer_16;
      Target_Bearing : Interfaces.Integer_16;
      Wp_Dist        : Interfaces.Unsigned_16;
      Alt_Error      : Short_Float;
      Aspd_Error     : Short_Float;
      Xtrack_Error   : Short_Float;
   end record;
   for Nav_Controller_Output use record
      Nav_Roll       at Message_Size + 0 range 0 .. 31;
      Nav_Pitch      at Message_Size + 4 range 0 .. 31;
      Alt_Error      at Message_Size + 8 range 0 .. 31;
      Aspd_Error     at Message_Size + 12 range 0 .. 31;
      Xtrack_Error   at Message_Size + 16 range 0 .. 31;
      Nav_Bearing    at Message_Size + 20 range 0 .. 15;
      Target_Bearing at Message_Size + 22 range 0 .. 15;
      Wp_Dist        at Message_Size + 24 range 0 .. 15;
   end record;

   type Global_Position_Int_Cov is new Message
     (Message_Id => Global_Position_Int_Cov_Id,
      Payload_Length => 181) with record
      Time_Usec      : Interfaces.Unsigned_64;
      Estimator_Type : Types.Mav_Estimator_Type;
      Lat            : Interfaces.Integer_32;
      Lon            : Interfaces.Integer_32;
      Alt            : Interfaces.Integer_32;
      Relative_Alt   : Interfaces.Integer_32;
      Vx             : Short_Float;
      Vy             : Short_Float;
      Vz             : Short_Float;
      Covariance     : Short_Float_Array (1..36);
   end record;
   for Global_Position_Int_Cov use record
      Time_Usec      at Message_Size + 0 range 0 .. 63;
      Lat            at Message_Size + 8 range 0 .. 31;
      Lon            at Message_Size + 12 range 0 .. 31;
      Alt            at Message_Size + 16 range 0 .. 31;
      Relative_Alt   at Message_Size + 20 range 0 .. 31;
      Vx             at Message_Size + 24 range 0 .. 31;
      Vy             at Message_Size + 28 range 0 .. 31;
      Vz             at Message_Size + 32 range 0 .. 31;
      Covariance     at Message_Size + 36 range 0 .. 1151;
      Estimator_Type at Message_Size + 180 range 0 .. 7;
   end record;

   type Local_Position_Ned_Cov is new Message
     (Message_Id => Local_Position_Ned_Cov_Id,
      Payload_Length => 225) with record
      Time_Usec      : Interfaces.Unsigned_64;
      Estimator_Type : Types.Mav_Estimator_Type;
      X              : Short_Float;
      Y              : Short_Float;
      Z              : Short_Float;
      Vx             : Short_Float;
      Vy             : Short_Float;
      Vz             : Short_Float;
      Ax             : Short_Float;
      Ay             : Short_Float;
      Az             : Short_Float;
      Covariance     : Short_Float_Array (1..45);
   end record;
   for Local_Position_Ned_Cov use record
      Time_Usec      at Message_Size + 0 range 0 .. 63;
      X              at Message_Size + 8 range 0 .. 31;
      Y              at Message_Size + 12 range 0 .. 31;
      Z              at Message_Size + 16 range 0 .. 31;
      Vx             at Message_Size + 20 range 0 .. 31;
      Vy             at Message_Size + 24 range 0 .. 31;
      Vz             at Message_Size + 28 range 0 .. 31;
      Ax             at Message_Size + 32 range 0 .. 31;
      Ay             at Message_Size + 36 range 0 .. 31;
      Az             at Message_Size + 40 range 0 .. 31;
      Covariance     at Message_Size + 44 range 0 .. 1439;
      Estimator_Type at Message_Size + 224 range 0 .. 7;
   end record;

   type Rc_Channels is new Message
     (Message_Id => Rc_Channels_Id,
      Payload_Length => 42) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Chancount    : Interfaces.Unsigned_8;
      Chan1_Raw    : Interfaces.Unsigned_16;
      Chan2_Raw    : Interfaces.Unsigned_16;
      Chan3_Raw    : Interfaces.Unsigned_16;
      Chan4_Raw    : Interfaces.Unsigned_16;
      Chan5_Raw    : Interfaces.Unsigned_16;
      Chan6_Raw    : Interfaces.Unsigned_16;
      Chan7_Raw    : Interfaces.Unsigned_16;
      Chan8_Raw    : Interfaces.Unsigned_16;
      Chan9_Raw    : Interfaces.Unsigned_16;
      Chan10_Raw   : Interfaces.Unsigned_16;
      Chan11_Raw   : Interfaces.Unsigned_16;
      Chan12_Raw   : Interfaces.Unsigned_16;
      Chan13_Raw   : Interfaces.Unsigned_16;
      Chan14_Raw   : Interfaces.Unsigned_16;
      Chan15_Raw   : Interfaces.Unsigned_16;
      Chan16_Raw   : Interfaces.Unsigned_16;
      Chan17_Raw   : Interfaces.Unsigned_16;
      Chan18_Raw   : Interfaces.Unsigned_16;
      Rssi         : Interfaces.Unsigned_8;
   end record;
   for Rc_Channels use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Chan1_Raw    at Message_Size + 4 range 0 .. 15;
      Chan2_Raw    at Message_Size + 6 range 0 .. 15;
      Chan3_Raw    at Message_Size + 8 range 0 .. 15;
      Chan4_Raw    at Message_Size + 10 range 0 .. 15;
      Chan5_Raw    at Message_Size + 12 range 0 .. 15;
      Chan6_Raw    at Message_Size + 14 range 0 .. 15;
      Chan7_Raw    at Message_Size + 16 range 0 .. 15;
      Chan8_Raw    at Message_Size + 18 range 0 .. 15;
      Chan9_Raw    at Message_Size + 20 range 0 .. 15;
      Chan10_Raw   at Message_Size + 22 range 0 .. 15;
      Chan11_Raw   at Message_Size + 24 range 0 .. 15;
      Chan12_Raw   at Message_Size + 26 range 0 .. 15;
      Chan13_Raw   at Message_Size + 28 range 0 .. 15;
      Chan14_Raw   at Message_Size + 30 range 0 .. 15;
      Chan15_Raw   at Message_Size + 32 range 0 .. 15;
      Chan16_Raw   at Message_Size + 34 range 0 .. 15;
      Chan17_Raw   at Message_Size + 36 range 0 .. 15;
      Chan18_Raw   at Message_Size + 38 range 0 .. 15;
      Chancount    at Message_Size + 40 range 0 .. 7;
      Rssi         at Message_Size + 41 range 0 .. 7;
   end record;

   type Request_Data_Stream is new Message
     (Message_Id => Request_Data_Stream_Id,
      Payload_Length => 6) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Req_Stream_Id    : Interfaces.Unsigned_8;
      Req_Message_Rate : Interfaces.Unsigned_16;
      Start_Stop       : Interfaces.Unsigned_8;
   end record;
   for Request_Data_Stream use record
      Req_Message_Rate at Message_Size + 0 range 0 .. 15;
      Target_System    at Message_Size + 2 range 0 .. 7;
      Target_Component at Message_Size + 3 range 0 .. 7;
      Req_Stream_Id    at Message_Size + 4 range 0 .. 7;
      Start_Stop       at Message_Size + 5 range 0 .. 7;
   end record;

   type Data_Stream is new Message
     (Message_Id => Data_Stream_Id,
      Payload_Length => 4) with record
      Stream_Id    : Interfaces.Unsigned_8;
      Message_Rate : Interfaces.Unsigned_16;
      On_Off       : Interfaces.Unsigned_8;
   end record;
   for Data_Stream use record
      Message_Rate at Message_Size + 0 range 0 .. 15;
      Stream_Id    at Message_Size + 2 range 0 .. 7;
      On_Off       at Message_Size + 3 range 0 .. 7;
   end record;

   type Manual_Control is new Message
     (Message_Id => Manual_Control_Id,
      Payload_Length => 11) with record
      Target  : Interfaces.Unsigned_8;
      X       : Interfaces.Integer_16;
      Y       : Interfaces.Integer_16;
      Z       : Interfaces.Integer_16;
      R       : Interfaces.Integer_16;
      Buttons : Interfaces.Unsigned_16;
   end record;
   for Manual_Control use record
      X       at Message_Size + 0 range 0 .. 15;
      Y       at Message_Size + 2 range 0 .. 15;
      Z       at Message_Size + 4 range 0 .. 15;
      R       at Message_Size + 6 range 0 .. 15;
      Buttons at Message_Size + 8 range 0 .. 15;
      Target  at Message_Size + 10 range 0 .. 7;
   end record;

   type Rc_Channels_Override is new Message
     (Message_Id => Rc_Channels_Override_Id,
      Payload_Length => 18) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Chan1_Raw        : Interfaces.Unsigned_16;
      Chan2_Raw        : Interfaces.Unsigned_16;
      Chan3_Raw        : Interfaces.Unsigned_16;
      Chan4_Raw        : Interfaces.Unsigned_16;
      Chan5_Raw        : Interfaces.Unsigned_16;
      Chan6_Raw        : Interfaces.Unsigned_16;
      Chan7_Raw        : Interfaces.Unsigned_16;
      Chan8_Raw        : Interfaces.Unsigned_16;
   end record;
   for Rc_Channels_Override use record
      Chan1_Raw        at Message_Size + 0 range 0 .. 15;
      Chan2_Raw        at Message_Size + 2 range 0 .. 15;
      Chan3_Raw        at Message_Size + 4 range 0 .. 15;
      Chan4_Raw        at Message_Size + 6 range 0 .. 15;
      Chan5_Raw        at Message_Size + 8 range 0 .. 15;
      Chan6_Raw        at Message_Size + 10 range 0 .. 15;
      Chan7_Raw        at Message_Size + 12 range 0 .. 15;
      Chan8_Raw        at Message_Size + 14 range 0 .. 15;
      Target_System    at Message_Size + 16 range 0 .. 7;
      Target_Component at Message_Size + 17 range 0 .. 7;
   end record;

   type Mission_Item_Int is new Message
     (Message_Id => Mission_Item_Int_Id,
      Payload_Length => 37) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Seq              : Interfaces.Unsigned_16;
      Frame            : Types.Mav_Frame;
      Command          : Types.Mav_Cmd;
      Current          : Interfaces.Unsigned_8;
      Autocontinue     : Interfaces.Unsigned_8;
      Param1           : Short_Float;
      Param2           : Short_Float;
      Param3           : Short_Float;
      Param4           : Short_Float;
      X                : Interfaces.Integer_32;
      Y                : Interfaces.Integer_32;
      Z                : Short_Float;
   end record;
   for Mission_Item_Int use record
      Param1           at Message_Size + 0 range 0 .. 31;
      Param2           at Message_Size + 4 range 0 .. 31;
      Param3           at Message_Size + 8 range 0 .. 31;
      Param4           at Message_Size + 12 range 0 .. 31;
      X                at Message_Size + 16 range 0 .. 31;
      Y                at Message_Size + 20 range 0 .. 31;
      Z                at Message_Size + 24 range 0 .. 31;
      Seq              at Message_Size + 28 range 0 .. 15;
      Command          at Message_Size + 30 range 0 .. 15;
      Target_System    at Message_Size + 32 range 0 .. 7;
      Target_Component at Message_Size + 33 range 0 .. 7;
      Frame            at Message_Size + 34 range 0 .. 7;
      Current          at Message_Size + 35 range 0 .. 7;
      Autocontinue     at Message_Size + 36 range 0 .. 7;
   end record;

   type Vfr_Hud is new Message
     (Message_Id => Vfr_Hud_Id,
      Payload_Length => 20) with record
      Airspeed    : Short_Float;
      Groundspeed : Short_Float;
      Heading     : Interfaces.Integer_16;
      Throttle    : Interfaces.Unsigned_16;
      Alt         : Short_Float;
      Climb       : Short_Float;
   end record;
   for Vfr_Hud use record
      Airspeed    at Message_Size + 0 range 0 .. 31;
      Groundspeed at Message_Size + 4 range 0 .. 31;
      Alt         at Message_Size + 8 range 0 .. 31;
      Climb       at Message_Size + 12 range 0 .. 31;
      Heading     at Message_Size + 16 range 0 .. 15;
      Throttle    at Message_Size + 18 range 0 .. 15;
   end record;

   type Command_Int is new Message
     (Message_Id => Command_Int_Id,
      Payload_Length => 35) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Frame            : Types.Mav_Frame;
      Command          : Types.Mav_Cmd;
      Current          : Interfaces.Unsigned_8;
      Autocontinue     : Interfaces.Unsigned_8;
      Param1           : Short_Float;
      Param2           : Short_Float;
      Param3           : Short_Float;
      Param4           : Short_Float;
      X                : Interfaces.Integer_32;
      Y                : Interfaces.Integer_32;
      Z                : Short_Float;
   end record;
   for Command_Int use record
      Param1           at Message_Size + 0 range 0 .. 31;
      Param2           at Message_Size + 4 range 0 .. 31;
      Param3           at Message_Size + 8 range 0 .. 31;
      Param4           at Message_Size + 12 range 0 .. 31;
      X                at Message_Size + 16 range 0 .. 31;
      Y                at Message_Size + 20 range 0 .. 31;
      Z                at Message_Size + 24 range 0 .. 31;
      Command          at Message_Size + 28 range 0 .. 15;
      Target_System    at Message_Size + 30 range 0 .. 7;
      Target_Component at Message_Size + 31 range 0 .. 7;
      Frame            at Message_Size + 32 range 0 .. 7;
      Current          at Message_Size + 33 range 0 .. 7;
      Autocontinue     at Message_Size + 34 range 0 .. 7;
   end record;

   type Command_Long is new Message
     (Message_Id => Command_Long_Id,
      Payload_Length => 33) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Command          : Types.Mav_Cmd;
      Confirmation     : Interfaces.Unsigned_8;
      Param1           : Short_Float;
      Param2           : Short_Float;
      Param3           : Short_Float;
      Param4           : Short_Float;
      Param5           : Short_Float;
      Param6           : Short_Float;
      Param7           : Short_Float;
   end record;
   for Command_Long use record
      Param1           at Message_Size + 0 range 0 .. 31;
      Param2           at Message_Size + 4 range 0 .. 31;
      Param3           at Message_Size + 8 range 0 .. 31;
      Param4           at Message_Size + 12 range 0 .. 31;
      Param5           at Message_Size + 16 range 0 .. 31;
      Param6           at Message_Size + 20 range 0 .. 31;
      Param7           at Message_Size + 24 range 0 .. 31;
      Command          at Message_Size + 28 range 0 .. 15;
      Target_System    at Message_Size + 30 range 0 .. 7;
      Target_Component at Message_Size + 31 range 0 .. 7;
      Confirmation     at Message_Size + 32 range 0 .. 7;
   end record;

   type Command_Ack is new Message
     (Message_Id => Command_Ack_Id,
      Payload_Length => 3) with record
      Command : Types.Mav_Cmd;
      Result  : Types.Mav_Result;
   end record;
   for Command_Ack use record
      Command at Message_Size + 0 range 0 .. 15;
      Result  at Message_Size + 2 range 0 .. 7;
   end record;

   type Command_Cancel is new Message
     (Message_Id => Command_Cancel_Id,
      Payload_Length => 4) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Command          : Types.Mav_Cmd;
   end record;
   for Command_Cancel use record
      Command          at Message_Size + 0 range 0 .. 15;
      Target_System    at Message_Size + 2 range 0 .. 7;
      Target_Component at Message_Size + 3 range 0 .. 7;
   end record;

   type Manual_Setpoint is new Message
     (Message_Id => Manual_Setpoint_Id,
      Payload_Length => 22) with record
      Time_Boot_Ms           : Interfaces.Unsigned_32;
      Roll                   : Short_Float;
      Pitch                  : Short_Float;
      Yaw                    : Short_Float;
      Thrust                 : Short_Float;
      Mode_Switch            : Interfaces.Unsigned_8;
      Manual_Override_Switch : Interfaces.Unsigned_8;
   end record;
   for Manual_Setpoint use record
      Time_Boot_Ms           at Message_Size + 0 range 0 .. 31;
      Roll                   at Message_Size + 4 range 0 .. 31;
      Pitch                  at Message_Size + 8 range 0 .. 31;
      Yaw                    at Message_Size + 12 range 0 .. 31;
      Thrust                 at Message_Size + 16 range 0 .. 31;
      Mode_Switch            at Message_Size + 20 range 0 .. 7;
      Manual_Override_Switch at Message_Size + 21 range 0 .. 7;
   end record;

   type Set_Attitude_Target is new Message
     (Message_Id => Set_Attitude_Target_Id,
      Payload_Length => 39) with record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Type_Mask        : Types.Attitude_Target_Typemask;
      Q                : Short_Float_Array (1..4);
      Body_Roll_Rate   : Short_Float;
      Body_Pitch_Rate  : Short_Float;
      Body_Yaw_Rate    : Short_Float;
      Thrust           : Short_Float;
   end record;
   for Set_Attitude_Target use record
      Time_Boot_Ms     at Message_Size + 0 range 0 .. 31;
      Q                at Message_Size + 4 range 0 .. 127;
      Body_Roll_Rate   at Message_Size + 20 range 0 .. 31;
      Body_Pitch_Rate  at Message_Size + 24 range 0 .. 31;
      Body_Yaw_Rate    at Message_Size + 28 range 0 .. 31;
      Thrust           at Message_Size + 32 range 0 .. 31;
      Target_System    at Message_Size + 36 range 0 .. 7;
      Target_Component at Message_Size + 37 range 0 .. 7;
      Type_Mask        at Message_Size + 38 range 0 .. 7;
   end record;

   type Attitude_Target is new Message
     (Message_Id => Attitude_Target_Id,
      Payload_Length => 37) with record
      Time_Boot_Ms    : Interfaces.Unsigned_32;
      Type_Mask       : Types.Attitude_Target_Typemask;
      Q               : Short_Float_Array (1..4);
      Body_Roll_Rate  : Short_Float;
      Body_Pitch_Rate : Short_Float;
      Body_Yaw_Rate   : Short_Float;
      Thrust          : Short_Float;
   end record;
   for Attitude_Target use record
      Time_Boot_Ms    at Message_Size + 0 range 0 .. 31;
      Q               at Message_Size + 4 range 0 .. 127;
      Body_Roll_Rate  at Message_Size + 20 range 0 .. 31;
      Body_Pitch_Rate at Message_Size + 24 range 0 .. 31;
      Body_Yaw_Rate   at Message_Size + 28 range 0 .. 31;
      Thrust          at Message_Size + 32 range 0 .. 31;
      Type_Mask       at Message_Size + 36 range 0 .. 7;
   end record;

   type Set_Position_Target_Local_Ned is new Message
     (Message_Id => Set_Position_Target_Local_Ned_Id,
      Payload_Length => 53) with record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Coordinate_Frame : Types.Mav_Frame;
      Type_Mask        : Types.Position_Target_Typemask;
      X                : Short_Float;
      Y                : Short_Float;
      Z                : Short_Float;
      Vx               : Short_Float;
      Vy               : Short_Float;
      Vz               : Short_Float;
      Afx              : Short_Float;
      Afy              : Short_Float;
      Afz              : Short_Float;
      Yaw              : Short_Float;
      Yaw_Rate         : Short_Float;
   end record;
   for Set_Position_Target_Local_Ned use record
      Time_Boot_Ms     at Message_Size + 0 range 0 .. 31;
      X                at Message_Size + 4 range 0 .. 31;
      Y                at Message_Size + 8 range 0 .. 31;
      Z                at Message_Size + 12 range 0 .. 31;
      Vx               at Message_Size + 16 range 0 .. 31;
      Vy               at Message_Size + 20 range 0 .. 31;
      Vz               at Message_Size + 24 range 0 .. 31;
      Afx              at Message_Size + 28 range 0 .. 31;
      Afy              at Message_Size + 32 range 0 .. 31;
      Afz              at Message_Size + 36 range 0 .. 31;
      Yaw              at Message_Size + 40 range 0 .. 31;
      Yaw_Rate         at Message_Size + 44 range 0 .. 31;
      Type_Mask        at Message_Size + 48 range 0 .. 15;
      Target_System    at Message_Size + 50 range 0 .. 7;
      Target_Component at Message_Size + 51 range 0 .. 7;
      Coordinate_Frame at Message_Size + 52 range 0 .. 7;
   end record;

   type Position_Target_Local_Ned is new Message
     (Message_Id => Position_Target_Local_Ned_Id,
      Payload_Length => 51) with record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      Coordinate_Frame : Types.Mav_Frame;
      Type_Mask        : Types.Position_Target_Typemask;
      X                : Short_Float;
      Y                : Short_Float;
      Z                : Short_Float;
      Vx               : Short_Float;
      Vy               : Short_Float;
      Vz               : Short_Float;
      Afx              : Short_Float;
      Afy              : Short_Float;
      Afz              : Short_Float;
      Yaw              : Short_Float;
      Yaw_Rate         : Short_Float;
   end record;
   for Position_Target_Local_Ned use record
      Time_Boot_Ms     at Message_Size + 0 range 0 .. 31;
      X                at Message_Size + 4 range 0 .. 31;
      Y                at Message_Size + 8 range 0 .. 31;
      Z                at Message_Size + 12 range 0 .. 31;
      Vx               at Message_Size + 16 range 0 .. 31;
      Vy               at Message_Size + 20 range 0 .. 31;
      Vz               at Message_Size + 24 range 0 .. 31;
      Afx              at Message_Size + 28 range 0 .. 31;
      Afy              at Message_Size + 32 range 0 .. 31;
      Afz              at Message_Size + 36 range 0 .. 31;
      Yaw              at Message_Size + 40 range 0 .. 31;
      Yaw_Rate         at Message_Size + 44 range 0 .. 31;
      Type_Mask        at Message_Size + 48 range 0 .. 15;
      Coordinate_Frame at Message_Size + 50 range 0 .. 7;
   end record;

   type Set_Position_Target_Global_Int is new Message
     (Message_Id => Set_Position_Target_Global_Int_Id,
      Payload_Length => 53) with record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Coordinate_Frame : Types.Mav_Frame;
      Type_Mask        : Types.Position_Target_Typemask;
      Lat_Int          : Interfaces.Integer_32;
      Lon_Int          : Interfaces.Integer_32;
      Alt              : Short_Float;
      Vx               : Short_Float;
      Vy               : Short_Float;
      Vz               : Short_Float;
      Afx              : Short_Float;
      Afy              : Short_Float;
      Afz              : Short_Float;
      Yaw              : Short_Float;
      Yaw_Rate         : Short_Float;
   end record;
   for Set_Position_Target_Global_Int use record
      Time_Boot_Ms     at Message_Size + 0 range 0 .. 31;
      Lat_Int          at Message_Size + 4 range 0 .. 31;
      Lon_Int          at Message_Size + 8 range 0 .. 31;
      Alt              at Message_Size + 12 range 0 .. 31;
      Vx               at Message_Size + 16 range 0 .. 31;
      Vy               at Message_Size + 20 range 0 .. 31;
      Vz               at Message_Size + 24 range 0 .. 31;
      Afx              at Message_Size + 28 range 0 .. 31;
      Afy              at Message_Size + 32 range 0 .. 31;
      Afz              at Message_Size + 36 range 0 .. 31;
      Yaw              at Message_Size + 40 range 0 .. 31;
      Yaw_Rate         at Message_Size + 44 range 0 .. 31;
      Type_Mask        at Message_Size + 48 range 0 .. 15;
      Target_System    at Message_Size + 50 range 0 .. 7;
      Target_Component at Message_Size + 51 range 0 .. 7;
      Coordinate_Frame at Message_Size + 52 range 0 .. 7;
   end record;

   type Position_Target_Global_Int is new Message
     (Message_Id => Position_Target_Global_Int_Id,
      Payload_Length => 51) with record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      Coordinate_Frame : Types.Mav_Frame;
      Type_Mask        : Types.Position_Target_Typemask;
      Lat_Int          : Interfaces.Integer_32;
      Lon_Int          : Interfaces.Integer_32;
      Alt              : Short_Float;
      Vx               : Short_Float;
      Vy               : Short_Float;
      Vz               : Short_Float;
      Afx              : Short_Float;
      Afy              : Short_Float;
      Afz              : Short_Float;
      Yaw              : Short_Float;
      Yaw_Rate         : Short_Float;
   end record;
   for Position_Target_Global_Int use record
      Time_Boot_Ms     at Message_Size + 0 range 0 .. 31;
      Lat_Int          at Message_Size + 4 range 0 .. 31;
      Lon_Int          at Message_Size + 8 range 0 .. 31;
      Alt              at Message_Size + 12 range 0 .. 31;
      Vx               at Message_Size + 16 range 0 .. 31;
      Vy               at Message_Size + 20 range 0 .. 31;
      Vz               at Message_Size + 24 range 0 .. 31;
      Afx              at Message_Size + 28 range 0 .. 31;
      Afy              at Message_Size + 32 range 0 .. 31;
      Afz              at Message_Size + 36 range 0 .. 31;
      Yaw              at Message_Size + 40 range 0 .. 31;
      Yaw_Rate         at Message_Size + 44 range 0 .. 31;
      Type_Mask        at Message_Size + 48 range 0 .. 15;
      Coordinate_Frame at Message_Size + 50 range 0 .. 7;
   end record;

   type Local_Position_Ned_System_Global_Offset is new Message
     (Message_Id => Local_Position_Ned_System_Global_Offset_Id,
      Payload_Length => 28) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      X            : Short_Float;
      Y            : Short_Float;
      Z            : Short_Float;
      Roll         : Short_Float;
      Pitch        : Short_Float;
      Yaw          : Short_Float;
   end record;
   for Local_Position_Ned_System_Global_Offset use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      X            at Message_Size + 4 range 0 .. 31;
      Y            at Message_Size + 8 range 0 .. 31;
      Z            at Message_Size + 12 range 0 .. 31;
      Roll         at Message_Size + 16 range 0 .. 31;
      Pitch        at Message_Size + 20 range 0 .. 31;
      Yaw          at Message_Size + 24 range 0 .. 31;
   end record;

   type Hil_State is new Message
     (Message_Id => Hil_State_Id,
      Payload_Length => 56) with record
      Time_Usec  : Interfaces.Unsigned_64;
      Roll       : Short_Float;
      Pitch      : Short_Float;
      Yaw        : Short_Float;
      Rollspeed  : Short_Float;
      Pitchspeed : Short_Float;
      Yawspeed   : Short_Float;
      Lat        : Interfaces.Integer_32;
      Lon        : Interfaces.Integer_32;
      Alt        : Interfaces.Integer_32;
      Vx         : Interfaces.Integer_16;
      Vy         : Interfaces.Integer_16;
      Vz         : Interfaces.Integer_16;
      Xacc       : Interfaces.Integer_16;
      Yacc       : Interfaces.Integer_16;
      Zacc       : Interfaces.Integer_16;
   end record;
   for Hil_State use record
      Time_Usec  at Message_Size + 0 range 0 .. 63;
      Roll       at Message_Size + 8 range 0 .. 31;
      Pitch      at Message_Size + 12 range 0 .. 31;
      Yaw        at Message_Size + 16 range 0 .. 31;
      Rollspeed  at Message_Size + 20 range 0 .. 31;
      Pitchspeed at Message_Size + 24 range 0 .. 31;
      Yawspeed   at Message_Size + 28 range 0 .. 31;
      Lat        at Message_Size + 32 range 0 .. 31;
      Lon        at Message_Size + 36 range 0 .. 31;
      Alt        at Message_Size + 40 range 0 .. 31;
      Vx         at Message_Size + 44 range 0 .. 15;
      Vy         at Message_Size + 46 range 0 .. 15;
      Vz         at Message_Size + 48 range 0 .. 15;
      Xacc       at Message_Size + 50 range 0 .. 15;
      Yacc       at Message_Size + 52 range 0 .. 15;
      Zacc       at Message_Size + 54 range 0 .. 15;
   end record;

   type Hil_Controls is new Message
     (Message_Id => Hil_Controls_Id,
      Payload_Length => 42) with record
      Time_Usec      : Interfaces.Unsigned_64;
      Roll_Ailerons  : Short_Float;
      Pitch_Elevator : Short_Float;
      Yaw_Rudder     : Short_Float;
      Throttle       : Short_Float;
      Aux1           : Short_Float;
      Aux2           : Short_Float;
      Aux3           : Short_Float;
      Aux4           : Short_Float;
      Mode           : Types.Mav_Mode;
      Nav_Mode       : Interfaces.Unsigned_8;
   end record;
   for Hil_Controls use record
      Time_Usec      at Message_Size + 0 range 0 .. 63;
      Roll_Ailerons  at Message_Size + 8 range 0 .. 31;
      Pitch_Elevator at Message_Size + 12 range 0 .. 31;
      Yaw_Rudder     at Message_Size + 16 range 0 .. 31;
      Throttle       at Message_Size + 20 range 0 .. 31;
      Aux1           at Message_Size + 24 range 0 .. 31;
      Aux2           at Message_Size + 28 range 0 .. 31;
      Aux3           at Message_Size + 32 range 0 .. 31;
      Aux4           at Message_Size + 36 range 0 .. 31;
      Mode           at Message_Size + 40 range 0 .. 7;
      Nav_Mode       at Message_Size + 41 range 0 .. 7;
   end record;

   type Hil_Rc_Inputs_Raw is new Message
     (Message_Id => Hil_Rc_Inputs_Raw_Id,
      Payload_Length => 33) with record
      Time_Usec  : Interfaces.Unsigned_64;
      Chan1_Raw  : Interfaces.Unsigned_16;
      Chan2_Raw  : Interfaces.Unsigned_16;
      Chan3_Raw  : Interfaces.Unsigned_16;
      Chan4_Raw  : Interfaces.Unsigned_16;
      Chan5_Raw  : Interfaces.Unsigned_16;
      Chan6_Raw  : Interfaces.Unsigned_16;
      Chan7_Raw  : Interfaces.Unsigned_16;
      Chan8_Raw  : Interfaces.Unsigned_16;
      Chan9_Raw  : Interfaces.Unsigned_16;
      Chan10_Raw : Interfaces.Unsigned_16;
      Chan11_Raw : Interfaces.Unsigned_16;
      Chan12_Raw : Interfaces.Unsigned_16;
      Rssi       : Interfaces.Unsigned_8;
   end record;
   for Hil_Rc_Inputs_Raw use record
      Time_Usec  at Message_Size + 0 range 0 .. 63;
      Chan1_Raw  at Message_Size + 8 range 0 .. 15;
      Chan2_Raw  at Message_Size + 10 range 0 .. 15;
      Chan3_Raw  at Message_Size + 12 range 0 .. 15;
      Chan4_Raw  at Message_Size + 14 range 0 .. 15;
      Chan5_Raw  at Message_Size + 16 range 0 .. 15;
      Chan6_Raw  at Message_Size + 18 range 0 .. 15;
      Chan7_Raw  at Message_Size + 20 range 0 .. 15;
      Chan8_Raw  at Message_Size + 22 range 0 .. 15;
      Chan9_Raw  at Message_Size + 24 range 0 .. 15;
      Chan10_Raw at Message_Size + 26 range 0 .. 15;
      Chan11_Raw at Message_Size + 28 range 0 .. 15;
      Chan12_Raw at Message_Size + 30 range 0 .. 15;
      Rssi       at Message_Size + 32 range 0 .. 7;
   end record;

   type Hil_Actuator_Controls is new Message
     (Message_Id => Hil_Actuator_Controls_Id,
      Payload_Length => 81) with record
      Time_Usec : Interfaces.Unsigned_64;
      Controls  : Short_Float_Array (1..16);
      Mode      : Types.Mav_Mode_Flag;
      Flags     : Interfaces.Unsigned_64;
   end record;
   for Hil_Actuator_Controls use record
      Time_Usec at Message_Size + 0 range 0 .. 63;
      Flags     at Message_Size + 8 range 0 .. 63;
      Controls  at Message_Size + 16 range 0 .. 511;
      Mode      at Message_Size + 80 range 0 .. 7;
   end record;

   type Optical_Flow is new Message
     (Message_Id => Optical_Flow_Id,
      Payload_Length => 26) with record
      Time_Usec       : Interfaces.Unsigned_64;
      Sensor_Id       : Interfaces.Unsigned_8;
      Flow_X          : Interfaces.Integer_16;
      Flow_Y          : Interfaces.Integer_16;
      Flow_Comp_M_X   : Short_Float;
      Flow_Comp_M_Y   : Short_Float;
      Quality         : Interfaces.Unsigned_8;
      Ground_Distance : Short_Float;
   end record;
   for Optical_Flow use record
      Time_Usec       at Message_Size + 0 range 0 .. 63;
      Flow_Comp_M_X   at Message_Size + 8 range 0 .. 31;
      Flow_Comp_M_Y   at Message_Size + 12 range 0 .. 31;
      Ground_Distance at Message_Size + 16 range 0 .. 31;
      Flow_X          at Message_Size + 20 range 0 .. 15;
      Flow_Y          at Message_Size + 22 range 0 .. 15;
      Sensor_Id       at Message_Size + 24 range 0 .. 7;
      Quality         at Message_Size + 25 range 0 .. 7;
   end record;

   type Global_Vision_Position_Estimate is new Message
     (Message_Id => Global_Vision_Position_Estimate_Id,
      Payload_Length => 32) with record
      Usec  : Interfaces.Unsigned_64;
      X     : Short_Float;
      Y     : Short_Float;
      Z     : Short_Float;
      Roll  : Short_Float;
      Pitch : Short_Float;
      Yaw   : Short_Float;
   end record;
   for Global_Vision_Position_Estimate use record
      Usec  at Message_Size + 0 range 0 .. 63;
      X     at Message_Size + 8 range 0 .. 31;
      Y     at Message_Size + 12 range 0 .. 31;
      Z     at Message_Size + 16 range 0 .. 31;
      Roll  at Message_Size + 20 range 0 .. 31;
      Pitch at Message_Size + 24 range 0 .. 31;
      Yaw   at Message_Size + 28 range 0 .. 31;
   end record;

   type Vision_Position_Estimate is new Message
     (Message_Id => Vision_Position_Estimate_Id,
      Payload_Length => 32) with record
      Usec  : Interfaces.Unsigned_64;
      X     : Short_Float;
      Y     : Short_Float;
      Z     : Short_Float;
      Roll  : Short_Float;
      Pitch : Short_Float;
      Yaw   : Short_Float;
   end record;
   for Vision_Position_Estimate use record
      Usec  at Message_Size + 0 range 0 .. 63;
      X     at Message_Size + 8 range 0 .. 31;
      Y     at Message_Size + 12 range 0 .. 31;
      Z     at Message_Size + 16 range 0 .. 31;
      Roll  at Message_Size + 20 range 0 .. 31;
      Pitch at Message_Size + 24 range 0 .. 31;
      Yaw   at Message_Size + 28 range 0 .. 31;
   end record;

   type Vision_Speed_Estimate is new Message
     (Message_Id => Vision_Speed_Estimate_Id,
      Payload_Length => 20) with record
      Usec : Interfaces.Unsigned_64;
      X    : Short_Float;
      Y    : Short_Float;
      Z    : Short_Float;
   end record;
   for Vision_Speed_Estimate use record
      Usec at Message_Size + 0 range 0 .. 63;
      X    at Message_Size + 8 range 0 .. 31;
      Y    at Message_Size + 12 range 0 .. 31;
      Z    at Message_Size + 16 range 0 .. 31;
   end record;

   type Vicon_Position_Estimate is new Message
     (Message_Id => Vicon_Position_Estimate_Id,
      Payload_Length => 32) with record
      Usec  : Interfaces.Unsigned_64;
      X     : Short_Float;
      Y     : Short_Float;
      Z     : Short_Float;
      Roll  : Short_Float;
      Pitch : Short_Float;
      Yaw   : Short_Float;
   end record;
   for Vicon_Position_Estimate use record
      Usec  at Message_Size + 0 range 0 .. 63;
      X     at Message_Size + 8 range 0 .. 31;
      Y     at Message_Size + 12 range 0 .. 31;
      Z     at Message_Size + 16 range 0 .. 31;
      Roll  at Message_Size + 20 range 0 .. 31;
      Pitch at Message_Size + 24 range 0 .. 31;
      Yaw   at Message_Size + 28 range 0 .. 31;
   end record;

   type Highres_Imu is new Message
     (Message_Id => Highres_Imu_Id,
      Payload_Length => 62) with record
      Time_Usec      : Interfaces.Unsigned_64;
      Xacc           : Short_Float;
      Yacc           : Short_Float;
      Zacc           : Short_Float;
      Xgyro          : Short_Float;
      Ygyro          : Short_Float;
      Zgyro          : Short_Float;
      Xmag           : Short_Float;
      Ymag           : Short_Float;
      Zmag           : Short_Float;
      Abs_Pressure   : Short_Float;
      Diff_Pressure  : Short_Float;
      Pressure_Alt   : Short_Float;
      Temperature    : Short_Float;
      Fields_Updated : Types.Highres_Imu_Updated_Flags;
   end record;
   for Highres_Imu use record
      Time_Usec      at Message_Size + 0 range 0 .. 63;
      Xacc           at Message_Size + 8 range 0 .. 31;
      Yacc           at Message_Size + 12 range 0 .. 31;
      Zacc           at Message_Size + 16 range 0 .. 31;
      Xgyro          at Message_Size + 20 range 0 .. 31;
      Ygyro          at Message_Size + 24 range 0 .. 31;
      Zgyro          at Message_Size + 28 range 0 .. 31;
      Xmag           at Message_Size + 32 range 0 .. 31;
      Ymag           at Message_Size + 36 range 0 .. 31;
      Zmag           at Message_Size + 40 range 0 .. 31;
      Abs_Pressure   at Message_Size + 44 range 0 .. 31;
      Diff_Pressure  at Message_Size + 48 range 0 .. 31;
      Pressure_Alt   at Message_Size + 52 range 0 .. 31;
      Temperature    at Message_Size + 56 range 0 .. 31;
      Fields_Updated at Message_Size + 60 range 0 .. 15;
   end record;

   type Optical_Flow_Rad is new Message
     (Message_Id => Optical_Flow_Rad_Id,
      Payload_Length => 44) with record
      Time_Usec              : Interfaces.Unsigned_64;
      Sensor_Id              : Interfaces.Unsigned_8;
      Integration_Time_Us    : Interfaces.Unsigned_32;
      Integrated_X           : Short_Float;
      Integrated_Y           : Short_Float;
      Integrated_Xgyro       : Short_Float;
      Integrated_Ygyro       : Short_Float;
      Integrated_Zgyro       : Short_Float;
      Temperature            : Interfaces.Integer_16;
      Quality                : Interfaces.Unsigned_8;
      Time_Delta_Distance_Us : Interfaces.Unsigned_32;
      Distance               : Short_Float;
   end record;
   for Optical_Flow_Rad use record
      Time_Usec              at Message_Size + 0 range 0 .. 63;
      Integration_Time_Us    at Message_Size + 8 range 0 .. 31;
      Integrated_X           at Message_Size + 12 range 0 .. 31;
      Integrated_Y           at Message_Size + 16 range 0 .. 31;
      Integrated_Xgyro       at Message_Size + 20 range 0 .. 31;
      Integrated_Ygyro       at Message_Size + 24 range 0 .. 31;
      Integrated_Zgyro       at Message_Size + 28 range 0 .. 31;
      Time_Delta_Distance_Us at Message_Size + 32 range 0 .. 31;
      Distance               at Message_Size + 36 range 0 .. 31;
      Temperature            at Message_Size + 40 range 0 .. 15;
      Sensor_Id              at Message_Size + 42 range 0 .. 7;
      Quality                at Message_Size + 43 range 0 .. 7;
   end record;

   type Hil_Sensor is new Message
     (Message_Id => Hil_Sensor_Id,
      Payload_Length => 64) with record
      Time_Usec      : Interfaces.Unsigned_64;
      Xacc           : Short_Float;
      Yacc           : Short_Float;
      Zacc           : Short_Float;
      Xgyro          : Short_Float;
      Ygyro          : Short_Float;
      Zgyro          : Short_Float;
      Xmag           : Short_Float;
      Ymag           : Short_Float;
      Zmag           : Short_Float;
      Abs_Pressure   : Short_Float;
      Diff_Pressure  : Short_Float;
      Pressure_Alt   : Short_Float;
      Temperature    : Short_Float;
      Fields_Updated : Types.Hil_Sensor_Updated_Flags;
   end record;
   for Hil_Sensor use record
      Time_Usec      at Message_Size + 0 range 0 .. 63;
      Xacc           at Message_Size + 8 range 0 .. 31;
      Yacc           at Message_Size + 12 range 0 .. 31;
      Zacc           at Message_Size + 16 range 0 .. 31;
      Xgyro          at Message_Size + 20 range 0 .. 31;
      Ygyro          at Message_Size + 24 range 0 .. 31;
      Zgyro          at Message_Size + 28 range 0 .. 31;
      Xmag           at Message_Size + 32 range 0 .. 31;
      Ymag           at Message_Size + 36 range 0 .. 31;
      Zmag           at Message_Size + 40 range 0 .. 31;
      Abs_Pressure   at Message_Size + 44 range 0 .. 31;
      Diff_Pressure  at Message_Size + 48 range 0 .. 31;
      Pressure_Alt   at Message_Size + 52 range 0 .. 31;
      Temperature    at Message_Size + 56 range 0 .. 31;
      Fields_Updated at Message_Size + 60 range 0 .. 31;
   end record;

   type Sim_State is new Message
     (Message_Id => Sim_State_Id,
      Payload_Length => 84) with record
      Q1           : Short_Float;
      Q2           : Short_Float;
      Q3           : Short_Float;
      Q4           : Short_Float;
      Roll         : Short_Float;
      Pitch        : Short_Float;
      Yaw          : Short_Float;
      Xacc         : Short_Float;
      Yacc         : Short_Float;
      Zacc         : Short_Float;
      Xgyro        : Short_Float;
      Ygyro        : Short_Float;
      Zgyro        : Short_Float;
      Lat          : Short_Float;
      Lon          : Short_Float;
      Alt          : Short_Float;
      Std_Dev_Horz : Short_Float;
      Std_Dev_Vert : Short_Float;
      Vn           : Short_Float;
      Ve           : Short_Float;
      Vd           : Short_Float;
   end record;
   for Sim_State use record
      Q1           at Message_Size + 0 range 0 .. 31;
      Q2           at Message_Size + 4 range 0 .. 31;
      Q3           at Message_Size + 8 range 0 .. 31;
      Q4           at Message_Size + 12 range 0 .. 31;
      Roll         at Message_Size + 16 range 0 .. 31;
      Pitch        at Message_Size + 20 range 0 .. 31;
      Yaw          at Message_Size + 24 range 0 .. 31;
      Xacc         at Message_Size + 28 range 0 .. 31;
      Yacc         at Message_Size + 32 range 0 .. 31;
      Zacc         at Message_Size + 36 range 0 .. 31;
      Xgyro        at Message_Size + 40 range 0 .. 31;
      Ygyro        at Message_Size + 44 range 0 .. 31;
      Zgyro        at Message_Size + 48 range 0 .. 31;
      Lat          at Message_Size + 52 range 0 .. 31;
      Lon          at Message_Size + 56 range 0 .. 31;
      Alt          at Message_Size + 60 range 0 .. 31;
      Std_Dev_Horz at Message_Size + 64 range 0 .. 31;
      Std_Dev_Vert at Message_Size + 68 range 0 .. 31;
      Vn           at Message_Size + 72 range 0 .. 31;
      Ve           at Message_Size + 76 range 0 .. 31;
      Vd           at Message_Size + 80 range 0 .. 31;
   end record;

   type Radio_Status is new Message
     (Message_Id => Radio_Status_Id,
      Payload_Length => 9) with record
      Rssi     : Interfaces.Unsigned_8;
      Remrssi  : Interfaces.Unsigned_8;
      Txbuf    : Interfaces.Unsigned_8;
      Noise    : Interfaces.Unsigned_8;
      Remnoise : Interfaces.Unsigned_8;
      Rxerrors : Interfaces.Unsigned_16;
      Fixed    : Interfaces.Unsigned_16;
   end record;
   for Radio_Status use record
      Rxerrors at Message_Size + 0 range 0 .. 15;
      Fixed    at Message_Size + 2 range 0 .. 15;
      Rssi     at Message_Size + 4 range 0 .. 7;
      Remrssi  at Message_Size + 5 range 0 .. 7;
      Txbuf    at Message_Size + 6 range 0 .. 7;
      Noise    at Message_Size + 7 range 0 .. 7;
      Remnoise at Message_Size + 8 range 0 .. 7;
   end record;

   type File_Transfer_Protocol is new Message
     (Message_Id => File_Transfer_Protocol_Id,
      Payload_Length => 254) with record
      Target_Network   : Interfaces.Unsigned_8;
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Payload          : Unsigned_8_Array (1..251);
   end record;
   for File_Transfer_Protocol use record
      Target_Network   at Message_Size + 0 range 0 .. 7;
      Target_System    at Message_Size + 1 range 0 .. 7;
      Target_Component at Message_Size + 2 range 0 .. 7;
      Payload          at Message_Size + 3 range 0 .. 2007;
   end record;

   type Timesync is new Message
     (Message_Id => Timesync_Id,
      Payload_Length => 16) with record
      Tc1 : Interfaces.Integer_64;
      Ts1 : Interfaces.Integer_64;
   end record;
   for Timesync use record
      Tc1 at Message_Size + 0 range 0 .. 63;
      Ts1 at Message_Size + 8 range 0 .. 63;
   end record;

   type Camera_Trigger is new Message
     (Message_Id => Camera_Trigger_Id,
      Payload_Length => 12) with record
      Time_Usec : Interfaces.Unsigned_64;
      Seq       : Interfaces.Unsigned_32;
   end record;
   for Camera_Trigger use record
      Time_Usec at Message_Size + 0 range 0 .. 63;
      Seq       at Message_Size + 8 range 0 .. 31;
   end record;

   type Hil_Gps is new Message
     (Message_Id => Hil_Gps_Id,
      Payload_Length => 36) with record
      Time_Usec          : Interfaces.Unsigned_64;
      Fix_Type           : Interfaces.Unsigned_8;
      Lat                : Interfaces.Integer_32;
      Lon                : Interfaces.Integer_32;
      Alt                : Interfaces.Integer_32;
      Eph                : Interfaces.Unsigned_16;
      Epv                : Interfaces.Unsigned_16;
      Vel                : Interfaces.Unsigned_16;
      Vn                 : Interfaces.Integer_16;
      Ve                 : Interfaces.Integer_16;
      Vd                 : Interfaces.Integer_16;
      Cog                : Interfaces.Unsigned_16;
      Satellites_Visible : Interfaces.Unsigned_8;
   end record;
   for Hil_Gps use record
      Time_Usec          at Message_Size + 0 range 0 .. 63;
      Lat                at Message_Size + 8 range 0 .. 31;
      Lon                at Message_Size + 12 range 0 .. 31;
      Alt                at Message_Size + 16 range 0 .. 31;
      Eph                at Message_Size + 20 range 0 .. 15;
      Epv                at Message_Size + 22 range 0 .. 15;
      Vel                at Message_Size + 24 range 0 .. 15;
      Vn                 at Message_Size + 26 range 0 .. 15;
      Ve                 at Message_Size + 28 range 0 .. 15;
      Vd                 at Message_Size + 30 range 0 .. 15;
      Cog                at Message_Size + 32 range 0 .. 15;
      Fix_Type           at Message_Size + 34 range 0 .. 7;
      Satellites_Visible at Message_Size + 35 range 0 .. 7;
   end record;

   type Hil_Optical_Flow is new Message
     (Message_Id => Hil_Optical_Flow_Id,
      Payload_Length => 44) with record
      Time_Usec              : Interfaces.Unsigned_64;
      Sensor_Id              : Interfaces.Unsigned_8;
      Integration_Time_Us    : Interfaces.Unsigned_32;
      Integrated_X           : Short_Float;
      Integrated_Y           : Short_Float;
      Integrated_Xgyro       : Short_Float;
      Integrated_Ygyro       : Short_Float;
      Integrated_Zgyro       : Short_Float;
      Temperature            : Interfaces.Integer_16;
      Quality                : Interfaces.Unsigned_8;
      Time_Delta_Distance_Us : Interfaces.Unsigned_32;
      Distance               : Short_Float;
   end record;
   for Hil_Optical_Flow use record
      Time_Usec              at Message_Size + 0 range 0 .. 63;
      Integration_Time_Us    at Message_Size + 8 range 0 .. 31;
      Integrated_X           at Message_Size + 12 range 0 .. 31;
      Integrated_Y           at Message_Size + 16 range 0 .. 31;
      Integrated_Xgyro       at Message_Size + 20 range 0 .. 31;
      Integrated_Ygyro       at Message_Size + 24 range 0 .. 31;
      Integrated_Zgyro       at Message_Size + 28 range 0 .. 31;
      Time_Delta_Distance_Us at Message_Size + 32 range 0 .. 31;
      Distance               at Message_Size + 36 range 0 .. 31;
      Temperature            at Message_Size + 40 range 0 .. 15;
      Sensor_Id              at Message_Size + 42 range 0 .. 7;
      Quality                at Message_Size + 43 range 0 .. 7;
   end record;

   type Hil_State_Quaternion is new Message
     (Message_Id => Hil_State_Quaternion_Id,
      Payload_Length => 64) with record
      Time_Usec           : Interfaces.Unsigned_64;
      Attitude_Quaternion : Short_Float_Array (1..4);
      Rollspeed           : Short_Float;
      Pitchspeed          : Short_Float;
      Yawspeed            : Short_Float;
      Lat                 : Interfaces.Integer_32;
      Lon                 : Interfaces.Integer_32;
      Alt                 : Interfaces.Integer_32;
      Vx                  : Interfaces.Integer_16;
      Vy                  : Interfaces.Integer_16;
      Vz                  : Interfaces.Integer_16;
      Ind_Airspeed        : Interfaces.Unsigned_16;
      True_Airspeed       : Interfaces.Unsigned_16;
      Xacc                : Interfaces.Integer_16;
      Yacc                : Interfaces.Integer_16;
      Zacc                : Interfaces.Integer_16;
   end record;
   for Hil_State_Quaternion use record
      Time_Usec           at Message_Size + 0 range 0 .. 63;
      Attitude_Quaternion at Message_Size + 8 range 0 .. 127;
      Rollspeed           at Message_Size + 24 range 0 .. 31;
      Pitchspeed          at Message_Size + 28 range 0 .. 31;
      Yawspeed            at Message_Size + 32 range 0 .. 31;
      Lat                 at Message_Size + 36 range 0 .. 31;
      Lon                 at Message_Size + 40 range 0 .. 31;
      Alt                 at Message_Size + 44 range 0 .. 31;
      Vx                  at Message_Size + 48 range 0 .. 15;
      Vy                  at Message_Size + 50 range 0 .. 15;
      Vz                  at Message_Size + 52 range 0 .. 15;
      Ind_Airspeed        at Message_Size + 54 range 0 .. 15;
      True_Airspeed       at Message_Size + 56 range 0 .. 15;
      Xacc                at Message_Size + 58 range 0 .. 15;
      Yacc                at Message_Size + 60 range 0 .. 15;
      Zacc                at Message_Size + 62 range 0 .. 15;
   end record;

   type Scaled_Imu2 is new Message
     (Message_Id => Scaled_Imu2_Id,
      Payload_Length => 22) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Xacc         : Interfaces.Integer_16;
      Yacc         : Interfaces.Integer_16;
      Zacc         : Interfaces.Integer_16;
      Xgyro        : Interfaces.Integer_16;
      Ygyro        : Interfaces.Integer_16;
      Zgyro        : Interfaces.Integer_16;
      Xmag         : Interfaces.Integer_16;
      Ymag         : Interfaces.Integer_16;
      Zmag         : Interfaces.Integer_16;
   end record;
   for Scaled_Imu2 use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Xacc         at Message_Size + 4 range 0 .. 15;
      Yacc         at Message_Size + 6 range 0 .. 15;
      Zacc         at Message_Size + 8 range 0 .. 15;
      Xgyro        at Message_Size + 10 range 0 .. 15;
      Ygyro        at Message_Size + 12 range 0 .. 15;
      Zgyro        at Message_Size + 14 range 0 .. 15;
      Xmag         at Message_Size + 16 range 0 .. 15;
      Ymag         at Message_Size + 18 range 0 .. 15;
      Zmag         at Message_Size + 20 range 0 .. 15;
   end record;

   type Log_Request_List is new Message
     (Message_Id => Log_Request_List_Id,
      Payload_Length => 6) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Start            : Interfaces.Unsigned_16;
      End_Field        : Interfaces.Unsigned_16;
   end record;
   for Log_Request_List use record
      Start            at Message_Size + 0 range 0 .. 15;
      End_Field        at Message_Size + 2 range 0 .. 15;
      Target_System    at Message_Size + 4 range 0 .. 7;
      Target_Component at Message_Size + 5 range 0 .. 7;
   end record;

   type Log_Entry is new Message
     (Message_Id => Log_Entry_Id,
      Payload_Length => 14) with record
      Id           : Interfaces.Unsigned_16;
      Num_Logs     : Interfaces.Unsigned_16;
      Last_Log_Num : Interfaces.Unsigned_16;
      Time_Utc     : Interfaces.Unsigned_32;
      Size         : Interfaces.Unsigned_32;
   end record;
   for Log_Entry use record
      Time_Utc     at Message_Size + 0 range 0 .. 31;
      Size         at Message_Size + 4 range 0 .. 31;
      Id           at Message_Size + 8 range 0 .. 15;
      Num_Logs     at Message_Size + 10 range 0 .. 15;
      Last_Log_Num at Message_Size + 12 range 0 .. 15;
   end record;

   type Log_Request_Data is new Message
     (Message_Id => Log_Request_Data_Id,
      Payload_Length => 12) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Id               : Interfaces.Unsigned_16;
      Ofs              : Interfaces.Unsigned_32;
      Count            : Interfaces.Unsigned_32;
   end record;
   for Log_Request_Data use record
      Ofs              at Message_Size + 0 range 0 .. 31;
      Count            at Message_Size + 4 range 0 .. 31;
      Id               at Message_Size + 8 range 0 .. 15;
      Target_System    at Message_Size + 10 range 0 .. 7;
      Target_Component at Message_Size + 11 range 0 .. 7;
   end record;

   type Log_Data is new Message
     (Message_Id => Log_Data_Id,
      Payload_Length => 97) with record
      Id    : Interfaces.Unsigned_16;
      Ofs   : Interfaces.Unsigned_32;
      Count : Interfaces.Unsigned_8;
      Data  : Unsigned_8_Array (1..90);
   end record;
   for Log_Data use record
      Ofs   at Message_Size + 0 range 0 .. 31;
      Id    at Message_Size + 4 range 0 .. 15;
      Count at Message_Size + 6 range 0 .. 7;
      Data  at Message_Size + 7 range 0 .. 719;
   end record;

   type Log_Erase is new Message
     (Message_Id => Log_Erase_Id,
      Payload_Length => 2) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
   end record;
   for Log_Erase use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
   end record;

   type Log_Request_End is new Message
     (Message_Id => Log_Request_End_Id,
      Payload_Length => 2) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
   end record;
   for Log_Request_End use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
   end record;

   type Gps_Inject_Data is new Message
     (Message_Id => Gps_Inject_Data_Id,
      Payload_Length => 113) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Len              : Interfaces.Unsigned_8;
      Data             : Unsigned_8_Array (1..110);
   end record;
   for Gps_Inject_Data use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
      Len              at Message_Size + 2 range 0 .. 7;
      Data             at Message_Size + 3 range 0 .. 879;
   end record;

   type Gps2_Raw is new Message
     (Message_Id => Gps2_Raw_Id,
      Payload_Length => 35) with record
      Time_Usec          : Interfaces.Unsigned_64;
      Fix_Type           : Types.Gps_Fix_Type;
      Lat                : Interfaces.Integer_32;
      Lon                : Interfaces.Integer_32;
      Alt                : Interfaces.Integer_32;
      Eph                : Interfaces.Unsigned_16;
      Epv                : Interfaces.Unsigned_16;
      Vel                : Interfaces.Unsigned_16;
      Cog                : Interfaces.Unsigned_16;
      Satellites_Visible : Interfaces.Unsigned_8;
      Dgps_Numch         : Interfaces.Unsigned_8;
      Dgps_Age           : Interfaces.Unsigned_32;
   end record;
   for Gps2_Raw use record
      Time_Usec          at Message_Size + 0 range 0 .. 63;
      Lat                at Message_Size + 8 range 0 .. 31;
      Lon                at Message_Size + 12 range 0 .. 31;
      Alt                at Message_Size + 16 range 0 .. 31;
      Dgps_Age           at Message_Size + 20 range 0 .. 31;
      Eph                at Message_Size + 24 range 0 .. 15;
      Epv                at Message_Size + 26 range 0 .. 15;
      Vel                at Message_Size + 28 range 0 .. 15;
      Cog                at Message_Size + 30 range 0 .. 15;
      Fix_Type           at Message_Size + 32 range 0 .. 7;
      Satellites_Visible at Message_Size + 33 range 0 .. 7;
      Dgps_Numch         at Message_Size + 34 range 0 .. 7;
   end record;

   type Power_Status is new Message
     (Message_Id => Power_Status_Id,
      Payload_Length => 6) with record
      Vcc    : Interfaces.Unsigned_16;
      Vservo : Interfaces.Unsigned_16;
      Flags  : Types.Mav_Power_Status;
   end record;
   for Power_Status use record
      Vcc    at Message_Size + 0 range 0 .. 15;
      Vservo at Message_Size + 2 range 0 .. 15;
      Flags  at Message_Size + 4 range 0 .. 15;
   end record;

   type Serial_Control is new Message
     (Message_Id => Serial_Control_Id,
      Payload_Length => 79) with record
      Device   : Types.Serial_Control_Dev;
      Flags    : Types.Serial_Control_Flag;
      Timeout  : Interfaces.Unsigned_16;
      Baudrate : Interfaces.Unsigned_32;
      Count    : Interfaces.Unsigned_8;
      Data     : Unsigned_8_Array (1..70);
   end record;
   for Serial_Control use record
      Baudrate at Message_Size + 0 range 0 .. 31;
      Timeout  at Message_Size + 4 range 0 .. 15;
      Device   at Message_Size + 6 range 0 .. 7;
      Flags    at Message_Size + 7 range 0 .. 7;
      Count    at Message_Size + 8 range 0 .. 7;
      Data     at Message_Size + 9 range 0 .. 559;
   end record;

   type Gps_Rtk is new Message
     (Message_Id => Gps_Rtk_Id,
      Payload_Length => 35) with record
      Time_Last_Baseline_Ms : Interfaces.Unsigned_32;
      Rtk_Receiver_Id       : Interfaces.Unsigned_8;
      Wn                    : Interfaces.Unsigned_16;
      Tow                   : Interfaces.Unsigned_32;
      Rtk_Health            : Interfaces.Unsigned_8;
      Rtk_Rate              : Interfaces.Unsigned_8;
      Nsats                 : Interfaces.Unsigned_8;
      Baseline_Coords_Type  : Types.Rtk_Baseline_Coordinate_System;
      Baseline_A_Mm         : Interfaces.Integer_32;
      Baseline_B_Mm         : Interfaces.Integer_32;
      Baseline_C_Mm         : Interfaces.Integer_32;
      Accuracy              : Interfaces.Unsigned_32;
      Iar_Num_Hypotheses    : Interfaces.Integer_32;
   end record;
   for Gps_Rtk use record
      Time_Last_Baseline_Ms at Message_Size + 0 range 0 .. 31;
      Tow                   at Message_Size + 4 range 0 .. 31;
      Baseline_A_Mm         at Message_Size + 8 range 0 .. 31;
      Baseline_B_Mm         at Message_Size + 12 range 0 .. 31;
      Baseline_C_Mm         at Message_Size + 16 range 0 .. 31;
      Accuracy              at Message_Size + 20 range 0 .. 31;
      Iar_Num_Hypotheses    at Message_Size + 24 range 0 .. 31;
      Wn                    at Message_Size + 28 range 0 .. 15;
      Rtk_Receiver_Id       at Message_Size + 30 range 0 .. 7;
      Rtk_Health            at Message_Size + 31 range 0 .. 7;
      Rtk_Rate              at Message_Size + 32 range 0 .. 7;
      Nsats                 at Message_Size + 33 range 0 .. 7;
      Baseline_Coords_Type  at Message_Size + 34 range 0 .. 7;
   end record;

   type Gps2_Rtk is new Message
     (Message_Id => Gps2_Rtk_Id,
      Payload_Length => 35) with record
      Time_Last_Baseline_Ms : Interfaces.Unsigned_32;
      Rtk_Receiver_Id       : Interfaces.Unsigned_8;
      Wn                    : Interfaces.Unsigned_16;
      Tow                   : Interfaces.Unsigned_32;
      Rtk_Health            : Interfaces.Unsigned_8;
      Rtk_Rate              : Interfaces.Unsigned_8;
      Nsats                 : Interfaces.Unsigned_8;
      Baseline_Coords_Type  : Types.Rtk_Baseline_Coordinate_System;
      Baseline_A_Mm         : Interfaces.Integer_32;
      Baseline_B_Mm         : Interfaces.Integer_32;
      Baseline_C_Mm         : Interfaces.Integer_32;
      Accuracy              : Interfaces.Unsigned_32;
      Iar_Num_Hypotheses    : Interfaces.Integer_32;
   end record;
   for Gps2_Rtk use record
      Time_Last_Baseline_Ms at Message_Size + 0 range 0 .. 31;
      Tow                   at Message_Size + 4 range 0 .. 31;
      Baseline_A_Mm         at Message_Size + 8 range 0 .. 31;
      Baseline_B_Mm         at Message_Size + 12 range 0 .. 31;
      Baseline_C_Mm         at Message_Size + 16 range 0 .. 31;
      Accuracy              at Message_Size + 20 range 0 .. 31;
      Iar_Num_Hypotheses    at Message_Size + 24 range 0 .. 31;
      Wn                    at Message_Size + 28 range 0 .. 15;
      Rtk_Receiver_Id       at Message_Size + 30 range 0 .. 7;
      Rtk_Health            at Message_Size + 31 range 0 .. 7;
      Rtk_Rate              at Message_Size + 32 range 0 .. 7;
      Nsats                 at Message_Size + 33 range 0 .. 7;
      Baseline_Coords_Type  at Message_Size + 34 range 0 .. 7;
   end record;

   type Scaled_Imu3 is new Message
     (Message_Id => Scaled_Imu3_Id,
      Payload_Length => 22) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Xacc         : Interfaces.Integer_16;
      Yacc         : Interfaces.Integer_16;
      Zacc         : Interfaces.Integer_16;
      Xgyro        : Interfaces.Integer_16;
      Ygyro        : Interfaces.Integer_16;
      Zgyro        : Interfaces.Integer_16;
      Xmag         : Interfaces.Integer_16;
      Ymag         : Interfaces.Integer_16;
      Zmag         : Interfaces.Integer_16;
   end record;
   for Scaled_Imu3 use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Xacc         at Message_Size + 4 range 0 .. 15;
      Yacc         at Message_Size + 6 range 0 .. 15;
      Zacc         at Message_Size + 8 range 0 .. 15;
      Xgyro        at Message_Size + 10 range 0 .. 15;
      Ygyro        at Message_Size + 12 range 0 .. 15;
      Zgyro        at Message_Size + 14 range 0 .. 15;
      Xmag         at Message_Size + 16 range 0 .. 15;
      Ymag         at Message_Size + 18 range 0 .. 15;
      Zmag         at Message_Size + 20 range 0 .. 15;
   end record;

   type Data_Transmission_Handshake is new Message
     (Message_Id => Data_Transmission_Handshake_Id,
      Payload_Length => 13) with record
      Type_Field  : Types.Mavlink_Data_Stream_Type;
      Size        : Interfaces.Unsigned_32;
      Width       : Interfaces.Unsigned_16;
      Height      : Interfaces.Unsigned_16;
      Packets     : Interfaces.Unsigned_16;
      Payload     : Interfaces.Unsigned_8;
      Jpg_Quality : Interfaces.Unsigned_8;
   end record;
   for Data_Transmission_Handshake use record
      Size        at Message_Size + 0 range 0 .. 31;
      Width       at Message_Size + 4 range 0 .. 15;
      Height      at Message_Size + 6 range 0 .. 15;
      Packets     at Message_Size + 8 range 0 .. 15;
      Type_Field  at Message_Size + 10 range 0 .. 7;
      Payload     at Message_Size + 11 range 0 .. 7;
      Jpg_Quality at Message_Size + 12 range 0 .. 7;
   end record;

   type Encapsulated_Data is new Message
     (Message_Id => Encapsulated_Data_Id,
      Payload_Length => 255) with record
      Seqnr : Interfaces.Unsigned_16;
      Data  : Unsigned_8_Array (1..253);
   end record;
   for Encapsulated_Data use record
      Seqnr at Message_Size + 0 range 0 .. 15;
      Data  at Message_Size + 2 range 0 .. 2023;
   end record;

   type Distance_Sensor is new Message
     (Message_Id => Distance_Sensor_Id,
      Payload_Length => 14) with record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      Min_Distance     : Interfaces.Unsigned_16;
      Max_Distance     : Interfaces.Unsigned_16;
      Current_Distance : Interfaces.Unsigned_16;
      Type_Field       : Types.Mav_Distance_Sensor;
      Id               : Interfaces.Unsigned_8;
      Orientation      : Types.Mav_Sensor_Orientation;
      Covariance       : Interfaces.Unsigned_8;
   end record;
   for Distance_Sensor use record
      Time_Boot_Ms     at Message_Size + 0 range 0 .. 31;
      Min_Distance     at Message_Size + 4 range 0 .. 15;
      Max_Distance     at Message_Size + 6 range 0 .. 15;
      Current_Distance at Message_Size + 8 range 0 .. 15;
      Type_Field       at Message_Size + 10 range 0 .. 7;
      Id               at Message_Size + 11 range 0 .. 7;
      Orientation      at Message_Size + 12 range 0 .. 7;
      Covariance       at Message_Size + 13 range 0 .. 7;
   end record;

   type Terrain_Request is new Message
     (Message_Id => Terrain_Request_Id,
      Payload_Length => 18) with record
      Lat          : Interfaces.Integer_32;
      Lon          : Interfaces.Integer_32;
      Grid_Spacing : Interfaces.Unsigned_16;
      Mask         : Interfaces.Unsigned_64;
   end record;
   for Terrain_Request use record
      Mask         at Message_Size + 0 range 0 .. 63;
      Lat          at Message_Size + 8 range 0 .. 31;
      Lon          at Message_Size + 12 range 0 .. 31;
      Grid_Spacing at Message_Size + 16 range 0 .. 15;
   end record;

   type Terrain_Data is new Message
     (Message_Id => Terrain_Data_Id,
      Payload_Length => 43) with record
      Lat          : Interfaces.Integer_32;
      Lon          : Interfaces.Integer_32;
      Grid_Spacing : Interfaces.Unsigned_16;
      Gridbit      : Interfaces.Unsigned_8;
      Data         : Integer_16_Array (1..16);
   end record;
   for Terrain_Data use record
      Lat          at Message_Size + 0 range 0 .. 31;
      Lon          at Message_Size + 4 range 0 .. 31;
      Grid_Spacing at Message_Size + 8 range 0 .. 15;
      Data         at Message_Size + 10 range 0 .. 255;
      Gridbit      at Message_Size + 42 range 0 .. 7;
   end record;

   type Terrain_Check is new Message
     (Message_Id => Terrain_Check_Id,
      Payload_Length => 8) with record
      Lat : Interfaces.Integer_32;
      Lon : Interfaces.Integer_32;
   end record;
   for Terrain_Check use record
      Lat at Message_Size + 0 range 0 .. 31;
      Lon at Message_Size + 4 range 0 .. 31;
   end record;

   type Terrain_Report is new Message
     (Message_Id => Terrain_Report_Id,
      Payload_Length => 22) with record
      Lat            : Interfaces.Integer_32;
      Lon            : Interfaces.Integer_32;
      Spacing        : Interfaces.Unsigned_16;
      Terrain_Height : Short_Float;
      Current_Height : Short_Float;
      Pending        : Interfaces.Unsigned_16;
      Loaded         : Interfaces.Unsigned_16;
   end record;
   for Terrain_Report use record
      Lat            at Message_Size + 0 range 0 .. 31;
      Lon            at Message_Size + 4 range 0 .. 31;
      Terrain_Height at Message_Size + 8 range 0 .. 31;
      Current_Height at Message_Size + 12 range 0 .. 31;
      Spacing        at Message_Size + 16 range 0 .. 15;
      Pending        at Message_Size + 18 range 0 .. 15;
      Loaded         at Message_Size + 20 range 0 .. 15;
   end record;

   type Scaled_Pressure2 is new Message
     (Message_Id => Scaled_Pressure2_Id,
      Payload_Length => 14) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Press_Abs    : Short_Float;
      Press_Diff   : Short_Float;
      Temperature  : Interfaces.Integer_16;
   end record;
   for Scaled_Pressure2 use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Press_Abs    at Message_Size + 4 range 0 .. 31;
      Press_Diff   at Message_Size + 8 range 0 .. 31;
      Temperature  at Message_Size + 12 range 0 .. 15;
   end record;

   type Att_Pos_Mocap is new Message
     (Message_Id => Att_Pos_Mocap_Id,
      Payload_Length => 36) with record
      Time_Usec : Interfaces.Unsigned_64;
      Q         : Short_Float_Array (1..4);
      X         : Short_Float;
      Y         : Short_Float;
      Z         : Short_Float;
   end record;
   for Att_Pos_Mocap use record
      Time_Usec at Message_Size + 0 range 0 .. 63;
      Q         at Message_Size + 8 range 0 .. 127;
      X         at Message_Size + 24 range 0 .. 31;
      Y         at Message_Size + 28 range 0 .. 31;
      Z         at Message_Size + 32 range 0 .. 31;
   end record;

   type Set_Actuator_Control_Target is new Message
     (Message_Id => Set_Actuator_Control_Target_Id,
      Payload_Length => 43) with record
      Time_Usec        : Interfaces.Unsigned_64;
      Group_Mlx        : Interfaces.Unsigned_8;
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Controls         : Short_Float_Array (1..8);
   end record;
   for Set_Actuator_Control_Target use record
      Time_Usec        at Message_Size + 0 range 0 .. 63;
      Controls         at Message_Size + 8 range 0 .. 255;
      Group_Mlx        at Message_Size + 40 range 0 .. 7;
      Target_System    at Message_Size + 41 range 0 .. 7;
      Target_Component at Message_Size + 42 range 0 .. 7;
   end record;

   type Actuator_Control_Target is new Message
     (Message_Id => Actuator_Control_Target_Id,
      Payload_Length => 41) with record
      Time_Usec : Interfaces.Unsigned_64;
      Group_Mlx : Interfaces.Unsigned_8;
      Controls  : Short_Float_Array (1..8);
   end record;
   for Actuator_Control_Target use record
      Time_Usec at Message_Size + 0 range 0 .. 63;
      Controls  at Message_Size + 8 range 0 .. 255;
      Group_Mlx at Message_Size + 40 range 0 .. 7;
   end record;

   type Altitude is new Message
     (Message_Id => Altitude_Id,
      Payload_Length => 32) with record
      Time_Usec          : Interfaces.Unsigned_64;
      Altitude_Monotonic : Short_Float;
      Altitude_Amsl      : Short_Float;
      Altitude_Local     : Short_Float;
      Altitude_Relative  : Short_Float;
      Altitude_Terrain   : Short_Float;
      Bottom_Clearance   : Short_Float;
   end record;
   for Altitude use record
      Time_Usec          at Message_Size + 0 range 0 .. 63;
      Altitude_Monotonic at Message_Size + 8 range 0 .. 31;
      Altitude_Amsl      at Message_Size + 12 range 0 .. 31;
      Altitude_Local     at Message_Size + 16 range 0 .. 31;
      Altitude_Relative  at Message_Size + 20 range 0 .. 31;
      Altitude_Terrain   at Message_Size + 24 range 0 .. 31;
      Bottom_Clearance   at Message_Size + 28 range 0 .. 31;
   end record;

   type Resource_Request is new Message
     (Message_Id => Resource_Request_Id,
      Payload_Length => 243) with record
      Request_Id    : Interfaces.Unsigned_8;
      Uri_Type      : Interfaces.Unsigned_8;
      Uri           : Unsigned_8_Array (1..120);
      Transfer_Type : Interfaces.Unsigned_8;
      Storage       : Unsigned_8_Array (1..120);
   end record;
   for Resource_Request use record
      Request_Id    at Message_Size + 0 range 0 .. 7;
      Uri_Type      at Message_Size + 1 range 0 .. 7;
      Uri           at Message_Size + 2 range 0 .. 959;
      Transfer_Type at Message_Size + 122 range 0 .. 7;
      Storage       at Message_Size + 123 range 0 .. 959;
   end record;

   type Scaled_Pressure3 is new Message
     (Message_Id => Scaled_Pressure3_Id,
      Payload_Length => 14) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Press_Abs    : Short_Float;
      Press_Diff   : Short_Float;
      Temperature  : Interfaces.Integer_16;
   end record;
   for Scaled_Pressure3 use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Press_Abs    at Message_Size + 4 range 0 .. 31;
      Press_Diff   at Message_Size + 8 range 0 .. 31;
      Temperature  at Message_Size + 12 range 0 .. 15;
   end record;

   type Follow_Target is new Message
     (Message_Id => Follow_Target_Id,
      Payload_Length => 93) with record
      Timestamp        : Interfaces.Unsigned_64;
      Est_Capabilities : Interfaces.Unsigned_8;
      Lat              : Interfaces.Integer_32;
      Lon              : Interfaces.Integer_32;
      Alt              : Short_Float;
      Vel              : Short_Float_Array (1..3);
      Acc              : Short_Float_Array (1..3);
      Attitude_Q       : Short_Float_Array (1..4);
      Rates            : Short_Float_Array (1..3);
      Position_Cov     : Short_Float_Array (1..3);
      Custom_State     : Interfaces.Unsigned_64;
   end record;
   for Follow_Target use record
      Timestamp        at Message_Size + 0 range 0 .. 63;
      Custom_State     at Message_Size + 8 range 0 .. 63;
      Lat              at Message_Size + 16 range 0 .. 31;
      Lon              at Message_Size + 20 range 0 .. 31;
      Alt              at Message_Size + 24 range 0 .. 31;
      Vel              at Message_Size + 28 range 0 .. 95;
      Acc              at Message_Size + 40 range 0 .. 95;
      Attitude_Q       at Message_Size + 52 range 0 .. 127;
      Rates            at Message_Size + 68 range 0 .. 95;
      Position_Cov     at Message_Size + 80 range 0 .. 95;
      Est_Capabilities at Message_Size + 92 range 0 .. 7;
   end record;

   type Control_System_State is new Message
     (Message_Id => Control_System_State_Id,
      Payload_Length => 100) with record
      Time_Usec    : Interfaces.Unsigned_64;
      X_Acc        : Short_Float;
      Y_Acc        : Short_Float;
      Z_Acc        : Short_Float;
      X_Vel        : Short_Float;
      Y_Vel        : Short_Float;
      Z_Vel        : Short_Float;
      X_Pos        : Short_Float;
      Y_Pos        : Short_Float;
      Z_Pos        : Short_Float;
      Airspeed     : Short_Float;
      Vel_Variance : Short_Float_Array (1..3);
      Pos_Variance : Short_Float_Array (1..3);
      Q            : Short_Float_Array (1..4);
      Roll_Rate    : Short_Float;
      Pitch_Rate   : Short_Float;
      Yaw_Rate     : Short_Float;
   end record;
   for Control_System_State use record
      Time_Usec    at Message_Size + 0 range 0 .. 63;
      X_Acc        at Message_Size + 8 range 0 .. 31;
      Y_Acc        at Message_Size + 12 range 0 .. 31;
      Z_Acc        at Message_Size + 16 range 0 .. 31;
      X_Vel        at Message_Size + 20 range 0 .. 31;
      Y_Vel        at Message_Size + 24 range 0 .. 31;
      Z_Vel        at Message_Size + 28 range 0 .. 31;
      X_Pos        at Message_Size + 32 range 0 .. 31;
      Y_Pos        at Message_Size + 36 range 0 .. 31;
      Z_Pos        at Message_Size + 40 range 0 .. 31;
      Airspeed     at Message_Size + 44 range 0 .. 31;
      Vel_Variance at Message_Size + 48 range 0 .. 95;
      Pos_Variance at Message_Size + 60 range 0 .. 95;
      Q            at Message_Size + 72 range 0 .. 127;
      Roll_Rate    at Message_Size + 88 range 0 .. 31;
      Pitch_Rate   at Message_Size + 92 range 0 .. 31;
      Yaw_Rate     at Message_Size + 96 range 0 .. 31;
   end record;

   type Battery_Status is new Message
     (Message_Id => Battery_Status_Id,
      Payload_Length => 36) with record
      Id                : Interfaces.Unsigned_8;
      Battery_Function  : Types.Mav_Battery_Function;
      Type_Field        : Types.Mav_Battery_Type;
      Temperature       : Interfaces.Integer_16;
      Voltages          : Unsigned_16_Array (1..10);
      Current_Battery   : Interfaces.Integer_16;
      Current_Consumed  : Interfaces.Integer_32;
      Energy_Consumed   : Interfaces.Integer_32;
      Battery_Remaining : Interfaces.Integer_8;
   end record;
   for Battery_Status use record
      Current_Consumed  at Message_Size + 0 range 0 .. 31;
      Energy_Consumed   at Message_Size + 4 range 0 .. 31;
      Temperature       at Message_Size + 8 range 0 .. 15;
      Voltages          at Message_Size + 10 range 0 .. 159;
      Current_Battery   at Message_Size + 30 range 0 .. 15;
      Id                at Message_Size + 32 range 0 .. 7;
      Battery_Function  at Message_Size + 33 range 0 .. 7;
      Type_Field        at Message_Size + 34 range 0 .. 7;
      Battery_Remaining at Message_Size + 35 range 0 .. 7;
   end record;

   type Autopilot_Version is new Message
     (Message_Id => Autopilot_Version_Id,
      Payload_Length => 60) with record
      Capabilities              : Types.Mav_Protocol_Capability;
      Flight_Sw_Version         : Interfaces.Unsigned_32;
      Middleware_Sw_Version     : Interfaces.Unsigned_32;
      Os_Sw_Version             : Interfaces.Unsigned_32;
      Board_Version             : Interfaces.Unsigned_32;
      Flight_Custom_Version     : Unsigned_8_Array (1..8);
      Middleware_Custom_Version : Unsigned_8_Array (1..8);
      Os_Custom_Version         : Unsigned_8_Array (1..8);
      Vendor_Id                 : Interfaces.Unsigned_16;
      Product_Id                : Interfaces.Unsigned_16;
      Uid                       : Interfaces.Unsigned_64;
   end record;
   for Autopilot_Version use record
      Capabilities              at Message_Size + 0 range 0 .. 63;
      Uid                       at Message_Size + 8 range 0 .. 63;
      Flight_Sw_Version         at Message_Size + 16 range 0 .. 31;
      Middleware_Sw_Version     at Message_Size + 20 range 0 .. 31;
      Os_Sw_Version             at Message_Size + 24 range 0 .. 31;
      Board_Version             at Message_Size + 28 range 0 .. 31;
      Vendor_Id                 at Message_Size + 32 range 0 .. 15;
      Product_Id                at Message_Size + 34 range 0 .. 15;
      Flight_Custom_Version     at Message_Size + 36 range 0 .. 63;
      Middleware_Custom_Version at Message_Size + 44 range 0 .. 63;
      Os_Custom_Version         at Message_Size + 52 range 0 .. 63;
   end record;

   type Landing_Target is new Message
     (Message_Id => Landing_Target_Id,
      Payload_Length => 30) with record
      Time_Usec  : Interfaces.Unsigned_64;
      Target_Num : Interfaces.Unsigned_8;
      Frame      : Types.Mav_Frame;
      Angle_X    : Short_Float;
      Angle_Y    : Short_Float;
      Distance   : Short_Float;
      Size_X     : Short_Float;
      Size_Y     : Short_Float;
   end record;
   for Landing_Target use record
      Time_Usec  at Message_Size + 0 range 0 .. 63;
      Angle_X    at Message_Size + 8 range 0 .. 31;
      Angle_Y    at Message_Size + 12 range 0 .. 31;
      Distance   at Message_Size + 16 range 0 .. 31;
      Size_X     at Message_Size + 20 range 0 .. 31;
      Size_Y     at Message_Size + 24 range 0 .. 31;
      Target_Num at Message_Size + 28 range 0 .. 7;
      Frame      at Message_Size + 29 range 0 .. 7;
   end record;

   type Sensor_Offsets is new Message
     (Message_Id => Sensor_Offsets_Id,
      Payload_Length => 42) with record
      Mag_Ofs_X       : Interfaces.Integer_16;
      Mag_Ofs_Y       : Interfaces.Integer_16;
      Mag_Ofs_Z       : Interfaces.Integer_16;
      Mag_Declination : Short_Float;
      Raw_Press       : Interfaces.Integer_32;
      Raw_Temp        : Interfaces.Integer_32;
      Gyro_Cal_X      : Short_Float;
      Gyro_Cal_Y      : Short_Float;
      Gyro_Cal_Z      : Short_Float;
      Accel_Cal_X     : Short_Float;
      Accel_Cal_Y     : Short_Float;
      Accel_Cal_Z     : Short_Float;
   end record;
   for Sensor_Offsets use record
      Mag_Declination at Message_Size + 0 range 0 .. 31;
      Raw_Press       at Message_Size + 4 range 0 .. 31;
      Raw_Temp        at Message_Size + 8 range 0 .. 31;
      Gyro_Cal_X      at Message_Size + 12 range 0 .. 31;
      Gyro_Cal_Y      at Message_Size + 16 range 0 .. 31;
      Gyro_Cal_Z      at Message_Size + 20 range 0 .. 31;
      Accel_Cal_X     at Message_Size + 24 range 0 .. 31;
      Accel_Cal_Y     at Message_Size + 28 range 0 .. 31;
      Accel_Cal_Z     at Message_Size + 32 range 0 .. 31;
      Mag_Ofs_X       at Message_Size + 36 range 0 .. 15;
      Mag_Ofs_Y       at Message_Size + 38 range 0 .. 15;
      Mag_Ofs_Z       at Message_Size + 40 range 0 .. 15;
   end record;

   type Set_Mag_Offsets is new Message
     (Message_Id => Set_Mag_Offsets_Id,
      Payload_Length => 8) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Mag_Ofs_X        : Interfaces.Integer_16;
      Mag_Ofs_Y        : Interfaces.Integer_16;
      Mag_Ofs_Z        : Interfaces.Integer_16;
   end record;
   for Set_Mag_Offsets use record
      Mag_Ofs_X        at Message_Size + 0 range 0 .. 15;
      Mag_Ofs_Y        at Message_Size + 2 range 0 .. 15;
      Mag_Ofs_Z        at Message_Size + 4 range 0 .. 15;
      Target_System    at Message_Size + 6 range 0 .. 7;
      Target_Component at Message_Size + 7 range 0 .. 7;
   end record;

   type Meminfo is new Message
     (Message_Id => Meminfo_Id,
      Payload_Length => 4) with record
      Brkval  : Interfaces.Unsigned_16;
      Freemem : Interfaces.Unsigned_16;
   end record;
   for Meminfo use record
      Brkval  at Message_Size + 0 range 0 .. 15;
      Freemem at Message_Size + 2 range 0 .. 15;
   end record;

   type Ap_Adc is new Message
     (Message_Id => Ap_Adc_Id,
      Payload_Length => 12) with record
      Adc1 : Interfaces.Unsigned_16;
      Adc2 : Interfaces.Unsigned_16;
      Adc3 : Interfaces.Unsigned_16;
      Adc4 : Interfaces.Unsigned_16;
      Adc5 : Interfaces.Unsigned_16;
      Adc6 : Interfaces.Unsigned_16;
   end record;
   for Ap_Adc use record
      Adc1 at Message_Size + 0 range 0 .. 15;
      Adc2 at Message_Size + 2 range 0 .. 15;
      Adc3 at Message_Size + 4 range 0 .. 15;
      Adc4 at Message_Size + 6 range 0 .. 15;
      Adc5 at Message_Size + 8 range 0 .. 15;
      Adc6 at Message_Size + 10 range 0 .. 15;
   end record;

   type Digicam_Configure is new Message
     (Message_Id => Digicam_Configure_Id,
      Payload_Length => 15) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Mode             : Interfaces.Unsigned_8;
      Shutter_Speed    : Interfaces.Unsigned_16;
      Aperture         : Interfaces.Unsigned_8;
      Iso              : Interfaces.Unsigned_8;
      Exposure_Type    : Interfaces.Unsigned_8;
      Command_Id       : Interfaces.Unsigned_8;
      Engine_Cut_Off   : Interfaces.Unsigned_8;
      Extra_Param      : Interfaces.Unsigned_8;
      Extra_Value      : Short_Float;
   end record;
   for Digicam_Configure use record
      Extra_Value      at Message_Size + 0 range 0 .. 31;
      Shutter_Speed    at Message_Size + 4 range 0 .. 15;
      Target_System    at Message_Size + 6 range 0 .. 7;
      Target_Component at Message_Size + 7 range 0 .. 7;
      Mode             at Message_Size + 8 range 0 .. 7;
      Aperture         at Message_Size + 9 range 0 .. 7;
      Iso              at Message_Size + 10 range 0 .. 7;
      Exposure_Type    at Message_Size + 11 range 0 .. 7;
      Command_Id       at Message_Size + 12 range 0 .. 7;
      Engine_Cut_Off   at Message_Size + 13 range 0 .. 7;
      Extra_Param      at Message_Size + 14 range 0 .. 7;
   end record;

   type Digicam_Control is new Message
     (Message_Id => Digicam_Control_Id,
      Payload_Length => 13) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Session          : Interfaces.Unsigned_8;
      Zoom_Pos         : Interfaces.Unsigned_8;
      Zoom_Step        : Interfaces.Integer_8;
      Focus_Lock       : Interfaces.Unsigned_8;
      Shot             : Interfaces.Unsigned_8;
      Command_Id       : Interfaces.Unsigned_8;
      Extra_Param      : Interfaces.Unsigned_8;
      Extra_Value      : Short_Float;
   end record;
   for Digicam_Control use record
      Extra_Value      at Message_Size + 0 range 0 .. 31;
      Target_System    at Message_Size + 4 range 0 .. 7;
      Target_Component at Message_Size + 5 range 0 .. 7;
      Session          at Message_Size + 6 range 0 .. 7;
      Zoom_Pos         at Message_Size + 7 range 0 .. 7;
      Zoom_Step        at Message_Size + 8 range 0 .. 7;
      Focus_Lock       at Message_Size + 9 range 0 .. 7;
      Shot             at Message_Size + 10 range 0 .. 7;
      Command_Id       at Message_Size + 11 range 0 .. 7;
      Extra_Param      at Message_Size + 12 range 0 .. 7;
   end record;

   type Mount_Configure is new Message
     (Message_Id => Mount_Configure_Id,
      Payload_Length => 6) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Mount_Mode       : Types.Mav_Mount_Mode;
      Stab_Roll        : Interfaces.Unsigned_8;
      Stab_Pitch       : Interfaces.Unsigned_8;
      Stab_Yaw         : Interfaces.Unsigned_8;
   end record;
   for Mount_Configure use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
      Mount_Mode       at Message_Size + 2 range 0 .. 7;
      Stab_Roll        at Message_Size + 3 range 0 .. 7;
      Stab_Pitch       at Message_Size + 4 range 0 .. 7;
      Stab_Yaw         at Message_Size + 5 range 0 .. 7;
   end record;

   type Mount_Control is new Message
     (Message_Id => Mount_Control_Id,
      Payload_Length => 15) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Input_A          : Interfaces.Integer_32;
      Input_B          : Interfaces.Integer_32;
      Input_C          : Interfaces.Integer_32;
      Save_Position    : Interfaces.Unsigned_8;
   end record;
   for Mount_Control use record
      Input_A          at Message_Size + 0 range 0 .. 31;
      Input_B          at Message_Size + 4 range 0 .. 31;
      Input_C          at Message_Size + 8 range 0 .. 31;
      Target_System    at Message_Size + 12 range 0 .. 7;
      Target_Component at Message_Size + 13 range 0 .. 7;
      Save_Position    at Message_Size + 14 range 0 .. 7;
   end record;

   type Mount_Status is new Message
     (Message_Id => Mount_Status_Id,
      Payload_Length => 14) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Pointing_A       : Interfaces.Integer_32;
      Pointing_B       : Interfaces.Integer_32;
      Pointing_C       : Interfaces.Integer_32;
   end record;
   for Mount_Status use record
      Pointing_A       at Message_Size + 0 range 0 .. 31;
      Pointing_B       at Message_Size + 4 range 0 .. 31;
      Pointing_C       at Message_Size + 8 range 0 .. 31;
      Target_System    at Message_Size + 12 range 0 .. 7;
      Target_Component at Message_Size + 13 range 0 .. 7;
   end record;

   type Fence_Point is new Message
     (Message_Id => Fence_Point_Id,
      Payload_Length => 12) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Idx              : Interfaces.Unsigned_8;
      Count            : Interfaces.Unsigned_8;
      Lat              : Short_Float;
      Lng              : Short_Float;
   end record;
   for Fence_Point use record
      Lat              at Message_Size + 0 range 0 .. 31;
      Lng              at Message_Size + 4 range 0 .. 31;
      Target_System    at Message_Size + 8 range 0 .. 7;
      Target_Component at Message_Size + 9 range 0 .. 7;
      Idx              at Message_Size + 10 range 0 .. 7;
      Count            at Message_Size + 11 range 0 .. 7;
   end record;

   type Fence_Fetch_Point is new Message
     (Message_Id => Fence_Fetch_Point_Id,
      Payload_Length => 3) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Idx              : Interfaces.Unsigned_8;
   end record;
   for Fence_Fetch_Point use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
      Idx              at Message_Size + 2 range 0 .. 7;
   end record;

   type Fence_Status is new Message
     (Message_Id => Fence_Status_Id,
      Payload_Length => 8) with record
      Breach_Status : Interfaces.Unsigned_8;
      Breach_Count  : Interfaces.Unsigned_16;
      Breach_Type   : Types.Fence_Breach;
      Breach_Time   : Interfaces.Unsigned_32;
   end record;
   for Fence_Status use record
      Breach_Time   at Message_Size + 0 range 0 .. 31;
      Breach_Count  at Message_Size + 4 range 0 .. 15;
      Breach_Status at Message_Size + 6 range 0 .. 7;
      Breach_Type   at Message_Size + 7 range 0 .. 7;
   end record;

   type Ahrs is new Message
     (Message_Id => Ahrs_Id,
      Payload_Length => 28) with record
      Omegaix      : Short_Float;
      Omegaiy      : Short_Float;
      Omegaiz      : Short_Float;
      Accel_Weight : Short_Float;
      Renorm_Val   : Short_Float;
      Error_Rp     : Short_Float;
      Error_Yaw    : Short_Float;
   end record;
   for Ahrs use record
      Omegaix      at Message_Size + 0 range 0 .. 31;
      Omegaiy      at Message_Size + 4 range 0 .. 31;
      Omegaiz      at Message_Size + 8 range 0 .. 31;
      Accel_Weight at Message_Size + 12 range 0 .. 31;
      Renorm_Val   at Message_Size + 16 range 0 .. 31;
      Error_Rp     at Message_Size + 20 range 0 .. 31;
      Error_Yaw    at Message_Size + 24 range 0 .. 31;
   end record;

   type Simstate is new Message
     (Message_Id => Simstate_Id,
      Payload_Length => 44) with record
      Roll  : Short_Float;
      Pitch : Short_Float;
      Yaw   : Short_Float;
      Xacc  : Short_Float;
      Yacc  : Short_Float;
      Zacc  : Short_Float;
      Xgyro : Short_Float;
      Ygyro : Short_Float;
      Zgyro : Short_Float;
      Lat   : Interfaces.Integer_32;
      Lng   : Interfaces.Integer_32;
   end record;
   for Simstate use record
      Roll  at Message_Size + 0 range 0 .. 31;
      Pitch at Message_Size + 4 range 0 .. 31;
      Yaw   at Message_Size + 8 range 0 .. 31;
      Xacc  at Message_Size + 12 range 0 .. 31;
      Yacc  at Message_Size + 16 range 0 .. 31;
      Zacc  at Message_Size + 20 range 0 .. 31;
      Xgyro at Message_Size + 24 range 0 .. 31;
      Ygyro at Message_Size + 28 range 0 .. 31;
      Zgyro at Message_Size + 32 range 0 .. 31;
      Lat   at Message_Size + 36 range 0 .. 31;
      Lng   at Message_Size + 40 range 0 .. 31;
   end record;

   type Hwstatus is new Message
     (Message_Id => Hwstatus_Id,
      Payload_Length => 3) with record
      Vcc    : Interfaces.Unsigned_16;
      I2Cerr : Interfaces.Unsigned_8;
   end record;
   for Hwstatus use record
      Vcc    at Message_Size + 0 range 0 .. 15;
      I2Cerr at Message_Size + 2 range 0 .. 7;
   end record;

   type Radio is new Message
     (Message_Id => Radio_Id,
      Payload_Length => 9) with record
      Rssi     : Interfaces.Unsigned_8;
      Remrssi  : Interfaces.Unsigned_8;
      Txbuf    : Interfaces.Unsigned_8;
      Noise    : Interfaces.Unsigned_8;
      Remnoise : Interfaces.Unsigned_8;
      Rxerrors : Interfaces.Unsigned_16;
      Fixed    : Interfaces.Unsigned_16;
   end record;
   for Radio use record
      Rxerrors at Message_Size + 0 range 0 .. 15;
      Fixed    at Message_Size + 2 range 0 .. 15;
      Rssi     at Message_Size + 4 range 0 .. 7;
      Remrssi  at Message_Size + 5 range 0 .. 7;
      Txbuf    at Message_Size + 6 range 0 .. 7;
      Noise    at Message_Size + 7 range 0 .. 7;
      Remnoise at Message_Size + 8 range 0 .. 7;
   end record;

   type Limits_Status is new Message
     (Message_Id => Limits_Status_Id,
      Payload_Length => 22) with record
      Limits_State   : Types.Limits_State;
      Last_Trigger   : Interfaces.Unsigned_32;
      Last_Action    : Interfaces.Unsigned_32;
      Last_Recovery  : Interfaces.Unsigned_32;
      Last_Clear     : Interfaces.Unsigned_32;
      Breach_Count   : Interfaces.Unsigned_16;
      Mods_Enabled   : Types.Limit_Module;
      Mods_Required  : Types.Limit_Module;
      Mods_Triggered : Types.Limit_Module;
   end record;
   for Limits_Status use record
      Last_Trigger   at Message_Size + 0 range 0 .. 31;
      Last_Action    at Message_Size + 4 range 0 .. 31;
      Last_Recovery  at Message_Size + 8 range 0 .. 31;
      Last_Clear     at Message_Size + 12 range 0 .. 31;
      Breach_Count   at Message_Size + 16 range 0 .. 15;
      Limits_State   at Message_Size + 18 range 0 .. 7;
      Mods_Enabled   at Message_Size + 19 range 0 .. 7;
      Mods_Required  at Message_Size + 20 range 0 .. 7;
      Mods_Triggered at Message_Size + 21 range 0 .. 7;
   end record;

   type Wind is new Message
     (Message_Id => Wind_Id,
      Payload_Length => 12) with record
      Direction : Short_Float;
      Speed     : Short_Float;
      Speed_Z   : Short_Float;
   end record;
   for Wind use record
      Direction at Message_Size + 0 range 0 .. 31;
      Speed     at Message_Size + 4 range 0 .. 31;
      Speed_Z   at Message_Size + 8 range 0 .. 31;
   end record;

   type Data16 is new Message
     (Message_Id => Data16_Id,
      Payload_Length => 18) with record
      Type_Field : Interfaces.Unsigned_8;
      Len        : Interfaces.Unsigned_8;
      Data       : Unsigned_8_Array (1..16);
   end record;
   for Data16 use record
      Type_Field at Message_Size + 0 range 0 .. 7;
      Len        at Message_Size + 1 range 0 .. 7;
      Data       at Message_Size + 2 range 0 .. 127;
   end record;

   type Data32 is new Message
     (Message_Id => Data32_Id,
      Payload_Length => 34) with record
      Type_Field : Interfaces.Unsigned_8;
      Len        : Interfaces.Unsigned_8;
      Data       : Unsigned_8_Array (1..32);
   end record;
   for Data32 use record
      Type_Field at Message_Size + 0 range 0 .. 7;
      Len        at Message_Size + 1 range 0 .. 7;
      Data       at Message_Size + 2 range 0 .. 255;
   end record;

   type Data64 is new Message
     (Message_Id => Data64_Id,
      Payload_Length => 66) with record
      Type_Field : Interfaces.Unsigned_8;
      Len        : Interfaces.Unsigned_8;
      Data       : Unsigned_8_Array (1..64);
   end record;
   for Data64 use record
      Type_Field at Message_Size + 0 range 0 .. 7;
      Len        at Message_Size + 1 range 0 .. 7;
      Data       at Message_Size + 2 range 0 .. 511;
   end record;

   type Data96 is new Message
     (Message_Id => Data96_Id,
      Payload_Length => 98) with record
      Type_Field : Interfaces.Unsigned_8;
      Len        : Interfaces.Unsigned_8;
      Data       : Unsigned_8_Array (1..96);
   end record;
   for Data96 use record
      Type_Field at Message_Size + 0 range 0 .. 7;
      Len        at Message_Size + 1 range 0 .. 7;
      Data       at Message_Size + 2 range 0 .. 767;
   end record;

   type Rangefinder is new Message
     (Message_Id => Rangefinder_Id,
      Payload_Length => 8) with record
      Distance : Short_Float;
      Voltage  : Short_Float;
   end record;
   for Rangefinder use record
      Distance at Message_Size + 0 range 0 .. 31;
      Voltage  at Message_Size + 4 range 0 .. 31;
   end record;

   type Airspeed_Autocal is new Message
     (Message_Id => Airspeed_Autocal_Id,
      Payload_Length => 48) with record
      Vx            : Short_Float;
      Vy            : Short_Float;
      Vz            : Short_Float;
      Diff_Pressure : Short_Float;
      Eas2Tas       : Short_Float;
      Ratio         : Short_Float;
      State_X       : Short_Float;
      State_Y       : Short_Float;
      State_Z       : Short_Float;
      Pax           : Short_Float;
      Pby           : Short_Float;
      Pcz           : Short_Float;
   end record;
   for Airspeed_Autocal use record
      Vx            at Message_Size + 0 range 0 .. 31;
      Vy            at Message_Size + 4 range 0 .. 31;
      Vz            at Message_Size + 8 range 0 .. 31;
      Diff_Pressure at Message_Size + 12 range 0 .. 31;
      Eas2Tas       at Message_Size + 16 range 0 .. 31;
      Ratio         at Message_Size + 20 range 0 .. 31;
      State_X       at Message_Size + 24 range 0 .. 31;
      State_Y       at Message_Size + 28 range 0 .. 31;
      State_Z       at Message_Size + 32 range 0 .. 31;
      Pax           at Message_Size + 36 range 0 .. 31;
      Pby           at Message_Size + 40 range 0 .. 31;
      Pcz           at Message_Size + 44 range 0 .. 31;
   end record;

   type Rally_Point is new Message
     (Message_Id => Rally_Point_Id,
      Payload_Length => 19) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Idx              : Interfaces.Unsigned_8;
      Count            : Interfaces.Unsigned_8;
      Lat              : Interfaces.Integer_32;
      Lng              : Interfaces.Integer_32;
      Alt              : Interfaces.Integer_16;
      Break_Alt        : Interfaces.Integer_16;
      Land_Dir         : Interfaces.Unsigned_16;
      Flags            : Types.Rally_Flags;
   end record;
   for Rally_Point use record
      Lat              at Message_Size + 0 range 0 .. 31;
      Lng              at Message_Size + 4 range 0 .. 31;
      Alt              at Message_Size + 8 range 0 .. 15;
      Break_Alt        at Message_Size + 10 range 0 .. 15;
      Land_Dir         at Message_Size + 12 range 0 .. 15;
      Target_System    at Message_Size + 14 range 0 .. 7;
      Target_Component at Message_Size + 15 range 0 .. 7;
      Idx              at Message_Size + 16 range 0 .. 7;
      Count            at Message_Size + 17 range 0 .. 7;
      Flags            at Message_Size + 18 range 0 .. 7;
   end record;

   type Rally_Fetch_Point is new Message
     (Message_Id => Rally_Fetch_Point_Id,
      Payload_Length => 3) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Idx              : Interfaces.Unsigned_8;
   end record;
   for Rally_Fetch_Point use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
      Idx              at Message_Size + 2 range 0 .. 7;
   end record;

   type Compassmot_Status is new Message
     (Message_Id => Compassmot_Status_Id,
      Payload_Length => 20) with record
      Throttle      : Interfaces.Unsigned_16;
      Current       : Short_Float;
      Interference  : Interfaces.Unsigned_16;
      Compensationx : Short_Float;
      Compensationy : Short_Float;
      Compensationz : Short_Float;
   end record;
   for Compassmot_Status use record
      Current       at Message_Size + 0 range 0 .. 31;
      Compensationx at Message_Size + 4 range 0 .. 31;
      Compensationy at Message_Size + 8 range 0 .. 31;
      Compensationz at Message_Size + 12 range 0 .. 31;
      Throttle      at Message_Size + 16 range 0 .. 15;
      Interference  at Message_Size + 18 range 0 .. 15;
   end record;

   type Ahrs2 is new Message
     (Message_Id => Ahrs2_Id,
      Payload_Length => 24) with record
      Roll     : Short_Float;
      Pitch    : Short_Float;
      Yaw      : Short_Float;
      Altitude : Short_Float;
      Lat      : Interfaces.Integer_32;
      Lng      : Interfaces.Integer_32;
   end record;
   for Ahrs2 use record
      Roll     at Message_Size + 0 range 0 .. 31;
      Pitch    at Message_Size + 4 range 0 .. 31;
      Yaw      at Message_Size + 8 range 0 .. 31;
      Altitude at Message_Size + 12 range 0 .. 31;
      Lat      at Message_Size + 16 range 0 .. 31;
      Lng      at Message_Size + 20 range 0 .. 31;
   end record;

   type Camera_Status is new Message
     (Message_Id => Camera_Status_Id,
      Payload_Length => 29) with record
      Time_Usec     : Interfaces.Unsigned_64;
      Target_System : Interfaces.Unsigned_8;
      Cam_Idx       : Interfaces.Unsigned_8;
      Img_Idx       : Interfaces.Unsigned_16;
      Event_Id      : Types.Camera_Status_Types;
      P1            : Short_Float;
      P2            : Short_Float;
      P3            : Short_Float;
      P4            : Short_Float;
   end record;
   for Camera_Status use record
      Time_Usec     at Message_Size + 0 range 0 .. 63;
      P1            at Message_Size + 8 range 0 .. 31;
      P2            at Message_Size + 12 range 0 .. 31;
      P3            at Message_Size + 16 range 0 .. 31;
      P4            at Message_Size + 20 range 0 .. 31;
      Img_Idx       at Message_Size + 24 range 0 .. 15;
      Target_System at Message_Size + 26 range 0 .. 7;
      Cam_Idx       at Message_Size + 27 range 0 .. 7;
      Event_Id      at Message_Size + 28 range 0 .. 7;
   end record;

   type Camera_Feedback is new Message
     (Message_Id => Camera_Feedback_Id,
      Payload_Length => 45) with record
      Time_Usec     : Interfaces.Unsigned_64;
      Target_System : Interfaces.Unsigned_8;
      Cam_Idx       : Interfaces.Unsigned_8;
      Img_Idx       : Interfaces.Unsigned_16;
      Lat           : Interfaces.Integer_32;
      Lng           : Interfaces.Integer_32;
      Alt_Msl       : Short_Float;
      Alt_Rel       : Short_Float;
      Roll          : Short_Float;
      Pitch         : Short_Float;
      Yaw           : Short_Float;
      Foc_Len       : Short_Float;
      Flags         : Types.Camera_Feedback_Flags;
   end record;
   for Camera_Feedback use record
      Time_Usec     at Message_Size + 0 range 0 .. 63;
      Lat           at Message_Size + 8 range 0 .. 31;
      Lng           at Message_Size + 12 range 0 .. 31;
      Alt_Msl       at Message_Size + 16 range 0 .. 31;
      Alt_Rel       at Message_Size + 20 range 0 .. 31;
      Roll          at Message_Size + 24 range 0 .. 31;
      Pitch         at Message_Size + 28 range 0 .. 31;
      Yaw           at Message_Size + 32 range 0 .. 31;
      Foc_Len       at Message_Size + 36 range 0 .. 31;
      Img_Idx       at Message_Size + 40 range 0 .. 15;
      Target_System at Message_Size + 42 range 0 .. 7;
      Cam_Idx       at Message_Size + 43 range 0 .. 7;
      Flags         at Message_Size + 44 range 0 .. 7;
   end record;

   type Battery2 is new Message
     (Message_Id => Battery2_Id,
      Payload_Length => 4) with record
      Voltage         : Interfaces.Unsigned_16;
      Current_Battery : Interfaces.Integer_16;
   end record;
   for Battery2 use record
      Voltage         at Message_Size + 0 range 0 .. 15;
      Current_Battery at Message_Size + 2 range 0 .. 15;
   end record;

   type Ahrs3 is new Message
     (Message_Id => Ahrs3_Id,
      Payload_Length => 40) with record
      Roll     : Short_Float;
      Pitch    : Short_Float;
      Yaw      : Short_Float;
      Altitude : Short_Float;
      Lat      : Interfaces.Integer_32;
      Lng      : Interfaces.Integer_32;
      V1       : Short_Float;
      V2       : Short_Float;
      V3       : Short_Float;
      V4       : Short_Float;
   end record;
   for Ahrs3 use record
      Roll     at Message_Size + 0 range 0 .. 31;
      Pitch    at Message_Size + 4 range 0 .. 31;
      Yaw      at Message_Size + 8 range 0 .. 31;
      Altitude at Message_Size + 12 range 0 .. 31;
      Lat      at Message_Size + 16 range 0 .. 31;
      Lng      at Message_Size + 20 range 0 .. 31;
      V1       at Message_Size + 24 range 0 .. 31;
      V2       at Message_Size + 28 range 0 .. 31;
      V3       at Message_Size + 32 range 0 .. 31;
      V4       at Message_Size + 36 range 0 .. 31;
   end record;

   type Autopilot_Version_Request is new Message
     (Message_Id => Autopilot_Version_Request_Id,
      Payload_Length => 2) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
   end record;
   for Autopilot_Version_Request use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
   end record;

   type Remote_Log_Data_Block is new Message
     (Message_Id => Remote_Log_Data_Block_Id,
      Payload_Length => 206) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Seqno            : Types.Mav_Remote_Log_Data_Block_Commands;
      Data             : Unsigned_8_Array (1..200);
   end record;
   for Remote_Log_Data_Block use record
      Seqno            at Message_Size + 0 range 0 .. 31;
      Target_System    at Message_Size + 4 range 0 .. 7;
      Target_Component at Message_Size + 5 range 0 .. 7;
      Data             at Message_Size + 6 range 0 .. 1599;
   end record;

   type Remote_Log_Block_Status is new Message
     (Message_Id => Remote_Log_Block_Status_Id,
      Payload_Length => 7) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Seqno            : Interfaces.Unsigned_32;
      Status           : Types.Mav_Remote_Log_Data_Block_Statuses;
   end record;
   for Remote_Log_Block_Status use record
      Seqno            at Message_Size + 0 range 0 .. 31;
      Target_System    at Message_Size + 4 range 0 .. 7;
      Target_Component at Message_Size + 5 range 0 .. 7;
      Status           at Message_Size + 6 range 0 .. 7;
   end record;

   type Led_Control is new Message
     (Message_Id => Led_Control_Id,
      Payload_Length => 29) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Instance         : Interfaces.Unsigned_8;
      Pattern          : Interfaces.Unsigned_8;
      Custom_Len       : Interfaces.Unsigned_8;
      Custom_Bytes     : Unsigned_8_Array (1..24);
   end record;
   for Led_Control use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
      Instance         at Message_Size + 2 range 0 .. 7;
      Pattern          at Message_Size + 3 range 0 .. 7;
      Custom_Len       at Message_Size + 4 range 0 .. 7;
      Custom_Bytes     at Message_Size + 5 range 0 .. 191;
   end record;

   type Mag_Cal_Progress is new Message
     (Message_Id => Mag_Cal_Progress_Id,
      Payload_Length => 27) with record
      Compass_Id      : Interfaces.Unsigned_8;
      Cal_Mask        : Interfaces.Unsigned_8;
      Cal_Status      : Types.Mag_Cal_Status;
      Attempt         : Interfaces.Unsigned_8;
      Completion_Pct  : Interfaces.Unsigned_8;
      Completion_Mask : Unsigned_8_Array (1..10);
      Direction_X     : Short_Float;
      Direction_Y     : Short_Float;
      Direction_Z     : Short_Float;
   end record;
   for Mag_Cal_Progress use record
      Direction_X     at Message_Size + 0 range 0 .. 31;
      Direction_Y     at Message_Size + 4 range 0 .. 31;
      Direction_Z     at Message_Size + 8 range 0 .. 31;
      Compass_Id      at Message_Size + 12 range 0 .. 7;
      Cal_Mask        at Message_Size + 13 range 0 .. 7;
      Cal_Status      at Message_Size + 14 range 0 .. 7;
      Attempt         at Message_Size + 15 range 0 .. 7;
      Completion_Pct  at Message_Size + 16 range 0 .. 7;
      Completion_Mask at Message_Size + 17 range 0 .. 79;
   end record;

   type Mag_Cal_Report is new Message
     (Message_Id => Mag_Cal_Report_Id,
      Payload_Length => 44) with record
      Compass_Id : Interfaces.Unsigned_8;
      Cal_Mask   : Interfaces.Unsigned_8;
      Cal_Status : Types.Mag_Cal_Status;
      Autosaved  : Interfaces.Unsigned_8;
      Fitness    : Short_Float;
      Ofs_X      : Short_Float;
      Ofs_Y      : Short_Float;
      Ofs_Z      : Short_Float;
      Diag_X     : Short_Float;
      Diag_Y     : Short_Float;
      Diag_Z     : Short_Float;
      Offdiag_X  : Short_Float;
      Offdiag_Y  : Short_Float;
      Offdiag_Z  : Short_Float;
   end record;
   for Mag_Cal_Report use record
      Fitness    at Message_Size + 0 range 0 .. 31;
      Ofs_X      at Message_Size + 4 range 0 .. 31;
      Ofs_Y      at Message_Size + 8 range 0 .. 31;
      Ofs_Z      at Message_Size + 12 range 0 .. 31;
      Diag_X     at Message_Size + 16 range 0 .. 31;
      Diag_Y     at Message_Size + 20 range 0 .. 31;
      Diag_Z     at Message_Size + 24 range 0 .. 31;
      Offdiag_X  at Message_Size + 28 range 0 .. 31;
      Offdiag_Y  at Message_Size + 32 range 0 .. 31;
      Offdiag_Z  at Message_Size + 36 range 0 .. 31;
      Compass_Id at Message_Size + 40 range 0 .. 7;
      Cal_Mask   at Message_Size + 41 range 0 .. 7;
      Cal_Status at Message_Size + 42 range 0 .. 7;
      Autosaved  at Message_Size + 43 range 0 .. 7;
   end record;

   type Ekf_Status_Report is new Message
     (Message_Id => Ekf_Status_Report_Id,
      Payload_Length => 22) with record
      Flags                : Types.Ekf_Status_Flags;
      Velocity_Variance    : Short_Float;
      Pos_Horiz_Variance   : Short_Float;
      Pos_Vert_Variance    : Short_Float;
      Compass_Variance     : Short_Float;
      Terrain_Alt_Variance : Short_Float;
   end record;
   for Ekf_Status_Report use record
      Velocity_Variance    at Message_Size + 0 range 0 .. 31;
      Pos_Horiz_Variance   at Message_Size + 4 range 0 .. 31;
      Pos_Vert_Variance    at Message_Size + 8 range 0 .. 31;
      Compass_Variance     at Message_Size + 12 range 0 .. 31;
      Terrain_Alt_Variance at Message_Size + 16 range 0 .. 31;
      Flags                at Message_Size + 20 range 0 .. 15;
   end record;

   type Pid_Tuning is new Message
     (Message_Id => Pid_Tuning_Id,
      Payload_Length => 25) with record
      Axis     : Types.Pid_Tuning_Axis;
      Desired  : Short_Float;
      Achieved : Short_Float;
      Ff       : Short_Float;
      P        : Short_Float;
      I        : Short_Float;
      D        : Short_Float;
   end record;
   for Pid_Tuning use record
      Desired  at Message_Size + 0 range 0 .. 31;
      Achieved at Message_Size + 4 range 0 .. 31;
      Ff       at Message_Size + 8 range 0 .. 31;
      P        at Message_Size + 12 range 0 .. 31;
      I        at Message_Size + 16 range 0 .. 31;
      D        at Message_Size + 20 range 0 .. 31;
      Axis     at Message_Size + 24 range 0 .. 7;
   end record;

   type Deepstall is new Message
     (Message_Id => Deepstall_Id,
      Payload_Length => 37) with record
      Landing_Lat              : Interfaces.Integer_32;
      Landing_Lon              : Interfaces.Integer_32;
      Path_Lat                 : Interfaces.Integer_32;
      Path_Lon                 : Interfaces.Integer_32;
      Arc_Entry_Lat            : Interfaces.Integer_32;
      Arc_Entry_Lon            : Interfaces.Integer_32;
      Altitude                 : Short_Float;
      Expected_Travel_Distance : Short_Float;
      Cross_Track_Error        : Short_Float;
      Stage                    : Types.Deepstall_Stage;
   end record;
   for Deepstall use record
      Landing_Lat              at Message_Size + 0 range 0 .. 31;
      Landing_Lon              at Message_Size + 4 range 0 .. 31;
      Path_Lat                 at Message_Size + 8 range 0 .. 31;
      Path_Lon                 at Message_Size + 12 range 0 .. 31;
      Arc_Entry_Lat            at Message_Size + 16 range 0 .. 31;
      Arc_Entry_Lon            at Message_Size + 20 range 0 .. 31;
      Altitude                 at Message_Size + 24 range 0 .. 31;
      Expected_Travel_Distance at Message_Size + 28 range 0 .. 31;
      Cross_Track_Error        at Message_Size + 32 range 0 .. 31;
      Stage                    at Message_Size + 36 range 0 .. 7;
   end record;

   type Gimbal_Report is new Message
     (Message_Id => Gimbal_Report_Id,
      Payload_Length => 42) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Delta_Time       : Short_Float;
      Delta_Angle_X    : Short_Float;
      Delta_Angle_Y    : Short_Float;
      Delta_Angle_Z    : Short_Float;
      Delta_Velocity_X : Short_Float;
      Delta_Velocity_Y : Short_Float;
      Delta_Velocity_Z : Short_Float;
      Joint_Roll       : Short_Float;
      Joint_El         : Short_Float;
      Joint_Az         : Short_Float;
   end record;
   for Gimbal_Report use record
      Delta_Time       at Message_Size + 0 range 0 .. 31;
      Delta_Angle_X    at Message_Size + 4 range 0 .. 31;
      Delta_Angle_Y    at Message_Size + 8 range 0 .. 31;
      Delta_Angle_Z    at Message_Size + 12 range 0 .. 31;
      Delta_Velocity_X at Message_Size + 16 range 0 .. 31;
      Delta_Velocity_Y at Message_Size + 20 range 0 .. 31;
      Delta_Velocity_Z at Message_Size + 24 range 0 .. 31;
      Joint_Roll       at Message_Size + 28 range 0 .. 31;
      Joint_El         at Message_Size + 32 range 0 .. 31;
      Joint_Az         at Message_Size + 36 range 0 .. 31;
      Target_System    at Message_Size + 40 range 0 .. 7;
      Target_Component at Message_Size + 41 range 0 .. 7;
   end record;

   type Gimbal_Control is new Message
     (Message_Id => Gimbal_Control_Id,
      Payload_Length => 14) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Demanded_Rate_X  : Short_Float;
      Demanded_Rate_Y  : Short_Float;
      Demanded_Rate_Z  : Short_Float;
   end record;
   for Gimbal_Control use record
      Demanded_Rate_X  at Message_Size + 0 range 0 .. 31;
      Demanded_Rate_Y  at Message_Size + 4 range 0 .. 31;
      Demanded_Rate_Z  at Message_Size + 8 range 0 .. 31;
      Target_System    at Message_Size + 12 range 0 .. 7;
      Target_Component at Message_Size + 13 range 0 .. 7;
   end record;

   type Gimbal_Torque_Cmd_Report is new Message
     (Message_Id => Gimbal_Torque_Cmd_Report_Id,
      Payload_Length => 8) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Rl_Torque_Cmd    : Interfaces.Integer_16;
      El_Torque_Cmd    : Interfaces.Integer_16;
      Az_Torque_Cmd    : Interfaces.Integer_16;
   end record;
   for Gimbal_Torque_Cmd_Report use record
      Rl_Torque_Cmd    at Message_Size + 0 range 0 .. 15;
      El_Torque_Cmd    at Message_Size + 2 range 0 .. 15;
      Az_Torque_Cmd    at Message_Size + 4 range 0 .. 15;
      Target_System    at Message_Size + 6 range 0 .. 7;
      Target_Component at Message_Size + 7 range 0 .. 7;
   end record;

   type Gopro_Heartbeat is new Message
     (Message_Id => Gopro_Heartbeat_Id,
      Payload_Length => 3) with record
      Status       : Types.Gopro_Heartbeat_Status;
      Capture_Mode : Types.Gopro_Capture_Mode;
      Flags        : Types.Gopro_Heartbeat_Flags;
   end record;
   for Gopro_Heartbeat use record
      Status       at Message_Size + 0 range 0 .. 7;
      Capture_Mode at Message_Size + 1 range 0 .. 7;
      Flags        at Message_Size + 2 range 0 .. 7;
   end record;

   type Gopro_Get_Request is new Message
     (Message_Id => Gopro_Get_Request_Id,
      Payload_Length => 3) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Cmd_Id           : Types.Gopro_Command;
   end record;
   for Gopro_Get_Request use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
      Cmd_Id           at Message_Size + 2 range 0 .. 7;
   end record;

   type Gopro_Get_Response is new Message
     (Message_Id => Gopro_Get_Response_Id,
      Payload_Length => 6) with record
      Cmd_Id : Types.Gopro_Command;
      Status : Types.Gopro_Request_Status;
      Value  : Unsigned_8_Array (1..4);
   end record;
   for Gopro_Get_Response use record
      Cmd_Id at Message_Size + 0 range 0 .. 7;
      Status at Message_Size + 1 range 0 .. 7;
      Value  at Message_Size + 2 range 0 .. 31;
   end record;

   type Gopro_Set_Request is new Message
     (Message_Id => Gopro_Set_Request_Id,
      Payload_Length => 7) with record
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Cmd_Id           : Types.Gopro_Command;
      Value            : Unsigned_8_Array (1..4);
   end record;
   for Gopro_Set_Request use record
      Target_System    at Message_Size + 0 range 0 .. 7;
      Target_Component at Message_Size + 1 range 0 .. 7;
      Cmd_Id           at Message_Size + 2 range 0 .. 7;
      Value            at Message_Size + 3 range 0 .. 31;
   end record;

   type Gopro_Set_Response is new Message
     (Message_Id => Gopro_Set_Response_Id,
      Payload_Length => 2) with record
      Cmd_Id : Types.Gopro_Command;
      Status : Types.Gopro_Request_Status;
   end record;
   for Gopro_Set_Response use record
      Cmd_Id at Message_Size + 0 range 0 .. 7;
      Status at Message_Size + 1 range 0 .. 7;
   end record;

   type Efi_Status is new Message
     (Message_Id => Efi_Status_Id,
      Payload_Length => 65) with record
      Health                      : Interfaces.Unsigned_8;
      Ecu_Index                   : Short_Float;
      Rpm                         : Short_Float;
      Fuel_Consumed               : Short_Float;
      Fuel_Flow                   : Short_Float;
      Engine_Load                 : Short_Float;
      Throttle_Position           : Short_Float;
      Spark_Dwell_Time            : Short_Float;
      Barometric_Pressure         : Short_Float;
      Intake_Manifold_Pressure    : Short_Float;
      Intake_Manifold_Temperature : Short_Float;
      Cylinder_Head_Temperature   : Short_Float;
      Ignition_Timing             : Short_Float;
      Injection_Time              : Short_Float;
      Exhaust_Gas_Temperature     : Short_Float;
      Throttle_Out                : Short_Float;
      Pt_Compensation             : Short_Float;
   end record;
   for Efi_Status use record
      Ecu_Index                   at Message_Size + 0 range 0 .. 31;
      Rpm                         at Message_Size + 4 range 0 .. 31;
      Fuel_Consumed               at Message_Size + 8 range 0 .. 31;
      Fuel_Flow                   at Message_Size + 12 range 0 .. 31;
      Engine_Load                 at Message_Size + 16 range 0 .. 31;
      Throttle_Position           at Message_Size + 20 range 0 .. 31;
      Spark_Dwell_Time            at Message_Size + 24 range 0 .. 31;
      Barometric_Pressure         at Message_Size + 28 range 0 .. 31;
      Intake_Manifold_Pressure    at Message_Size + 32 range 0 .. 31;
      Intake_Manifold_Temperature at Message_Size + 36 range 0 .. 31;
      Cylinder_Head_Temperature   at Message_Size + 40 range 0 .. 31;
      Ignition_Timing             at Message_Size + 44 range 0 .. 31;
      Injection_Time              at Message_Size + 48 range 0 .. 31;
      Exhaust_Gas_Temperature     at Message_Size + 52 range 0 .. 31;
      Throttle_Out                at Message_Size + 56 range 0 .. 31;
      Pt_Compensation             at Message_Size + 60 range 0 .. 31;
      Health                      at Message_Size + 64 range 0 .. 7;
   end record;

   type Rpm is new Message
     (Message_Id => Rpm_Id,
      Payload_Length => 8) with record
      Rpm1 : Short_Float;
      Rpm2 : Short_Float;
   end record;
   for Rpm use record
      Rpm1 at Message_Size + 0 range 0 .. 31;
      Rpm2 at Message_Size + 4 range 0 .. 31;
   end record;

   type Estimator_Status is new Message
     (Message_Id => Estimator_Status_Id,
      Payload_Length => 42) with record
      Time_Usec          : Interfaces.Unsigned_64;
      Flags              : Types.Estimator_Status_Flags;
      Vel_Ratio          : Short_Float;
      Pos_Horiz_Ratio    : Short_Float;
      Pos_Vert_Ratio     : Short_Float;
      Mag_Ratio          : Short_Float;
      Hagl_Ratio         : Short_Float;
      Tas_Ratio          : Short_Float;
      Pos_Horiz_Accuracy : Short_Float;
      Pos_Vert_Accuracy  : Short_Float;
   end record;
   for Estimator_Status use record
      Time_Usec          at Message_Size + 0 range 0 .. 63;
      Vel_Ratio          at Message_Size + 8 range 0 .. 31;
      Pos_Horiz_Ratio    at Message_Size + 12 range 0 .. 31;
      Pos_Vert_Ratio     at Message_Size + 16 range 0 .. 31;
      Mag_Ratio          at Message_Size + 20 range 0 .. 31;
      Hagl_Ratio         at Message_Size + 24 range 0 .. 31;
      Tas_Ratio          at Message_Size + 28 range 0 .. 31;
      Pos_Horiz_Accuracy at Message_Size + 32 range 0 .. 31;
      Pos_Vert_Accuracy  at Message_Size + 36 range 0 .. 31;
      Flags              at Message_Size + 40 range 0 .. 15;
   end record;

   type Wind_Cov is new Message
     (Message_Id => Wind_Cov_Id,
      Payload_Length => 40) with record
      Time_Usec      : Interfaces.Unsigned_64;
      Wind_X         : Short_Float;
      Wind_Y         : Short_Float;
      Wind_Z         : Short_Float;
      Var_Horiz      : Short_Float;
      Var_Vert       : Short_Float;
      Wind_Alt       : Short_Float;
      Horiz_Accuracy : Short_Float;
      Vert_Accuracy  : Short_Float;
   end record;
   for Wind_Cov use record
      Time_Usec      at Message_Size + 0 range 0 .. 63;
      Wind_X         at Message_Size + 8 range 0 .. 31;
      Wind_Y         at Message_Size + 12 range 0 .. 31;
      Wind_Z         at Message_Size + 16 range 0 .. 31;
      Var_Horiz      at Message_Size + 20 range 0 .. 31;
      Var_Vert       at Message_Size + 24 range 0 .. 31;
      Wind_Alt       at Message_Size + 28 range 0 .. 31;
      Horiz_Accuracy at Message_Size + 32 range 0 .. 31;
      Vert_Accuracy  at Message_Size + 36 range 0 .. 31;
   end record;

   type Gps_Input is new Message
     (Message_Id => Gps_Input_Id,
      Payload_Length => 63) with record
      Time_Usec          : Interfaces.Unsigned_64;
      Gps_Id             : Interfaces.Unsigned_8;
      Ignore_Flags       : Types.Gps_Input_Ignore_Flags;
      Time_Week_Ms       : Interfaces.Unsigned_32;
      Time_Week          : Interfaces.Unsigned_16;
      Fix_Type           : Interfaces.Unsigned_8;
      Lat                : Interfaces.Integer_32;
      Lon                : Interfaces.Integer_32;
      Alt                : Short_Float;
      Hdop               : Short_Float;
      Vdop               : Short_Float;
      Vn                 : Short_Float;
      Ve                 : Short_Float;
      Vd                 : Short_Float;
      Speed_Accuracy     : Short_Float;
      Horiz_Accuracy     : Short_Float;
      Vert_Accuracy      : Short_Float;
      Satellites_Visible : Interfaces.Unsigned_8;
   end record;
   for Gps_Input use record
      Time_Usec          at Message_Size + 0 range 0 .. 63;
      Time_Week_Ms       at Message_Size + 8 range 0 .. 31;
      Lat                at Message_Size + 12 range 0 .. 31;
      Lon                at Message_Size + 16 range 0 .. 31;
      Alt                at Message_Size + 20 range 0 .. 31;
      Hdop               at Message_Size + 24 range 0 .. 31;
      Vdop               at Message_Size + 28 range 0 .. 31;
      Vn                 at Message_Size + 32 range 0 .. 31;
      Ve                 at Message_Size + 36 range 0 .. 31;
      Vd                 at Message_Size + 40 range 0 .. 31;
      Speed_Accuracy     at Message_Size + 44 range 0 .. 31;
      Horiz_Accuracy     at Message_Size + 48 range 0 .. 31;
      Vert_Accuracy      at Message_Size + 52 range 0 .. 31;
      Ignore_Flags       at Message_Size + 56 range 0 .. 15;
      Time_Week          at Message_Size + 58 range 0 .. 15;
      Gps_Id             at Message_Size + 60 range 0 .. 7;
      Fix_Type           at Message_Size + 61 range 0 .. 7;
      Satellites_Visible at Message_Size + 62 range 0 .. 7;
   end record;

   type Gps_Rtcm_Data is new Message
     (Message_Id => Gps_Rtcm_Data_Id,
      Payload_Length => 182) with record
      Flags : Interfaces.Unsigned_8;
      Len   : Interfaces.Unsigned_8;
      Data  : Unsigned_8_Array (1..180);
   end record;
   for Gps_Rtcm_Data use record
      Flags at Message_Size + 0 range 0 .. 7;
      Len   at Message_Size + 1 range 0 .. 7;
      Data  at Message_Size + 2 range 0 .. 1439;
   end record;

   type High_Latency is new Message
     (Message_Id => High_Latency_Id,
      Payload_Length => 40) with record
      Base_Mode         : Types.Mav_Mode_Flag;
      Custom_Mode       : Interfaces.Unsigned_32;
      Landed_State      : Types.Mav_Landed_State;
      Roll              : Interfaces.Integer_16;
      Pitch             : Interfaces.Integer_16;
      Heading           : Interfaces.Unsigned_16;
      Throttle          : Interfaces.Integer_8;
      Heading_Sp        : Interfaces.Integer_16;
      Latitude          : Interfaces.Integer_32;
      Longitude         : Interfaces.Integer_32;
      Altitude_Amsl     : Interfaces.Integer_16;
      Altitude_Sp       : Interfaces.Integer_16;
      Airspeed          : Interfaces.Unsigned_8;
      Airspeed_Sp       : Interfaces.Unsigned_8;
      Groundspeed       : Interfaces.Unsigned_8;
      Climb_Rate        : Interfaces.Integer_8;
      Gps_Nsat          : Interfaces.Unsigned_8;
      Gps_Fix_Type      : Types.Gps_Fix_Type;
      Battery_Remaining : Interfaces.Unsigned_8;
      Temperature       : Interfaces.Integer_8;
      Temperature_Air   : Interfaces.Integer_8;
      Failsafe          : Interfaces.Unsigned_8;
      Wp_Num            : Interfaces.Unsigned_8;
      Wp_Distance       : Interfaces.Unsigned_16;
   end record;
   for High_Latency use record
      Custom_Mode       at Message_Size + 0 range 0 .. 31;
      Latitude          at Message_Size + 4 range 0 .. 31;
      Longitude         at Message_Size + 8 range 0 .. 31;
      Roll              at Message_Size + 12 range 0 .. 15;
      Pitch             at Message_Size + 14 range 0 .. 15;
      Heading           at Message_Size + 16 range 0 .. 15;
      Heading_Sp        at Message_Size + 18 range 0 .. 15;
      Altitude_Amsl     at Message_Size + 20 range 0 .. 15;
      Altitude_Sp       at Message_Size + 22 range 0 .. 15;
      Wp_Distance       at Message_Size + 24 range 0 .. 15;
      Base_Mode         at Message_Size + 26 range 0 .. 7;
      Landed_State      at Message_Size + 27 range 0 .. 7;
      Throttle          at Message_Size + 28 range 0 .. 7;
      Airspeed          at Message_Size + 29 range 0 .. 7;
      Airspeed_Sp       at Message_Size + 30 range 0 .. 7;
      Groundspeed       at Message_Size + 31 range 0 .. 7;
      Climb_Rate        at Message_Size + 32 range 0 .. 7;
      Gps_Nsat          at Message_Size + 33 range 0 .. 7;
      Gps_Fix_Type      at Message_Size + 34 range 0 .. 7;
      Battery_Remaining at Message_Size + 35 range 0 .. 7;
      Temperature       at Message_Size + 36 range 0 .. 7;
      Temperature_Air   at Message_Size + 37 range 0 .. 7;
      Failsafe          at Message_Size + 38 range 0 .. 7;
      Wp_Num            at Message_Size + 39 range 0 .. 7;
   end record;

   type High_Latency2 is new Message
     (Message_Id => High_Latency2_Id,
      Payload_Length => 42) with record
      Timestamp       : Interfaces.Unsigned_32;
      Type_Field      : Types.Mav_Type;
      Autopilot       : Types.Mav_Autopilot;
      Custom_Mode     : Interfaces.Unsigned_16;
      Latitude        : Interfaces.Integer_32;
      Longitude       : Interfaces.Integer_32;
      Altitude        : Interfaces.Integer_16;
      Target_Altitude : Interfaces.Integer_16;
      Heading         : Interfaces.Unsigned_8;
      Target_Heading  : Interfaces.Unsigned_8;
      Target_Distance : Interfaces.Unsigned_16;
      Throttle        : Interfaces.Unsigned_8;
      Airspeed        : Interfaces.Unsigned_8;
      Airspeed_Sp     : Interfaces.Unsigned_8;
      Groundspeed     : Interfaces.Unsigned_8;
      Windspeed       : Interfaces.Unsigned_8;
      Wind_Heading    : Interfaces.Unsigned_8;
      Eph             : Interfaces.Unsigned_8;
      Epv             : Interfaces.Unsigned_8;
      Temperature_Air : Interfaces.Integer_8;
      Climb_Rate      : Interfaces.Integer_8;
      Battery         : Interfaces.Integer_8;
      Wp_Num          : Interfaces.Unsigned_16;
      Failure_Flags   : Types.Hl_Failure_Flag;
      Custom0         : Interfaces.Integer_8;
      Custom1         : Interfaces.Integer_8;
      Custom2         : Interfaces.Integer_8;
   end record;
   for High_Latency2 use record
      Timestamp       at Message_Size + 0 range 0 .. 31;
      Latitude        at Message_Size + 4 range 0 .. 31;
      Longitude       at Message_Size + 8 range 0 .. 31;
      Custom_Mode     at Message_Size + 12 range 0 .. 15;
      Altitude        at Message_Size + 14 range 0 .. 15;
      Target_Altitude at Message_Size + 16 range 0 .. 15;
      Target_Distance at Message_Size + 18 range 0 .. 15;
      Wp_Num          at Message_Size + 20 range 0 .. 15;
      Failure_Flags   at Message_Size + 22 range 0 .. 15;
      Type_Field      at Message_Size + 24 range 0 .. 7;
      Autopilot       at Message_Size + 25 range 0 .. 7;
      Heading         at Message_Size + 26 range 0 .. 7;
      Target_Heading  at Message_Size + 27 range 0 .. 7;
      Throttle        at Message_Size + 28 range 0 .. 7;
      Airspeed        at Message_Size + 29 range 0 .. 7;
      Airspeed_Sp     at Message_Size + 30 range 0 .. 7;
      Groundspeed     at Message_Size + 31 range 0 .. 7;
      Windspeed       at Message_Size + 32 range 0 .. 7;
      Wind_Heading    at Message_Size + 33 range 0 .. 7;
      Eph             at Message_Size + 34 range 0 .. 7;
      Epv             at Message_Size + 35 range 0 .. 7;
      Temperature_Air at Message_Size + 36 range 0 .. 7;
      Climb_Rate      at Message_Size + 37 range 0 .. 7;
      Battery         at Message_Size + 38 range 0 .. 7;
      Custom0         at Message_Size + 39 range 0 .. 7;
      Custom1         at Message_Size + 40 range 0 .. 7;
      Custom2         at Message_Size + 41 range 0 .. 7;
   end record;

   type Vibration is new Message
     (Message_Id => Vibration_Id,
      Payload_Length => 32) with record
      Time_Usec   : Interfaces.Unsigned_64;
      Vibration_X : Short_Float;
      Vibration_Y : Short_Float;
      Vibration_Z : Short_Float;
      Clipping_0  : Interfaces.Unsigned_32;
      Clipping_1  : Interfaces.Unsigned_32;
      Clipping_2  : Interfaces.Unsigned_32;
   end record;
   for Vibration use record
      Time_Usec   at Message_Size + 0 range 0 .. 63;
      Vibration_X at Message_Size + 8 range 0 .. 31;
      Vibration_Y at Message_Size + 12 range 0 .. 31;
      Vibration_Z at Message_Size + 16 range 0 .. 31;
      Clipping_0  at Message_Size + 20 range 0 .. 31;
      Clipping_1  at Message_Size + 24 range 0 .. 31;
      Clipping_2  at Message_Size + 28 range 0 .. 31;
   end record;

   type Home_Position is new Message
     (Message_Id => Home_Position_Id,
      Payload_Length => 52) with record
      Latitude   : Interfaces.Integer_32;
      Longitude  : Interfaces.Integer_32;
      Altitude   : Interfaces.Integer_32;
      X          : Short_Float;
      Y          : Short_Float;
      Z          : Short_Float;
      Q          : Short_Float_Array (1..4);
      Approach_X : Short_Float;
      Approach_Y : Short_Float;
      Approach_Z : Short_Float;
   end record;
   for Home_Position use record
      Latitude   at Message_Size + 0 range 0 .. 31;
      Longitude  at Message_Size + 4 range 0 .. 31;
      Altitude   at Message_Size + 8 range 0 .. 31;
      X          at Message_Size + 12 range 0 .. 31;
      Y          at Message_Size + 16 range 0 .. 31;
      Z          at Message_Size + 20 range 0 .. 31;
      Q          at Message_Size + 24 range 0 .. 127;
      Approach_X at Message_Size + 40 range 0 .. 31;
      Approach_Y at Message_Size + 44 range 0 .. 31;
      Approach_Z at Message_Size + 48 range 0 .. 31;
   end record;

   type Set_Home_Position is new Message
     (Message_Id => Set_Home_Position_Id,
      Payload_Length => 53) with record
      Target_System : Interfaces.Unsigned_8;
      Latitude      : Interfaces.Integer_32;
      Longitude     : Interfaces.Integer_32;
      Altitude      : Interfaces.Integer_32;
      X             : Short_Float;
      Y             : Short_Float;
      Z             : Short_Float;
      Q             : Short_Float_Array (1..4);
      Approach_X    : Short_Float;
      Approach_Y    : Short_Float;
      Approach_Z    : Short_Float;
   end record;
   for Set_Home_Position use record
      Latitude      at Message_Size + 0 range 0 .. 31;
      Longitude     at Message_Size + 4 range 0 .. 31;
      Altitude      at Message_Size + 8 range 0 .. 31;
      X             at Message_Size + 12 range 0 .. 31;
      Y             at Message_Size + 16 range 0 .. 31;
      Z             at Message_Size + 20 range 0 .. 31;
      Q             at Message_Size + 24 range 0 .. 127;
      Approach_X    at Message_Size + 40 range 0 .. 31;
      Approach_Y    at Message_Size + 44 range 0 .. 31;
      Approach_Z    at Message_Size + 48 range 0 .. 31;
      Target_System at Message_Size + 52 range 0 .. 7;
   end record;

   type Message_Interval is new Message
     (Message_Id => Message_Interval_Id,
      Payload_Length => 6) with record
      Message_Id_Field : Interfaces.Unsigned_16;
      Interval_Us      : Interfaces.Integer_32;
   end record;
   for Message_Interval use record
      Interval_Us      at Message_Size + 0 range 0 .. 31;
      Message_Id_Field at Message_Size + 4 range 0 .. 15;
   end record;

   type Extended_Sys_State is new Message
     (Message_Id => Extended_Sys_State_Id,
      Payload_Length => 2) with record
      Vtol_State   : Types.Mav_Vtol_State;
      Landed_State : Types.Mav_Landed_State;
   end record;
   for Extended_Sys_State use record
      Vtol_State   at Message_Size + 0 range 0 .. 7;
      Landed_State at Message_Size + 1 range 0 .. 7;
   end record;

   type Adsb_Vehicle is new Message
     (Message_Id => Adsb_Vehicle_Id,
      Payload_Length => 38) with record
      Icao_Address  : Interfaces.Unsigned_32;
      Lat           : Interfaces.Integer_32;
      Lon           : Interfaces.Integer_32;
      Altitude_Type : Types.Adsb_Altitude_Type;
      Altitude      : Interfaces.Integer_32;
      Heading       : Interfaces.Unsigned_16;
      Hor_Velocity  : Interfaces.Unsigned_16;
      Ver_Velocity  : Interfaces.Integer_16;
      Callsign      : String (1..9);
      Emitter_Type  : Types.Adsb_Emitter_Type;
      Tslc          : Interfaces.Unsigned_8;
      Flags         : Types.Adsb_Flags;
      Squawk        : Interfaces.Unsigned_16;
   end record;
   for Adsb_Vehicle use record
      Icao_Address  at Message_Size + 0 range 0 .. 31;
      Lat           at Message_Size + 4 range 0 .. 31;
      Lon           at Message_Size + 8 range 0 .. 31;
      Altitude      at Message_Size + 12 range 0 .. 31;
      Heading       at Message_Size + 16 range 0 .. 15;
      Hor_Velocity  at Message_Size + 18 range 0 .. 15;
      Ver_Velocity  at Message_Size + 20 range 0 .. 15;
      Flags         at Message_Size + 22 range 0 .. 15;
      Squawk        at Message_Size + 24 range 0 .. 15;
      Altitude_Type at Message_Size + 26 range 0 .. 7;
      Callsign      at Message_Size + 27 range 0 .. 71;
      Emitter_Type  at Message_Size + 36 range 0 .. 7;
      Tslc          at Message_Size + 37 range 0 .. 7;
   end record;

   type Collision is new Message
     (Message_Id => Collision_Id,
      Payload_Length => 19) with record
      Src                      : Types.Mav_Collision_Src;
      Id                       : Interfaces.Unsigned_32;
      Action                   : Types.Mav_Collision_Action;
      Threat_Level             : Types.Mav_Collision_Threat_Level;
      Time_To_Minimum_Delta    : Short_Float;
      Altitude_Minimum_Delta   : Short_Float;
      Horizontal_Minimum_Delta : Short_Float;
   end record;
   for Collision use record
      Id                       at Message_Size + 0 range 0 .. 31;
      Time_To_Minimum_Delta    at Message_Size + 4 range 0 .. 31;
      Altitude_Minimum_Delta   at Message_Size + 8 range 0 .. 31;
      Horizontal_Minimum_Delta at Message_Size + 12 range 0 .. 31;
      Src                      at Message_Size + 16 range 0 .. 7;
      Action                   at Message_Size + 17 range 0 .. 7;
      Threat_Level             at Message_Size + 18 range 0 .. 7;
   end record;

   type V2_Extension is new Message
     (Message_Id => V2_Extension_Id,
      Payload_Length => 254) with record
      Target_Network   : Interfaces.Unsigned_8;
      Target_System    : Interfaces.Unsigned_8;
      Target_Component : Interfaces.Unsigned_8;
      Message_Type     : Interfaces.Unsigned_16;
      Payload          : Unsigned_8_Array (1..249);
   end record;
   for V2_Extension use record
      Message_Type     at Message_Size + 0 range 0 .. 15;
      Target_Network   at Message_Size + 2 range 0 .. 7;
      Target_System    at Message_Size + 3 range 0 .. 7;
      Target_Component at Message_Size + 4 range 0 .. 7;
      Payload          at Message_Size + 5 range 0 .. 1991;
   end record;

   type Memory_Vect is new Message
     (Message_Id => Memory_Vect_Id,
      Payload_Length => 36) with record
      Address    : Interfaces.Unsigned_16;
      Ver        : Interfaces.Unsigned_8;
      Type_Field : Interfaces.Unsigned_8;
      Value      : Integer_8_Array (1..32);
   end record;
   for Memory_Vect use record
      Address    at Message_Size + 0 range 0 .. 15;
      Ver        at Message_Size + 2 range 0 .. 7;
      Type_Field at Message_Size + 3 range 0 .. 7;
      Value      at Message_Size + 4 range 0 .. 255;
   end record;

   type Debug_Vect is new Message
     (Message_Id => Debug_Vect_Id,
      Payload_Length => 30) with record
      Name      : String (1..10);
      Time_Usec : Interfaces.Unsigned_64;
      X         : Short_Float;
      Y         : Short_Float;
      Z         : Short_Float;
   end record;
   for Debug_Vect use record
      Time_Usec at Message_Size + 0 range 0 .. 63;
      X         at Message_Size + 8 range 0 .. 31;
      Y         at Message_Size + 12 range 0 .. 31;
      Z         at Message_Size + 16 range 0 .. 31;
      Name      at Message_Size + 20 range 0 .. 79;
   end record;

   type Named_Value_Float is new Message
     (Message_Id => Named_Value_Float_Id,
      Payload_Length => 18) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Name         : String (1..10);
      Value        : Short_Float;
   end record;
   for Named_Value_Float use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Value        at Message_Size + 4 range 0 .. 31;
      Name         at Message_Size + 8 range 0 .. 79;
   end record;

   type Named_Value_Int is new Message
     (Message_Id => Named_Value_Int_Id,
      Payload_Length => 18) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Name         : String (1..10);
      Value        : Interfaces.Integer_32;
   end record;
   for Named_Value_Int use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Value        at Message_Size + 4 range 0 .. 31;
      Name         at Message_Size + 8 range 0 .. 79;
   end record;

   type Statustext is new Message
     (Message_Id => Statustext_Id,
      Payload_Length => 51) with record
      Severity : Types.Mav_Severity;
      Text     : String (1..50);
   end record;
   for Statustext use record
      Severity at Message_Size + 0 range 0 .. 7;
      Text     at Message_Size + 1 range 0 .. 399;
   end record;

   type Debug is new Message
     (Message_Id => Debug_Id,
      Payload_Length => 9) with record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      Ind          : Interfaces.Unsigned_8;
      Value        : Short_Float;
   end record;
   for Debug use record
      Time_Boot_Ms at Message_Size + 0 range 0 .. 31;
      Value        at Message_Size + 4 range 0 .. 31;
      Ind          at Message_Size + 8 range 0 .. 7;
   end record;

   CRC_Extras : constant array (Interfaces.Unsigned_8'Range) of
     Interfaces.Unsigned_8 := 
     (0   => 50,  1   => 124, 2   => 137, 4   => 237, 5   => 217, 6   => 104, 
      7   => 119, 8   => 117, 11  => 89,  20  => 214, 21  => 159, 22  => 220, 
      23  => 168, 24  => 24,  25  => 23,  26  => 170, 27  => 144, 28  => 67,  
      29  => 115, 30  => 39,  31  => 246, 32  => 185, 33  => 104, 34  => 237, 
      35  => 244, 36  => 222, 37  => 212, 38  => 9,   39  => 254, 40  => 230, 
      41  => 28,  42  => 28,  43  => 132, 44  => 221, 45  => 232, 46  => 11,  
      47  => 153, 48  => 41,  49  => 39,  50  => 78,  51  => 196, 54  => 15,  
      55  => 3,   61  => 167, 62  => 183, 63  => 119, 64  => 191, 65  => 118, 
      66  => 148, 67  => 21,  69  => 243, 70  => 124, 73  => 38,  74  => 20,  
      75  => 158, 76  => 152, 77  => 143, 80  => 14,  81  => 106, 82  => 49,  
      83  => 22,  84  => 143, 85  => 140, 86  => 5,   87  => 150, 89  => 231, 
      90  => 183, 91  => 63,  92  => 54,  93  => 47,  100 => 175, 101 => 102, 
      102 => 158, 103 => 208, 104 => 56,  105 => 93,  106 => 138, 107 => 108, 
      108 => 32,  109 => 185, 110 => 84,  111 => 34,  112 => 174, 113 => 124, 
      114 => 237, 115 => 4,   116 => 76,  117 => 128, 118 => 56,  119 => 116, 
      120 => 134, 121 => 237, 122 => 203, 123 => 250, 124 => 87,  125 => 203, 
      126 => 220, 127 => 25,  128 => 226, 129 => 46,  130 => 29,  131 => 223, 
      132 => 85,  133 => 6,   134 => 229, 135 => 203, 136 => 1,   137 => 195, 
      138 => 109, 139 => 168, 140 => 181, 141 => 47,  142 => 72,  143 => 131, 
      144 => 127, 146 => 103, 147 => 154, 148 => 178, 149 => 200, 150 => 134, 
      151 => 219, 152 => 208, 153 => 188, 154 => 84,  155 => 22,  156 => 19,  
      157 => 21,  158 => 134, 160 => 78,  161 => 68,  162 => 189, 163 => 127, 
      164 => 154, 165 => 21,  166 => 21,  167 => 144, 168 => 1,   169 => 234, 
      170 => 73,  171 => 181, 172 => 22,  173 => 83,  174 => 167, 175 => 138, 
      176 => 234, 177 => 240, 178 => 47,  179 => 189, 180 => 52,  181 => 174, 
      182 => 229, 183 => 85,  184 => 159, 185 => 186, 186 => 72,  191 => 92,  
      192 => 36,  193 => 71,  194 => 98,  195 => 120, 200 => 134, 201 => 205, 
      214 => 69,  215 => 101, 216 => 50,  217 => 202, 218 => 17,  219 => 162, 
      225 => 208, 226 => 207, 230 => 163, 231 => 105, 232 => 151, 233 => 35,  
      234 => 150, 235 => 179, 241 => 90,  242 => 104, 243 => 85,  244 => 95,  
      245 => 130, 246 => 184, 247 => 81,  248 => 8,   249 => 204, 250 => 49,  
      251 => 170, 252 => 44,  253 => 83,  254 => 46,  
      others => 0) with Size => 2048;

end MAVLink.Messages;