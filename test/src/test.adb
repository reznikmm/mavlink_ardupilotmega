
pragma Warnings (Off); --  prevent `not used`
with MAVLink.V2.Ardupilotmega.Types;
with MAVLink.V2.Common.Types;
with MAVLink.V2.Uavionix.Types;
with MAVLink.V2.Icarous.Types;
with MAVLink.V2.Loweheiser.Types;
with MAVLink.V2.Cubepilot.Types;
with MAVLink.V2.Csairlink.Types;
with MAVLink.V2.Standard.Types;
with MAVLink.V2.Minimal.Types;
pragma Warnings (On);

with MAVLink.V2.Ardupilotmega.Sensor_Offsetses;
with MAVLink.V2.Ardupilotmega.Set_Mag_Offsetses;
with MAVLink.V2.Ardupilotmega.Meminfos;
with MAVLink.V2.Ardupilotmega.Ap_Adcs;
with MAVLink.V2.Ardupilotmega.Digicam_Configures;
with MAVLink.V2.Ardupilotmega.Digicam_Controls;
with MAVLink.V2.Ardupilotmega.Mount_Configures;
with MAVLink.V2.Ardupilotmega.Mount_Controls;
with MAVLink.V2.Ardupilotmega.Mount_Statuses;
with MAVLink.V2.Ardupilotmega.Fence_Points;
with MAVLink.V2.Ardupilotmega.Fence_Fetch_Points;
with MAVLink.V2.Ardupilotmega.Ahrses;
with MAVLink.V2.Ardupilotmega.Simstates;
with MAVLink.V2.Ardupilotmega.Hwstatuses;
with MAVLink.V2.Ardupilotmega.Radios;
with MAVLink.V2.Ardupilotmega.Limits_Statuses;
with MAVLink.V2.Ardupilotmega.Winds;
with MAVLink.V2.Ardupilotmega.Data16s;
with MAVLink.V2.Ardupilotmega.Data32s;
with MAVLink.V2.Ardupilotmega.Data64s;
with MAVLink.V2.Ardupilotmega.Data96s;
with MAVLink.V2.Ardupilotmega.Rangefinders;
with MAVLink.V2.Ardupilotmega.Airspeed_Autocals;
with MAVLink.V2.Ardupilotmega.Rally_Points;
with MAVLink.V2.Ardupilotmega.Rally_Fetch_Points;
with MAVLink.V2.Ardupilotmega.Compassmot_Statuses;
with MAVLink.V2.Ardupilotmega.Ahrs2s;
with MAVLink.V2.Ardupilotmega.Camera_Statuses;
with MAVLink.V2.Ardupilotmega.Camera_Feedbacks;
with MAVLink.V2.Ardupilotmega.Battery2s;
with MAVLink.V2.Ardupilotmega.Ahrs3s;
with MAVLink.V2.Ardupilotmega.Autopilot_Version_Requests;
with MAVLink.V2.Ardupilotmega.Remote_Log_Data_Blocks;
with MAVLink.V2.Ardupilotmega.Remote_Log_Block_Statuses;
with MAVLink.V2.Ardupilotmega.Led_Controls;
with MAVLink.V2.Ardupilotmega.Mag_Cal_Progresses;
with MAVLink.V2.Ardupilotmega.Ekf_Status_Reports;
with MAVLink.V2.Ardupilotmega.Pid_Tunings;
with MAVLink.V2.Ardupilotmega.Deepstalls;
with MAVLink.V2.Ardupilotmega.Gimbal_Reports;
with MAVLink.V2.Ardupilotmega.Gimbal_Controls;
with MAVLink.V2.Ardupilotmega.Gimbal_Torque_Cmd_Reports;
with MAVLink.V2.Ardupilotmega.Gopro_Heartbeats;
with MAVLink.V2.Ardupilotmega.Gopro_Get_Requests;
with MAVLink.V2.Ardupilotmega.Gopro_Get_Responses;
with MAVLink.V2.Ardupilotmega.Gopro_Set_Requests;
with MAVLink.V2.Ardupilotmega.Gopro_Set_Responses;
with MAVLink.V2.Ardupilotmega.Rpms;
with MAVLink.V2.Ardupilotmega.Device_Op_Reads;
with MAVLink.V2.Ardupilotmega.Device_Op_Read_Replys;
with MAVLink.V2.Ardupilotmega.Device_Op_Writes;
with MAVLink.V2.Ardupilotmega.Device_Op_Write_Replys;
with MAVLink.V2.Ardupilotmega.Secure_Commands;
with MAVLink.V2.Ardupilotmega.Secure_Command_Replys;
with MAVLink.V2.Ardupilotmega.Adap_Tunings;
with MAVLink.V2.Ardupilotmega.Vision_Position_Deltas;
with MAVLink.V2.Ardupilotmega.Aoa_Ssas;
with MAVLink.V2.Ardupilotmega.Esc_Telemetry_1_To_4s;
with MAVLink.V2.Ardupilotmega.Esc_Telemetry_5_To_8s;
with MAVLink.V2.Ardupilotmega.Esc_Telemetry_9_To_12s;
with MAVLink.V2.Ardupilotmega.Osd_Param_Configs;
with MAVLink.V2.Ardupilotmega.Osd_Param_Config_Replys;
with MAVLink.V2.Ardupilotmega.Osd_Param_Show_Configs;
with MAVLink.V2.Ardupilotmega.Osd_Param_Show_Config_Replys;
with MAVLink.V2.Ardupilotmega.Obstacle_Distance_3Ds;
with MAVLink.V2.Ardupilotmega.Water_Depths;
with MAVLink.V2.Ardupilotmega.Mcu_Statuses;
with MAVLink.V2.Ardupilotmega.Esc_Telemetry_13_To_16s;
with MAVLink.V2.Ardupilotmega.Esc_Telemetry_17_To_20s;
with MAVLink.V2.Ardupilotmega.Esc_Telemetry_21_To_24s;
with MAVLink.V2.Ardupilotmega.Esc_Telemetry_25_To_28s;
with MAVLink.V2.Ardupilotmega.Esc_Telemetry_29_To_32s;
with MAVLink.V2.Ardupilotmega.Named_Value_Strings;
with MAVLink.V2.Common.Sys_Statuses;
with MAVLink.V2.Common.System_Times;
with MAVLink.V2.Common.Pings;
with MAVLink.V2.Common.Change_Operator_Controls;
with MAVLink.V2.Common.Change_Operator_Control_Acks;
with MAVLink.V2.Common.Auth_Keys;
with MAVLink.V2.Common.Link_Node_Statuses;
with MAVLink.V2.Common.Set_Modes;
with MAVLink.V2.Common.Param_Request_Reads;
with MAVLink.V2.Common.Param_Request_Lists;
with MAVLink.V2.Common.Param_Values;
with MAVLink.V2.Common.Param_Sets;
with MAVLink.V2.Common.Gps_Raw_Ints;
with MAVLink.V2.Common.Gps_Statuses;
with MAVLink.V2.Common.Scaled_Imus;
with MAVLink.V2.Common.Raw_Imus;
with MAVLink.V2.Common.Raw_Pressures;
with MAVLink.V2.Common.Scaled_Pressures;
with MAVLink.V2.Common.Attitudes;
with MAVLink.V2.Common.Attitude_Quaternions;
with MAVLink.V2.Common.Local_Position_Neds;
with MAVLink.V2.Common.Rc_Channels_Scaleds;
with MAVLink.V2.Common.Rc_Channels_Raws;
with MAVLink.V2.Common.Servo_Output_Raws;
with MAVLink.V2.Common.Mission_Request_Partial_Lists;
with MAVLink.V2.Common.Mission_Write_Partial_Lists;
with MAVLink.V2.Common.Mission_Items;
with MAVLink.V2.Common.Mission_Requests;
with MAVLink.V2.Common.Mission_Set_Currents;
with MAVLink.V2.Common.Mission_Currents;
with MAVLink.V2.Common.Mission_Request_Lists;
with MAVLink.V2.Common.Mission_Counts;
with MAVLink.V2.Common.Mission_Clear_Alls;
with MAVLink.V2.Common.Mission_Item_Reacheds;
with MAVLink.V2.Common.Mission_Acks;
with MAVLink.V2.Common.Set_Gps_Global_Origins;
with MAVLink.V2.Common.Gps_Global_Origins;
with MAVLink.V2.Common.Param_Map_Rcs;
with MAVLink.V2.Common.Mission_Request_Ints;
with MAVLink.V2.Common.Safety_Set_Allowed_Areas;
with MAVLink.V2.Common.Safety_Allowed_Areas;
with MAVLink.V2.Common.Attitude_Quaternion_Covs;
with MAVLink.V2.Common.Nav_Controller_Outputs;
with MAVLink.V2.Common.Global_Position_Int_Covs;
with MAVLink.V2.Common.Local_Position_Ned_Covs;
with MAVLink.V2.Common.Rc_Channelses;
with MAVLink.V2.Common.Request_Data_Streams;
with MAVLink.V2.Common.Data_Streams;
with MAVLink.V2.Common.Manual_Controls;
with MAVLink.V2.Common.Rc_Channels_Overrides;
with MAVLink.V2.Common.Mission_Item_Ints;
with MAVLink.V2.Common.Vfr_Huds;
with MAVLink.V2.Common.Command_Ints;
with MAVLink.V2.Common.Command_Longs;
with MAVLink.V2.Common.Command_Acks;
with MAVLink.V2.Common.Command_Cancels;
with MAVLink.V2.Common.Manual_Setpoints;
with MAVLink.V2.Common.Set_Attitude_Targets;
with MAVLink.V2.Common.Attitude_Targets;
with MAVLink.V2.Common.Set_Position_Target_Local_Neds;
with MAVLink.V2.Common.Position_Target_Local_Neds;
with MAVLink.V2.Common.Set_Position_Target_Global_Ints;
with MAVLink.V2.Common.Position_Target_Global_Ints;
with MAVLink.V2.Common.Local_Position_Ned_System_Global_Offsets;
with MAVLink.V2.Common.Hil_States;
with MAVLink.V2.Common.Hil_Controlses;
with MAVLink.V2.Common.Hil_Rc_Inputs_Raws;
with MAVLink.V2.Common.Hil_Actuator_Controlses;
with MAVLink.V2.Common.Optical_Flows;
with MAVLink.V2.Common.Global_Vision_Position_Estimates;
with MAVLink.V2.Common.Vision_Position_Estimates;
with MAVLink.V2.Common.Vision_Speed_Estimates;
with MAVLink.V2.Common.Vicon_Position_Estimates;
with MAVLink.V2.Common.Highres_Imus;
with MAVLink.V2.Common.Optical_Flow_Rads;
with MAVLink.V2.Common.Hil_Sensors;
with MAVLink.V2.Common.Sim_States;
with MAVLink.V2.Common.Radio_Statuses;
with MAVLink.V2.Common.File_Transfer_Protocols;
with MAVLink.V2.Common.Timesyncs;
with MAVLink.V2.Common.Camera_Triggers;
with MAVLink.V2.Common.Hil_Gpses;
with MAVLink.V2.Common.Hil_Optical_Flows;
with MAVLink.V2.Common.Hil_State_Quaternions;
with MAVLink.V2.Common.Scaled_Imu2s;
with MAVLink.V2.Common.Log_Request_Lists;
with MAVLink.V2.Common.Log_Entrys;
with MAVLink.V2.Common.Log_Request_Datas;
with MAVLink.V2.Common.Log_Datas;
with MAVLink.V2.Common.Log_Erases;
with MAVLink.V2.Common.Log_Request_Ends;
with MAVLink.V2.Common.Gps_Inject_Datas;
with MAVLink.V2.Common.Gps2_Raws;
with MAVLink.V2.Common.Power_Statuses;
with MAVLink.V2.Common.Serial_Controls;
with MAVLink.V2.Common.Gps_Rtks;
with MAVLink.V2.Common.Gps2_Rtks;
with MAVLink.V2.Common.Scaled_Imu3s;
with MAVLink.V2.Common.Data_Transmission_Handshakes;
with MAVLink.V2.Common.Encapsulated_Datas;
with MAVLink.V2.Common.Distance_Sensors;
with MAVLink.V2.Common.Terrain_Requests;
with MAVLink.V2.Common.Terrain_Datas;
with MAVLink.V2.Common.Terrain_Checks;
with MAVLink.V2.Common.Terrain_Reports;
with MAVLink.V2.Common.Scaled_Pressure2s;
with MAVLink.V2.Common.Att_Pos_Mocaps;
with MAVLink.V2.Common.Set_Actuator_Control_Targets;
with MAVLink.V2.Common.Actuator_Control_Targets;
with MAVLink.V2.Common.Altitudes;
with MAVLink.V2.Common.Resource_Requests;
with MAVLink.V2.Common.Scaled_Pressure3s;
with MAVLink.V2.Common.Follow_Targets;
with MAVLink.V2.Common.Control_System_States;
with MAVLink.V2.Common.Battery_Statuses;
with MAVLink.V2.Common.Landing_Targets;
with MAVLink.V2.Common.Fence_Statuses;
with MAVLink.V2.Common.Mag_Cal_Reports;
with MAVLink.V2.Common.Efi_Statuses;
with MAVLink.V2.Common.Estimator_Statuses;
with MAVLink.V2.Common.Wind_Covs;
with MAVLink.V2.Common.Gps_Inputs;
with MAVLink.V2.Common.Gps_Rtcm_Datas;
with MAVLink.V2.Common.High_Latencys;
with MAVLink.V2.Common.High_Latency2s;
with MAVLink.V2.Common.Vibrations;
with MAVLink.V2.Common.Home_Positions;
with MAVLink.V2.Common.Set_Home_Positions;
with MAVLink.V2.Common.Message_Intervals;
with MAVLink.V2.Common.Extended_Sys_States;
with MAVLink.V2.Common.Adsb_Vehicles;
with MAVLink.V2.Common.Collisions;
with MAVLink.V2.Common.V2_Extensions;
with MAVLink.V2.Common.Memory_Vects;
with MAVLink.V2.Common.Debug_Vects;
with MAVLink.V2.Common.Named_Value_Floats;
with MAVLink.V2.Common.Named_Value_Ints;
with MAVLink.V2.Common.Statustexts;
with MAVLink.V2.Common.Debugs;
with MAVLink.V2.Common.Setup_Signings;
with MAVLink.V2.Common.Button_Changes;
with MAVLink.V2.Common.Play_Tunes;
with MAVLink.V2.Common.Camera_Informations;
with MAVLink.V2.Common.Camera_Settingses;
with MAVLink.V2.Common.Storage_Informations;
with MAVLink.V2.Common.Camera_Capture_Statuses;
with MAVLink.V2.Common.Camera_Image_Captureds;
with MAVLink.V2.Common.Flight_Informations;
with MAVLink.V2.Common.Mount_Orientations;
with MAVLink.V2.Common.Logging_Datas;
with MAVLink.V2.Common.Logging_Data_Ackeds;
with MAVLink.V2.Common.Logging_Acks;
with MAVLink.V2.Common.Video_Stream_Informations;
with MAVLink.V2.Common.Video_Stream_Statuses;
with MAVLink.V2.Common.Camera_Fov_Statuses;
with MAVLink.V2.Common.Camera_Tracking_Image_Statuses;
with MAVLink.V2.Common.Camera_Tracking_Geo_Statuses;
with MAVLink.V2.Common.Camera_Thermal_Ranges;
with MAVLink.V2.Common.Gimbal_Manager_Informations;
with MAVLink.V2.Common.Gimbal_Manager_Statuses;
with MAVLink.V2.Common.Gimbal_Manager_Set_Attitudes;
with MAVLink.V2.Common.Gimbal_Device_Informations;
with MAVLink.V2.Common.Gimbal_Device_Set_Attitudes;
with MAVLink.V2.Common.Gimbal_Device_Attitude_Statuses;
with MAVLink.V2.Common.Autopilot_State_For_Gimbal_Devices;
with MAVLink.V2.Common.Gimbal_Manager_Set_Pitchyaws;
with MAVLink.V2.Common.Gimbal_Manager_Set_Manual_Controls;
with MAVLink.V2.Common.Esc_Infos;
with MAVLink.V2.Common.Esc_Statuses;
with MAVLink.V2.Common.Airspeeds;
with MAVLink.V2.Common.Wifi_Config_Aps;
with MAVLink.V2.Common.Protocol_Versions;
with MAVLink.V2.Common.Ais_Vessels;
with MAVLink.V2.Common.Uavcan_Node_Statuses;
with MAVLink.V2.Common.Uavcan_Node_Infos;
with MAVLink.V2.Common.Param_Ext_Request_Reads;
with MAVLink.V2.Common.Param_Ext_Request_Lists;
with MAVLink.V2.Common.Param_Ext_Values;
with MAVLink.V2.Common.Param_Ext_Sets;
with MAVLink.V2.Common.Param_Ext_Acks;
with MAVLink.V2.Common.Obstacle_Distances;
with MAVLink.V2.Common.Odometrys;
with MAVLink.V2.Common.Trajectory_Representation_Waypointses;
with MAVLink.V2.Common.Trajectory_Representation_Beziers;
with MAVLink.V2.Common.Cellular_Statuses;
with MAVLink.V2.Common.Isbd_Link_Statuses;
with MAVLink.V2.Common.Cellular_Configs;
with MAVLink.V2.Common.Raw_Rpms;
with MAVLink.V2.Common.Utm_Global_Positions;
with MAVLink.V2.Common.Param_Errors;
with MAVLink.V2.Common.Debug_Float_Arrays;
with MAVLink.V2.Common.Orbit_Execution_Statuses;
with MAVLink.V2.Common.Smart_Battery_Infos;
with MAVLink.V2.Common.Figure_Eight_Execution_Statuses;
with MAVLink.V2.Common.Fuel_Statuses;
with MAVLink.V2.Common.Battery_Infos;
with MAVLink.V2.Common.Generator_Statuses;
with MAVLink.V2.Common.Actuator_Output_Statuses;
with MAVLink.V2.Common.Time_Estimate_To_Targets;
with MAVLink.V2.Common.Tunnels;
with MAVLink.V2.Common.Can_Frames;
with MAVLink.V2.Common.Onboard_Computer_Statuses;
with MAVLink.V2.Common.Component_Informations;
with MAVLink.V2.Common.Component_Information_Basics;
with MAVLink.V2.Common.Component_Metadatas;
with MAVLink.V2.Common.Play_Tune_V2s;
with MAVLink.V2.Common.Supported_Tuneses;
with MAVLink.V2.Common.Events;
with MAVLink.V2.Common.Current_Event_Sequences;
with MAVLink.V2.Common.Request_Events;
with MAVLink.V2.Common.Response_Event_Errors;
with MAVLink.V2.Common.Available_Modeses;
with MAVLink.V2.Common.Current_Modes;
with MAVLink.V2.Common.Available_Modes_Monitors;
with MAVLink.V2.Common.Illuminator_Statuses;
with MAVLink.V2.Common.Canfd_Frames;
with MAVLink.V2.Common.Can_Filter_Modifys;
with MAVLink.V2.Common.Wheel_Distances;
with MAVLink.V2.Common.Winch_Statuses;
with MAVLink.V2.Common.Open_Drone_Id_Basic_Ids;
with MAVLink.V2.Common.Open_Drone_Id_Locations;
with MAVLink.V2.Common.Open_Drone_Id_Authentications;
with MAVLink.V2.Common.Open_Drone_Id_Self_Ids;
with MAVLink.V2.Common.Open_Drone_Id_Systems;
with MAVLink.V2.Common.Open_Drone_Id_Operator_Ids;
with MAVLink.V2.Common.Open_Drone_Id_Message_Packs;
with MAVLink.V2.Common.Open_Drone_Id_Arm_Statuses;
with MAVLink.V2.Common.Open_Drone_Id_System_Updates;
with MAVLink.V2.Common.Hygrometer_Sensors;
with MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfgs;
with MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Dynamics;
with MAVLink.V2.Uavionix.Uavionix_Adsb_Transceiver_Health_Reports;
with MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfg_Registrations;
with MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfg_Flightids;
with MAVLink.V2.Uavionix.Uavionix_Adsb_Gets;
with MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Controls;
with MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Statuses;
with MAVLink.V2.Icarous.Icarous_Heartbeats;
with MAVLink.V2.Icarous.Icarous_Kinematic_Bandses;
with MAVLink.V2.Loweheiser.Loweheiser_Gov_Efis;
with MAVLink.V2.Cubepilot.Cubepilot_Raw_Rcs;
with MAVLink.V2.Cubepilot.Herelink_Video_Stream_Informations;
with MAVLink.V2.Cubepilot.Herelink_Telems;
with MAVLink.V2.Cubepilot.Cubepilot_Firmware_Update_Starts;
with MAVLink.V2.Cubepilot.Cubepilot_Firmware_Update_Resps;
with MAVLink.V2.Csairlink.Airlink_Auths;
with MAVLink.V2.Csairlink.Airlink_Auth_Responses;
with MAVLink.V2.Standard.Global_Position_Ints;
with MAVLink.V2.Standard.Autopilot_Versions;
with MAVLink.V2.Minimal.Heartbeats;

with Ada.Text_IO;

pragma Warnings (Off); --  prevent "not used"
with MAVLink.Raw_Floats;      use MAVLink.Raw_Floats;
with MAVLink.Raw_Long_Floats; use MAVLink.Raw_Long_Floats;
with MAVLink.SHA_256;
pragma Warnings (On);

use MAVLink.V2;

procedure Test
is
   D1 : constant MAVLink.SHA_256.Data  := [16#61#, 16#62#, 16#63#];
   R1 : constant MAVLink.SHA_256.State :=
     [16#ba7816bf#, 16#8f01cfea#, 16#414140de#, 16#5dae2223#,
      16#b00361a3#, 16#96177a9c#, 16#b410ff61#, 16#f20015ad#];

   D2 : constant MAVLink.SHA_256.Data :=
     [16#61#, 16#62#, 16#63#, 16#64#, 16#62#, 16#63#, 16#64#, 16#65#, 16#63#,
      16#64#, 16#65#, 16#66#, 16#64#, 16#65#, 16#66#, 16#67#, 16#65#, 16#66#,
      16#67#, 16#68#, 16#66#, 16#67#, 16#68#, 16#69#, 16#67#, 16#68#, 16#69#,
      16#6a#, 16#68#, 16#69#, 16#6a#, 16#6b#, 16#69#, 16#6a#, 16#6b#, 16#6c#,
      16#6a#, 16#6b#, 16#6c#, 16#6d#, 16#6b#, 16#6c#, 16#6d#, 16#6e#, 16#6c#,
      16#6d#, 16#6e#, 16#6f#, 16#6d#, 16#6e#, 16#6f#, 16#70#, 16#6e#, 16#6f#,
      16#70#, 16#71#];
   R2 : constant MAVLink.SHA_256.State :=
     [16#248d6a61#, 16#d20638b8#, 16#e5c02693#, 16#0c3e6039#,
      16#a33ce459#, 16#64ff2167#, 16#f6ecedd4#, 16#19db06c1#];

   D3 : constant MAVLink.SHA_256.Data :=
     [16#6C#, 16#6F#, 16#6E#, 16#67#, 16#5F#, 16#70#, 16#61#, 16#73#, 16#73#,
      16#77#, 16#6F#, 16#72#, 16#64#, 16#fd#, 16#05#, 16#01#, 16#00#, 16#00#,
      16#01#, 16#01#, 16#78#, 16#32#, 16#00#, 16#01#, 16#00#, 16#00#, 16#00#,
      16#01#, 16#08#, 16#98#, 16#01#, 16#c8#, 16#00#, 16#00#, 16#00#, 16#00#,
      16#00#];
   R3 : constant MAVLink.SHA_256.State :=
     [16#48c298bd#, 16#a123637a#, 16#f1103486#, 16#180a716a#,
      16#9c41e4b1#, 16#42293472#, 16#ea587ff5#, 16#247d5943#];
   T  : Data_Buffer (1 .. 32) with Import, Address => R3'Address;

   procedure Do_SHA_256_Test (D : MAVLink.SHA_256.Data; R : MAVLink.SHA_256.State);
   procedure Do_SHA_256_Test (D : MAVLink.SHA_256.Data; R : MAVLink.SHA_256.State)
   is
      use type MAVLink.SHA_256.State;

      Checksum : MAVLink.SHA_256.Context;
      Result   : MAVLink.SHA_256.Digest_Type;
      Res      : MAVLink.SHA_256.State (1 .. 8) with Import,
        Address => Result'Address;
   begin
      MAVLink.SHA_256.Update (Checksum, D);
      MAVLink.SHA_256.Digest (Checksum, Result);
      pragma Assert (Res = R);
   end Do_SHA_256_Test;

   Hygrometer_Sensors_Data : constant Data_Buffer :=
     [253, 5, 1, 0, 0, 1, 1, 120, 50,  0, --  Header
      1, 0, 0, 0, 1, --  Message
      8, 152, --  CRC
      1, -- Link_Id
      200, 0, 0, 0, 0, 0, --  Timestamp
      189, 152, 194, 72,  122, 99]; --  SHA

   Sig         : MAVLink.V2.Signature;
   In_Connect  : MAVLink.V2.Connection;
   Out_Connect : MAVLink.V2.Out_Connection;
   Pass        : constant String := "long_password";
   Pass_Data   : Signature_Key (1 .. Pass'Length) with Import,
     Address => Pass'Address;
   Res         : Boolean;

   Seq         : Sequence_Id_Type;
   Sys_Id      : System_Id_Type;
   Comp_Id     : Component_Id_Type;
   Id          : Msg_Id;
   Link_Id     : Link_Id_Type;
   Timestamp   : Timestamp_Type;
   Signature   : Three_Boolean;
   Buffer      : Data_Buffer (1 .. MAVLink.V2.Maximum_Buffer_Len);
   Last        : Positive;

begin
   Initialize (Sig,  1, Pass_Data, 200);
   Set_System_Id (In_Connect, 1);
   Set_Component_Id (In_Connect, 1);
   Set_System_Id (Out_Connect, 1);
   Set_Component_Id (Out_Connect, 1);

   Do_SHA_256_Test (D1, R1);
   Do_SHA_256_Test (D2, R2);
   Do_SHA_256_Test (D3, R3);

   -- Income
   for Index in Hygrometer_Sensors_Data'First ..
     Hygrometer_Sensors_Data'Last
   loop
      Res := Parse_Byte (In_Connect, Hygrometer_Sensors_Data (Index));
   end loop;
   pragma Assert (Res);

   Get_Message_Information
     (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);

   pragma Assert (Seq = 0);
   pragma Assert (Sys_Id = 1);
   pragma Assert (Comp_Id = 1);
   pragma Assert
     (Id =
        MAVLink.V2.Common.Hygrometer_Sensor_Id);
   pragma Assert (Link_Id = 1);
   pragma Assert (Timestamp = 200);
   pragma Assert (Signature = True);

   -- In / Out
   declare
      use MAVLink.V2.Common.Hygrometer_Sensors;
      M : constant Hygrometer_Sensor :=
        (Id => 1, Temperature => 1, Humidity => 0);
      O : Hygrometer_Sensor;
   begin
      Encode (M, Out_Connect, Sig, Buffer, Last);
      pragma Assert (Last = 30);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);

      pragma Assert (Seq = 0);
      pragma Assert (Sys_Id = 1);
      pragma Assert (Comp_Id = 1);
      pragma Assert (Id = MAVLink.V2.Common.Hygrometer_Sensor_Id);
      pragma Assert (Link_Id = 1);
      pragma Assert (Timestamp = 200);
      pragma Assert (Signature = True);

      Decode (O, In_Connect, Res);
      pragma Assert (M = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Sensor_Offsetses;
      I : Sensor_Offsets;
      O : constant Sensor_Offsets :=
         (Mag_Ofs_X => 6,
          Mag_Ofs_Y => 6,
          Mag_Ofs_Z => 6,
          Mag_Declination => To_Raw (9.9),
          Raw_Press => 7,
          Raw_Temp => 7,
          Gyro_Cal_X => To_Raw (9.9),
          Gyro_Cal_Y => To_Raw (9.9),
          Gyro_Cal_Z => To_Raw (9.9),
          Accel_Cal_X => To_Raw (9.9),
          Accel_Cal_Y => To_Raw (9.9),
          Accel_Cal_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Set_Mag_Offsetses;
      I : Set_Mag_Offsets;
      O : constant Set_Mag_Offsets :=
         (Target_System => 1,
          Target_Component => 1,
          Mag_Ofs_X => 6,
          Mag_Ofs_Y => 6,
          Mag_Ofs_Z => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Meminfos;
      I : Meminfo;
      O : constant Meminfo :=
         (Brkval => 2,
          Freemem => 2,
          Freemem32 => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Ap_Adcs;
      I : Ap_Adc;
      O : constant Ap_Adc :=
         (Adc1 => 2,
          Adc2 => 2,
          Adc3 => 2,
          Adc4 => 2,
          Adc5 => 2,
          Adc6 => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Digicam_Configures;
      I : Digicam_Configure;
      O : constant Digicam_Configure :=
         (Target_System => 1,
          Target_Component => 1,
          Mode => 1,
          Shutter_Speed => 2,
          Aperture => 1,
          Iso => 1,
          Exposure_Type => 1,
          Command_Id => 1,
          Engine_Cut_Off => 1,
          Extra_Param => 1,
          Extra_Value => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Digicam_Controls;
      I : Digicam_Control;
      O : constant Digicam_Control :=
         (Target_System => 1,
          Target_Component => 1,
          Session => 1,
          Zoom_Pos => 1,
          Zoom_Step => 5,
          Focus_Lock => 1,
          Shot => 1,
          Command_Id => 1,
          Extra_Param => 1,
          Extra_Value => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Mount_Configures;
      I : Mount_Configure;
      O : constant Mount_Configure :=
         (Target_System => 1,
          Target_Component => 1,
          Mount_Mode => MAVLink.V2.Common.Types.Mav_Mount_Mode'First,
          Stab_Roll => 1,
          Stab_Pitch => 1,
          Stab_Yaw => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Mount_Controls;
      I : Mount_Control;
      O : constant Mount_Control :=
         (Target_System => 1,
          Target_Component => 1,
          Input_A => 7,
          Input_B => 7,
          Input_C => 7,
          Save_Position => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Mount_Statuses;
      I : Mount_Status;
      O : constant Mount_Status :=
         (Target_System => 1,
          Target_Component => 1,
          Pointing_A => 7,
          Pointing_B => 7,
          Pointing_C => 7,
          Mount_Mode => MAVLink.V2.Common.Types.Mav_Mount_Mode'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Fence_Points;
      I : Fence_Point;
      O : constant Fence_Point :=
         (Target_System => 1,
          Target_Component => 1,
          Idx => 1,
          Count => 1,
          Lat => To_Raw (9.9),
          Lng => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Fence_Fetch_Points;
      I : Fence_Fetch_Point;
      O : constant Fence_Fetch_Point :=
         (Target_System => 1,
          Target_Component => 1,
          Idx => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Ahrses;
      I : Ahrs;
      O : constant Ahrs :=
         (Omegaix => To_Raw (9.9),
          Omegaiy => To_Raw (9.9),
          Omegaiz => To_Raw (9.9),
          Accel_Weight => To_Raw (9.9),
          Renorm_Val => To_Raw (9.9),
          Error_Rp => To_Raw (9.9),
          Error_Yaw => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Simstates;
      I : Simstate;
      O : constant Simstate :=
         (Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Xacc => To_Raw (9.9),
          Yacc => To_Raw (9.9),
          Zacc => To_Raw (9.9),
          Xgyro => To_Raw (9.9),
          Ygyro => To_Raw (9.9),
          Zgyro => To_Raw (9.9),
          Lat => 7,
          Lng => 7);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Hwstatuses;
      I : Hwstatus;
      O : constant Hwstatus :=
         (Vcc => 2,
          I2Cerr => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Radios;
      I : Radio;
      O : constant Radio :=
         (Rssi => 1,
          Remrssi => 1,
          Txbuf => 1,
          Noise => 1,
          Remnoise => 1,
          Rxerrors => 2,
          Fixed => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Limits_Statuses;
      I : Limits_Status;
      O : constant Limits_Status :=
         (Limits_State => MAVLink.V2.Ardupilotmega.Types.Limits_State'First,
          Last_Trigger => 3,
          Last_Action => 3,
          Last_Recovery => 3,
          Last_Clear => 3,
          Breach_Count => 2,
          Mods_Enabled => <>,
          Mods_Required => <>,
          Mods_Triggered => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Winds;
      I : Wind;
      O : constant Wind :=
         (Direction => To_Raw (9.9),
          Speed => To_Raw (9.9),
          Speed_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Data16s;
      I : Data16;
      O : constant Data16 :=
         (Type_Field => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Data32s;
      I : Data32;
      O : constant Data32 :=
         (Type_Field => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Data64s;
      I : Data64;
      O : constant Data64 :=
         (Type_Field => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Data96s;
      I : Data96;
      O : constant Data96 :=
         (Type_Field => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Rangefinders;
      I : Rangefinder;
      O : constant Rangefinder :=
         (Distance => To_Raw (9.9),
          Voltage => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Airspeed_Autocals;
      I : Airspeed_Autocal;
      O : constant Airspeed_Autocal :=
         (Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Diff_Pressure => To_Raw (9.9),
          Eas2Tas => To_Raw (9.9),
          Ratio => To_Raw (9.9),
          State_X => To_Raw (9.9),
          State_Y => To_Raw (9.9),
          State_Z => To_Raw (9.9),
          Pax => To_Raw (9.9),
          Pby => To_Raw (9.9),
          Pcz => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Rally_Points;
      I : Rally_Point;
      O : constant Rally_Point :=
         (Target_System => 1,
          Target_Component => 1,
          Idx => 1,
          Count => 1,
          Lat => 7,
          Lng => 7,
          Alt => 6,
          Break_Alt => 6,
          Land_Dir => 2,
          Flags => MAVLink.V2.Ardupilotmega.Types.Rally_Flags'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Rally_Fetch_Points;
      I : Rally_Fetch_Point;
      O : constant Rally_Fetch_Point :=
         (Target_System => 1,
          Target_Component => 1,
          Idx => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Compassmot_Statuses;
      I : Compassmot_Status;
      O : constant Compassmot_Status :=
         (Throttle => 2,
          Current => To_Raw (9.9),
          Interference => 2,
          Compensationx => To_Raw (9.9),
          Compensationy => To_Raw (9.9),
          Compensationz => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Ahrs2s;
      I : Ahrs2;
      O : constant Ahrs2 :=
         (Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Altitude => To_Raw (9.9),
          Lat => 7,
          Lng => 7);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Camera_Statuses;
      I : Camera_Status;
      O : constant Camera_Status :=
         (Time_Usec => 4,
          Target_System => 1,
          Cam_Idx => 1,
          Img_Idx => 2,
          Event_Id => MAVLink.V2.Ardupilotmega.Types.Camera_Status_Types'First,
          P1 => To_Raw (9.9),
          P2 => To_Raw (9.9),
          P3 => To_Raw (9.9),
          P4 => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Camera_Feedbacks;
      I : Camera_Feedback;
      O : constant Camera_Feedback :=
         (Time_Usec => 4,
          Target_System => 1,
          Cam_Idx => 1,
          Img_Idx => 2,
          Lat => 7,
          Lng => 7,
          Alt_Msl => To_Raw (9.9),
          Alt_Rel => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Foc_Len => To_Raw (9.9),
          Flags => MAVLink.V2.Ardupilotmega.Types.Camera_Feedback_Flags'First,
          Completed_Captures => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Battery2s;
      I : Battery2;
      O : constant Battery2 :=
         (Voltage => 2,
          Current_Battery => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Ahrs3s;
      I : Ahrs3;
      O : constant Ahrs3 :=
         (Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Altitude => To_Raw (9.9),
          Lat => 7,
          Lng => 7,
          V1 => To_Raw (9.9),
          V2 => To_Raw (9.9),
          V3 => To_Raw (9.9),
          V4 => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Autopilot_Version_Requests;
      I : Autopilot_Version_Request;
      O : constant Autopilot_Version_Request :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Remote_Log_Data_Blocks;
      I : Remote_Log_Data_Block;
      O : constant Remote_Log_Data_Block :=
         (Target_System => 1,
          Target_Component => 1,
          Seqno => MAVLink.V2.Ardupilotmega.Types.Mav_Remote_Log_Data_Block_Commands'First,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Remote_Log_Block_Statuses;
      I : Remote_Log_Block_Status;
      O : constant Remote_Log_Block_Status :=
         (Target_System => 1,
          Target_Component => 1,
          Seqno => 3,
          Status => MAVLink.V2.Ardupilotmega.Types.Mav_Remote_Log_Data_Block_Statuses'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Led_Controls;
      I : Led_Control;
      O : constant Led_Control :=
         (Target_System => 1,
          Target_Component => 1,
          Instance => 1,
          Pattern => 1,
          Custom_Len => 1,
          Custom_Bytes => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Mag_Cal_Progresses;
      I : Mag_Cal_Progress;
      O : constant Mag_Cal_Progress :=
         (Compass_Id => 1,
          Cal_Mask => 1,
          Cal_Status => MAVLink.V2.Common.Types.Mag_Cal_Status'First,
          Attempt => 1,
          Completion_Pct => 1,
          Completion_Mask => [others => 1],
          Direction_X => To_Raw (9.9),
          Direction_Y => To_Raw (9.9),
          Direction_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Ekf_Status_Reports;
      I : Ekf_Status_Report;
      O : constant Ekf_Status_Report :=
         (Flags => <>,
          Velocity_Variance => To_Raw (9.9),
          Pos_Horiz_Variance => To_Raw (9.9),
          Pos_Vert_Variance => To_Raw (9.9),
          Compass_Variance => To_Raw (9.9),
          Terrain_Alt_Variance => To_Raw (9.9),
          Airspeed_Variance => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Pid_Tunings;
      I : Pid_Tuning;
      O : constant Pid_Tuning :=
         (Axis => MAVLink.V2.Ardupilotmega.Types.Pid_Tuning_Axis'First,
          Desired => To_Raw (9.9),
          Achieved => To_Raw (9.9),
          Ff => To_Raw (9.9),
          P => To_Raw (9.9),
          I => To_Raw (9.9),
          D => To_Raw (9.9),
          Srate => To_Raw (9.9),
          Pdmod => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Deepstalls;
      I : Deepstall;
      O : constant Deepstall :=
         (Landing_Lat => 7,
          Landing_Lon => 7,
          Path_Lat => 7,
          Path_Lon => 7,
          Arc_Entry_Lat => 7,
          Arc_Entry_Lon => 7,
          Altitude => To_Raw (9.9),
          Expected_Travel_Distance => To_Raw (9.9),
          Cross_Track_Error => To_Raw (9.9),
          Stage => MAVLink.V2.Ardupilotmega.Types.Deepstall_Stage'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Gimbal_Reports;
      I : Gimbal_Report;
      O : constant Gimbal_Report :=
         (Target_System => 1,
          Target_Component => 1,
          Delta_Time => To_Raw (9.9),
          Delta_Angle_X => To_Raw (9.9),
          Delta_Angle_Y => To_Raw (9.9),
          Delta_Angle_Z => To_Raw (9.9),
          Delta_Velocity_X => To_Raw (9.9),
          Delta_Velocity_Y => To_Raw (9.9),
          Delta_Velocity_Z => To_Raw (9.9),
          Joint_Roll => To_Raw (9.9),
          Joint_El => To_Raw (9.9),
          Joint_Az => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Gimbal_Controls;
      I : Gimbal_Control;
      O : constant Gimbal_Control :=
         (Target_System => 1,
          Target_Component => 1,
          Demanded_Rate_X => To_Raw (9.9),
          Demanded_Rate_Y => To_Raw (9.9),
          Demanded_Rate_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Gimbal_Torque_Cmd_Reports;
      I : Gimbal_Torque_Cmd_Report;
      O : constant Gimbal_Torque_Cmd_Report :=
         (Target_System => 1,
          Target_Component => 1,
          Rl_Torque_Cmd => 6,
          El_Torque_Cmd => 6,
          Az_Torque_Cmd => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Gopro_Heartbeats;
      I : Gopro_Heartbeat;
      O : constant Gopro_Heartbeat :=
         (Status => MAVLink.V2.Ardupilotmega.Types.Gopro_Heartbeat_Status'First,
          Capture_Mode => MAVLink.V2.Ardupilotmega.Types.Gopro_Capture_Mode'First,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Gopro_Get_Requests;
      I : Gopro_Get_Request;
      O : constant Gopro_Get_Request :=
         (Target_System => 1,
          Target_Component => 1,
          Cmd_Id => MAVLink.V2.Ardupilotmega.Types.Gopro_Command'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Gopro_Get_Responses;
      I : Gopro_Get_Response;
      O : constant Gopro_Get_Response :=
         (Cmd_Id => MAVLink.V2.Ardupilotmega.Types.Gopro_Command'First,
          Status => MAVLink.V2.Ardupilotmega.Types.Gopro_Request_Status'First,
          Value => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Gopro_Set_Requests;
      I : Gopro_Set_Request;
      O : constant Gopro_Set_Request :=
         (Target_System => 1,
          Target_Component => 1,
          Cmd_Id => MAVLink.V2.Ardupilotmega.Types.Gopro_Command'First,
          Value => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Gopro_Set_Responses;
      I : Gopro_Set_Response;
      O : constant Gopro_Set_Response :=
         (Cmd_Id => MAVLink.V2.Ardupilotmega.Types.Gopro_Command'First,
          Status => MAVLink.V2.Ardupilotmega.Types.Gopro_Request_Status'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Rpms;
      I : Rpm;
      O : constant Rpm :=
         (Rpm1 => To_Raw (9.9),
          Rpm2 => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Device_Op_Reads;
      I : Device_Op_Read;
      O : constant Device_Op_Read :=
         (Target_System => 1,
          Target_Component => 1,
          Request_Id => 3,
          Bustype => MAVLink.V2.Ardupilotmega.Types.Device_Op_Bustype'First,
          Bus => 1,
          Address => 1,
          Busname => [others => 'A'],
          Regstart => 1,
          Count => 1,
          Bank => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Device_Op_Read_Replys;
      I : Device_Op_Read_Reply;
      O : constant Device_Op_Read_Reply :=
         (Request_Id => 3,
          Result => 1,
          Regstart => 1,
          Count => 1,
          Data => [others => 1],
          Bank => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Device_Op_Writes;
      I : Device_Op_Write;
      O : constant Device_Op_Write :=
         (Target_System => 1,
          Target_Component => 1,
          Request_Id => 3,
          Bustype => MAVLink.V2.Ardupilotmega.Types.Device_Op_Bustype'First,
          Bus => 1,
          Address => 1,
          Busname => [others => 'A'],
          Regstart => 1,
          Count => 1,
          Data => [others => 1],
          Bank => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Device_Op_Write_Replys;
      I : Device_Op_Write_Reply;
      O : constant Device_Op_Write_Reply :=
         (Request_Id => 3,
          Result => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Secure_Commands;
      I : Secure_Command;
      O : constant Secure_Command :=
         (Target_System => 1,
          Target_Component => 1,
          Sequence_Field => 3,
          Operation => MAVLink.V2.Ardupilotmega.Types.Secure_Command_Op'First,
          Data_Length => 1,
          Sig_Length => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Secure_Command_Replys;
      I : Secure_Command_Reply;
      O : constant Secure_Command_Reply :=
         (Sequence_Field => 3,
          Operation => MAVLink.V2.Ardupilotmega.Types.Secure_Command_Op'First,
          Result => MAVLink.V2.Common.Types.Mav_Result'First,
          Data_Length => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Adap_Tunings;
      I : Adap_Tuning;
      O : constant Adap_Tuning :=
         (Axis => MAVLink.V2.Ardupilotmega.Types.Pid_Tuning_Axis'First,
          Desired => To_Raw (9.9),
          Achieved => To_Raw (9.9),
          Error => To_Raw (9.9),
          Theta => To_Raw (9.9),
          Omega => To_Raw (9.9),
          Sigma => To_Raw (9.9),
          Theta_Dot => To_Raw (9.9),
          Omega_Dot => To_Raw (9.9),
          Sigma_Dot => To_Raw (9.9),
          F => To_Raw (9.9),
          F_Dot => To_Raw (9.9),
          U => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Vision_Position_Deltas;
      I : Vision_Position_Delta;
      O : constant Vision_Position_Delta :=
         (Time_Usec => 4,
          Time_Delta_Usec => 4,
          Angle_Delta => [others => To_Raw (9.9)],
          Position_Delta => [others => To_Raw (9.9)],
          Confidence => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Aoa_Ssas;
      I : Aoa_Ssa;
      O : constant Aoa_Ssa :=
         (Time_Usec => 4,
          Aoa => To_Raw (9.9),
          Ssa => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Esc_Telemetry_1_To_4s;
      I : Esc_Telemetry_1_To_4;
      O : constant Esc_Telemetry_1_To_4 :=
         (Temperature => [others => 1],
          Voltage => [others => 2],
          Current => [others => 2],
          Totalcurrent => [others => 2],
          Rpm => [others => 2],
          Count => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Esc_Telemetry_5_To_8s;
      I : Esc_Telemetry_5_To_8;
      O : constant Esc_Telemetry_5_To_8 :=
         (Temperature => [others => 1],
          Voltage => [others => 2],
          Current => [others => 2],
          Totalcurrent => [others => 2],
          Rpm => [others => 2],
          Count => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Esc_Telemetry_9_To_12s;
      I : Esc_Telemetry_9_To_12;
      O : constant Esc_Telemetry_9_To_12 :=
         (Temperature => [others => 1],
          Voltage => [others => 2],
          Current => [others => 2],
          Totalcurrent => [others => 2],
          Rpm => [others => 2],
          Count => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Osd_Param_Configs;
      I : Osd_Param_Config;
      O : constant Osd_Param_Config :=
         (Target_System => 1,
          Target_Component => 1,
          Request_Id => 3,
          Osd_Screen => 1,
          Osd_Index => 1,
          Param_Id => [others => 'A'],
          Config_Type => MAVLink.V2.Ardupilotmega.Types.Osd_Param_Config_Type'First,
          Min_Value => To_Raw (9.9),
          Max_Value => To_Raw (9.9),
          Increment => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Osd_Param_Config_Replys;
      I : Osd_Param_Config_Reply;
      O : constant Osd_Param_Config_Reply :=
         (Request_Id => 3,
          Result => MAVLink.V2.Ardupilotmega.Types.Osd_Param_Config_Error'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Osd_Param_Show_Configs;
      I : Osd_Param_Show_Config;
      O : constant Osd_Param_Show_Config :=
         (Target_System => 1,
          Target_Component => 1,
          Request_Id => 3,
          Osd_Screen => 1,
          Osd_Index => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Osd_Param_Show_Config_Replys;
      I : Osd_Param_Show_Config_Reply;
      O : constant Osd_Param_Show_Config_Reply :=
         (Request_Id => 3,
          Result => MAVLink.V2.Ardupilotmega.Types.Osd_Param_Config_Error'First,
          Param_Id => [others => 'A'],
          Config_Type => MAVLink.V2.Ardupilotmega.Types.Osd_Param_Config_Type'First,
          Min_Value => To_Raw (9.9),
          Max_Value => To_Raw (9.9),
          Increment => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Obstacle_Distance_3Ds;
      I : Obstacle_Distance_3D;
      O : constant Obstacle_Distance_3D :=
         (Time_Boot_Ms => 3,
          Sensor_Type => MAVLink.V2.Common.Types.Mav_Distance_Sensor'First,
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Obstacle_Id => 2,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Min_Distance => To_Raw (9.9),
          Max_Distance => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Water_Depths;
      I : Water_Depth;
      O : constant Water_Depth :=
         (Time_Boot_Ms => 3,
          Id => 1,
          Healthy => 1,
          Lat => 7,
          Lng => 7,
          Alt => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Distance => To_Raw (9.9),
          Temperature => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Mcu_Statuses;
      I : Mcu_Status;
      O : constant Mcu_Status :=
         (Id => 1,
          Mcu_Temperature => 6,
          Mcu_Voltage => 2,
          Mcu_Voltage_Min => 2,
          Mcu_Voltage_Max => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Esc_Telemetry_13_To_16s;
      I : Esc_Telemetry_13_To_16;
      O : constant Esc_Telemetry_13_To_16 :=
         (Temperature => [others => 1],
          Voltage => [others => 2],
          Current => [others => 2],
          Totalcurrent => [others => 2],
          Rpm => [others => 2],
          Count => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Esc_Telemetry_17_To_20s;
      I : Esc_Telemetry_17_To_20;
      O : constant Esc_Telemetry_17_To_20 :=
         (Temperature => [others => 1],
          Voltage => [others => 2],
          Current => [others => 2],
          Totalcurrent => [others => 2],
          Rpm => [others => 2],
          Count => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Esc_Telemetry_21_To_24s;
      I : Esc_Telemetry_21_To_24;
      O : constant Esc_Telemetry_21_To_24 :=
         (Temperature => [others => 1],
          Voltage => [others => 2],
          Current => [others => 2],
          Totalcurrent => [others => 2],
          Rpm => [others => 2],
          Count => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Esc_Telemetry_25_To_28s;
      I : Esc_Telemetry_25_To_28;
      O : constant Esc_Telemetry_25_To_28 :=
         (Temperature => [others => 1],
          Voltage => [others => 2],
          Current => [others => 2],
          Totalcurrent => [others => 2],
          Rpm => [others => 2],
          Count => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Esc_Telemetry_29_To_32s;
      I : Esc_Telemetry_29_To_32;
      O : constant Esc_Telemetry_29_To_32 :=
         (Temperature => [others => 1],
          Voltage => [others => 2],
          Current => [others => 2],
          Totalcurrent => [others => 2],
          Rpm => [others => 2],
          Count => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Ardupilotmega.Named_Value_Strings;
      I : Named_Value_String;
      O : constant Named_Value_String :=
         (Time_Boot_Ms => 3,
          Name => [others => 'A'],
          Value => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Sys_Statuses;
      I : Sys_Status;
      O : constant Sys_Status :=
         (Onboard_Control_Sensors_Present => <>,
          Onboard_Control_Sensors_Enabled => <>,
          Onboard_Control_Sensors_Health => <>,
          Load => 2,
          Voltage_Battery => <>,
          Current_Battery => <>,
          Battery_Remaining => <>,
          Drop_Rate_Comm => 2,
          Errors_Comm => 2,
          Errors_Count1 => 2,
          Errors_Count2 => 2,
          Errors_Count3 => 2,
          Errors_Count4 => 2,
          Onboard_Control_Sensors_Present_Extended => <>,
          Onboard_Control_Sensors_Enabled_Extended => <>,
          Onboard_Control_Sensors_Health_Extended => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.System_Times;
      I : System_Time;
      O : constant System_Time :=
         (Time_Unix_Usec => 4,
          Time_Boot_Ms => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Pings;
      I : Ping;
      O : constant Ping :=
         (Time_Usec => 4,
          Seq => 3,
          Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Change_Operator_Controls;
      I : Change_Operator_Control;
      O : constant Change_Operator_Control :=
         (Target_System => 1,
          Control_Request => 1,
          Version => 1,
          Passkey => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Change_Operator_Control_Acks;
      I : Change_Operator_Control_Ack;
      O : constant Change_Operator_Control_Ack :=
         (Gcs_System_Id => 1,
          Control_Request => 1,
          Ack => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Auth_Keys;
      I : Auth_Key;
      O : constant Auth_Key :=
         (Key => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Link_Node_Statuses;
      I : Link_Node_Status;
      O : constant Link_Node_Status :=
         (Timestamp => 4,
          Tx_Buf => 1,
          Rx_Buf => 1,
          Tx_Rate => 3,
          Rx_Rate => 3,
          Rx_Parse_Err => 2,
          Tx_Overflows => 2,
          Rx_Overflows => 2,
          Messages_Sent => 3,
          Messages_Received => 3,
          Messages_Lost => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Set_Modes;
      I : Set_Mode;
      O : constant Set_Mode :=
         (Target_System => 1,
          Base_Mode => MAVLink.V2.Common.Types.Mav_Mode'First,
          Custom_Mode => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Request_Reads;
      I : Param_Request_Read;
      O : constant Param_Request_Read :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Index => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Request_Lists;
      I : Param_Request_List;
      O : constant Param_Request_List :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Values;
      I : Param_Value;
      O : constant Param_Value :=
         (Param_Id => [others => 'A'],
          Param_Value => To_Raw (9.9),
          Param_Type => MAVLink.V2.Common.Types.Mav_Param_Type'First,
          Param_Count => 2,
          Param_Index => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Sets;
      I : Param_Set;
      O : constant Param_Set :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Value => To_Raw (9.9),
          Param_Type => MAVLink.V2.Common.Types.Mav_Param_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps_Raw_Ints;
      I : Gps_Raw_Int;
      O : constant Gps_Raw_Int :=
         (Time_Usec => 4,
          Fix_Type => MAVLink.V2.Common.Types.Gps_Fix_Type'First,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Eph => <>,
          Epv => <>,
          Vel => <>,
          Cog => <>,
          Satellites_Visible => <>,
          Alt_Ellipsoid => 7,
          H_Acc => 3,
          V_Acc => 3,
          Vel_Acc => 3,
          Hdg_Acc => 3,
          Yaw => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps_Statuses;
      I : Gps_Status;
      O : constant Gps_Status :=
         (Satellites_Visible => 1,
          Satellite_Prn => [others => 1],
          Satellite_Used => [others => 1],
          Satellite_Elevation => [others => 1],
          Satellite_Azimuth => [others => 1],
          Satellite_Snr => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Scaled_Imus;
      I : Scaled_Imu;
      O : constant Scaled_Imu :=
         (Time_Boot_Ms => 3,
          Xacc => 6,
          Yacc => 6,
          Zacc => 6,
          Xgyro => 6,
          Ygyro => 6,
          Zgyro => 6,
          Xmag => 6,
          Ymag => 6,
          Zmag => 6,
          Temperature => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Raw_Imus;
      I : Raw_Imu;
      O : constant Raw_Imu :=
         (Time_Usec => 4,
          Xacc => 6,
          Yacc => 6,
          Zacc => 6,
          Xgyro => 6,
          Ygyro => 6,
          Zgyro => 6,
          Xmag => 6,
          Ymag => 6,
          Zmag => 6,
          Id => 1,
          Temperature => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Raw_Pressures;
      I : Raw_Pressure;
      O : constant Raw_Pressure :=
         (Time_Usec => 4,
          Press_Abs => 6,
          Press_Diff1 => <>,
          Press_Diff2 => <>,
          Temperature => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Scaled_Pressures;
      I : Scaled_Pressure;
      O : constant Scaled_Pressure :=
         (Time_Boot_Ms => 3,
          Press_Abs => To_Raw (9.9),
          Press_Diff => To_Raw (9.9),
          Temperature => 6,
          Temperature_Press_Diff => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Attitudes;
      I : Attitude;
      O : constant Attitude :=
         (Time_Boot_Ms => 3,
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Rollspeed => To_Raw (9.9),
          Pitchspeed => To_Raw (9.9),
          Yawspeed => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Attitude_Quaternions;
      I : Attitude_Quaternion;
      O : constant Attitude_Quaternion :=
         (Time_Boot_Ms => 3,
          Q1 => To_Raw (9.9),
          Q2 => To_Raw (9.9),
          Q3 => To_Raw (9.9),
          Q4 => To_Raw (9.9),
          Rollspeed => To_Raw (9.9),
          Pitchspeed => To_Raw (9.9),
          Yawspeed => To_Raw (9.9),
          Repr_Offset_Q => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Local_Position_Neds;
      I : Local_Position_Ned;
      O : constant Local_Position_Ned :=
         (Time_Boot_Ms => 3,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Rc_Channels_Scaleds;
      I : Rc_Channels_Scaled;
      O : constant Rc_Channels_Scaled :=
         (Time_Boot_Ms => 3,
          Port => 1,
          Chan1_Scaled => <>,
          Chan2_Scaled => <>,
          Chan3_Scaled => <>,
          Chan4_Scaled => <>,
          Chan5_Scaled => <>,
          Chan6_Scaled => <>,
          Chan7_Scaled => <>,
          Chan8_Scaled => <>,
          Rssi => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Rc_Channels_Raws;
      I : Rc_Channels_Raw;
      O : constant Rc_Channels_Raw :=
         (Time_Boot_Ms => 3,
          Port => 1,
          Chan1_Raw => <>,
          Chan2_Raw => <>,
          Chan3_Raw => <>,
          Chan4_Raw => <>,
          Chan5_Raw => <>,
          Chan6_Raw => <>,
          Chan7_Raw => <>,
          Chan8_Raw => <>,
          Rssi => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Servo_Output_Raws;
      I : Servo_Output_Raw;
      O : constant Servo_Output_Raw :=
         (Time_Usec => 3,
          Port => 1,
          Servo1_Raw => 2,
          Servo2_Raw => 2,
          Servo3_Raw => 2,
          Servo4_Raw => 2,
          Servo5_Raw => 2,
          Servo6_Raw => 2,
          Servo7_Raw => 2,
          Servo8_Raw => 2,
          Servo9_Raw => 2,
          Servo10_Raw => 2,
          Servo11_Raw => 2,
          Servo12_Raw => 2,
          Servo13_Raw => 2,
          Servo14_Raw => 2,
          Servo15_Raw => 2,
          Servo16_Raw => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Request_Partial_Lists;
      I : Mission_Request_Partial_List;
      O : constant Mission_Request_Partial_List :=
         (Target_System => 1,
          Target_Component => 1,
          Start_Index => 6,
          End_Index => 6,
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Write_Partial_Lists;
      I : Mission_Write_Partial_List;
      O : constant Mission_Write_Partial_List :=
         (Target_System => 1,
          Target_Component => 1,
          Start_Index => 6,
          End_Index => 6,
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Items;
      I : Mission_Item;
      O : constant Mission_Item :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2,
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Command => MAVLink.V2.Ardupilotmega.Types.Mav_Cmd'First,
          Current => 1,
          Autocontinue => 1,
          Param1 => To_Raw (9.9),
          Param2 => To_Raw (9.9),
          Param3 => To_Raw (9.9),
          Param4 => To_Raw (9.9),
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Requests;
      I : Mission_Request;
      O : constant Mission_Request :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2,
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Set_Currents;
      I : Mission_Set_Current;
      O : constant Mission_Set_Current :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Currents;
      I : Mission_Current;
      O : constant Mission_Current :=
         (Seq => 2,
          Total => <>,
          Mission_State => <>,
          Mission_Mode => <>,
          Mission_Id => <>,
          Fence_Id => <>,
          Rally_Points_Id => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Request_Lists;
      I : Mission_Request_List;
      O : constant Mission_Request_List :=
         (Target_System => 1,
          Target_Component => 1,
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Counts;
      I : Mission_Count;
      O : constant Mission_Count :=
         (Target_System => 1,
          Target_Component => 1,
          Count => 2,
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First,
          Opaque_Id => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Clear_Alls;
      I : Mission_Clear_All;
      O : constant Mission_Clear_All :=
         (Target_System => 1,
          Target_Component => 1,
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Item_Reacheds;
      I : Mission_Item_Reached;
      O : constant Mission_Item_Reached :=
         (Seq => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Acks;
      I : Mission_Ack;
      O : constant Mission_Ack :=
         (Target_System => 1,
          Target_Component => 1,
          Type_Field => MAVLink.V2.Common.Types.Mav_Mission_Result'First,
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First,
          Opaque_Id => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Set_Gps_Global_Origins;
      I : Set_Gps_Global_Origin;
      O : constant Set_Gps_Global_Origin :=
         (Target_System => 1,
          Latitude => 7,
          Longitude => 7,
          Altitude => 7,
          Time_Usec => 4);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps_Global_Origins;
      I : Gps_Global_Origin;
      O : constant Gps_Global_Origin :=
         (Latitude => 7,
          Longitude => 7,
          Altitude => 7,
          Time_Usec => 4);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Map_Rcs;
      I : Param_Map_Rc;
      O : constant Param_Map_Rc :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Index => 6,
          Parameter_Rc_Channel_Index => 1,
          Param_Value0 => To_Raw (9.9),
          Scale => To_Raw (9.9),
          Param_Value_Min => To_Raw (9.9),
          Param_Value_Max => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Request_Ints;
      I : Mission_Request_Int;
      O : constant Mission_Request_Int :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2,
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Safety_Set_Allowed_Areas;
      I : Safety_Set_Allowed_Area;
      O : constant Safety_Set_Allowed_Area :=
         (Target_System => 1,
          Target_Component => 1,
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          P1X => To_Raw (9.9),
          P1Y => To_Raw (9.9),
          P1Z => To_Raw (9.9),
          P2X => To_Raw (9.9),
          P2Y => To_Raw (9.9),
          P2Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Safety_Allowed_Areas;
      I : Safety_Allowed_Area;
      O : constant Safety_Allowed_Area :=
         (Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          P1X => To_Raw (9.9),
          P1Y => To_Raw (9.9),
          P1Z => To_Raw (9.9),
          P2X => To_Raw (9.9),
          P2Y => To_Raw (9.9),
          P2Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Attitude_Quaternion_Covs;
      I : Attitude_Quaternion_Cov;
      O : constant Attitude_Quaternion_Cov :=
         (Time_Usec => 4,
          Q => [others => To_Raw (9.9)],
          Rollspeed => To_Raw (9.9),
          Pitchspeed => To_Raw (9.9),
          Yawspeed => To_Raw (9.9),
          Covariance => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Nav_Controller_Outputs;
      I : Nav_Controller_Output;
      O : constant Nav_Controller_Output :=
         (Nav_Roll => To_Raw (9.9),
          Nav_Pitch => To_Raw (9.9),
          Nav_Bearing => 6,
          Target_Bearing => 6,
          Wp_Dist => 2,
          Alt_Error => To_Raw (9.9),
          Aspd_Error => To_Raw (9.9),
          Xtrack_Error => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Global_Position_Int_Covs;
      I : Global_Position_Int_Cov;
      O : constant Global_Position_Int_Cov :=
         (Time_Usec => 4,
          Estimator_Type => MAVLink.V2.Common.Types.Mav_Estimator_Type'First,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Relative_Alt => 7,
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Covariance => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Local_Position_Ned_Covs;
      I : Local_Position_Ned_Cov;
      O : constant Local_Position_Ned_Cov :=
         (Time_Usec => 4,
          Estimator_Type => MAVLink.V2.Common.Types.Mav_Estimator_Type'First,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Ax => To_Raw (9.9),
          Ay => To_Raw (9.9),
          Az => To_Raw (9.9),
          Covariance => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Rc_Channelses;
      I : Rc_Channels;
      O : constant Rc_Channels :=
         (Time_Boot_Ms => 3,
          Chancount => 1,
          Chan1_Raw => <>,
          Chan2_Raw => <>,
          Chan3_Raw => <>,
          Chan4_Raw => <>,
          Chan5_Raw => <>,
          Chan6_Raw => <>,
          Chan7_Raw => <>,
          Chan8_Raw => <>,
          Chan9_Raw => <>,
          Chan10_Raw => <>,
          Chan11_Raw => <>,
          Chan12_Raw => <>,
          Chan13_Raw => <>,
          Chan14_Raw => <>,
          Chan15_Raw => <>,
          Chan16_Raw => <>,
          Chan17_Raw => <>,
          Chan18_Raw => <>,
          Rssi => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Request_Data_Streams;
      I : Request_Data_Stream;
      O : constant Request_Data_Stream :=
         (Target_System => 1,
          Target_Component => 1,
          Req_Stream_Id => 1,
          Req_Message_Rate => 2,
          Start_Stop => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Data_Streams;
      I : Data_Stream;
      O : constant Data_Stream :=
         (Stream_Id => 1,
          Message_Rate => 2,
          On_Off => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Manual_Controls;
      I : Manual_Control;
      O : constant Manual_Control :=
         (Target => 1,
          X => <>,
          Y => <>,
          Z => <>,
          R => <>,
          Buttons => 2,
          Buttons2 => 2,
          Enabled_Extensions => 1,
          S => 6,
          T => 6,
          Aux1 => 6,
          Aux2 => 6,
          Aux3 => 6,
          Aux4 => 6,
          Aux5 => 6,
          Aux6 => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Rc_Channels_Overrides;
      I : Rc_Channels_Override;
      O : constant Rc_Channels_Override :=
         (Target_System => 1,
          Target_Component => 1,
          Chan1_Raw => <>,
          Chan2_Raw => <>,
          Chan3_Raw => <>,
          Chan4_Raw => <>,
          Chan5_Raw => <>,
          Chan6_Raw => <>,
          Chan7_Raw => <>,
          Chan8_Raw => <>,
          Chan9_Raw => <>,
          Chan10_Raw => <>,
          Chan11_Raw => <>,
          Chan12_Raw => <>,
          Chan13_Raw => <>,
          Chan14_Raw => <>,
          Chan15_Raw => <>,
          Chan16_Raw => <>,
          Chan17_Raw => <>,
          Chan18_Raw => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mission_Item_Ints;
      I : Mission_Item_Int;
      O : constant Mission_Item_Int :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2,
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Command => MAVLink.V2.Ardupilotmega.Types.Mav_Cmd'First,
          Current => 1,
          Autocontinue => 1,
          Param1 => To_Raw (9.9),
          Param2 => To_Raw (9.9),
          Param3 => To_Raw (9.9),
          Param4 => To_Raw (9.9),
          X => 7,
          Y => 7,
          Z => To_Raw (9.9),
          Mission_Type => MAVLink.V2.Common.Types.Mav_Mission_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Vfr_Huds;
      I : Vfr_Hud;
      O : constant Vfr_Hud :=
         (Airspeed => To_Raw (9.9),
          Groundspeed => To_Raw (9.9),
          Heading => 6,
          Throttle => 2,
          Alt => To_Raw (9.9),
          Climb => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Command_Ints;
      I : Command_Int;
      O : constant Command_Int :=
         (Target_System => 1,
          Target_Component => 1,
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Command => MAVLink.V2.Ardupilotmega.Types.Mav_Cmd'First,
          Current => 1,
          Autocontinue => 1,
          Param1 => <>,
          Param2 => <>,
          Param3 => <>,
          Param4 => <>,
          X => <>,
          Y => <>,
          Z => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Command_Longs;
      I : Command_Long;
      O : constant Command_Long :=
         (Target_System => 1,
          Target_Component => 1,
          Command => MAVLink.V2.Ardupilotmega.Types.Mav_Cmd'First,
          Confirmation => 1,
          Param1 => <>,
          Param2 => <>,
          Param3 => <>,
          Param4 => <>,
          Param5 => <>,
          Param6 => <>,
          Param7 => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Command_Acks;
      I : Command_Ack;
      O : constant Command_Ack :=
         (Command => MAVLink.V2.Ardupilotmega.Types.Mav_Cmd'First,
          Result => MAVLink.V2.Common.Types.Mav_Result'First,
          Progress => <>,
          Result_Param2 => 7,
          Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Command_Cancels;
      I : Command_Cancel;
      O : constant Command_Cancel :=
         (Target_System => 1,
          Target_Component => 1,
          Command => MAVLink.V2.Ardupilotmega.Types.Mav_Cmd'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Manual_Setpoints;
      I : Manual_Setpoint;
      O : constant Manual_Setpoint :=
         (Time_Boot_Ms => 3,
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Thrust => To_Raw (9.9),
          Mode_Switch => 1,
          Manual_Override_Switch => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Set_Attitude_Targets;
      I : Set_Attitude_Target;
      O : constant Set_Attitude_Target :=
         (Time_Boot_Ms => 3,
          Target_System => 1,
          Target_Component => 1,
          Type_Mask => <>,
          Q => [others => To_Raw (9.9)],
          Body_Roll_Rate => To_Raw (9.9),
          Body_Pitch_Rate => To_Raw (9.9),
          Body_Yaw_Rate => To_Raw (9.9),
          Thrust => To_Raw (9.9),
          Thrust_Body => [others => To_Raw (9.9)]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Attitude_Targets;
      I : Attitude_Target;
      O : constant Attitude_Target :=
         (Time_Boot_Ms => 3,
          Type_Mask => <>,
          Q => [others => To_Raw (9.9)],
          Body_Roll_Rate => To_Raw (9.9),
          Body_Pitch_Rate => To_Raw (9.9),
          Body_Yaw_Rate => To_Raw (9.9),
          Thrust => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Set_Position_Target_Local_Neds;
      I : Set_Position_Target_Local_Ned;
      O : constant Set_Position_Target_Local_Ned :=
         (Time_Boot_Ms => 3,
          Target_System => 1,
          Target_Component => 1,
          Coordinate_Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Type_Mask => <>,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Afx => To_Raw (9.9),
          Afy => To_Raw (9.9),
          Afz => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Yaw_Rate => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Position_Target_Local_Neds;
      I : Position_Target_Local_Ned;
      O : constant Position_Target_Local_Ned :=
         (Time_Boot_Ms => 3,
          Coordinate_Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Type_Mask => <>,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Afx => To_Raw (9.9),
          Afy => To_Raw (9.9),
          Afz => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Yaw_Rate => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Set_Position_Target_Global_Ints;
      I : Set_Position_Target_Global_Int;
      O : constant Set_Position_Target_Global_Int :=
         (Time_Boot_Ms => 3,
          Target_System => 1,
          Target_Component => 1,
          Coordinate_Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Type_Mask => <>,
          Lat_Int => 7,
          Lon_Int => 7,
          Alt => To_Raw (9.9),
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Afx => To_Raw (9.9),
          Afy => To_Raw (9.9),
          Afz => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Yaw_Rate => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Position_Target_Global_Ints;
      I : Position_Target_Global_Int;
      O : constant Position_Target_Global_Int :=
         (Time_Boot_Ms => 3,
          Coordinate_Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Type_Mask => <>,
          Lat_Int => 7,
          Lon_Int => 7,
          Alt => To_Raw (9.9),
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Afx => To_Raw (9.9),
          Afy => To_Raw (9.9),
          Afz => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Yaw_Rate => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Local_Position_Ned_System_Global_Offsets;
      I : Local_Position_Ned_System_Global_Offset;
      O : constant Local_Position_Ned_System_Global_Offset :=
         (Time_Boot_Ms => 3,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hil_States;
      I : Hil_State;
      O : constant Hil_State :=
         (Time_Usec => 4,
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Rollspeed => To_Raw (9.9),
          Pitchspeed => To_Raw (9.9),
          Yawspeed => To_Raw (9.9),
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Vx => 6,
          Vy => 6,
          Vz => 6,
          Xacc => 6,
          Yacc => 6,
          Zacc => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hil_Controlses;
      I : Hil_Controls;
      O : constant Hil_Controls :=
         (Time_Usec => 4,
          Roll_Ailerons => To_Raw (9.9),
          Pitch_Elevator => To_Raw (9.9),
          Yaw_Rudder => To_Raw (9.9),
          Throttle => To_Raw (9.9),
          Aux1 => To_Raw (9.9),
          Aux2 => To_Raw (9.9),
          Aux3 => To_Raw (9.9),
          Aux4 => To_Raw (9.9),
          Mode => MAVLink.V2.Common.Types.Mav_Mode'First,
          Nav_Mode => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hil_Rc_Inputs_Raws;
      I : Hil_Rc_Inputs_Raw;
      O : constant Hil_Rc_Inputs_Raw :=
         (Time_Usec => 4,
          Chan1_Raw => 2,
          Chan2_Raw => 2,
          Chan3_Raw => 2,
          Chan4_Raw => 2,
          Chan5_Raw => 2,
          Chan6_Raw => 2,
          Chan7_Raw => 2,
          Chan8_Raw => 2,
          Chan9_Raw => 2,
          Chan10_Raw => 2,
          Chan11_Raw => 2,
          Chan12_Raw => 2,
          Rssi => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hil_Actuator_Controlses;
      I : Hil_Actuator_Controls;
      O : constant Hil_Actuator_Controls :=
         (Time_Usec => 4,
          Controls => [others => To_Raw (9.9)],
          Mode => <>,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Optical_Flows;
      I : Optical_Flow;
      O : constant Optical_Flow :=
         (Time_Usec => 4,
          Sensor_Id => 1,
          Flow_X => 6,
          Flow_Y => 6,
          Flow_Comp_M_X => To_Raw (9.9),
          Flow_Comp_M_Y => To_Raw (9.9),
          Quality => 1,
          Ground_Distance => To_Raw (9.9),
          Flow_Rate_X => To_Raw (9.9),
          Flow_Rate_Y => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Global_Vision_Position_Estimates;
      I : Global_Vision_Position_Estimate;
      O : constant Global_Vision_Position_Estimate :=
         (Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Covariance => <>,
          Reset_Counter => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Vision_Position_Estimates;
      I : Vision_Position_Estimate;
      O : constant Vision_Position_Estimate :=
         (Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Covariance => <>,
          Reset_Counter => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Vision_Speed_Estimates;
      I : Vision_Speed_Estimate;
      O : constant Vision_Speed_Estimate :=
         (Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Covariance => <>,
          Reset_Counter => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Vicon_Position_Estimates;
      I : Vicon_Position_Estimate;
      O : constant Vicon_Position_Estimate :=
         (Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Covariance => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Highres_Imus;
      I : Highres_Imu;
      O : constant Highres_Imu :=
         (Time_Usec => 4,
          Xacc => To_Raw (9.9),
          Yacc => To_Raw (9.9),
          Zacc => To_Raw (9.9),
          Xgyro => To_Raw (9.9),
          Ygyro => To_Raw (9.9),
          Zgyro => To_Raw (9.9),
          Xmag => To_Raw (9.9),
          Ymag => To_Raw (9.9),
          Zmag => To_Raw (9.9),
          Abs_Pressure => To_Raw (9.9),
          Diff_Pressure => To_Raw (9.9),
          Pressure_Alt => To_Raw (9.9),
          Temperature => To_Raw (9.9),
          Fields_Updated => <>,
          Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Optical_Flow_Rads;
      I : Optical_Flow_Rad;
      O : constant Optical_Flow_Rad :=
         (Time_Usec => 4,
          Sensor_Id => 1,
          Integration_Time_Us => 3,
          Integrated_X => To_Raw (9.9),
          Integrated_Y => To_Raw (9.9),
          Integrated_Xgyro => To_Raw (9.9),
          Integrated_Ygyro => To_Raw (9.9),
          Integrated_Zgyro => To_Raw (9.9),
          Temperature => 6,
          Quality => 1,
          Time_Delta_Distance_Us => 3,
          Distance => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hil_Sensors;
      I : Hil_Sensor;
      O : constant Hil_Sensor :=
         (Time_Usec => 4,
          Xacc => To_Raw (9.9),
          Yacc => To_Raw (9.9),
          Zacc => To_Raw (9.9),
          Xgyro => To_Raw (9.9),
          Ygyro => To_Raw (9.9),
          Zgyro => To_Raw (9.9),
          Xmag => To_Raw (9.9),
          Ymag => To_Raw (9.9),
          Zmag => To_Raw (9.9),
          Abs_Pressure => To_Raw (9.9),
          Diff_Pressure => To_Raw (9.9),
          Pressure_Alt => To_Raw (9.9),
          Temperature => To_Raw (9.9),
          Fields_Updated => <>,
          Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Sim_States;
      I : Sim_State;
      O : constant Sim_State :=
         (Q1 => To_Raw (9.9),
          Q2 => To_Raw (9.9),
          Q3 => To_Raw (9.9),
          Q4 => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Xacc => To_Raw (9.9),
          Yacc => To_Raw (9.9),
          Zacc => To_Raw (9.9),
          Xgyro => To_Raw (9.9),
          Ygyro => To_Raw (9.9),
          Zgyro => To_Raw (9.9),
          Lat => To_Raw (9.9),
          Lon => To_Raw (9.9),
          Alt => To_Raw (9.9),
          Std_Dev_Horz => To_Raw (9.9),
          Std_Dev_Vert => To_Raw (9.9),
          Vn => To_Raw (9.9),
          Ve => To_Raw (9.9),
          Vd => To_Raw (9.9),
          Lat_Int => <>,
          Lon_Int => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Radio_Statuses;
      I : Radio_Status;
      O : constant Radio_Status :=
         (Rssi => <>,
          Remrssi => <>,
          Txbuf => 1,
          Noise => <>,
          Remnoise => <>,
          Rxerrors => 2,
          Fixed => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.File_Transfer_Protocols;
      I : File_Transfer_Protocol;
      O : constant File_Transfer_Protocol :=
         (Target_Network => 1,
          Target_System => 1,
          Target_Component => 1,
          Payload => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Timesyncs;
      I : Timesync;
      O : constant Timesync :=
         (Tc1 => 8,
          Ts1 => 8,
          Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Triggers;
      I : Camera_Trigger;
      O : constant Camera_Trigger :=
         (Time_Usec => 4,
          Seq => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hil_Gpses;
      I : Hil_Gps;
      O : constant Hil_Gps :=
         (Time_Usec => 4,
          Fix_Type => 1,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Eph => <>,
          Epv => <>,
          Vel => <>,
          Vn => 6,
          Ve => 6,
          Vd => 6,
          Cog => <>,
          Satellites_Visible => <>,
          Id => 1,
          Yaw => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hil_Optical_Flows;
      I : Hil_Optical_Flow;
      O : constant Hil_Optical_Flow :=
         (Time_Usec => 4,
          Sensor_Id => 1,
          Integration_Time_Us => 3,
          Integrated_X => To_Raw (9.9),
          Integrated_Y => To_Raw (9.9),
          Integrated_Xgyro => To_Raw (9.9),
          Integrated_Ygyro => To_Raw (9.9),
          Integrated_Zgyro => To_Raw (9.9),
          Temperature => 6,
          Quality => 1,
          Time_Delta_Distance_Us => 3,
          Distance => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hil_State_Quaternions;
      I : Hil_State_Quaternion;
      O : constant Hil_State_Quaternion :=
         (Time_Usec => 4,
          Attitude_Quaternion => [others => To_Raw (9.9)],
          Rollspeed => To_Raw (9.9),
          Pitchspeed => To_Raw (9.9),
          Yawspeed => To_Raw (9.9),
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Vx => 6,
          Vy => 6,
          Vz => 6,
          Ind_Airspeed => 2,
          True_Airspeed => 2,
          Xacc => 6,
          Yacc => 6,
          Zacc => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Scaled_Imu2s;
      I : Scaled_Imu2;
      O : constant Scaled_Imu2 :=
         (Time_Boot_Ms => 3,
          Xacc => 6,
          Yacc => 6,
          Zacc => 6,
          Xgyro => 6,
          Ygyro => 6,
          Zgyro => 6,
          Xmag => 6,
          Ymag => 6,
          Zmag => 6,
          Temperature => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Log_Request_Lists;
      I : Log_Request_List;
      O : constant Log_Request_List :=
         (Target_System => 1,
          Target_Component => 1,
          Start => 2,
          End_Field => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Log_Entrys;
      I : Log_Entry;
      O : constant Log_Entry :=
         (Id => 2,
          Num_Logs => 2,
          Last_Log_Num => 2,
          Time_Utc => <>,
          Size => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Log_Request_Datas;
      I : Log_Request_Data;
      O : constant Log_Request_Data :=
         (Target_System => 1,
          Target_Component => 1,
          Id => 2,
          Ofs => 3,
          Count => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Log_Datas;
      I : Log_Data;
      O : constant Log_Data :=
         (Id => 2,
          Ofs => 3,
          Count => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Log_Erases;
      I : Log_Erase;
      O : constant Log_Erase :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Log_Request_Ends;
      I : Log_Request_End;
      O : constant Log_Request_End :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps_Inject_Datas;
      I : Gps_Inject_Data;
      O : constant Gps_Inject_Data :=
         (Target_System => 1,
          Target_Component => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps2_Raws;
      I : Gps2_Raw;
      O : constant Gps2_Raw :=
         (Time_Usec => 4,
          Fix_Type => MAVLink.V2.Common.Types.Gps_Fix_Type'First,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Eph => <>,
          Epv => <>,
          Vel => <>,
          Cog => <>,
          Satellites_Visible => <>,
          Dgps_Numch => 1,
          Dgps_Age => 3,
          Yaw => <>,
          Alt_Ellipsoid => 7,
          H_Acc => 3,
          V_Acc => 3,
          Vel_Acc => 3,
          Hdg_Acc => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Power_Statuses;
      I : Power_Status;
      O : constant Power_Status :=
         (Vcc => 2,
          Vservo => 2,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Serial_Controls;
      I : Serial_Control;
      O : constant Serial_Control :=
         (Device => MAVLink.V2.Common.Types.Serial_Control_Dev'First,
          Flags => <>,
          Timeout => 2,
          Baudrate => 3,
          Count => 1,
          Data => [others => 1],
          Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps_Rtks;
      I : Gps_Rtk;
      O : constant Gps_Rtk :=
         (Time_Last_Baseline_Ms => 3,
          Rtk_Receiver_Id => 1,
          Wn => 2,
          Tow => 3,
          Rtk_Health => 1,
          Rtk_Rate => 1,
          Nsats => 1,
          Baseline_Coords_Type => MAVLink.V2.Common.Types.Rtk_Baseline_Coordinate_System'First,
          Baseline_A_Mm => 7,
          Baseline_B_Mm => 7,
          Baseline_C_Mm => 7,
          Accuracy => 3,
          Iar_Num_Hypotheses => 7);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps2_Rtks;
      I : Gps2_Rtk;
      O : constant Gps2_Rtk :=
         (Time_Last_Baseline_Ms => 3,
          Rtk_Receiver_Id => 1,
          Wn => 2,
          Tow => 3,
          Rtk_Health => 1,
          Rtk_Rate => 1,
          Nsats => 1,
          Baseline_Coords_Type => MAVLink.V2.Common.Types.Rtk_Baseline_Coordinate_System'First,
          Baseline_A_Mm => 7,
          Baseline_B_Mm => 7,
          Baseline_C_Mm => 7,
          Accuracy => 3,
          Iar_Num_Hypotheses => 7);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Scaled_Imu3s;
      I : Scaled_Imu3;
      O : constant Scaled_Imu3 :=
         (Time_Boot_Ms => 3,
          Xacc => 6,
          Yacc => 6,
          Zacc => 6,
          Xgyro => 6,
          Ygyro => 6,
          Zgyro => 6,
          Xmag => 6,
          Ymag => 6,
          Zmag => 6,
          Temperature => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Data_Transmission_Handshakes;
      I : Data_Transmission_Handshake;
      O : constant Data_Transmission_Handshake :=
         (Type_Field => MAVLink.V2.Common.Types.Mavlink_Data_Stream_Type'First,
          Size => 3,
          Width => 2,
          Height => 2,
          Packets => 2,
          Payload => 1,
          Jpg_Quality => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Encapsulated_Datas;
      I : Encapsulated_Data;
      O : constant Encapsulated_Data :=
         (Seqnr => 2,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Distance_Sensors;
      I : Distance_Sensor;
      O : constant Distance_Sensor :=
         (Time_Boot_Ms => 3,
          Min_Distance => 2,
          Max_Distance => 2,
          Current_Distance => 2,
          Type_Field => MAVLink.V2.Common.Types.Mav_Distance_Sensor'First,
          Id => 1,
          Orientation => MAVLink.V2.Common.Types.Mav_Sensor_Orientation'First,
          Covariance => <>,
          Horizontal_Fov => <>,
          Vertical_Fov => <>,
          Quaternion => <>,
          Signal_Quality => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Terrain_Requests;
      I : Terrain_Request;
      O : constant Terrain_Request :=
         (Lat => 7,
          Lon => 7,
          Grid_Spacing => 2,
          Mask => 4);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Terrain_Datas;
      I : Terrain_Data;
      O : constant Terrain_Data :=
         (Lat => 7,
          Lon => 7,
          Grid_Spacing => 2,
          Gridbit => 1,
          Data => [others => 6]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Terrain_Checks;
      I : Terrain_Check;
      O : constant Terrain_Check :=
         (Lat => 7,
          Lon => 7);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Terrain_Reports;
      I : Terrain_Report;
      O : constant Terrain_Report :=
         (Lat => 7,
          Lon => 7,
          Spacing => 2,
          Terrain_Height => To_Raw (9.9),
          Current_Height => To_Raw (9.9),
          Pending => 2,
          Loaded => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Scaled_Pressure2s;
      I : Scaled_Pressure2;
      O : constant Scaled_Pressure2 :=
         (Time_Boot_Ms => 3,
          Press_Abs => To_Raw (9.9),
          Press_Diff => To_Raw (9.9),
          Temperature => 6,
          Temperature_Press_Diff => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Att_Pos_Mocaps;
      I : Att_Pos_Mocap;
      O : constant Att_Pos_Mocap :=
         (Time_Usec => 4,
          Q => [others => To_Raw (9.9)],
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Covariance => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Set_Actuator_Control_Targets;
      I : Set_Actuator_Control_Target;
      O : constant Set_Actuator_Control_Target :=
         (Time_Usec => 4,
          Group_Mlx => 1,
          Target_System => 1,
          Target_Component => 1,
          Controls => [others => To_Raw (9.9)]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Actuator_Control_Targets;
      I : Actuator_Control_Target;
      O : constant Actuator_Control_Target :=
         (Time_Usec => 4,
          Group_Mlx => 1,
          Controls => [others => To_Raw (9.9)]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Altitudes;
      I : Altitude;
      O : constant Altitude :=
         (Time_Usec => 4,
          Altitude_Monotonic => To_Raw (9.9),
          Altitude_Amsl => To_Raw (9.9),
          Altitude_Local => To_Raw (9.9),
          Altitude_Relative => To_Raw (9.9),
          Altitude_Terrain => To_Raw (9.9),
          Bottom_Clearance => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Resource_Requests;
      I : Resource_Request;
      O : constant Resource_Request :=
         (Request_Id => 1,
          Uri_Type => 1,
          Uri => [others => 1],
          Transfer_Type => 1,
          Storage => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Scaled_Pressure3s;
      I : Scaled_Pressure3;
      O : constant Scaled_Pressure3 :=
         (Time_Boot_Ms => 3,
          Press_Abs => To_Raw (9.9),
          Press_Diff => To_Raw (9.9),
          Temperature => 6,
          Temperature_Press_Diff => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Follow_Targets;
      I : Follow_Target;
      O : constant Follow_Target :=
         (Timestamp => 4,
          Est_Capabilities => 1,
          Lat => 7,
          Lon => 7,
          Alt => To_Raw (9.9),
          Vel => <>,
          Acc => <>,
          Attitude_Q => <>,
          Rates => <>,
          Position_Cov => [others => To_Raw (9.9)],
          Custom_State => 4);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Control_System_States;
      I : Control_System_State;
      O : constant Control_System_State :=
         (Time_Usec => 4,
          X_Acc => To_Raw (9.9),
          Y_Acc => To_Raw (9.9),
          Z_Acc => To_Raw (9.9),
          X_Vel => To_Raw (9.9),
          Y_Vel => To_Raw (9.9),
          Z_Vel => To_Raw (9.9),
          X_Pos => To_Raw (9.9),
          Y_Pos => To_Raw (9.9),
          Z_Pos => To_Raw (9.9),
          Airspeed => <>,
          Vel_Variance => [others => To_Raw (9.9)],
          Pos_Variance => [others => To_Raw (9.9)],
          Q => [others => To_Raw (9.9)],
          Roll_Rate => To_Raw (9.9),
          Pitch_Rate => To_Raw (9.9),
          Yaw_Rate => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Battery_Statuses;
      I : Battery_Status;
      O : constant Battery_Status :=
         (Id => 1,
          Battery_Function => MAVLink.V2.Common.Types.Mav_Battery_Function'First,
          Type_Field => MAVLink.V2.Common.Types.Mav_Battery_Type'First,
          Temperature => <>,
          Voltages => <>,
          Current_Battery => <>,
          Current_Consumed => <>,
          Energy_Consumed => <>,
          Battery_Remaining => <>,
          Time_Remaining => <>,
          Charge_State => MAVLink.V2.Common.Types.Mav_Battery_Charge_State'First,
          Voltages_Ext => <>,
          Mode => MAVLink.V2.Common.Types.Mav_Battery_Mode'First,
          Fault_Bitmask => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Landing_Targets;
      I : Landing_Target;
      O : constant Landing_Target :=
         (Time_Usec => 4,
          Target_Num => 1,
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          Angle_X => To_Raw (9.9),
          Angle_Y => To_Raw (9.9),
          Distance => To_Raw (9.9),
          Size_X => To_Raw (9.9),
          Size_Y => To_Raw (9.9),
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Q => [others => To_Raw (9.9)],
          Type_Field => MAVLink.V2.Common.Types.Landing_Target_Type'First,
          Position_Valid => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Fence_Statuses;
      I : Fence_Status;
      O : constant Fence_Status :=
         (Breach_Status => 1,
          Breach_Count => 2,
          Breach_Type => MAVLink.V2.Common.Types.Fence_Breach'First,
          Breach_Time => 3,
          Breach_Mitigation => MAVLink.V2.Common.Types.Fence_Mitigate'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mag_Cal_Reports;
      I : Mag_Cal_Report;
      O : constant Mag_Cal_Report :=
         (Compass_Id => 1,
          Cal_Mask => 1,
          Cal_Status => MAVLink.V2.Common.Types.Mag_Cal_Status'First,
          Autosaved => 1,
          Fitness => To_Raw (9.9),
          Ofs_X => To_Raw (9.9),
          Ofs_Y => To_Raw (9.9),
          Ofs_Z => To_Raw (9.9),
          Diag_X => To_Raw (9.9),
          Diag_Y => To_Raw (9.9),
          Diag_Z => To_Raw (9.9),
          Offdiag_X => To_Raw (9.9),
          Offdiag_Y => To_Raw (9.9),
          Offdiag_Z => To_Raw (9.9),
          Orientation_Confidence => To_Raw (9.9),
          Old_Orientation => MAVLink.V2.Common.Types.Mav_Sensor_Orientation'First,
          New_Orientation => MAVLink.V2.Common.Types.Mav_Sensor_Orientation'First,
          Scale_Factor => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Efi_Statuses;
      I : Efi_Status;
      O : constant Efi_Status :=
         (Health => 1,
          Ecu_Index => To_Raw (9.9),
          Rpm => To_Raw (9.9),
          Fuel_Consumed => To_Raw (9.9),
          Fuel_Flow => To_Raw (9.9),
          Engine_Load => To_Raw (9.9),
          Throttle_Position => To_Raw (9.9),
          Spark_Dwell_Time => To_Raw (9.9),
          Barometric_Pressure => To_Raw (9.9),
          Intake_Manifold_Pressure => To_Raw (9.9),
          Intake_Manifold_Temperature => To_Raw (9.9),
          Cylinder_Head_Temperature => To_Raw (9.9),
          Ignition_Timing => To_Raw (9.9),
          Injection_Time => To_Raw (9.9),
          Exhaust_Gas_Temperature => To_Raw (9.9),
          Throttle_Out => To_Raw (9.9),
          Pt_Compensation => To_Raw (9.9),
          Ignition_Voltage => To_Raw (9.9),
          Fuel_Pressure => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Estimator_Statuses;
      I : Estimator_Status;
      O : constant Estimator_Status :=
         (Time_Usec => 4,
          Flags => <>,
          Vel_Ratio => To_Raw (9.9),
          Pos_Horiz_Ratio => To_Raw (9.9),
          Pos_Vert_Ratio => To_Raw (9.9),
          Mag_Ratio => To_Raw (9.9),
          Hagl_Ratio => To_Raw (9.9),
          Tas_Ratio => To_Raw (9.9),
          Pos_Horiz_Accuracy => To_Raw (9.9),
          Pos_Vert_Accuracy => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Wind_Covs;
      I : Wind_Cov;
      O : constant Wind_Cov :=
         (Time_Usec => 4,
          Wind_X => <>,
          Wind_Y => <>,
          Wind_Z => <>,
          Var_Horiz => <>,
          Var_Vert => <>,
          Wind_Alt => <>,
          Horiz_Accuracy => <>,
          Vert_Accuracy => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps_Inputs;
      I : Gps_Input;
      O : constant Gps_Input :=
         (Time_Usec => 4,
          Gps_Id => 1,
          Ignore_Flags => <>,
          Time_Week_Ms => 3,
          Time_Week => 2,
          Fix_Type => 1,
          Lat => 7,
          Lon => 7,
          Alt => To_Raw (9.9),
          Hdop => <>,
          Vdop => <>,
          Vn => To_Raw (9.9),
          Ve => To_Raw (9.9),
          Vd => To_Raw (9.9),
          Speed_Accuracy => To_Raw (9.9),
          Horiz_Accuracy => To_Raw (9.9),
          Vert_Accuracy => To_Raw (9.9),
          Satellites_Visible => 1,
          Yaw => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gps_Rtcm_Datas;
      I : Gps_Rtcm_Data;
      O : constant Gps_Rtcm_Data :=
         (Flags => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.High_Latencys;
      I : High_Latency;
      O : constant High_Latency :=
         (Base_Mode => <>,
          Custom_Mode => 3,
          Landed_State => MAVLink.V2.Common.Types.Mav_Landed_State'First,
          Roll => 6,
          Pitch => 6,
          Heading => 2,
          Throttle => 5,
          Heading_Sp => 6,
          Latitude => 7,
          Longitude => 7,
          Altitude_Amsl => 6,
          Altitude_Sp => 6,
          Airspeed => 1,
          Airspeed_Sp => 1,
          Groundspeed => 1,
          Climb_Rate => 5,
          Gps_Nsat => <>,
          Gps_Fix_Type => MAVLink.V2.Common.Types.Gps_Fix_Type'First,
          Battery_Remaining => 1,
          Temperature => 5,
          Temperature_Air => 5,
          Failsafe => 1,
          Wp_Num => 1,
          Wp_Distance => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.High_Latency2s;
      I : High_Latency2;
      O : constant High_Latency2 :=
         (Timestamp => 3,
          Type_Field => MAVLink.V2.Minimal.Types.Mav_Type'First,
          Autopilot => MAVLink.V2.Minimal.Types.Mav_Autopilot'First,
          Custom_Mode => 2,
          Latitude => 7,
          Longitude => 7,
          Altitude => 6,
          Target_Altitude => 6,
          Heading => 1,
          Target_Heading => 1,
          Target_Distance => 2,
          Throttle => 1,
          Airspeed => 1,
          Airspeed_Sp => 1,
          Groundspeed => 1,
          Windspeed => 1,
          Wind_Heading => 1,
          Eph => 1,
          Epv => 1,
          Temperature_Air => 5,
          Climb_Rate => 5,
          Battery => <>,
          Wp_Num => 2,
          Failure_Flags => <>,
          Custom0 => 5,
          Custom1 => 5,
          Custom2 => 5);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Vibrations;
      I : Vibration;
      O : constant Vibration :=
         (Time_Usec => 4,
          Vibration_X => To_Raw (9.9),
          Vibration_Y => To_Raw (9.9),
          Vibration_Z => To_Raw (9.9),
          Clipping_0 => 3,
          Clipping_1 => 3,
          Clipping_2 => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Home_Positions;
      I : Home_Position;
      O : constant Home_Position :=
         (Latitude => 7,
          Longitude => 7,
          Altitude => 7,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Q => <>,
          Approach_X => To_Raw (9.9),
          Approach_Y => To_Raw (9.9),
          Approach_Z => To_Raw (9.9),
          Time_Usec => 4);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Set_Home_Positions;
      I : Set_Home_Position;
      O : constant Set_Home_Position :=
         (Target_System => 1,
          Latitude => 7,
          Longitude => 7,
          Altitude => 7,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Q => [others => To_Raw (9.9)],
          Approach_X => To_Raw (9.9),
          Approach_Y => To_Raw (9.9),
          Approach_Z => To_Raw (9.9),
          Time_Usec => 4);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Message_Intervals;
      I : Message_Interval;
      O : constant Message_Interval :=
         (Message_Id_Field => 2,
          Interval_Us => 7);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Extended_Sys_States;
      I : Extended_Sys_State;
      O : constant Extended_Sys_State :=
         (Vtol_State => MAVLink.V2.Common.Types.Mav_Vtol_State'First,
          Landed_State => MAVLink.V2.Common.Types.Mav_Landed_State'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Adsb_Vehicles;
      I : Adsb_Vehicle;
      O : constant Adsb_Vehicle :=
         (Icao_Address => 3,
          Lat => 7,
          Lon => 7,
          Altitude_Type => MAVLink.V2.Common.Types.Adsb_Altitude_Type'First,
          Altitude => 7,
          Heading => 2,
          Hor_Velocity => 2,
          Ver_Velocity => 6,
          Callsign => [others => 'A'],
          Emitter_Type => MAVLink.V2.Common.Types.Adsb_Emitter_Type'First,
          Tslc => 1,
          Flags => <>,
          Squawk => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Collisions;
      I : Collision;
      O : constant Collision :=
         (Src => MAVLink.V2.Common.Types.Mav_Collision_Src'First,
          Id => 3,
          Action => MAVLink.V2.Common.Types.Mav_Collision_Action'First,
          Threat_Level => MAVLink.V2.Common.Types.Mav_Collision_Threat_Level'First,
          Time_To_Minimum_Delta => To_Raw (9.9),
          Altitude_Minimum_Delta => To_Raw (9.9),
          Horizontal_Minimum_Delta => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.V2_Extensions;
      I : V2_Extension;
      O : constant V2_Extension :=
         (Target_Network => 1,
          Target_System => 1,
          Target_Component => 1,
          Message_Type => 2,
          Payload => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Memory_Vects;
      I : Memory_Vect;
      O : constant Memory_Vect :=
         (Address => 2,
          Ver => <>,
          Type_Field => 1,
          Value => [others => 5]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Debug_Vects;
      I : Debug_Vect;
      O : constant Debug_Vect :=
         (Name => [others => 'A'],
          Time_Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Named_Value_Floats;
      I : Named_Value_Float;
      O : constant Named_Value_Float :=
         (Time_Boot_Ms => 3,
          Name => [others => 'A'],
          Value => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Named_Value_Ints;
      I : Named_Value_Int;
      O : constant Named_Value_Int :=
         (Time_Boot_Ms => 3,
          Name => [others => 'A'],
          Value => 7);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Statustexts;
      I : Statustext;
      O : constant Statustext :=
         (Severity => MAVLink.V2.Common.Types.Mav_Severity'First,
          Text => [others => 'A'],
          Id => 2,
          Chunk_Seq => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Debugs;
      I : Debug;
      O : constant Debug :=
         (Time_Boot_Ms => 3,
          Ind => 1,
          Value => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Setup_Signings;
      I : Setup_Signing;
      O : constant Setup_Signing :=
         (Target_System => 1,
          Target_Component => 1,
          Secret_Key => [others => 1],
          Initial_Timestamp => 4);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Button_Changes;
      I : Button_Change;
      O : constant Button_Change :=
         (Time_Boot_Ms => 3,
          Last_Change_Ms => 3,
          State => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Play_Tunes;
      I : Play_Tune;
      O : constant Play_Tune :=
         (Target_System => 1,
          Target_Component => 1,
          Tune => [others => 'A'],
          Tune2 => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Informations;
      I : Camera_Information;
      O : constant Camera_Information :=
         (Time_Boot_Ms => 3,
          Vendor_Name => [others => 1],
          Model_Name => [others => 1],
          Firmware_Version => <>,
          Focal_Length => <>,
          Sensor_Size_H => <>,
          Sensor_Size_V => <>,
          Resolution_H => <>,
          Resolution_V => <>,
          Lens_Id => <>,
          Flags => <>,
          Cam_Definition_Version => 2,
          Cam_Definition_Uri => [others => 'A'],
          Gimbal_Device_Id => <>,
          Camera_Device_Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Settingses;
      I : Camera_Settings;
      O : constant Camera_Settings :=
         (Time_Boot_Ms => 3,
          Mode_Id => MAVLink.V2.Common.Types.Camera_Mode'First,
          Zoomlevel => <>,
          Focuslevel => <>,
          Camera_Device_Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Storage_Informations;
      I : Storage_Information;
      O : constant Storage_Information :=
         (Time_Boot_Ms => 3,
          Storage_Id => 1,
          Storage_Count => 1,
          Status => MAVLink.V2.Common.Types.Storage_Status'First,
          Total_Capacity => To_Raw (9.9),
          Used_Capacity => To_Raw (9.9),
          Available_Capacity => To_Raw (9.9),
          Read_Speed => To_Raw (9.9),
          Write_Speed => To_Raw (9.9),
          Type_Field => MAVLink.V2.Common.Types.Storage_Type'First,
          Name => [others => 'A'],
          Storage_Usage => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Capture_Statuses;
      I : Camera_Capture_Status;
      O : constant Camera_Capture_Status :=
         (Time_Boot_Ms => 3,
          Image_Status => 1,
          Video_Status => 1,
          Image_Interval => To_Raw (9.9),
          Recording_Time_Ms => 3,
          Available_Capacity => To_Raw (9.9),
          Image_Count => 7,
          Camera_Device_Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Image_Captureds;
      I : Camera_Image_Captured;
      O : constant Camera_Image_Captured :=
         (Time_Boot_Ms => 3,
          Time_Utc => <>,
          Camera_Id => 1,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Relative_Alt => 7,
          Q => [others => To_Raw (9.9)],
          Image_Index => 7,
          Capture_Result => <>,
          File_Url => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Flight_Informations;
      I : Flight_Information;
      O : constant Flight_Information :=
         (Time_Boot_Ms => 3,
          Arming_Time_Utc => <>,
          Takeoff_Time_Utc => <>,
          Flight_Uuid => <>,
          Landing_Time => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Mount_Orientations;
      I : Mount_Orientation;
      O : constant Mount_Orientation :=
         (Time_Boot_Ms => 3,
          Roll => <>,
          Pitch => <>,
          Yaw => <>,
          Yaw_Absolute => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Logging_Datas;
      I : Logging_Data;
      O : constant Logging_Data :=
         (Target_System => 1,
          Target_Component => 1,
          Sequence_Field => 2,
          Length => 1,
          First_Message_Offset => <>,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Logging_Data_Ackeds;
      I : Logging_Data_Acked;
      O : constant Logging_Data_Acked :=
         (Target_System => 1,
          Target_Component => 1,
          Sequence_Field => 2,
          Length => 1,
          First_Message_Offset => <>,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Logging_Acks;
      I : Logging_Ack;
      O : constant Logging_Ack :=
         (Target_System => 1,
          Target_Component => 1,
          Sequence_Field => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Video_Stream_Informations;
      I : Video_Stream_Information;
      O : constant Video_Stream_Information :=
         (Stream_Id => 1,
          Count => 1,
          Type_Field => MAVLink.V2.Common.Types.Video_Stream_Type'First,
          Flags => <>,
          Framerate => To_Raw (9.9),
          Resolution_H => 2,
          Resolution_V => 2,
          Bitrate => 3,
          Rotation => 2,
          Hfov => 2,
          Name => [others => 'A'],
          Uri => [others => 'A'],
          Encoding => MAVLink.V2.Common.Types.Video_Stream_Encoding'First,
          Camera_Device_Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Video_Stream_Statuses;
      I : Video_Stream_Status;
      O : constant Video_Stream_Status :=
         (Stream_Id => 1,
          Flags => <>,
          Framerate => To_Raw (9.9),
          Resolution_H => 2,
          Resolution_V => 2,
          Bitrate => 3,
          Rotation => 2,
          Hfov => 2,
          Camera_Device_Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Fov_Statuses;
      I : Camera_Fov_Status;
      O : constant Camera_Fov_Status :=
         (Time_Boot_Ms => 3,
          Lat_Camera => <>,
          Lon_Camera => <>,
          Alt_Camera => <>,
          Lat_Image => <>,
          Lon_Image => <>,
          Alt_Image => <>,
          Q => [others => To_Raw (9.9)],
          Hfov => <>,
          Vfov => <>,
          Camera_Device_Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Tracking_Image_Statuses;
      I : Camera_Tracking_Image_Status;
      O : constant Camera_Tracking_Image_Status :=
         (Tracking_Status => <>,
          Tracking_Mode => MAVLink.V2.Common.Types.Camera_Tracking_Mode'First,
          Target_Data => <>,
          Point_X => <>,
          Point_Y => <>,
          Radius => <>,
          Rec_Top_X => <>,
          Rec_Top_Y => <>,
          Rec_Bottom_X => <>,
          Rec_Bottom_Y => <>,
          Camera_Device_Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Tracking_Geo_Statuses;
      I : Camera_Tracking_Geo_Status;
      O : constant Camera_Tracking_Geo_Status :=
         (Tracking_Status => <>,
          Lat => 7,
          Lon => 7,
          Alt => To_Raw (9.9),
          H_Acc => <>,
          V_Acc => <>,
          Vel_N => <>,
          Vel_E => <>,
          Vel_D => <>,
          Vel_Acc => <>,
          Dist => <>,
          Hdg => <>,
          Hdg_Acc => <>,
          Camera_Device_Id => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Camera_Thermal_Ranges;
      I : Camera_Thermal_Range;
      O : constant Camera_Thermal_Range :=
         (Time_Boot_Ms => 3,
          Stream_Id => 1,
          Camera_Device_Id => 1,
          Max => To_Raw (9.9),
          Max_Point_X => <>,
          Max_Point_Y => <>,
          Min => To_Raw (9.9),
          Min_Point_X => <>,
          Min_Point_Y => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gimbal_Manager_Informations;
      I : Gimbal_Manager_Information;
      O : constant Gimbal_Manager_Information :=
         (Time_Boot_Ms => 3,
          Cap_Flags => <>,
          Gimbal_Device_Id => 1,
          Roll_Min => To_Raw (9.9),
          Roll_Max => To_Raw (9.9),
          Pitch_Min => To_Raw (9.9),
          Pitch_Max => To_Raw (9.9),
          Yaw_Min => To_Raw (9.9),
          Yaw_Max => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gimbal_Manager_Statuses;
      I : Gimbal_Manager_Status;
      O : constant Gimbal_Manager_Status :=
         (Time_Boot_Ms => 3,
          Flags => <>,
          Gimbal_Device_Id => 1,
          Primary_Control_Sysid => 1,
          Primary_Control_Compid => 1,
          Secondary_Control_Sysid => 1,
          Secondary_Control_Compid => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gimbal_Manager_Set_Attitudes;
      I : Gimbal_Manager_Set_Attitude;
      O : constant Gimbal_Manager_Set_Attitude :=
         (Target_System => 1,
          Target_Component => 1,
          Flags => <>,
          Gimbal_Device_Id => 1,
          Q => [others => To_Raw (9.9)],
          Angular_Velocity_X => <>,
          Angular_Velocity_Y => <>,
          Angular_Velocity_Z => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gimbal_Device_Informations;
      I : Gimbal_Device_Information;
      O : constant Gimbal_Device_Information :=
         (Time_Boot_Ms => 3,
          Vendor_Name => [others => 'A'],
          Model_Name => [others => 'A'],
          Custom_Name => [others => 'A'],
          Firmware_Version => 3,
          Hardware_Version => 3,
          Uid => <>,
          Cap_Flags => <>,
          Custom_Cap_Flags => 2,
          Roll_Min => <>,
          Roll_Max => <>,
          Pitch_Min => <>,
          Pitch_Max => <>,
          Yaw_Min => <>,
          Yaw_Max => <>,
          Gimbal_Device_Id => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gimbal_Device_Set_Attitudes;
      I : Gimbal_Device_Set_Attitude;
      O : constant Gimbal_Device_Set_Attitude :=
         (Target_System => 1,
          Target_Component => 1,
          Flags => <>,
          Q => <>,
          Angular_Velocity_X => <>,
          Angular_Velocity_Y => <>,
          Angular_Velocity_Z => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gimbal_Device_Attitude_Statuses;
      I : Gimbal_Device_Attitude_Status;
      O : constant Gimbal_Device_Attitude_Status :=
         (Target_System => 1,
          Target_Component => 1,
          Time_Boot_Ms => 3,
          Flags => <>,
          Q => [others => To_Raw (9.9)],
          Angular_Velocity_X => <>,
          Angular_Velocity_Y => <>,
          Angular_Velocity_Z => <>,
          Failure_Flags => <>,
          Delta_Yaw => <>,
          Delta_Yaw_Velocity => <>,
          Gimbal_Device_Id => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Autopilot_State_For_Gimbal_Devices;
      I : Autopilot_State_For_Gimbal_Device;
      O : constant Autopilot_State_For_Gimbal_Device :=
         (Target_System => 1,
          Target_Component => 1,
          Time_Boot_Us => 4,
          Q => [others => To_Raw (9.9)],
          Q_Estimated_Delay_Us => <>,
          Vx => <>,
          Vy => <>,
          Vz => <>,
          V_Estimated_Delay_Us => <>,
          Feed_Forward_Angular_Velocity_Z => <>,
          Estimator_Status => <>,
          Landed_State => <>,
          Angular_Velocity_Z => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gimbal_Manager_Set_Pitchyaws;
      I : Gimbal_Manager_Set_Pitchyaw;
      O : constant Gimbal_Manager_Set_Pitchyaw :=
         (Target_System => 1,
          Target_Component => 1,
          Flags => <>,
          Gimbal_Device_Id => 1,
          Pitch => <>,
          Yaw => <>,
          Pitch_Rate => <>,
          Yaw_Rate => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Gimbal_Manager_Set_Manual_Controls;
      I : Gimbal_Manager_Set_Manual_Control;
      O : constant Gimbal_Manager_Set_Manual_Control :=
         (Target_System => 1,
          Target_Component => 1,
          Flags => <>,
          Gimbal_Device_Id => 1,
          Pitch => <>,
          Yaw => <>,
          Pitch_Rate => <>,
          Yaw_Rate => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Esc_Infos;
      I : Esc_Info;
      O : constant Esc_Info :=
         (Index => 1,
          Time_Usec => 4,
          Counter => 2,
          Count => 1,
          Connection_Type => MAVLink.V2.Common.Types.Esc_Connection_Type'First,
          Info => 1,
          Failure_Flags => [others => 2],
          Error_Count => [others => 3],
          Temperature => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Esc_Statuses;
      I : Esc_Status;
      O : constant Esc_Status :=
         (Index => 1,
          Time_Usec => 4,
          Rpm => [others => 7],
          Voltage => [others => To_Raw (9.9)],
          Current => [others => To_Raw (9.9)]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Airspeeds;
      I : Airspeed;
      O : constant Airspeed :=
         (Id => 1,
          Airspeed => To_Raw (9.9),
          Temperature => <>,
          Raw_Press => <>,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Wifi_Config_Aps;
      I : Wifi_Config_Ap;
      O : constant Wifi_Config_Ap :=
         (Ssid => [others => 'A'],
          Password => [others => 'A'],
          Mode => MAVLink.V2.Common.Types.Wifi_Config_Ap_Mode'First,
          Response => MAVLink.V2.Common.Types.Wifi_Config_Ap_Response'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Protocol_Versions;
      I : Protocol_Version;
      O : constant Protocol_Version :=
         (Version => 2,
          Min_Version => 2,
          Max_Version => 2,
          Spec_Version_Hash => [others => 1],
          Library_Version_Hash => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Ais_Vessels;
      I : Ais_Vessel;
      O : constant Ais_Vessel :=
         (Mmsi => 3,
          Lat => 7,
          Lon => 7,
          Cog => 2,
          Heading => 2,
          Velocity => 2,
          Turn_Rate => 5,
          Navigational_Status => MAVLink.V2.Common.Types.Ais_Nav_Status'First,
          Type_Field => MAVLink.V2.Common.Types.Ais_Type'First,
          Dimension_Bow => 2,
          Dimension_Stern => 2,
          Dimension_Port => 1,
          Dimension_Starboard => 1,
          Callsign => [others => 'A'],
          Name => [others => 'A'],
          Tslc => 2,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Uavcan_Node_Statuses;
      I : Uavcan_Node_Status;
      O : constant Uavcan_Node_Status :=
         (Time_Usec => 4,
          Uptime_Sec => 3,
          Health => MAVLink.V2.Common.Types.Uavcan_Node_Health'First,
          Mode => MAVLink.V2.Common.Types.Uavcan_Node_Mode'First,
          Sub_Mode => 1,
          Vendor_Specific_Status_Code => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Uavcan_Node_Infos;
      I : Uavcan_Node_Info;
      O : constant Uavcan_Node_Info :=
         (Time_Usec => 4,
          Uptime_Sec => 3,
          Name => [others => 'A'],
          Hw_Version_Major => 1,
          Hw_Version_Minor => 1,
          Hw_Unique_Id => [others => 1],
          Sw_Version_Major => 1,
          Sw_Version_Minor => 1,
          Sw_Vcs_Commit => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Ext_Request_Reads;
      I : Param_Ext_Request_Read;
      O : constant Param_Ext_Request_Read :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Index => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Ext_Request_Lists;
      I : Param_Ext_Request_List;
      O : constant Param_Ext_Request_List :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Ext_Values;
      I : Param_Ext_Value;
      O : constant Param_Ext_Value :=
         (Param_Id => [others => 'A'],
          Param_Value => [others => 'A'],
          Param_Type => MAVLink.V2.Common.Types.Mav_Param_Ext_Type'First,
          Param_Count => 2,
          Param_Index => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Ext_Sets;
      I : Param_Ext_Set;
      O : constant Param_Ext_Set :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Value => [others => 'A'],
          Param_Type => MAVLink.V2.Common.Types.Mav_Param_Ext_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Ext_Acks;
      I : Param_Ext_Ack;
      O : constant Param_Ext_Ack :=
         (Param_Id => [others => 'A'],
          Param_Value => [others => 'A'],
          Param_Type => MAVLink.V2.Common.Types.Mav_Param_Ext_Type'First,
          Param_Result => MAVLink.V2.Common.Types.Param_Ack'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Obstacle_Distances;
      I : Obstacle_Distance;
      O : constant Obstacle_Distance :=
         (Time_Usec => 4,
          Sensor_Type => MAVLink.V2.Common.Types.Mav_Distance_Sensor'First,
          Distances => <>,
          Increment => 1,
          Min_Distance => 2,
          Max_Distance => 2,
          Increment_F => To_Raw (9.9),
          Angle_Offset => To_Raw (9.9),
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Odometrys;
      I : Odometry;
      O : constant Odometry :=
         (Time_Usec => 4,
          Frame_Id => MAVLink.V2.Common.Types.Mav_Frame'First,
          Child_Frame_Id => MAVLink.V2.Common.Types.Mav_Frame'First,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Q => [others => To_Raw (9.9)],
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Rollspeed => To_Raw (9.9),
          Pitchspeed => To_Raw (9.9),
          Yawspeed => To_Raw (9.9),
          Pose_Covariance => <>,
          Velocity_Covariance => <>,
          Reset_Counter => 1,
          Estimator_Type => MAVLink.V2.Common.Types.Mav_Estimator_Type'First,
          Quality => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Trajectory_Representation_Waypointses;
      I : Trajectory_Representation_Waypoints;
      O : constant Trajectory_Representation_Waypoints :=
         (Time_Usec => 4,
          Valid_Points => 1,
          Pos_X => <>,
          Pos_Y => <>,
          Pos_Z => <>,
          Vel_X => <>,
          Vel_Y => <>,
          Vel_Z => <>,
          Acc_X => <>,
          Acc_Y => <>,
          Acc_Z => <>,
          Pos_Yaw => <>,
          Vel_Yaw => <>,
          Command => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Trajectory_Representation_Beziers;
      I : Trajectory_Representation_Bezier;
      O : constant Trajectory_Representation_Bezier :=
         (Time_Usec => 4,
          Valid_Points => 1,
          Pos_X => <>,
          Pos_Y => <>,
          Pos_Z => <>,
          Delta_Field => <>,
          Pos_Yaw => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Cellular_Statuses;
      I : Cellular_Status;
      O : constant Cellular_Status :=
         (Status => MAVLink.V2.Common.Types.Cellular_Status_Flag'First,
          Failure_Reason => MAVLink.V2.Common.Types.Cellular_Network_Failed_Reason'First,
          Type_Field => MAVLink.V2.Common.Types.Cellular_Network_Radio_Type'First,
          Quality => <>,
          Mcc => <>,
          Mnc => <>,
          Lac => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Isbd_Link_Statuses;
      I : Isbd_Link_Status;
      O : constant Isbd_Link_Status :=
         (Timestamp => 4,
          Last_Heartbeat => 4,
          Failed_Sessions => 2,
          Successful_Sessions => 2,
          Signal_Quality => 1,
          Ring_Pending => 1,
          Tx_Session_Pending => 1,
          Rx_Session_Pending => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Cellular_Configs;
      I : Cellular_Config;
      O : constant Cellular_Config :=
         (Enable_Lte => 1,
          Enable_Pin => 1,
          Pin => [others => 'A'],
          New_Pin => [others => 'A'],
          Apn => [others => 'A'],
          Puk => [others => 'A'],
          Roaming => 1,
          Response => MAVLink.V2.Common.Types.Cellular_Config_Response'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Raw_Rpms;
      I : Raw_Rpm;
      O : constant Raw_Rpm :=
         (Index => 1,
          Frequency => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Utm_Global_Positions;
      I : Utm_Global_Position;
      O : constant Utm_Global_Position :=
         (Time => 4,
          Uas_Id => [others => 1],
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Relative_Alt => 7,
          Vx => 6,
          Vy => 6,
          Vz => 6,
          H_Acc => 2,
          V_Acc => 2,
          Vel_Acc => 2,
          Next_Lat => 7,
          Next_Lon => 7,
          Next_Alt => 7,
          Update_Rate => <>,
          Flight_State => MAVLink.V2.Common.Types.Utm_Flight_State'First,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Param_Errors;
      I : Param_Error;
      O : constant Param_Error :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Index => 6,
          Error => MAVLink.V2.Common.Types.Mav_Param_Error'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Debug_Float_Arrays;
      I : Debug_Float_Array;
      O : constant Debug_Float_Array :=
         (Time_Usec => 4,
          Name => [others => 'A'],
          Array_Id => 2,
          Data => [others => To_Raw (9.9)]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Orbit_Execution_Statuses;
      I : Orbit_Execution_Status;
      O : constant Orbit_Execution_Status :=
         (Time_Usec => 4,
          Radius => To_Raw (9.9),
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          X => 7,
          Y => 7,
          Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Smart_Battery_Infos;
      I : Smart_Battery_Info;
      O : constant Smart_Battery_Info :=
         (Id => 1,
          Battery_Function => MAVLink.V2.Common.Types.Mav_Battery_Function'First,
          Type_Field => MAVLink.V2.Common.Types.Mav_Battery_Type'First,
          Capacity_Full_Specification => <>,
          Capacity_Full => <>,
          Cycle_Count => <>,
          Serial_Number => <>,
          Device_Name => <>,
          Weight => <>,
          Discharge_Minimum_Voltage => <>,
          Charging_Minimum_Voltage => <>,
          Resting_Minimum_Voltage => <>,
          Charging_Maximum_Voltage => <>,
          Cells_In_Series => <>,
          Discharge_Maximum_Current => <>,
          Discharge_Maximum_Burst_Current => <>,
          Manufacture_Date => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Figure_Eight_Execution_Statuses;
      I : Figure_Eight_Execution_Status;
      O : constant Figure_Eight_Execution_Status :=
         (Time_Usec => 4,
          Major_Radius => To_Raw (9.9),
          Minor_Radius => To_Raw (9.9),
          Orientation => To_Raw (9.9),
          Frame => MAVLink.V2.Common.Types.Mav_Frame'First,
          X => 7,
          Y => 7,
          Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Fuel_Statuses;
      I : Fuel_Status;
      O : constant Fuel_Status :=
         (Id => 1,
          Maximum_Fuel => To_Raw (9.9),
          Consumed_Fuel => <>,
          Remaining_Fuel => <>,
          Percent_Remaining => <>,
          Flow_Rate => <>,
          Temperature => <>,
          Fuel_Type => MAVLink.V2.Common.Types.Mav_Fuel_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Battery_Infos;
      I : Battery_Info;
      O : constant Battery_Info :=
         (Id => 1,
          Battery_Function => MAVLink.V2.Common.Types.Mav_Battery_Function'First,
          Type_Field => MAVLink.V2.Common.Types.Mav_Battery_Type'First,
          State_Of_Health => <>,
          Cells_In_Series => <>,
          Cycle_Count => <>,
          Weight => <>,
          Discharge_Minimum_Voltage => <>,
          Charging_Minimum_Voltage => <>,
          Resting_Minimum_Voltage => <>,
          Charging_Maximum_Voltage => <>,
          Charging_Maximum_Current => <>,
          Nominal_Voltage => <>,
          Discharge_Maximum_Current => <>,
          Discharge_Maximum_Burst_Current => <>,
          Design_Capacity => <>,
          Full_Charge_Capacity => <>,
          Manufacture_Date => <>,
          Serial_Number => <>,
          Name => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Generator_Statuses;
      I : Generator_Status;
      O : constant Generator_Status :=
         (Status => <>,
          Generator_Speed => <>,
          Battery_Current => <>,
          Load_Current => <>,
          Power_Generated => <>,
          Bus_Voltage => To_Raw (9.9),
          Rectifier_Temperature => <>,
          Bat_Current_Setpoint => <>,
          Generator_Temperature => <>,
          Runtime => <>,
          Time_Until_Maintenance => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Actuator_Output_Statuses;
      I : Actuator_Output_Status;
      O : constant Actuator_Output_Status :=
         (Time_Usec => 4,
          Active => 3,
          Actuator => [others => To_Raw (9.9)]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Time_Estimate_To_Targets;
      I : Time_Estimate_To_Target;
      O : constant Time_Estimate_To_Target :=
         (Safe_Return => 7,
          Land => 7,
          Mission_Next_Item => <>,
          Mission_End => <>,
          Commanded_Action => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Tunnels;
      I : Tunnel;
      O : constant Tunnel :=
         (Target_System => 1,
          Target_Component => 1,
          Payload_Type => MAVLink.V2.Common.Types.Mav_Tunnel_Payload_Type'First,
          Payload_Length => 1,
          Payload => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Can_Frames;
      I : Can_Frame;
      O : constant Can_Frame :=
         (Target_System => 1,
          Target_Component => 1,
          Bus => 1,
          Len => 1,
          Id => 3,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Onboard_Computer_Statuses;
      I : Onboard_Computer_Status;
      O : constant Onboard_Computer_Status :=
         (Time_Usec => 4,
          Uptime => 3,
          Type_Field => 1,
          Cpu_Cores => <>,
          Cpu_Combined => <>,
          Gpu_Cores => <>,
          Gpu_Combined => <>,
          Temperature_Board => <>,
          Temperature_Core => <>,
          Fan_Speed => <>,
          Ram_Usage => <>,
          Ram_Total => <>,
          Storage_Type => <>,
          Storage_Usage => <>,
          Storage_Total => <>,
          Link_Type => [others => 3],
          Link_Tx_Rate => <>,
          Link_Rx_Rate => <>,
          Link_Tx_Max => <>,
          Link_Rx_Max => <>,
          Status_Flags => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Component_Informations;
      I : Component_Information;
      O : constant Component_Information :=
         (Time_Boot_Ms => 3,
          General_Metadata_File_Crc => 3,
          General_Metadata_Uri => [others => 'A'],
          Peripherals_Metadata_File_Crc => 3,
          Peripherals_Metadata_Uri => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Component_Information_Basics;
      I : Component_Information_Basic;
      O : constant Component_Information_Basic :=
         (Time_Boot_Ms => 3,
          Capabilities => <>,
          Time_Manufacture_S => <>,
          Vendor_Name => [others => 'A'],
          Model_Name => [others => 'A'],
          Software_Version => [others => 'A'],
          Hardware_Version => [others => 'A'],
          Serial_Number => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Component_Metadatas;
      I : Component_Metadata;
      O : constant Component_Metadata :=
         (Time_Boot_Ms => 3,
          File_Crc => 3,
          Uri => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Play_Tune_V2s;
      I : Play_Tune_V2;
      O : constant Play_Tune_V2 :=
         (Target_System => 1,
          Target_Component => 1,
          Format => MAVLink.V2.Common.Types.Tune_Format'First,
          Tune => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Supported_Tuneses;
      I : Supported_Tunes;
      O : constant Supported_Tunes :=
         (Target_System => 1,
          Target_Component => 1,
          Format => MAVLink.V2.Common.Types.Tune_Format'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Events;
      I : Event;
      O : constant Event :=
         (Destination_Component => 1,
          Destination_System => 1,
          Id => 3,
          Event_Time_Boot_Ms => 3,
          Sequence_Field => 2,
          Log_Levels => 1,
          Arguments => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Current_Event_Sequences;
      I : Current_Event_Sequence;
      O : constant Current_Event_Sequence :=
         (Sequence_Field => 2,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Request_Events;
      I : Request_Event;
      O : constant Request_Event :=
         (Target_System => 1,
          Target_Component => 1,
          First_Sequence => 2,
          Last_Sequence => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Response_Event_Errors;
      I : Response_Event_Error;
      O : constant Response_Event_Error :=
         (Target_System => 1,
          Target_Component => 1,
          Sequence_Field => 2,
          Sequence_Oldest_Available => 2,
          Reason => MAVLink.V2.Common.Types.Mav_Event_Error_Reason'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Available_Modeses;
      I : Available_Modes;
      O : constant Available_Modes :=
         (Number_Modes => 1,
          Mode_Index => 1,
          Standard_Mode => MAVLink.V2.Common.Types.Mav_Standard_Mode'First,
          Custom_Mode => 3,
          Properties => <>,
          Mode_Name => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Current_Modes;
      I : Current_Mode;
      O : constant Current_Mode :=
         (Standard_Mode => MAVLink.V2.Common.Types.Mav_Standard_Mode'First,
          Custom_Mode => 3,
          Intended_Custom_Mode => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Available_Modes_Monitors;
      I : Available_Modes_Monitor;
      O : constant Available_Modes_Monitor :=
         (Seq => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Illuminator_Statuses;
      I : Illuminator_Status;
      O : constant Illuminator_Status :=
         (Uptime_Ms => 3,
          Enable => 1,
          Mode_Bitmask => MAVLink.V2.Common.Types.Illuminator_Mode'First,
          Error_Status => <>,
          Mode => MAVLink.V2.Common.Types.Illuminator_Mode'First,
          Brightness => To_Raw (9.9),
          Strobe_Period => To_Raw (9.9),
          Strobe_Duty_Cycle => To_Raw (9.9),
          Temp_C => To_Raw (9.9),
          Min_Strobe_Period => To_Raw (9.9),
          Max_Strobe_Period => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Canfd_Frames;
      I : Canfd_Frame;
      O : constant Canfd_Frame :=
         (Target_System => 1,
          Target_Component => 1,
          Bus => 1,
          Len => 1,
          Id => 3,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Can_Filter_Modifys;
      I : Can_Filter_Modify;
      O : constant Can_Filter_Modify :=
         (Target_System => 1,
          Target_Component => 1,
          Bus => 1,
          Operation => MAVLink.V2.Common.Types.Can_Filter_Op'First,
          Num_Ids => 1,
          Ids => [others => 2]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Wheel_Distances;
      I : Wheel_Distance;
      O : constant Wheel_Distance :=
         (Time_Usec => 4,
          Count => 1,
          Distance => [others => To_Raw (10.10)]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Winch_Statuses;
      I : Winch_Status;
      O : constant Winch_Status :=
         (Time_Usec => 4,
          Line_Length => <>,
          Speed => <>,
          Tension => <>,
          Voltage => <>,
          Current => <>,
          Temperature => <>,
          Status => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_Basic_Ids;
      I : Open_Drone_Id_Basic_Id;
      O : constant Open_Drone_Id_Basic_Id :=
         (Target_System => 1,
          Target_Component => 1,
          Id_Or_Mac => [others => 1],
          Id_Type => MAVLink.V2.Common.Types.Mav_Odid_Id_Type'First,
          Ua_Type => MAVLink.V2.Common.Types.Mav_Odid_Ua_Type'First,
          Uas_Id => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_Locations;
      I : Open_Drone_Id_Location;
      O : constant Open_Drone_Id_Location :=
         (Target_System => 1,
          Target_Component => 1,
          Id_Or_Mac => [others => 1],
          Status => MAVLink.V2.Common.Types.Mav_Odid_Status'First,
          Direction => <>,
          Speed_Horizontal => 2,
          Speed_Vertical => 6,
          Latitude => <>,
          Longitude => <>,
          Altitude_Barometric => <>,
          Altitude_Geodetic => <>,
          Height_Reference => MAVLink.V2.Common.Types.Mav_Odid_Height_Ref'First,
          Height => <>,
          Horizontal_Accuracy => MAVLink.V2.Common.Types.Mav_Odid_Hor_Acc'First,
          Vertical_Accuracy => MAVLink.V2.Common.Types.Mav_Odid_Ver_Acc'First,
          Barometer_Accuracy => MAVLink.V2.Common.Types.Mav_Odid_Ver_Acc'First,
          Speed_Accuracy => MAVLink.V2.Common.Types.Mav_Odid_Speed_Acc'First,
          Timestamp => <>,
          Timestamp_Accuracy => MAVLink.V2.Common.Types.Mav_Odid_Time_Acc'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_Authentications;
      I : Open_Drone_Id_Authentication;
      O : constant Open_Drone_Id_Authentication :=
         (Target_System => 1,
          Target_Component => 1,
          Id_Or_Mac => [others => 1],
          Authentication_Type => MAVLink.V2.Common.Types.Mav_Odid_Auth_Type'First,
          Data_Page => 1,
          Last_Page_Index => 1,
          Length => 1,
          Timestamp => 3,
          Authentication_Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_Self_Ids;
      I : Open_Drone_Id_Self_Id;
      O : constant Open_Drone_Id_Self_Id :=
         (Target_System => 1,
          Target_Component => 1,
          Id_Or_Mac => [others => 1],
          Description_Type => MAVLink.V2.Common.Types.Mav_Odid_Desc_Type'First,
          Description => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_Systems;
      I : Open_Drone_Id_System;
      O : constant Open_Drone_Id_System :=
         (Target_System => 1,
          Target_Component => 1,
          Id_Or_Mac => [others => 1],
          Operator_Location_Type => MAVLink.V2.Common.Types.Mav_Odid_Operator_Location_Type'First,
          Classification_Type => MAVLink.V2.Common.Types.Mav_Odid_Classification_Type'First,
          Operator_Latitude => <>,
          Operator_Longitude => <>,
          Area_Count => 2,
          Area_Radius => 2,
          Area_Ceiling => <>,
          Area_Floor => <>,
          Category_Eu => MAVLink.V2.Common.Types.Mav_Odid_Category_Eu'First,
          Class_Eu => MAVLink.V2.Common.Types.Mav_Odid_Class_Eu'First,
          Operator_Altitude_Geo => <>,
          Timestamp => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_Operator_Ids;
      I : Open_Drone_Id_Operator_Id;
      O : constant Open_Drone_Id_Operator_Id :=
         (Target_System => 1,
          Target_Component => 1,
          Id_Or_Mac => [others => 1],
          Operator_Id_Type => MAVLink.V2.Common.Types.Mav_Odid_Operator_Id_Type'First,
          Operator_Id => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_Message_Packs;
      I : Open_Drone_Id_Message_Pack;
      O : constant Open_Drone_Id_Message_Pack :=
         (Target_System => 1,
          Target_Component => 1,
          Id_Or_Mac => [others => 1],
          Single_Message_Size => 1,
          Msg_Pack_Size => 1,
          Messages => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_Arm_Statuses;
      I : Open_Drone_Id_Arm_Status;
      O : constant Open_Drone_Id_Arm_Status :=
         (Status => MAVLink.V2.Common.Types.Mav_Odid_Arm_Status'First,
          Error => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Open_Drone_Id_System_Updates;
      I : Open_Drone_Id_System_Update;
      O : constant Open_Drone_Id_System_Update :=
         (Target_System => 1,
          Target_Component => 1,
          Operator_Latitude => <>,
          Operator_Longitude => <>,
          Operator_Altitude_Geo => <>,
          Timestamp => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Common.Hygrometer_Sensors;
      I : Hygrometer_Sensor;
      O : constant Hygrometer_Sensor :=
         (Id => 1,
          Temperature => 6,
          Humidity => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfgs;
      I : Uavionix_Adsb_Out_Cfg;
      O : constant Uavionix_Adsb_Out_Cfg :=
         (Icao => 3,
          Callsign => [others => 'A'],
          Emittertype => MAVLink.V2.Common.Types.Adsb_Emitter_Type'First,
          Aircraftsize => MAVLink.V2.Uavionix.Types.Uavionix_Adsb_Out_Cfg_Aircraft_Size'First,
          Gpsoffsetlat => MAVLink.V2.Uavionix.Types.Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat'First,
          Gpsoffsetlon => MAVLink.V2.Uavionix.Types.Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon'First,
          Stallspeed => 2,
          Rfselect => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Dynamics;
      I : Uavionix_Adsb_Out_Dynamic;
      O : constant Uavionix_Adsb_Out_Dynamic :=
         (Utctime => 3,
          Gpslat => 7,
          Gpslon => 7,
          Gpsalt => 7,
          Gpsfix => MAVLink.V2.Uavionix.Types.Uavionix_Adsb_Out_Dynamic_Gps_Fix'First,
          Numsats => 1,
          Baroaltmsl => 7,
          Accuracyhor => 3,
          Accuracyvert => 2,
          Accuracyvel => 2,
          Velvert => 6,
          Velns => 6,
          Velew => 6,
          Emergencystatus => MAVLink.V2.Uavionix.Types.Uavionix_Adsb_Emergency_Status'First,
          State => <>,
          Squawk => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Uavionix.Uavionix_Adsb_Transceiver_Health_Reports;
      I : Uavionix_Adsb_Transceiver_Health_Report;
      O : constant Uavionix_Adsb_Transceiver_Health_Report :=
         (Rfhealth => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfg_Registrations;
      I : Uavionix_Adsb_Out_Cfg_Registration;
      O : constant Uavionix_Adsb_Out_Cfg_Registration :=
         (Registration => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfg_Flightids;
      I : Uavionix_Adsb_Out_Cfg_Flightid;
      O : constant Uavionix_Adsb_Out_Cfg_Flightid :=
         (Flight_Id => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Uavionix.Uavionix_Adsb_Gets;
      I : Uavionix_Adsb_Get;
      O : constant Uavionix_Adsb_Get :=
         (Reqmessageid => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Controls;
      I : Uavionix_Adsb_Out_Control;
      O : constant Uavionix_Adsb_Out_Control :=
         (State => <>,
          Baroaltmsl => 7,
          Squawk => 2,
          Emergencystatus => MAVLink.V2.Uavionix.Types.Uavionix_Adsb_Emergency_Status'First,
          Flight_Id => [others => 'A'],
          X_Bit => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Statuses;
      I : Uavionix_Adsb_Out_Status;
      O : constant Uavionix_Adsb_Out_Status :=
         (State => <>,
          Squawk => 2,
          Nic_Nacp => MAVLink.V2.Uavionix.Types.Uavionix_Adsb_Out_Status_Nic_Nacp'First,
          Boardtemp => 1,
          Fault => <>,
          Flight_Id => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Icarous.Icarous_Heartbeats;
      I : Icarous_Heartbeat;
      O : constant Icarous_Heartbeat :=
         (Status => MAVLink.V2.Icarous.Types.Icarous_Fms_State'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Icarous.Icarous_Kinematic_Bandses;
      I : Icarous_Kinematic_Bands;
      O : constant Icarous_Kinematic_Bands :=
         (Numbands => 5,
          Type1 => MAVLink.V2.Icarous.Types.Icarous_Track_Band_Types'First,
          Min1 => To_Raw (9.9),
          Max1 => To_Raw (9.9),
          Type2 => MAVLink.V2.Icarous.Types.Icarous_Track_Band_Types'First,
          Min2 => To_Raw (9.9),
          Max2 => To_Raw (9.9),
          Type3 => MAVLink.V2.Icarous.Types.Icarous_Track_Band_Types'First,
          Min3 => To_Raw (9.9),
          Max3 => To_Raw (9.9),
          Type4 => MAVLink.V2.Icarous.Types.Icarous_Track_Band_Types'First,
          Min4 => To_Raw (9.9),
          Max4 => To_Raw (9.9),
          Type5 => MAVLink.V2.Icarous.Types.Icarous_Track_Band_Types'First,
          Min5 => To_Raw (9.9),
          Max5 => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Loweheiser.Loweheiser_Gov_Efis;
      I : Loweheiser_Gov_Efi;
      O : constant Loweheiser_Gov_Efi :=
         (Volt_Batt => To_Raw (9.9),
          Curr_Batt => To_Raw (9.9),
          Curr_Gen => To_Raw (9.9),
          Curr_Rot => To_Raw (9.9),
          Fuel_Level => To_Raw (9.9),
          Throttle => To_Raw (9.9),
          Runtime => 3,
          Until_Maintenance => 7,
          Rectifier_Temp => To_Raw (9.9),
          Generator_Temp => To_Raw (9.9),
          Efi_Batt => To_Raw (9.9),
          Efi_Rpm => To_Raw (9.9),
          Efi_Pw => To_Raw (9.9),
          Efi_Fuel_Flow => To_Raw (9.9),
          Efi_Fuel_Consumed => To_Raw (9.9),
          Efi_Baro => To_Raw (9.9),
          Efi_Mat => To_Raw (9.9),
          Efi_Clt => To_Raw (9.9),
          Efi_Tps => To_Raw (9.9),
          Efi_Exhaust_Gas_Temperature => To_Raw (9.9),
          Efi_Index => 1,
          Generator_Status => 2,
          Efi_Status => 2);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Cubepilot.Cubepilot_Raw_Rcs;
      I : Cubepilot_Raw_Rc;
      O : constant Cubepilot_Raw_Rc :=
         (Rc_Raw => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Cubepilot.Herelink_Video_Stream_Informations;
      I : Herelink_Video_Stream_Information;
      O : constant Herelink_Video_Stream_Information :=
         (Camera_Id => 1,
          Status => 1,
          Framerate => To_Raw (9.9),
          Resolution_H => 2,
          Resolution_V => 2,
          Bitrate => 3,
          Rotation => 2,
          Uri => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Cubepilot.Herelink_Telems;
      I : Herelink_Telem;
      O : constant Herelink_Telem :=
         (Rssi => 1,
          Snr => 6,
          Rf_Freq => 3,
          Link_Bw => 3,
          Link_Rate => 3,
          Cpu_Temp => 6,
          Board_Temp => 6);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Cubepilot.Cubepilot_Firmware_Update_Starts;
      I : Cubepilot_Firmware_Update_Start;
      O : constant Cubepilot_Firmware_Update_Start :=
         (Target_System => 1,
          Target_Component => 1,
          Size => 3,
          Crc => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Cubepilot.Cubepilot_Firmware_Update_Resps;
      I : Cubepilot_Firmware_Update_Resp;
      O : constant Cubepilot_Firmware_Update_Resp :=
         (Target_System => 1,
          Target_Component => 1,
          Offset => 3);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Csairlink.Airlink_Auths;
      I : Airlink_Auth;
      O : constant Airlink_Auth :=
         (Login => [others => 'A'],
          Password => [others => 'A']);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Csairlink.Airlink_Auth_Responses;
      I : Airlink_Auth_Response;
      O : constant Airlink_Auth_Response :=
         (Resp_Type => MAVLink.V2.Csairlink.Types.Airlink_Auth_Response_Type'First);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Standard.Global_Position_Ints;
      I : Global_Position_Int;
      O : constant Global_Position_Int :=
         (Time_Boot_Ms => 3,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Relative_Alt => 7,
          Vx => 6,
          Vy => 6,
          Vz => 6,
          Hdg => <>);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Standard.Autopilot_Versions;
      I : Autopilot_Version;
      O : constant Autopilot_Version :=
         (Capabilities => <>,
          Flight_Sw_Version => 3,
          Middleware_Sw_Version => 3,
          Os_Sw_Version => 3,
          Board_Version => 3,
          Flight_Custom_Version => [others => 1],
          Middleware_Custom_Version => [others => 1],
          Os_Custom_Version => [others => 1],
          Vendor_Id => 2,
          Product_Id => 2,
          Uid => 4,
          Uid2 => [others => 1]);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V2.Minimal.Heartbeats;
      I : Heartbeat;
      O : constant Heartbeat :=
         (Type_Field => MAVLink.V2.Minimal.Types.Mav_Type'First,
          Autopilot => MAVLink.V2.Minimal.Types.Mav_Autopilot'First,
          Base_Mode => <>,
          Custom_Mode => 3,
          System_Status => MAVLink.V2.Minimal.Types.Mav_State'First,
          Mavlink_Version => 1);
   begin
      Encode (O, Out_Connect, Sig, Buffer, Last);

      for Index in Buffer'First .. Last - 1 loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
         pragma Assert (not Res);
      end loop;
      Res := Parse_Byte (In_Connect, Buffer (Last));
      pragma Assert (Res);

      Get_Message_Information
        (In_Connect, Sig, Seq, Sys_Id, Comp_Id, Id, Link_Id, Timestamp, Signature);
      pragma Assert (Signature = True);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   begin
      pragma Warnings (Off);
      --  Should be raised to ensure we compiled
      --  with Asserts
      pragma Assert (0 = 1);
   exception
      when others =>
         Ada.Text_IO.Put_Line ("Ok");
   end;
end Test;