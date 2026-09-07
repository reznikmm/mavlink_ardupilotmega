
pragma Warnings (Off); --  prevent `not used`
with MAVLink.V1.Ardupilotmega.Types;
with MAVLink.V1.Common.Types;
with MAVLink.V1.Uavionix.Types;
with MAVLink.V1.Icarous.Types;
with MAVLink.V1.Loweheiser.Types;
with MAVLink.V1.Cubepilot.Types;
with MAVLink.V1.Csairlink.Types;
with MAVLink.V1.Standard.Types;
with MAVLink.V1.Minimal.Types;
pragma Warnings (On);

with MAVLink.V1.Ardupilotmega.Sensor_Offsetses;
with MAVLink.V1.Ardupilotmega.Set_Mag_Offsetses;
with MAVLink.V1.Ardupilotmega.Meminfos;
with MAVLink.V1.Ardupilotmega.Ap_Adcs;
with MAVLink.V1.Ardupilotmega.Digicam_Configures;
with MAVLink.V1.Ardupilotmega.Digicam_Controls;
with MAVLink.V1.Ardupilotmega.Mount_Configures;
with MAVLink.V1.Ardupilotmega.Mount_Controls;
with MAVLink.V1.Ardupilotmega.Mount_Statuses;
with MAVLink.V1.Ardupilotmega.Fence_Points;
with MAVLink.V1.Ardupilotmega.Fence_Fetch_Points;
with MAVLink.V1.Ardupilotmega.Ahrses;
with MAVLink.V1.Ardupilotmega.Simstates;
with MAVLink.V1.Ardupilotmega.Hwstatuses;
with MAVLink.V1.Ardupilotmega.Radios;
with MAVLink.V1.Ardupilotmega.Limits_Statuses;
with MAVLink.V1.Ardupilotmega.Winds;
with MAVLink.V1.Ardupilotmega.Data16s;
with MAVLink.V1.Ardupilotmega.Data32s;
with MAVLink.V1.Ardupilotmega.Data64s;
with MAVLink.V1.Ardupilotmega.Data96s;
with MAVLink.V1.Ardupilotmega.Rangefinders;
with MAVLink.V1.Ardupilotmega.Airspeed_Autocals;
with MAVLink.V1.Ardupilotmega.Rally_Points;
with MAVLink.V1.Ardupilotmega.Rally_Fetch_Points;
with MAVLink.V1.Ardupilotmega.Compassmot_Statuses;
with MAVLink.V1.Ardupilotmega.Ahrs2s;
with MAVLink.V1.Ardupilotmega.Camera_Statuses;
with MAVLink.V1.Ardupilotmega.Camera_Feedbacks;
with MAVLink.V1.Ardupilotmega.Battery2s;
with MAVLink.V1.Ardupilotmega.Ahrs3s;
with MAVLink.V1.Ardupilotmega.Autopilot_Version_Requests;
with MAVLink.V1.Ardupilotmega.Remote_Log_Data_Blocks;
with MAVLink.V1.Ardupilotmega.Remote_Log_Block_Statuses;
with MAVLink.V1.Ardupilotmega.Led_Controls;
with MAVLink.V1.Ardupilotmega.Mag_Cal_Progresses;
with MAVLink.V1.Ardupilotmega.Ekf_Status_Reports;
with MAVLink.V1.Ardupilotmega.Pid_Tunings;
with MAVLink.V1.Ardupilotmega.Deepstalls;
with MAVLink.V1.Ardupilotmega.Gimbal_Reports;
with MAVLink.V1.Ardupilotmega.Gimbal_Controls;
with MAVLink.V1.Ardupilotmega.Gimbal_Torque_Cmd_Reports;
with MAVLink.V1.Ardupilotmega.Gopro_Heartbeats;
with MAVLink.V1.Ardupilotmega.Gopro_Get_Requests;
with MAVLink.V1.Ardupilotmega.Gopro_Get_Responses;
with MAVLink.V1.Ardupilotmega.Gopro_Set_Requests;
with MAVLink.V1.Ardupilotmega.Gopro_Set_Responses;
with MAVLink.V1.Ardupilotmega.Rpms;
with MAVLink.V1.Common.Sys_Statuses;
with MAVLink.V1.Common.System_Times;
with MAVLink.V1.Common.Pings;
with MAVLink.V1.Common.Change_Operator_Controls;
with MAVLink.V1.Common.Change_Operator_Control_Acks;
with MAVLink.V1.Common.Auth_Keys;
with MAVLink.V1.Common.Link_Node_Statuses;
with MAVLink.V1.Common.Set_Modes;
with MAVLink.V1.Common.Param_Request_Reads;
with MAVLink.V1.Common.Param_Request_Lists;
with MAVLink.V1.Common.Param_Values;
with MAVLink.V1.Common.Param_Sets;
with MAVLink.V1.Common.Gps_Raw_Ints;
with MAVLink.V1.Common.Gps_Statuses;
with MAVLink.V1.Common.Scaled_Imus;
with MAVLink.V1.Common.Raw_Imus;
with MAVLink.V1.Common.Raw_Pressures;
with MAVLink.V1.Common.Scaled_Pressures;
with MAVLink.V1.Common.Attitudes;
with MAVLink.V1.Common.Attitude_Quaternions;
with MAVLink.V1.Common.Local_Position_Neds;
with MAVLink.V1.Common.Rc_Channels_Scaleds;
with MAVLink.V1.Common.Rc_Channels_Raws;
with MAVLink.V1.Common.Servo_Output_Raws;
with MAVLink.V1.Common.Mission_Request_Partial_Lists;
with MAVLink.V1.Common.Mission_Write_Partial_Lists;
with MAVLink.V1.Common.Mission_Items;
with MAVLink.V1.Common.Mission_Requests;
with MAVLink.V1.Common.Mission_Set_Currents;
with MAVLink.V1.Common.Mission_Currents;
with MAVLink.V1.Common.Mission_Request_Lists;
with MAVLink.V1.Common.Mission_Counts;
with MAVLink.V1.Common.Mission_Clear_Alls;
with MAVLink.V1.Common.Mission_Item_Reacheds;
with MAVLink.V1.Common.Mission_Acks;
with MAVLink.V1.Common.Set_Gps_Global_Origins;
with MAVLink.V1.Common.Gps_Global_Origins;
with MAVLink.V1.Common.Param_Map_Rcs;
with MAVLink.V1.Common.Mission_Request_Ints;
with MAVLink.V1.Common.Safety_Set_Allowed_Areas;
with MAVLink.V1.Common.Safety_Allowed_Areas;
with MAVLink.V1.Common.Attitude_Quaternion_Covs;
with MAVLink.V1.Common.Nav_Controller_Outputs;
with MAVLink.V1.Common.Global_Position_Int_Covs;
with MAVLink.V1.Common.Local_Position_Ned_Covs;
with MAVLink.V1.Common.Rc_Channelses;
with MAVLink.V1.Common.Request_Data_Streams;
with MAVLink.V1.Common.Data_Streams;
with MAVLink.V1.Common.Manual_Controls;
with MAVLink.V1.Common.Rc_Channels_Overrides;
with MAVLink.V1.Common.Mission_Item_Ints;
with MAVLink.V1.Common.Vfr_Huds;
with MAVLink.V1.Common.Command_Ints;
with MAVLink.V1.Common.Command_Longs;
with MAVLink.V1.Common.Command_Acks;
with MAVLink.V1.Common.Command_Cancels;
with MAVLink.V1.Common.Manual_Setpoints;
with MAVLink.V1.Common.Set_Attitude_Targets;
with MAVLink.V1.Common.Attitude_Targets;
with MAVLink.V1.Common.Set_Position_Target_Local_Neds;
with MAVLink.V1.Common.Position_Target_Local_Neds;
with MAVLink.V1.Common.Set_Position_Target_Global_Ints;
with MAVLink.V1.Common.Position_Target_Global_Ints;
with MAVLink.V1.Common.Local_Position_Ned_System_Global_Offsets;
with MAVLink.V1.Common.Hil_States;
with MAVLink.V1.Common.Hil_Controlses;
with MAVLink.V1.Common.Hil_Rc_Inputs_Raws;
with MAVLink.V1.Common.Hil_Actuator_Controlses;
with MAVLink.V1.Common.Optical_Flows;
with MAVLink.V1.Common.Global_Vision_Position_Estimates;
with MAVLink.V1.Common.Vision_Position_Estimates;
with MAVLink.V1.Common.Vision_Speed_Estimates;
with MAVLink.V1.Common.Vicon_Position_Estimates;
with MAVLink.V1.Common.Highres_Imus;
with MAVLink.V1.Common.Optical_Flow_Rads;
with MAVLink.V1.Common.Hil_Sensors;
with MAVLink.V1.Common.Sim_States;
with MAVLink.V1.Common.Radio_Statuses;
with MAVLink.V1.Common.File_Transfer_Protocols;
with MAVLink.V1.Common.Timesyncs;
with MAVLink.V1.Common.Camera_Triggers;
with MAVLink.V1.Common.Hil_Gpses;
with MAVLink.V1.Common.Hil_Optical_Flows;
with MAVLink.V1.Common.Hil_State_Quaternions;
with MAVLink.V1.Common.Scaled_Imu2s;
with MAVLink.V1.Common.Log_Request_Lists;
with MAVLink.V1.Common.Log_Entrys;
with MAVLink.V1.Common.Log_Request_Datas;
with MAVLink.V1.Common.Log_Datas;
with MAVLink.V1.Common.Log_Erases;
with MAVLink.V1.Common.Log_Request_Ends;
with MAVLink.V1.Common.Gps_Inject_Datas;
with MAVLink.V1.Common.Gps2_Raws;
with MAVLink.V1.Common.Power_Statuses;
with MAVLink.V1.Common.Serial_Controls;
with MAVLink.V1.Common.Gps_Rtks;
with MAVLink.V1.Common.Gps2_Rtks;
with MAVLink.V1.Common.Scaled_Imu3s;
with MAVLink.V1.Common.Data_Transmission_Handshakes;
with MAVLink.V1.Common.Encapsulated_Datas;
with MAVLink.V1.Common.Distance_Sensors;
with MAVLink.V1.Common.Terrain_Requests;
with MAVLink.V1.Common.Terrain_Datas;
with MAVLink.V1.Common.Terrain_Checks;
with MAVLink.V1.Common.Terrain_Reports;
with MAVLink.V1.Common.Scaled_Pressure2s;
with MAVLink.V1.Common.Att_Pos_Mocaps;
with MAVLink.V1.Common.Set_Actuator_Control_Targets;
with MAVLink.V1.Common.Actuator_Control_Targets;
with MAVLink.V1.Common.Altitudes;
with MAVLink.V1.Common.Resource_Requests;
with MAVLink.V1.Common.Scaled_Pressure3s;
with MAVLink.V1.Common.Follow_Targets;
with MAVLink.V1.Common.Control_System_States;
with MAVLink.V1.Common.Battery_Statuses;
with MAVLink.V1.Common.Landing_Targets;
with MAVLink.V1.Common.Fence_Statuses;
with MAVLink.V1.Common.Mag_Cal_Reports;
with MAVLink.V1.Common.Efi_Statuses;
with MAVLink.V1.Common.Estimator_Statuses;
with MAVLink.V1.Common.Wind_Covs;
with MAVLink.V1.Common.Gps_Inputs;
with MAVLink.V1.Common.Gps_Rtcm_Datas;
with MAVLink.V1.Common.High_Latencys;
with MAVLink.V1.Common.High_Latency2s;
with MAVLink.V1.Common.Vibrations;
with MAVLink.V1.Common.Home_Positions;
with MAVLink.V1.Common.Set_Home_Positions;
with MAVLink.V1.Common.Message_Intervals;
with MAVLink.V1.Common.Extended_Sys_States;
with MAVLink.V1.Common.Adsb_Vehicles;
with MAVLink.V1.Common.Collisions;
with MAVLink.V1.Common.V2_Extensions;
with MAVLink.V1.Common.Memory_Vects;
with MAVLink.V1.Common.Debug_Vects;
with MAVLink.V1.Common.Named_Value_Floats;
with MAVLink.V1.Common.Named_Value_Ints;
with MAVLink.V1.Common.Statustexts;
with MAVLink.V1.Common.Debugs;
with MAVLink.V1.Standard.Global_Position_Ints;
with MAVLink.V1.Standard.Autopilot_Versions;
with MAVLink.V1.Minimal.Heartbeats;

with Ada.Text_IO;

pragma Warnings (Off); --  prevent "not used"
with MAVLink.Raw_Floats; use MAVLink.Raw_Floats;
with MAVLink.Raw_Long_Floats; use MAVLink.Raw_Long_Floats;
pragma Warnings (On);

use MAVLink.V1;

procedure Test
is
   In_Connect  : MAVLink.V1.Connection;
   Out_Connect : MAVLink.V1.Out_Connection;
   Res         : Boolean;
   Buffer      : Data_Buffer (1 .. MAVLink.V1.Maximum_Buffer_Len);
   Last        : Positive;

begin
   Set_System_Id (In_Connect, 1);
   Set_Component_Id (In_Connect, 1);
   Set_System_Id (Out_Connect, 1);
   Set_Component_Id (Out_Connect, 1);
   declare
      use MAVLink.V1.Ardupilotmega.Sensor_Offsetses;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Set_Mag_Offsetses;
      I : Set_Mag_Offsets;
      O : constant Set_Mag_Offsets :=
         (Target_System => 1,
          Target_Component => 1,
          Mag_Ofs_X => 6,
          Mag_Ofs_Y => 6,
          Mag_Ofs_Z => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Meminfos;
      I : Meminfo;
      O : constant Meminfo :=
         (Brkval => 2,
          Freemem => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Ap_Adcs;
      I : Ap_Adc;
      O : constant Ap_Adc :=
         (Adc1 => 2,
          Adc2 => 2,
          Adc3 => 2,
          Adc4 => 2,
          Adc5 => 2,
          Adc6 => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Digicam_Configures;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Digicam_Controls;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Mount_Configures;
      I : Mount_Configure;
      O : constant Mount_Configure :=
         (Target_System => 1,
          Target_Component => 1,
          Mount_Mode => MAVLink.V1.Common.Types.Mav_Mount_Mode'First,
          Stab_Roll => 1,
          Stab_Pitch => 1,
          Stab_Yaw => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Mount_Controls;
      I : Mount_Control;
      O : constant Mount_Control :=
         (Target_System => 1,
          Target_Component => 1,
          Input_A => 7,
          Input_B => 7,
          Input_C => 7,
          Save_Position => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Mount_Statuses;
      I : Mount_Status;
      O : constant Mount_Status :=
         (Target_System => 1,
          Target_Component => 1,
          Pointing_A => 7,
          Pointing_B => 7,
          Pointing_C => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Fence_Points;
      I : Fence_Point;
      O : constant Fence_Point :=
         (Target_System => 1,
          Target_Component => 1,
          Idx => 1,
          Count => 1,
          Lat => To_Raw (9.9),
          Lng => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Fence_Fetch_Points;
      I : Fence_Fetch_Point;
      O : constant Fence_Fetch_Point :=
         (Target_System => 1,
          Target_Component => 1,
          Idx => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Ahrses;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Simstates;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Hwstatuses;
      I : Hwstatus;
      O : constant Hwstatus :=
         (Vcc => 2,
          I2Cerr => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Radios;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Limits_Statuses;
      I : Limits_Status;
      O : constant Limits_Status :=
         (Limits_State => MAVLink.V1.Ardupilotmega.Types.Limits_State'First,
          Last_Trigger => 3,
          Last_Action => 3,
          Last_Recovery => 3,
          Last_Clear => 3,
          Breach_Count => 2,
          Mods_Enabled => <>,
          Mods_Required => <>,
          Mods_Triggered => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Winds;
      I : Wind;
      O : constant Wind :=
         (Direction => To_Raw (9.9),
          Speed => To_Raw (9.9),
          Speed_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Data16s;
      I : Data16;
      O : constant Data16 :=
         (Type_Field => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Data32s;
      I : Data32;
      O : constant Data32 :=
         (Type_Field => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Data64s;
      I : Data64;
      O : constant Data64 :=
         (Type_Field => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Data96s;
      I : Data96;
      O : constant Data96 :=
         (Type_Field => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Rangefinders;
      I : Rangefinder;
      O : constant Rangefinder :=
         (Distance => To_Raw (9.9),
          Voltage => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Airspeed_Autocals;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Rally_Points;
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
          Flags => MAVLink.V1.Ardupilotmega.Types.Rally_Flags'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Rally_Fetch_Points;
      I : Rally_Fetch_Point;
      O : constant Rally_Fetch_Point :=
         (Target_System => 1,
          Target_Component => 1,
          Idx => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Compassmot_Statuses;
      I : Compassmot_Status;
      O : constant Compassmot_Status :=
         (Throttle => 2,
          Current => To_Raw (9.9),
          Interference => 2,
          Compensationx => To_Raw (9.9),
          Compensationy => To_Raw (9.9),
          Compensationz => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Ahrs2s;
      I : Ahrs2;
      O : constant Ahrs2 :=
         (Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9),
          Altitude => To_Raw (9.9),
          Lat => 7,
          Lng => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Camera_Statuses;
      I : Camera_Status;
      O : constant Camera_Status :=
         (Time_Usec => 4,
          Target_System => 1,
          Cam_Idx => 1,
          Img_Idx => 2,
          Event_Id => MAVLink.V1.Ardupilotmega.Types.Camera_Status_Types'First,
          P1 => To_Raw (9.9),
          P2 => To_Raw (9.9),
          P3 => To_Raw (9.9),
          P4 => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Camera_Feedbacks;
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
          Flags => MAVLink.V1.Ardupilotmega.Types.Camera_Feedback_Flags'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Battery2s;
      I : Battery2;
      O : constant Battery2 :=
         (Voltage => 2,
          Current_Battery => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Ahrs3s;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Autopilot_Version_Requests;
      I : Autopilot_Version_Request;
      O : constant Autopilot_Version_Request :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Remote_Log_Data_Blocks;
      I : Remote_Log_Data_Block;
      O : constant Remote_Log_Data_Block :=
         (Target_System => 1,
          Target_Component => 1,
          Seqno => MAVLink.V1.Ardupilotmega.Types.Mav_Remote_Log_Data_Block_Commands'First,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Remote_Log_Block_Statuses;
      I : Remote_Log_Block_Status;
      O : constant Remote_Log_Block_Status :=
         (Target_System => 1,
          Target_Component => 1,
          Seqno => 3,
          Status => MAVLink.V1.Ardupilotmega.Types.Mav_Remote_Log_Data_Block_Statuses'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Led_Controls;
      I : Led_Control;
      O : constant Led_Control :=
         (Target_System => 1,
          Target_Component => 1,
          Instance => 1,
          Pattern => 1,
          Custom_Len => 1,
          Custom_Bytes => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Mag_Cal_Progresses;
      I : Mag_Cal_Progress;
      O : constant Mag_Cal_Progress :=
         (Compass_Id => 1,
          Cal_Mask => 1,
          Cal_Status => MAVLink.V1.Common.Types.Mag_Cal_Status'First,
          Attempt => 1,
          Completion_Pct => 1,
          Completion_Mask => [others => 1],
          Direction_X => To_Raw (9.9),
          Direction_Y => To_Raw (9.9),
          Direction_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Ekf_Status_Reports;
      I : Ekf_Status_Report;
      O : constant Ekf_Status_Report :=
         (Flags => <>,
          Velocity_Variance => To_Raw (9.9),
          Pos_Horiz_Variance => To_Raw (9.9),
          Pos_Vert_Variance => To_Raw (9.9),
          Compass_Variance => To_Raw (9.9),
          Terrain_Alt_Variance => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Pid_Tunings;
      I : Pid_Tuning;
      O : constant Pid_Tuning :=
         (Axis => MAVLink.V1.Ardupilotmega.Types.Pid_Tuning_Axis'First,
          Desired => To_Raw (9.9),
          Achieved => To_Raw (9.9),
          Ff => To_Raw (9.9),
          P => To_Raw (9.9),
          I => To_Raw (9.9),
          D => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Deepstalls;
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
          Stage => MAVLink.V1.Ardupilotmega.Types.Deepstall_Stage'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Gimbal_Reports;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Gimbal_Controls;
      I : Gimbal_Control;
      O : constant Gimbal_Control :=
         (Target_System => 1,
          Target_Component => 1,
          Demanded_Rate_X => To_Raw (9.9),
          Demanded_Rate_Y => To_Raw (9.9),
          Demanded_Rate_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Gimbal_Torque_Cmd_Reports;
      I : Gimbal_Torque_Cmd_Report;
      O : constant Gimbal_Torque_Cmd_Report :=
         (Target_System => 1,
          Target_Component => 1,
          Rl_Torque_Cmd => 6,
          El_Torque_Cmd => 6,
          Az_Torque_Cmd => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Gopro_Heartbeats;
      I : Gopro_Heartbeat;
      O : constant Gopro_Heartbeat :=
         (Status => MAVLink.V1.Ardupilotmega.Types.Gopro_Heartbeat_Status'First,
          Capture_Mode => MAVLink.V1.Ardupilotmega.Types.Gopro_Capture_Mode'First,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Gopro_Get_Requests;
      I : Gopro_Get_Request;
      O : constant Gopro_Get_Request :=
         (Target_System => 1,
          Target_Component => 1,
          Cmd_Id => MAVLink.V1.Ardupilotmega.Types.Gopro_Command'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Gopro_Get_Responses;
      I : Gopro_Get_Response;
      O : constant Gopro_Get_Response :=
         (Cmd_Id => MAVLink.V1.Ardupilotmega.Types.Gopro_Command'First,
          Status => MAVLink.V1.Ardupilotmega.Types.Gopro_Request_Status'First,
          Value => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Gopro_Set_Requests;
      I : Gopro_Set_Request;
      O : constant Gopro_Set_Request :=
         (Target_System => 1,
          Target_Component => 1,
          Cmd_Id => MAVLink.V1.Ardupilotmega.Types.Gopro_Command'First,
          Value => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Gopro_Set_Responses;
      I : Gopro_Set_Response;
      O : constant Gopro_Set_Response :=
         (Cmd_Id => MAVLink.V1.Ardupilotmega.Types.Gopro_Command'First,
          Status => MAVLink.V1.Ardupilotmega.Types.Gopro_Request_Status'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Ardupilotmega.Rpms;
      I : Rpm;
      O : constant Rpm :=
         (Rpm1 => To_Raw (9.9),
          Rpm2 => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Sys_Statuses;
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
          Errors_Count4 => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.System_Times;
      I : System_Time;
      O : constant System_Time :=
         (Time_Unix_Usec => 4,
          Time_Boot_Ms => 3);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Pings;
      I : Ping;
      O : constant Ping :=
         (Time_Usec => 4,
          Seq => 3,
          Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Change_Operator_Controls;
      I : Change_Operator_Control;
      O : constant Change_Operator_Control :=
         (Target_System => 1,
          Control_Request => 1,
          Version => 1,
          Passkey => [others => 'A']);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Change_Operator_Control_Acks;
      I : Change_Operator_Control_Ack;
      O : constant Change_Operator_Control_Ack :=
         (Gcs_System_Id => 1,
          Control_Request => 1,
          Ack => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Auth_Keys;
      I : Auth_Key;
      O : constant Auth_Key :=
         (Key => [others => 'A']);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Link_Node_Statuses;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Set_Modes;
      I : Set_Mode;
      O : constant Set_Mode :=
         (Target_System => 1,
          Base_Mode => <>,
          Custom_Mode => 3);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Param_Request_Reads;
      I : Param_Request_Read;
      O : constant Param_Request_Read :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Index => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Param_Request_Lists;
      I : Param_Request_List;
      O : constant Param_Request_List :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Param_Values;
      I : Param_Value;
      O : constant Param_Value :=
         (Param_Id => [others => 'A'],
          Param_Value => To_Raw (9.9),
          Param_Type => MAVLink.V1.Common.Types.Mav_Param_Type'First,
          Param_Count => 2,
          Param_Index => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Param_Sets;
      I : Param_Set;
      O : constant Param_Set :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Value => To_Raw (9.9),
          Param_Type => MAVLink.V1.Common.Types.Mav_Param_Type'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps_Raw_Ints;
      I : Gps_Raw_Int;
      O : constant Gps_Raw_Int :=
         (Time_Usec => 4,
          Fix_Type => MAVLink.V1.Common.Types.Gps_Fix_Type'First,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Eph => <>,
          Epv => <>,
          Vel => <>,
          Cog => <>,
          Satellites_Visible => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps_Statuses;
      I : Gps_Status;
      O : constant Gps_Status :=
         (Satellites_Visible => 1,
          Satellite_Prn => [others => 1],
          Satellite_Used => [others => 1],
          Satellite_Elevation => [others => 1],
          Satellite_Azimuth => [others => 1],
          Satellite_Snr => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Scaled_Imus;
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
          Zmag => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Raw_Imus;
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
          Zmag => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Raw_Pressures;
      I : Raw_Pressure;
      O : constant Raw_Pressure :=
         (Time_Usec => 4,
          Press_Abs => 6,
          Press_Diff1 => <>,
          Press_Diff2 => <>,
          Temperature => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Scaled_Pressures;
      I : Scaled_Pressure;
      O : constant Scaled_Pressure :=
         (Time_Boot_Ms => 3,
          Press_Abs => To_Raw (9.9),
          Press_Diff => To_Raw (9.9),
          Temperature => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Attitudes;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Attitude_Quaternions;
      I : Attitude_Quaternion;
      O : constant Attitude_Quaternion :=
         (Time_Boot_Ms => 3,
          Q1 => To_Raw (9.9),
          Q2 => To_Raw (9.9),
          Q3 => To_Raw (9.9),
          Q4 => To_Raw (9.9),
          Rollspeed => To_Raw (9.9),
          Pitchspeed => To_Raw (9.9),
          Yawspeed => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Local_Position_Neds;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Rc_Channels_Scaleds;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Rc_Channels_Raws;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Servo_Output_Raws;
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
          Servo8_Raw => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Request_Partial_Lists;
      I : Mission_Request_Partial_List;
      O : constant Mission_Request_Partial_List :=
         (Target_System => 1,
          Target_Component => 1,
          Start_Index => 6,
          End_Index => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Write_Partial_Lists;
      I : Mission_Write_Partial_List;
      O : constant Mission_Write_Partial_List :=
         (Target_System => 1,
          Target_Component => 1,
          Start_Index => 6,
          End_Index => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Items;
      I : Mission_Item;
      O : constant Mission_Item :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2,
          Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
          Command => MAVLink.V1.Ardupilotmega.Types.Mav_Cmd'First,
          Current => 1,
          Autocontinue => 1,
          Param1 => To_Raw (9.9),
          Param2 => To_Raw (9.9),
          Param3 => To_Raw (9.9),
          Param4 => To_Raw (9.9),
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Requests;
      I : Mission_Request;
      O : constant Mission_Request :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Set_Currents;
      I : Mission_Set_Current;
      O : constant Mission_Set_Current :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Currents;
      I : Mission_Current;
      O : constant Mission_Current :=
         (Seq => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Request_Lists;
      I : Mission_Request_List;
      O : constant Mission_Request_List :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Counts;
      I : Mission_Count;
      O : constant Mission_Count :=
         (Target_System => 1,
          Target_Component => 1,
          Count => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Clear_Alls;
      I : Mission_Clear_All;
      O : constant Mission_Clear_All :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Item_Reacheds;
      I : Mission_Item_Reached;
      O : constant Mission_Item_Reached :=
         (Seq => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Acks;
      I : Mission_Ack;
      O : constant Mission_Ack :=
         (Target_System => 1,
          Target_Component => 1,
          Type_Field => MAVLink.V1.Common.Types.Mav_Mission_Result'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Set_Gps_Global_Origins;
      I : Set_Gps_Global_Origin;
      O : constant Set_Gps_Global_Origin :=
         (Target_System => 1,
          Latitude => 7,
          Longitude => 7,
          Altitude => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps_Global_Origins;
      I : Gps_Global_Origin;
      O : constant Gps_Global_Origin :=
         (Latitude => 7,
          Longitude => 7,
          Altitude => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Param_Map_Rcs;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Request_Ints;
      I : Mission_Request_Int;
      O : constant Mission_Request_Int :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Safety_Set_Allowed_Areas;
      I : Safety_Set_Allowed_Area;
      O : constant Safety_Set_Allowed_Area :=
         (Target_System => 1,
          Target_Component => 1,
          Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
          P1X => To_Raw (9.9),
          P1Y => To_Raw (9.9),
          P1Z => To_Raw (9.9),
          P2X => To_Raw (9.9),
          P2Y => To_Raw (9.9),
          P2Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Safety_Allowed_Areas;
      I : Safety_Allowed_Area;
      O : constant Safety_Allowed_Area :=
         (Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
          P1X => To_Raw (9.9),
          P1Y => To_Raw (9.9),
          P1Z => To_Raw (9.9),
          P2X => To_Raw (9.9),
          P2Y => To_Raw (9.9),
          P2Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Attitude_Quaternion_Covs;
      I : Attitude_Quaternion_Cov;
      O : constant Attitude_Quaternion_Cov :=
         (Time_Usec => 4,
          Q => [others => To_Raw (9.9)],
          Rollspeed => To_Raw (9.9),
          Pitchspeed => To_Raw (9.9),
          Yawspeed => To_Raw (9.9),
          Covariance => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Nav_Controller_Outputs;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Global_Position_Int_Covs;
      I : Global_Position_Int_Cov;
      O : constant Global_Position_Int_Cov :=
         (Time_Usec => 4,
          Estimator_Type => MAVLink.V1.Common.Types.Mav_Estimator_Type'First,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Relative_Alt => 7,
          Vx => To_Raw (9.9),
          Vy => To_Raw (9.9),
          Vz => To_Raw (9.9),
          Covariance => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Local_Position_Ned_Covs;
      I : Local_Position_Ned_Cov;
      O : constant Local_Position_Ned_Cov :=
         (Time_Usec => 4,
          Estimator_Type => MAVLink.V1.Common.Types.Mav_Estimator_Type'First,
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Rc_Channelses;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Request_Data_Streams;
      I : Request_Data_Stream;
      O : constant Request_Data_Stream :=
         (Target_System => 1,
          Target_Component => 1,
          Req_Stream_Id => MAVLink.V1.Common.Types.Mav_Data_Stream'First,
          Req_Message_Rate => 2,
          Start_Stop => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Data_Streams;
      I : Data_Stream;
      O : constant Data_Stream :=
         (Stream_Id => MAVLink.V1.Common.Types.Mav_Data_Stream'First,
          Message_Rate => 2,
          On_Off => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Manual_Controls;
      I : Manual_Control;
      O : constant Manual_Control :=
         (Target => 1,
          X => <>,
          Y => <>,
          Z => <>,
          R => <>,
          Buttons => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Rc_Channels_Overrides;
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
          Chan8_Raw => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mission_Item_Ints;
      I : Mission_Item_Int;
      O : constant Mission_Item_Int :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2,
          Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
          Command => MAVLink.V1.Ardupilotmega.Types.Mav_Cmd'First,
          Current => 1,
          Autocontinue => 1,
          Param1 => To_Raw (9.9),
          Param2 => To_Raw (9.9),
          Param3 => To_Raw (9.9),
          Param4 => To_Raw (9.9),
          X => 7,
          Y => 7,
          Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Vfr_Huds;
      I : Vfr_Hud;
      O : constant Vfr_Hud :=
         (Airspeed => To_Raw (9.9),
          Groundspeed => To_Raw (9.9),
          Heading => 6,
          Throttle => 2,
          Alt => To_Raw (9.9),
          Climb => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Command_Ints;
      I : Command_Int;
      O : constant Command_Int :=
         (Target_System => 1,
          Target_Component => 1,
          Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
          Command => MAVLink.V1.Ardupilotmega.Types.Mav_Cmd'First,
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Command_Longs;
      I : Command_Long;
      O : constant Command_Long :=
         (Target_System => 1,
          Target_Component => 1,
          Command => MAVLink.V1.Ardupilotmega.Types.Mav_Cmd'First,
          Confirmation => 1,
          Param1 => <>,
          Param2 => <>,
          Param3 => <>,
          Param4 => <>,
          Param5 => <>,
          Param6 => <>,
          Param7 => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Command_Acks;
      I : Command_Ack;
      O : constant Command_Ack :=
         (Command => MAVLink.V1.Ardupilotmega.Types.Mav_Cmd'First,
          Result => MAVLink.V1.Common.Types.Mav_Result'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Command_Cancels;
      I : Command_Cancel;
      O : constant Command_Cancel :=
         (Target_System => 1,
          Target_Component => 1,
          Command => MAVLink.V1.Ardupilotmega.Types.Mav_Cmd'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Manual_Setpoints;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Set_Attitude_Targets;
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
          Thrust => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Attitude_Targets;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Set_Position_Target_Local_Neds;
      I : Set_Position_Target_Local_Ned;
      O : constant Set_Position_Target_Local_Ned :=
         (Time_Boot_Ms => 3,
          Target_System => 1,
          Target_Component => 1,
          Coordinate_Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Position_Target_Local_Neds;
      I : Position_Target_Local_Ned;
      O : constant Position_Target_Local_Ned :=
         (Time_Boot_Ms => 3,
          Coordinate_Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Set_Position_Target_Global_Ints;
      I : Set_Position_Target_Global_Int;
      O : constant Set_Position_Target_Global_Int :=
         (Time_Boot_Ms => 3,
          Target_System => 1,
          Target_Component => 1,
          Coordinate_Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Position_Target_Global_Ints;
      I : Position_Target_Global_Int;
      O : constant Position_Target_Global_Int :=
         (Time_Boot_Ms => 3,
          Coordinate_Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Local_Position_Ned_System_Global_Offsets;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Hil_States;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Hil_Controlses;
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
          Mode => MAVLink.V1.Common.Types.Mav_Mode'First,
          Nav_Mode => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Hil_Rc_Inputs_Raws;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Hil_Actuator_Controlses;
      I : Hil_Actuator_Controls;
      O : constant Hil_Actuator_Controls :=
         (Time_Usec => 4,
          Controls => [others => To_Raw (9.9)],
          Mode => <>,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Optical_Flows;
      I : Optical_Flow;
      O : constant Optical_Flow :=
         (Time_Usec => 4,
          Sensor_Id => 1,
          Flow_X => 6,
          Flow_Y => 6,
          Flow_Comp_M_X => To_Raw (9.9),
          Flow_Comp_M_Y => To_Raw (9.9),
          Quality => 1,
          Ground_Distance => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Global_Vision_Position_Estimates;
      I : Global_Vision_Position_Estimate;
      O : constant Global_Vision_Position_Estimate :=
         (Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Vision_Position_Estimates;
      I : Vision_Position_Estimate;
      O : constant Vision_Position_Estimate :=
         (Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Vision_Speed_Estimates;
      I : Vision_Speed_Estimate;
      O : constant Vision_Speed_Estimate :=
         (Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Vicon_Position_Estimates;
      I : Vicon_Position_Estimate;
      O : constant Vicon_Position_Estimate :=
         (Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9),
          Roll => To_Raw (9.9),
          Pitch => To_Raw (9.9),
          Yaw => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Highres_Imus;
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
          Fields_Updated => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Optical_Flow_Rads;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Hil_Sensors;
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
          Fields_Updated => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Sim_States;
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
          Vd => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Radio_Statuses;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.File_Transfer_Protocols;
      I : File_Transfer_Protocol;
      O : constant File_Transfer_Protocol :=
         (Target_Network => 1,
          Target_System => 1,
          Target_Component => 1,
          Payload => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Timesyncs;
      I : Timesync;
      O : constant Timesync :=
         (Tc1 => 8,
          Ts1 => 8);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Camera_Triggers;
      I : Camera_Trigger;
      O : constant Camera_Trigger :=
         (Time_Usec => 4,
          Seq => 3);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Hil_Gpses;
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
          Satellites_Visible => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Hil_Optical_Flows;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Hil_State_Quaternions;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Scaled_Imu2s;
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
          Zmag => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Log_Request_Lists;
      I : Log_Request_List;
      O : constant Log_Request_List :=
         (Target_System => 1,
          Target_Component => 1,
          Start => 2,
          End_Field => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Log_Entrys;
      I : Log_Entry;
      O : constant Log_Entry :=
         (Id => 2,
          Num_Logs => 2,
          Last_Log_Num => 2,
          Time_Utc => <>,
          Size => 3);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Log_Request_Datas;
      I : Log_Request_Data;
      O : constant Log_Request_Data :=
         (Target_System => 1,
          Target_Component => 1,
          Id => 2,
          Ofs => 3,
          Count => 3);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Log_Datas;
      I : Log_Data;
      O : constant Log_Data :=
         (Id => 2,
          Ofs => 3,
          Count => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Log_Erases;
      I : Log_Erase;
      O : constant Log_Erase :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Log_Request_Ends;
      I : Log_Request_End;
      O : constant Log_Request_End :=
         (Target_System => 1,
          Target_Component => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps_Inject_Datas;
      I : Gps_Inject_Data;
      O : constant Gps_Inject_Data :=
         (Target_System => 1,
          Target_Component => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps2_Raws;
      I : Gps2_Raw;
      O : constant Gps2_Raw :=
         (Time_Usec => 4,
          Fix_Type => MAVLink.V1.Common.Types.Gps_Fix_Type'First,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Eph => <>,
          Epv => <>,
          Vel => <>,
          Cog => <>,
          Satellites_Visible => <>,
          Dgps_Numch => 1,
          Dgps_Age => 3);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Power_Statuses;
      I : Power_Status;
      O : constant Power_Status :=
         (Vcc => 2,
          Vservo => 2,
          Flags => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Serial_Controls;
      I : Serial_Control;
      O : constant Serial_Control :=
         (Device => MAVLink.V1.Common.Types.Serial_Control_Dev'First,
          Flags => <>,
          Timeout => 2,
          Baudrate => 3,
          Count => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps_Rtks;
      I : Gps_Rtk;
      O : constant Gps_Rtk :=
         (Time_Last_Baseline_Ms => 3,
          Rtk_Receiver_Id => 1,
          Wn => 2,
          Tow => 3,
          Rtk_Health => 1,
          Rtk_Rate => 1,
          Nsats => 1,
          Baseline_Coords_Type => MAVLink.V1.Common.Types.Rtk_Baseline_Coordinate_System'First,
          Baseline_A_Mm => 7,
          Baseline_B_Mm => 7,
          Baseline_C_Mm => 7,
          Accuracy => 3,
          Iar_Num_Hypotheses => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps2_Rtks;
      I : Gps2_Rtk;
      O : constant Gps2_Rtk :=
         (Time_Last_Baseline_Ms => 3,
          Rtk_Receiver_Id => 1,
          Wn => 2,
          Tow => 3,
          Rtk_Health => 1,
          Rtk_Rate => 1,
          Nsats => 1,
          Baseline_Coords_Type => MAVLink.V1.Common.Types.Rtk_Baseline_Coordinate_System'First,
          Baseline_A_Mm => 7,
          Baseline_B_Mm => 7,
          Baseline_C_Mm => 7,
          Accuracy => 3,
          Iar_Num_Hypotheses => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Scaled_Imu3s;
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
          Zmag => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Data_Transmission_Handshakes;
      I : Data_Transmission_Handshake;
      O : constant Data_Transmission_Handshake :=
         (Type_Field => MAVLink.V1.Common.Types.Mavlink_Data_Stream_Type'First,
          Size => 3,
          Width => 2,
          Height => 2,
          Packets => 2,
          Payload => 1,
          Jpg_Quality => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Encapsulated_Datas;
      I : Encapsulated_Data;
      O : constant Encapsulated_Data :=
         (Seqnr => 2,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Distance_Sensors;
      I : Distance_Sensor;
      O : constant Distance_Sensor :=
         (Time_Boot_Ms => 3,
          Min_Distance => 2,
          Max_Distance => 2,
          Current_Distance => 2,
          Type_Field => MAVLink.V1.Common.Types.Mav_Distance_Sensor'First,
          Id => 1,
          Orientation => MAVLink.V1.Common.Types.Mav_Sensor_Orientation'First,
          Covariance => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Terrain_Requests;
      I : Terrain_Request;
      O : constant Terrain_Request :=
         (Lat => 7,
          Lon => 7,
          Grid_Spacing => 2,
          Mask => 4);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Terrain_Datas;
      I : Terrain_Data;
      O : constant Terrain_Data :=
         (Lat => 7,
          Lon => 7,
          Grid_Spacing => 2,
          Gridbit => 1,
          Data => [others => 6]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Terrain_Checks;
      I : Terrain_Check;
      O : constant Terrain_Check :=
         (Lat => 7,
          Lon => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Terrain_Reports;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Scaled_Pressure2s;
      I : Scaled_Pressure2;
      O : constant Scaled_Pressure2 :=
         (Time_Boot_Ms => 3,
          Press_Abs => To_Raw (9.9),
          Press_Diff => To_Raw (9.9),
          Temperature => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Att_Pos_Mocaps;
      I : Att_Pos_Mocap;
      O : constant Att_Pos_Mocap :=
         (Time_Usec => 4,
          Q => [others => To_Raw (9.9)],
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Set_Actuator_Control_Targets;
      I : Set_Actuator_Control_Target;
      O : constant Set_Actuator_Control_Target :=
         (Time_Usec => 4,
          Group_Mlx => 1,
          Target_System => 1,
          Target_Component => 1,
          Controls => [others => To_Raw (9.9)]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Actuator_Control_Targets;
      I : Actuator_Control_Target;
      O : constant Actuator_Control_Target :=
         (Time_Usec => 4,
          Group_Mlx => 1,
          Controls => [others => To_Raw (9.9)]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Altitudes;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Resource_Requests;
      I : Resource_Request;
      O : constant Resource_Request :=
         (Request_Id => 1,
          Uri_Type => 1,
          Uri => [others => 1],
          Transfer_Type => 1,
          Storage => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Scaled_Pressure3s;
      I : Scaled_Pressure3;
      O : constant Scaled_Pressure3 :=
         (Time_Boot_Ms => 3,
          Press_Abs => To_Raw (9.9),
          Press_Diff => To_Raw (9.9),
          Temperature => 6);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Follow_Targets;
      I : Follow_Target;
      O : constant Follow_Target :=
         (Timestamp => 4,
          Est_Capabilities => <>,
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Control_System_States;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Battery_Statuses;
      I : Battery_Status;
      O : constant Battery_Status :=
         (Id => 1,
          Battery_Function => MAVLink.V1.Common.Types.Mav_Battery_Function'First,
          Type_Field => MAVLink.V1.Common.Types.Mav_Battery_Type'First,
          Temperature => <>,
          Voltages => <>,
          Current_Battery => <>,
          Current_Consumed => <>,
          Energy_Consumed => <>,
          Battery_Remaining => <>);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Landing_Targets;
      I : Landing_Target;
      O : constant Landing_Target :=
         (Time_Usec => 4,
          Target_Num => 1,
          Frame => MAVLink.V1.Common.Types.Mav_Frame'First,
          Angle_X => To_Raw (9.9),
          Angle_Y => To_Raw (9.9),
          Distance => To_Raw (9.9),
          Size_X => To_Raw (9.9),
          Size_Y => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Fence_Statuses;
      I : Fence_Status;
      O : constant Fence_Status :=
         (Breach_Status => 1,
          Breach_Count => 2,
          Breach_Type => MAVLink.V1.Common.Types.Fence_Breach'First,
          Breach_Time => 3);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Mag_Cal_Reports;
      I : Mag_Cal_Report;
      O : constant Mag_Cal_Report :=
         (Compass_Id => 1,
          Cal_Mask => 1,
          Cal_Status => MAVLink.V1.Common.Types.Mag_Cal_Status'First,
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
          Offdiag_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Efi_Statuses;
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
          Pt_Compensation => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Estimator_Statuses;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Wind_Covs;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps_Inputs;
      I : Gps_Input;
      O : constant Gps_Input :=
         (Time_Usec => 4,
          Gps_Id => 1,
          Ignore_Flags => <>,
          Time_Week_Ms => 3,
          Time_Week => 2,
          Fix_Type => MAVLink.V1.Common.Types.Gps_Fix_Type'First,
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
          Satellites_Visible => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Gps_Rtcm_Datas;
      I : Gps_Rtcm_Data;
      O : constant Gps_Rtcm_Data :=
         (Flags => 1,
          Len => 1,
          Data => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.High_Latencys;
      I : High_Latency;
      O : constant High_Latency :=
         (Base_Mode => <>,
          Custom_Mode => 3,
          Landed_State => MAVLink.V1.Common.Types.Mav_Landed_State'First,
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
          Gps_Fix_Type => MAVLink.V1.Common.Types.Gps_Fix_Type'First,
          Battery_Remaining => 1,
          Temperature => 5,
          Temperature_Air => 5,
          Failsafe => 1,
          Wp_Num => 1,
          Wp_Distance => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.High_Latency2s;
      I : High_Latency2;
      O : constant High_Latency2 :=
         (Timestamp => 3,
          Type_Field => MAVLink.V1.Minimal.Types.Mav_Type'First,
          Autopilot => MAVLink.V1.Minimal.Types.Mav_Autopilot'First,
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Vibrations;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Home_Positions;
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
          Approach_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Set_Home_Positions;
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
          Approach_Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Message_Intervals;
      I : Message_Interval;
      O : constant Message_Interval :=
         (Message_Id_Field => 2,
          Interval_Us => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Extended_Sys_States;
      I : Extended_Sys_State;
      O : constant Extended_Sys_State :=
         (Vtol_State => MAVLink.V1.Common.Types.Mav_Vtol_State'First,
          Landed_State => MAVLink.V1.Common.Types.Mav_Landed_State'First);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Adsb_Vehicles;
      I : Adsb_Vehicle;
      O : constant Adsb_Vehicle :=
         (Icao_Address => 3,
          Lat => <>,
          Lon => <>,
          Altitude_Type => MAVLink.V1.Common.Types.Adsb_Altitude_Type'First,
          Altitude => <>,
          Heading => <>,
          Hor_Velocity => <>,
          Ver_Velocity => <>,
          Callsign => [others => 'A'],
          Emitter_Type => MAVLink.V1.Common.Types.Adsb_Emitter_Type'First,
          Tslc => 1,
          Flags => <>,
          Squawk => 2);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Collisions;
      I : Collision;
      O : constant Collision :=
         (Src => MAVLink.V1.Common.Types.Mav_Collision_Src'First,
          Id => 3,
          Action => MAVLink.V1.Common.Types.Mav_Collision_Action'First,
          Threat_Level => MAVLink.V1.Common.Types.Mav_Collision_Threat_Level'First,
          Time_To_Minimum_Delta => To_Raw (9.9),
          Altitude_Minimum_Delta => To_Raw (9.9),
          Horizontal_Minimum_Delta => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.V2_Extensions;
      I : V2_Extension;
      O : constant V2_Extension :=
         (Target_Network => 1,
          Target_System => 1,
          Target_Component => 1,
          Message_Type => 2,
          Payload => [others => 1]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Memory_Vects;
      I : Memory_Vect;
      O : constant Memory_Vect :=
         (Address => 2,
          Ver => <>,
          Type_Field => 1,
          Value => [others => 5]);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Debug_Vects;
      I : Debug_Vect;
      O : constant Debug_Vect :=
         (Name => [others => 'A'],
          Time_Usec => 4,
          X => To_Raw (9.9),
          Y => To_Raw (9.9),
          Z => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Named_Value_Floats;
      I : Named_Value_Float;
      O : constant Named_Value_Float :=
         (Time_Boot_Ms => 3,
          Name => [others => 'A'],
          Value => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Named_Value_Ints;
      I : Named_Value_Int;
      O : constant Named_Value_Int :=
         (Time_Boot_Ms => 3,
          Name => [others => 'A'],
          Value => 7);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Statustexts;
      I : Statustext;
      O : constant Statustext :=
         (Severity => MAVLink.V1.Common.Types.Mav_Severity'First,
          Text => [others => 'A']);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Common.Debugs;
      I : Debug;
      O : constant Debug :=
         (Time_Boot_Ms => 3,
          Ind => 1,
          Value => To_Raw (9.9));
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Standard.Global_Position_Ints;
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
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Standard.Autopilot_Versions;
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
          Uid => 4);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

      Decode (I, In_Connect, Res);
      pragma Assert (Res);
      pragma Assert (I = O);
   end;

   declare
      use MAVLink.V1.Minimal.Heartbeats;
      I : Heartbeat;
      O : constant Heartbeat :=
         (Type_Field => MAVLink.V1.Minimal.Types.Mav_Type'First,
          Autopilot => MAVLink.V1.Minimal.Types.Mav_Autopilot'First,
          Base_Mode => <>,
          Custom_Mode => 3,
          System_Status => MAVLink.V1.Minimal.Types.Mav_State'First,
          Mavlink_Version => 1);
   begin
      Encode (O, Out_Connect, Buffer, Last);

      for Index in Buffer'First .. Last loop
         Res := Parse_Byte (In_Connect, Buffer (Index));
      end loop;
      pragma Assert (Res);

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