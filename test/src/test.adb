with MAVLink.V1.Common;
with MAVLink.V1.Common.Message.Sys_Statuses;
with MAVLink.V1.Common.Message.System_Times;
with MAVLink.V1.Common.Message.Pings;
with MAVLink.V1.Common.Message.Change_Operator_Controls;
with MAVLink.V1.Common.Message.Change_Operator_Control_Acks;
with MAVLink.V1.Common.Message.Auth_Keys;
with MAVLink.V1.Common.Message.Link_Node_Statuses;
with MAVLink.V1.Common.Message.Set_Modes;
with MAVLink.V1.Common.Message.Param_Request_Reads;
with MAVLink.V1.Common.Message.Param_Request_Lists;
with MAVLink.V1.Common.Message.Param_Values;
with MAVLink.V1.Common.Message.Param_Sets;
with MAVLink.V1.Common.Message.Gps_Raw_Ints;
with MAVLink.V1.Common.Message.Gps_Statuses;
with MAVLink.V1.Common.Message.Scaled_Imus;
with MAVLink.V1.Common.Message.Raw_Imus;
with MAVLink.V1.Common.Message.Raw_Pressures;
with MAVLink.V1.Common.Message.Scaled_Pressures;
with MAVLink.V1.Common.Message.Attitudes;
with MAVLink.V1.Common.Message.Attitude_Quaternions;
with MAVLink.V1.Common.Message.Local_Position_Neds;
with MAVLink.V1.Common.Message.Rc_Channels_Scaleds;
with MAVLink.V1.Common.Message.Rc_Channels_Raws;
with MAVLink.V1.Common.Message.Servo_Output_Raws;
with MAVLink.V1.Common.Message.Mission_Request_Partial_Lists;
with MAVLink.V1.Common.Message.Mission_Write_Partial_Lists;
with MAVLink.V1.Common.Message.Mission_Items;
with MAVLink.V1.Common.Message.Mission_Requests;
with MAVLink.V1.Common.Message.Mission_Set_Currents;
with MAVLink.V1.Common.Message.Mission_Currents;
with MAVLink.V1.Common.Message.Mission_Request_Lists;
with MAVLink.V1.Common.Message.Mission_Counts;
with MAVLink.V1.Common.Message.Mission_Clear_Alls;
with MAVLink.V1.Common.Message.Mission_Item_Reacheds;
with MAVLink.V1.Common.Message.Mission_Acks;
with MAVLink.V1.Common.Message.Set_Gps_Global_Origins;
with MAVLink.V1.Common.Message.Gps_Global_Origins;
with MAVLink.V1.Common.Message.Param_Map_Rcs;
with MAVLink.V1.Common.Message.Mission_Request_Ints;
with MAVLink.V1.Common.Message.Safety_Set_Allowed_Areas;
with MAVLink.V1.Common.Message.Safety_Allowed_Areas;
with MAVLink.V1.Common.Message.Attitude_Quaternion_Covs;
with MAVLink.V1.Common.Message.Nav_Controller_Outputs;
with MAVLink.V1.Common.Message.Global_Position_Int_Covs;
with MAVLink.V1.Common.Message.Local_Position_Ned_Covs;
with MAVLink.V1.Common.Message.Rc_Channelses;
with MAVLink.V1.Common.Message.Request_Data_Streams;
with MAVLink.V1.Common.Message.Data_Streams;
with MAVLink.V1.Common.Message.Manual_Controls;
with MAVLink.V1.Common.Message.Rc_Channels_Overrides;
with MAVLink.V1.Common.Message.Mission_Item_Ints;
with MAVLink.V1.Common.Message.Vfr_Huds;
with MAVLink.V1.Common.Message.Command_Ints;
with MAVLink.V1.Common.Message.Command_Longs;
with MAVLink.V1.Common.Message.Command_Acks;
with MAVLink.V1.Common.Message.Command_Cancels;
with MAVLink.V1.Common.Message.Manual_Setpoints;
with MAVLink.V1.Common.Message.Set_Attitude_Targets;
with MAVLink.V1.Common.Message.Attitude_Targets;
with MAVLink.V1.Common.Message.Set_Position_Target_Local_Neds;
with MAVLink.V1.Common.Message.Position_Target_Local_Neds;
with MAVLink.V1.Common.Message.Set_Position_Target_Global_Ints;
with MAVLink.V1.Common.Message.Position_Target_Global_Ints;
with MAVLink.V1.Common.Message.Local_Position_Ned_System_Global_Offsets;
with MAVLink.V1.Common.Message.Hil_States;
with MAVLink.V1.Common.Message.Hil_Controlses;
with MAVLink.V1.Common.Message.Hil_Rc_Inputs_Raws;
with MAVLink.V1.Common.Message.Hil_Actuator_Controlses;
with MAVLink.V1.Common.Message.Optical_Flows;
with MAVLink.V1.Common.Message.Global_Vision_Position_Estimates;
with MAVLink.V1.Common.Message.Vision_Position_Estimates;
with MAVLink.V1.Common.Message.Vision_Speed_Estimates;
with MAVLink.V1.Common.Message.Vicon_Position_Estimates;
with MAVLink.V1.Common.Message.Highres_Imus;
with MAVLink.V1.Common.Message.Optical_Flow_Rads;
with MAVLink.V1.Common.Message.Hil_Sensors;
with MAVLink.V1.Common.Message.Sim_States;
with MAVLink.V1.Common.Message.Radio_Statuses;
with MAVLink.V1.Common.Message.File_Transfer_Protocols;
with MAVLink.V1.Common.Message.Timesyncs;
with MAVLink.V1.Common.Message.Camera_Triggers;
with MAVLink.V1.Common.Message.Hil_Gpses;
with MAVLink.V1.Common.Message.Hil_Optical_Flows;
with MAVLink.V1.Common.Message.Hil_State_Quaternions;
with MAVLink.V1.Common.Message.Scaled_Imu2s;
with MAVLink.V1.Common.Message.Log_Request_Lists;
with MAVLink.V1.Common.Message.Log_Entrys;
with MAVLink.V1.Common.Message.Log_Request_Datas;
with MAVLink.V1.Common.Message.Log_Datas;
with MAVLink.V1.Common.Message.Log_Erases;
with MAVLink.V1.Common.Message.Log_Request_Ends;
with MAVLink.V1.Common.Message.Gps_Inject_Datas;
with MAVLink.V1.Common.Message.Gps2_Raws;
with MAVLink.V1.Common.Message.Power_Statuses;
with MAVLink.V1.Common.Message.Serial_Controls;
with MAVLink.V1.Common.Message.Gps_Rtks;
with MAVLink.V1.Common.Message.Gps2_Rtks;
with MAVLink.V1.Common.Message.Scaled_Imu3s;
with MAVLink.V1.Common.Message.Data_Transmission_Handshakes;
with MAVLink.V1.Common.Message.Encapsulated_Datas;
with MAVLink.V1.Common.Message.Distance_Sensors;
with MAVLink.V1.Common.Message.Terrain_Requests;
with MAVLink.V1.Common.Message.Terrain_Datas;
with MAVLink.V1.Common.Message.Terrain_Checks;
with MAVLink.V1.Common.Message.Terrain_Reports;
with MAVLink.V1.Common.Message.Scaled_Pressure2s;
with MAVLink.V1.Common.Message.Att_Pos_Mocaps;
with MAVLink.V1.Common.Message.Set_Actuator_Control_Targets;
with MAVLink.V1.Common.Message.Actuator_Control_Targets;
with MAVLink.V1.Common.Message.Altitudes;
with MAVLink.V1.Common.Message.Resource_Requests;
with MAVLink.V1.Common.Message.Scaled_Pressure3s;
with MAVLink.V1.Common.Message.Follow_Targets;
with MAVLink.V1.Common.Message.Control_System_States;
with MAVLink.V1.Common.Message.Battery_Statuses;
with MAVLink.V1.Common.Message.Landing_Targets;
with MAVLink.V1.Common.Message.Fence_Statuses;
with MAVLink.V1.Common.Message.Mag_Cal_Reports;
with MAVLink.V1.Common.Message.Efi_Statuses;
with MAVLink.V1.Common.Message.Estimator_Statuses;
with MAVLink.V1.Common.Message.Wind_Covs;
with MAVLink.V1.Common.Message.Gps_Inputs;
with MAVLink.V1.Common.Message.Gps_Rtcm_Datas;
with MAVLink.V1.Common.Message.High_Latencys;
with MAVLink.V1.Common.Message.High_Latency2s;
with MAVLink.V1.Common.Message.Vibrations;
with MAVLink.V1.Common.Message.Home_Positions;
with MAVLink.V1.Common.Message.Set_Home_Positions;
with MAVLink.V1.Common.Message.Message_Intervals;
with MAVLink.V1.Common.Message.Extended_Sys_States;
with MAVLink.V1.Common.Message.Adsb_Vehicles;
with MAVLink.V1.Common.Message.Collisions;
with MAVLink.V1.Common.Message.V2_Extensions;
with MAVLink.V1.Common.Message.Memory_Vects;
with MAVLink.V1.Common.Message.Debug_Vects;
with MAVLink.V1.Common.Message.Named_Value_Floats;
with MAVLink.V1.Common.Message.Named_Value_Ints;
with MAVLink.V1.Common.Message.Statustexts;
with MAVLink.V1.Common.Message.Debugs;
with MAVLink.V1.Standard;
with MAVLink.V1.Standard.Message.Global_Position_Ints;
with MAVLink.V1.Standard.Message.Autopilot_Versions;
with MAVLink.V1.Minimal;
with MAVLink.V1.Minimal.Message.Heartbeats;

with Ada.Text_IO;
with Interfaces;              use Interfaces;
with MAVLink.Raw_Long_Floats;      use MAVLink.Raw_Long_Floats;

use MAVLink.V1;

procedure Test
is
   In_Connect  : MAVLink.V1.Connection (1, 1);
   Out_Connect : MAVLink.V1.Out_Connection (1, 1);
   Res         : Boolean;
   Buffer      : Data_Buffer (1 .. MAVLink.V1.Maximum_Buffer_Len);
   Last        : Positive;

begin
   declare
      use MAVLink.V1.Common.Message.Sys_Statuses;
      I : Sys_Status;
      O : Sys_Status :=
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
      use MAVLink.V1.Common.Message.System_Times;
      I : System_Time;
      O : System_Time :=
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
      use MAVLink.V1.Common.Message.Pings;
      I : Ping;
      O : Ping :=
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
      use MAVLink.V1.Common.Message.Change_Operator_Controls;
      I : Change_Operator_Control;
      O : Change_Operator_Control :=
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
      use MAVLink.V1.Common.Message.Change_Operator_Control_Acks;
      I : Change_Operator_Control_Ack;
      O : Change_Operator_Control_Ack :=
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
      use MAVLink.V1.Common.Message.Auth_Keys;
      I : Auth_Key;
      O : Auth_Key :=
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
      use MAVLink.V1.Common.Message.Link_Node_Statuses;
      I : Link_Node_Status;
      O : Link_Node_Status :=
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
      use MAVLink.V1.Common.Message.Set_Modes;
      I : Set_Mode;
      O : Set_Mode :=
         (Target_System => 1,
          Base_Mode => MAVLink.V1.Common.Mav_Mode'First,
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
      use MAVLink.V1.Common.Message.Param_Request_Reads;
      I : Param_Request_Read;
      O : Param_Request_Read :=
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
      use MAVLink.V1.Common.Message.Param_Request_Lists;
      I : Param_Request_List;
      O : Param_Request_List :=
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
      use MAVLink.V1.Common.Message.Param_Values;
      I : Param_Value;
      O : Param_Value :=
         (Param_Id => [others => 'A'],
          Param_Value => 9.9,
          Param_Type => MAVLink.V1.Common.Mav_Param_Type'First,
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
      use MAVLink.V1.Common.Message.Param_Sets;
      I : Param_Set;
      O : Param_Set :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Value => 9.9,
          Param_Type => MAVLink.V1.Common.Mav_Param_Type'First);
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
      use MAVLink.V1.Common.Message.Gps_Raw_Ints;
      I : Gps_Raw_Int;
      O : Gps_Raw_Int :=
         (Time_Usec => 4,
          Fix_Type => MAVLink.V1.Common.Gps_Fix_Type'First,
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
      use MAVLink.V1.Common.Message.Gps_Statuses;
      I : Gps_Status;
      O : Gps_Status :=
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
      use MAVLink.V1.Common.Message.Scaled_Imus;
      I : Scaled_Imu;
      O : Scaled_Imu :=
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
      use MAVLink.V1.Common.Message.Raw_Imus;
      I : Raw_Imu;
      O : Raw_Imu :=
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
      use MAVLink.V1.Common.Message.Raw_Pressures;
      I : Raw_Pressure;
      O : Raw_Pressure :=
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
      use MAVLink.V1.Common.Message.Scaled_Pressures;
      I : Scaled_Pressure;
      O : Scaled_Pressure :=
         (Time_Boot_Ms => 3,
          Press_Abs => 9.9,
          Press_Diff => 9.9,
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
      use MAVLink.V1.Common.Message.Attitudes;
      I : Attitude;
      O : Attitude :=
         (Time_Boot_Ms => 3,
          Roll => 9.9,
          Pitch => 9.9,
          Yaw => 9.9,
          Rollspeed => 9.9,
          Pitchspeed => 9.9,
          Yawspeed => 9.9);
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
      use MAVLink.V1.Common.Message.Attitude_Quaternions;
      I : Attitude_Quaternion;
      O : Attitude_Quaternion :=
         (Time_Boot_Ms => 3,
          Q1 => 9.9,
          Q2 => 9.9,
          Q3 => 9.9,
          Q4 => 9.9,
          Rollspeed => 9.9,
          Pitchspeed => 9.9,
          Yawspeed => 9.9);
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
      use MAVLink.V1.Common.Message.Local_Position_Neds;
      I : Local_Position_Ned;
      O : Local_Position_Ned :=
         (Time_Boot_Ms => 3,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Vx => 9.9,
          Vy => 9.9,
          Vz => 9.9);
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
      use MAVLink.V1.Common.Message.Rc_Channels_Scaleds;
      I : Rc_Channels_Scaled;
      O : Rc_Channels_Scaled :=
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
      use MAVLink.V1.Common.Message.Rc_Channels_Raws;
      I : Rc_Channels_Raw;
      O : Rc_Channels_Raw :=
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
      use MAVLink.V1.Common.Message.Servo_Output_Raws;
      I : Servo_Output_Raw;
      O : Servo_Output_Raw :=
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
      use MAVLink.V1.Common.Message.Mission_Request_Partial_Lists;
      I : Mission_Request_Partial_List;
      O : Mission_Request_Partial_List :=
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
      use MAVLink.V1.Common.Message.Mission_Write_Partial_Lists;
      I : Mission_Write_Partial_List;
      O : Mission_Write_Partial_List :=
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
      use MAVLink.V1.Common.Message.Mission_Items;
      I : Mission_Item;
      O : Mission_Item :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2,
          Frame => MAVLink.V1.Common.Mav_Frame'First,
          Command => MAVLink.V1.Common.Mav_Cmd'First,
          Current => 1,
          Autocontinue => 1,
          Param1 => 9.9,
          Param2 => 9.9,
          Param3 => 9.9,
          Param4 => 9.9,
          X => 9.9,
          Y => 9.9,
          Z => 9.9);
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
      use MAVLink.V1.Common.Message.Mission_Requests;
      I : Mission_Request;
      O : Mission_Request :=
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
      use MAVLink.V1.Common.Message.Mission_Set_Currents;
      I : Mission_Set_Current;
      O : Mission_Set_Current :=
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
      use MAVLink.V1.Common.Message.Mission_Currents;
      I : Mission_Current;
      O : Mission_Current :=
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
      use MAVLink.V1.Common.Message.Mission_Request_Lists;
      I : Mission_Request_List;
      O : Mission_Request_List :=
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
      use MAVLink.V1.Common.Message.Mission_Counts;
      I : Mission_Count;
      O : Mission_Count :=
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
      use MAVLink.V1.Common.Message.Mission_Clear_Alls;
      I : Mission_Clear_All;
      O : Mission_Clear_All :=
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
      use MAVLink.V1.Common.Message.Mission_Item_Reacheds;
      I : Mission_Item_Reached;
      O : Mission_Item_Reached :=
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
      use MAVLink.V1.Common.Message.Mission_Acks;
      I : Mission_Ack;
      O : Mission_Ack :=
         (Target_System => 1,
          Target_Component => 1,
          Type_Field => MAVLink.V1.Common.Mav_Mission_Result'First);
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
      use MAVLink.V1.Common.Message.Set_Gps_Global_Origins;
      I : Set_Gps_Global_Origin;
      O : Set_Gps_Global_Origin :=
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
      use MAVLink.V1.Common.Message.Gps_Global_Origins;
      I : Gps_Global_Origin;
      O : Gps_Global_Origin :=
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
      use MAVLink.V1.Common.Message.Param_Map_Rcs;
      I : Param_Map_Rc;
      O : Param_Map_Rc :=
         (Target_System => 1,
          Target_Component => 1,
          Param_Id => [others => 'A'],
          Param_Index => 6,
          Parameter_Rc_Channel_Index => 1,
          Param_Value0 => 9.9,
          Scale => 9.9,
          Param_Value_Min => 9.9,
          Param_Value_Max => 9.9);
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
      use MAVLink.V1.Common.Message.Mission_Request_Ints;
      I : Mission_Request_Int;
      O : Mission_Request_Int :=
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
      use MAVLink.V1.Common.Message.Safety_Set_Allowed_Areas;
      I : Safety_Set_Allowed_Area;
      O : Safety_Set_Allowed_Area :=
         (Target_System => 1,
          Target_Component => 1,
          Frame => MAVLink.V1.Common.Mav_Frame'First,
          P1X => 9.9,
          P1Y => 9.9,
          P1Z => 9.9,
          P2X => 9.9,
          P2Y => 9.9,
          P2Z => 9.9);
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
      use MAVLink.V1.Common.Message.Safety_Allowed_Areas;
      I : Safety_Allowed_Area;
      O : Safety_Allowed_Area :=
         (Frame => MAVLink.V1.Common.Mav_Frame'First,
          P1X => 9.9,
          P1Y => 9.9,
          P1Z => 9.9,
          P2X => 9.9,
          P2Y => 9.9,
          P2Z => 9.9);
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
      use MAVLink.V1.Common.Message.Attitude_Quaternion_Covs;
      I : Attitude_Quaternion_Cov;
      O : Attitude_Quaternion_Cov :=
         (Time_Usec => 4,
          Q => [others => 9.9],
          Rollspeed => 9.9,
          Pitchspeed => 9.9,
          Yawspeed => 9.9,
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
      use MAVLink.V1.Common.Message.Nav_Controller_Outputs;
      I : Nav_Controller_Output;
      O : Nav_Controller_Output :=
         (Nav_Roll => 9.9,
          Nav_Pitch => 9.9,
          Nav_Bearing => 6,
          Target_Bearing => 6,
          Wp_Dist => 2,
          Alt_Error => 9.9,
          Aspd_Error => 9.9,
          Xtrack_Error => 9.9);
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
      use MAVLink.V1.Common.Message.Global_Position_Int_Covs;
      I : Global_Position_Int_Cov;
      O : Global_Position_Int_Cov :=
         (Time_Usec => 4,
          Estimator_Type => MAVLink.V1.Common.Mav_Estimator_Type'First,
          Lat => 7,
          Lon => 7,
          Alt => 7,
          Relative_Alt => 7,
          Vx => 9.9,
          Vy => 9.9,
          Vz => 9.9,
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
      use MAVLink.V1.Common.Message.Local_Position_Ned_Covs;
      I : Local_Position_Ned_Cov;
      O : Local_Position_Ned_Cov :=
         (Time_Usec => 4,
          Estimator_Type => MAVLink.V1.Common.Mav_Estimator_Type'First,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Vx => 9.9,
          Vy => 9.9,
          Vz => 9.9,
          Ax => 9.9,
          Ay => 9.9,
          Az => 9.9,
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
      use MAVLink.V1.Common.Message.Rc_Channelses;
      I : Rc_Channels;
      O : Rc_Channels :=
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
      use MAVLink.V1.Common.Message.Request_Data_Streams;
      I : Request_Data_Stream;
      O : Request_Data_Stream :=
         (Target_System => 1,
          Target_Component => 1,
          Req_Stream_Id => 1,
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
      use MAVLink.V1.Common.Message.Data_Streams;
      I : Data_Stream;
      O : Data_Stream :=
         (Stream_Id => 1,
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
      use MAVLink.V1.Common.Message.Manual_Controls;
      I : Manual_Control;
      O : Manual_Control :=
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
      use MAVLink.V1.Common.Message.Rc_Channels_Overrides;
      I : Rc_Channels_Override;
      O : Rc_Channels_Override :=
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
      use MAVLink.V1.Common.Message.Mission_Item_Ints;
      I : Mission_Item_Int;
      O : Mission_Item_Int :=
         (Target_System => 1,
          Target_Component => 1,
          Seq => 2,
          Frame => MAVLink.V1.Common.Mav_Frame'First,
          Command => MAVLink.V1.Common.Mav_Cmd'First,
          Current => 1,
          Autocontinue => 1,
          Param1 => 9.9,
          Param2 => 9.9,
          Param3 => 9.9,
          Param4 => 9.9,
          X => 7,
          Y => 7,
          Z => 9.9);
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
      use MAVLink.V1.Common.Message.Vfr_Huds;
      I : Vfr_Hud;
      O : Vfr_Hud :=
         (Airspeed => 9.9,
          Groundspeed => 9.9,
          Heading => 6,
          Throttle => 2,
          Alt => 9.9,
          Climb => 9.9);
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
      use MAVLink.V1.Common.Message.Command_Ints;
      I : Command_Int;
      O : Command_Int :=
         (Target_System => 1,
          Target_Component => 1,
          Frame => MAVLink.V1.Common.Mav_Frame'First,
          Command => MAVLink.V1.Common.Mav_Cmd'First,
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
      use MAVLink.V1.Common.Message.Command_Longs;
      I : Command_Long;
      O : Command_Long :=
         (Target_System => 1,
          Target_Component => 1,
          Command => MAVLink.V1.Common.Mav_Cmd'First,
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
      use MAVLink.V1.Common.Message.Command_Acks;
      I : Command_Ack;
      O : Command_Ack :=
         (Command => MAVLink.V1.Common.Mav_Cmd'First,
          Result => MAVLink.V1.Common.Mav_Result'First);
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
      use MAVLink.V1.Common.Message.Command_Cancels;
      I : Command_Cancel;
      O : Command_Cancel :=
         (Target_System => 1,
          Target_Component => 1,
          Command => MAVLink.V1.Common.Mav_Cmd'First);
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
      use MAVLink.V1.Common.Message.Manual_Setpoints;
      I : Manual_Setpoint;
      O : Manual_Setpoint :=
         (Time_Boot_Ms => 3,
          Roll => 9.9,
          Pitch => 9.9,
          Yaw => 9.9,
          Thrust => 9.9,
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
      use MAVLink.V1.Common.Message.Set_Attitude_Targets;
      I : Set_Attitude_Target;
      O : Set_Attitude_Target :=
         (Time_Boot_Ms => 3,
          Target_System => 1,
          Target_Component => 1,
          Type_Mask => <>,
          Q => [others => 9.9],
          Body_Roll_Rate => 9.9,
          Body_Pitch_Rate => 9.9,
          Body_Yaw_Rate => 9.9,
          Thrust => 9.9);
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
      use MAVLink.V1.Common.Message.Attitude_Targets;
      I : Attitude_Target;
      O : Attitude_Target :=
         (Time_Boot_Ms => 3,
          Type_Mask => <>,
          Q => [others => 9.9],
          Body_Roll_Rate => 9.9,
          Body_Pitch_Rate => 9.9,
          Body_Yaw_Rate => 9.9,
          Thrust => 9.9);
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
      use MAVLink.V1.Common.Message.Set_Position_Target_Local_Neds;
      I : Set_Position_Target_Local_Ned;
      O : Set_Position_Target_Local_Ned :=
         (Time_Boot_Ms => 3,
          Target_System => 1,
          Target_Component => 1,
          Coordinate_Frame => MAVLink.V1.Common.Mav_Frame'First,
          Type_Mask => <>,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Vx => 9.9,
          Vy => 9.9,
          Vz => 9.9,
          Afx => 9.9,
          Afy => 9.9,
          Afz => 9.9,
          Yaw => 9.9,
          Yaw_Rate => 9.9);
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
      use MAVLink.V1.Common.Message.Position_Target_Local_Neds;
      I : Position_Target_Local_Ned;
      O : Position_Target_Local_Ned :=
         (Time_Boot_Ms => 3,
          Coordinate_Frame => MAVLink.V1.Common.Mav_Frame'First,
          Type_Mask => <>,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Vx => 9.9,
          Vy => 9.9,
          Vz => 9.9,
          Afx => 9.9,
          Afy => 9.9,
          Afz => 9.9,
          Yaw => 9.9,
          Yaw_Rate => 9.9);
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
      use MAVLink.V1.Common.Message.Set_Position_Target_Global_Ints;
      I : Set_Position_Target_Global_Int;
      O : Set_Position_Target_Global_Int :=
         (Time_Boot_Ms => 3,
          Target_System => 1,
          Target_Component => 1,
          Coordinate_Frame => MAVLink.V1.Common.Mav_Frame'First,
          Type_Mask => <>,
          Lat_Int => 7,
          Lon_Int => 7,
          Alt => 9.9,
          Vx => 9.9,
          Vy => 9.9,
          Vz => 9.9,
          Afx => 9.9,
          Afy => 9.9,
          Afz => 9.9,
          Yaw => 9.9,
          Yaw_Rate => 9.9);
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
      use MAVLink.V1.Common.Message.Position_Target_Global_Ints;
      I : Position_Target_Global_Int;
      O : Position_Target_Global_Int :=
         (Time_Boot_Ms => 3,
          Coordinate_Frame => MAVLink.V1.Common.Mav_Frame'First,
          Type_Mask => <>,
          Lat_Int => 7,
          Lon_Int => 7,
          Alt => 9.9,
          Vx => 9.9,
          Vy => 9.9,
          Vz => 9.9,
          Afx => 9.9,
          Afy => 9.9,
          Afz => 9.9,
          Yaw => 9.9,
          Yaw_Rate => 9.9);
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
      use MAVLink.V1.Common.Message.Local_Position_Ned_System_Global_Offsets;
      I : Local_Position_Ned_System_Global_Offset;
      O : Local_Position_Ned_System_Global_Offset :=
         (Time_Boot_Ms => 3,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Roll => 9.9,
          Pitch => 9.9,
          Yaw => 9.9);
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
      use MAVLink.V1.Common.Message.Hil_States;
      I : Hil_State;
      O : Hil_State :=
         (Time_Usec => 4,
          Roll => 9.9,
          Pitch => 9.9,
          Yaw => 9.9,
          Rollspeed => 9.9,
          Pitchspeed => 9.9,
          Yawspeed => 9.9,
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
      use MAVLink.V1.Common.Message.Hil_Controlses;
      I : Hil_Controls;
      O : Hil_Controls :=
         (Time_Usec => 4,
          Roll_Ailerons => 9.9,
          Pitch_Elevator => 9.9,
          Yaw_Rudder => 9.9,
          Throttle => 9.9,
          Aux1 => 9.9,
          Aux2 => 9.9,
          Aux3 => 9.9,
          Aux4 => 9.9,
          Mode => MAVLink.V1.Common.Mav_Mode'First,
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
      use MAVLink.V1.Common.Message.Hil_Rc_Inputs_Raws;
      I : Hil_Rc_Inputs_Raw;
      O : Hil_Rc_Inputs_Raw :=
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
      use MAVLink.V1.Common.Message.Hil_Actuator_Controlses;
      I : Hil_Actuator_Controls;
      O : Hil_Actuator_Controls :=
         (Time_Usec => 4,
          Controls => [others => 9.9],
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
      use MAVLink.V1.Common.Message.Optical_Flows;
      I : Optical_Flow;
      O : Optical_Flow :=
         (Time_Usec => 4,
          Sensor_Id => 1,
          Flow_X => 6,
          Flow_Y => 6,
          Flow_Comp_M_X => 9.9,
          Flow_Comp_M_Y => 9.9,
          Quality => 1,
          Ground_Distance => 9.9);
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
      use MAVLink.V1.Common.Message.Global_Vision_Position_Estimates;
      I : Global_Vision_Position_Estimate;
      O : Global_Vision_Position_Estimate :=
         (Usec => 4,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Roll => 9.9,
          Pitch => 9.9,
          Yaw => 9.9);
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
      use MAVLink.V1.Common.Message.Vision_Position_Estimates;
      I : Vision_Position_Estimate;
      O : Vision_Position_Estimate :=
         (Usec => 4,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Roll => 9.9,
          Pitch => 9.9,
          Yaw => 9.9);
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
      use MAVLink.V1.Common.Message.Vision_Speed_Estimates;
      I : Vision_Speed_Estimate;
      O : Vision_Speed_Estimate :=
         (Usec => 4,
          X => 9.9,
          Y => 9.9,
          Z => 9.9);
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
      use MAVLink.V1.Common.Message.Vicon_Position_Estimates;
      I : Vicon_Position_Estimate;
      O : Vicon_Position_Estimate :=
         (Usec => 4,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Roll => 9.9,
          Pitch => 9.9,
          Yaw => 9.9);
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
      use MAVLink.V1.Common.Message.Highres_Imus;
      I : Highres_Imu;
      O : Highres_Imu :=
         (Time_Usec => 4,
          Xacc => 9.9,
          Yacc => 9.9,
          Zacc => 9.9,
          Xgyro => 9.9,
          Ygyro => 9.9,
          Zgyro => 9.9,
          Xmag => 9.9,
          Ymag => 9.9,
          Zmag => 9.9,
          Abs_Pressure => 9.9,
          Diff_Pressure => 9.9,
          Pressure_Alt => 9.9,
          Temperature => 9.9,
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
      use MAVLink.V1.Common.Message.Optical_Flow_Rads;
      I : Optical_Flow_Rad;
      O : Optical_Flow_Rad :=
         (Time_Usec => 4,
          Sensor_Id => 1,
          Integration_Time_Us => 3,
          Integrated_X => 9.9,
          Integrated_Y => 9.9,
          Integrated_Xgyro => 9.9,
          Integrated_Ygyro => 9.9,
          Integrated_Zgyro => 9.9,
          Temperature => 6,
          Quality => 1,
          Time_Delta_Distance_Us => 3,
          Distance => 9.9);
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
      use MAVLink.V1.Common.Message.Hil_Sensors;
      I : Hil_Sensor;
      O : Hil_Sensor :=
         (Time_Usec => 4,
          Xacc => 9.9,
          Yacc => 9.9,
          Zacc => 9.9,
          Xgyro => 9.9,
          Ygyro => 9.9,
          Zgyro => 9.9,
          Xmag => 9.9,
          Ymag => 9.9,
          Zmag => 9.9,
          Abs_Pressure => 9.9,
          Diff_Pressure => 9.9,
          Pressure_Alt => 9.9,
          Temperature => 9.9,
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
      use MAVLink.V1.Common.Message.Sim_States;
      I : Sim_State;
      O : Sim_State :=
         (Q1 => 9.9,
          Q2 => 9.9,
          Q3 => 9.9,
          Q4 => 9.9,
          Roll => 9.9,
          Pitch => 9.9,
          Yaw => 9.9,
          Xacc => 9.9,
          Yacc => 9.9,
          Zacc => 9.9,
          Xgyro => 9.9,
          Ygyro => 9.9,
          Zgyro => 9.9,
          Lat => 9.9,
          Lon => 9.9,
          Alt => 9.9,
          Std_Dev_Horz => 9.9,
          Std_Dev_Vert => 9.9,
          Vn => 9.9,
          Ve => 9.9,
          Vd => 9.9);
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
      use MAVLink.V1.Common.Message.Radio_Statuses;
      I : Radio_Status;
      O : Radio_Status :=
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
      use MAVLink.V1.Common.Message.File_Transfer_Protocols;
      I : File_Transfer_Protocol;
      O : File_Transfer_Protocol :=
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
      use MAVLink.V1.Common.Message.Timesyncs;
      I : Timesync;
      O : Timesync :=
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
      use MAVLink.V1.Common.Message.Camera_Triggers;
      I : Camera_Trigger;
      O : Camera_Trigger :=
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
      use MAVLink.V1.Common.Message.Hil_Gpses;
      I : Hil_Gps;
      O : Hil_Gps :=
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
      use MAVLink.V1.Common.Message.Hil_Optical_Flows;
      I : Hil_Optical_Flow;
      O : Hil_Optical_Flow :=
         (Time_Usec => 4,
          Sensor_Id => 1,
          Integration_Time_Us => 3,
          Integrated_X => 9.9,
          Integrated_Y => 9.9,
          Integrated_Xgyro => 9.9,
          Integrated_Ygyro => 9.9,
          Integrated_Zgyro => 9.9,
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
      use MAVLink.V1.Common.Message.Hil_State_Quaternions;
      I : Hil_State_Quaternion;
      O : Hil_State_Quaternion :=
         (Time_Usec => 4,
          Attitude_Quaternion => [others => 9.9],
          Rollspeed => 9.9,
          Pitchspeed => 9.9,
          Yawspeed => 9.9,
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
      use MAVLink.V1.Common.Message.Scaled_Imu2s;
      I : Scaled_Imu2;
      O : Scaled_Imu2 :=
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
      use MAVLink.V1.Common.Message.Log_Request_Lists;
      I : Log_Request_List;
      O : Log_Request_List :=
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
      use MAVLink.V1.Common.Message.Log_Entrys;
      I : Log_Entry;
      O : Log_Entry :=
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
      use MAVLink.V1.Common.Message.Log_Request_Datas;
      I : Log_Request_Data;
      O : Log_Request_Data :=
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
      use MAVLink.V1.Common.Message.Log_Datas;
      I : Log_Data;
      O : Log_Data :=
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
      use MAVLink.V1.Common.Message.Log_Erases;
      I : Log_Erase;
      O : Log_Erase :=
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
      use MAVLink.V1.Common.Message.Log_Request_Ends;
      I : Log_Request_End;
      O : Log_Request_End :=
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
      use MAVLink.V1.Common.Message.Gps_Inject_Datas;
      I : Gps_Inject_Data;
      O : Gps_Inject_Data :=
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
      use MAVLink.V1.Common.Message.Gps2_Raws;
      I : Gps2_Raw;
      O : Gps2_Raw :=
         (Time_Usec => 4,
          Fix_Type => MAVLink.V1.Common.Gps_Fix_Type'First,
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
      use MAVLink.V1.Common.Message.Power_Statuses;
      I : Power_Status;
      O : Power_Status :=
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
      use MAVLink.V1.Common.Message.Serial_Controls;
      I : Serial_Control;
      O : Serial_Control :=
         (Device => MAVLink.V1.Common.Serial_Control_Dev'First,
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
      use MAVLink.V1.Common.Message.Gps_Rtks;
      I : Gps_Rtk;
      O : Gps_Rtk :=
         (Time_Last_Baseline_Ms => 3,
          Rtk_Receiver_Id => 1,
          Wn => 2,
          Tow => 3,
          Rtk_Health => 1,
          Rtk_Rate => 1,
          Nsats => 1,
          Baseline_Coords_Type => MAVLink.V1.Common.Rtk_Baseline_Coordinate_System'First,
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
      use MAVLink.V1.Common.Message.Gps2_Rtks;
      I : Gps2_Rtk;
      O : Gps2_Rtk :=
         (Time_Last_Baseline_Ms => 3,
          Rtk_Receiver_Id => 1,
          Wn => 2,
          Tow => 3,
          Rtk_Health => 1,
          Rtk_Rate => 1,
          Nsats => 1,
          Baseline_Coords_Type => MAVLink.V1.Common.Rtk_Baseline_Coordinate_System'First,
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
      use MAVLink.V1.Common.Message.Scaled_Imu3s;
      I : Scaled_Imu3;
      O : Scaled_Imu3 :=
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
      use MAVLink.V1.Common.Message.Data_Transmission_Handshakes;
      I : Data_Transmission_Handshake;
      O : Data_Transmission_Handshake :=
         (Type_Field => MAVLink.V1.Common.Mavlink_Data_Stream_Type'First,
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
      use MAVLink.V1.Common.Message.Encapsulated_Datas;
      I : Encapsulated_Data;
      O : Encapsulated_Data :=
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
      use MAVLink.V1.Common.Message.Distance_Sensors;
      I : Distance_Sensor;
      O : Distance_Sensor :=
         (Time_Boot_Ms => 3,
          Min_Distance => 2,
          Max_Distance => 2,
          Current_Distance => 2,
          Type_Field => MAVLink.V1.Common.Mav_Distance_Sensor'First,
          Id => 1,
          Orientation => MAVLink.V1.Common.Mav_Sensor_Orientation'First,
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
      use MAVLink.V1.Common.Message.Terrain_Requests;
      I : Terrain_Request;
      O : Terrain_Request :=
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
      use MAVLink.V1.Common.Message.Terrain_Datas;
      I : Terrain_Data;
      O : Terrain_Data :=
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
      use MAVLink.V1.Common.Message.Terrain_Checks;
      I : Terrain_Check;
      O : Terrain_Check :=
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
      use MAVLink.V1.Common.Message.Terrain_Reports;
      I : Terrain_Report;
      O : Terrain_Report :=
         (Lat => 7,
          Lon => 7,
          Spacing => 2,
          Terrain_Height => 9.9,
          Current_Height => 9.9,
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
      use MAVLink.V1.Common.Message.Scaled_Pressure2s;
      I : Scaled_Pressure2;
      O : Scaled_Pressure2 :=
         (Time_Boot_Ms => 3,
          Press_Abs => 9.9,
          Press_Diff => 9.9,
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
      use MAVLink.V1.Common.Message.Att_Pos_Mocaps;
      I : Att_Pos_Mocap;
      O : Att_Pos_Mocap :=
         (Time_Usec => 4,
          Q => [others => 9.9],
          X => 9.9,
          Y => 9.9,
          Z => 9.9);
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
      use MAVLink.V1.Common.Message.Set_Actuator_Control_Targets;
      I : Set_Actuator_Control_Target;
      O : Set_Actuator_Control_Target :=
         (Time_Usec => 4,
          Group_Mlx => 1,
          Target_System => 1,
          Target_Component => 1,
          Controls => [others => 9.9]);
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
      use MAVLink.V1.Common.Message.Actuator_Control_Targets;
      I : Actuator_Control_Target;
      O : Actuator_Control_Target :=
         (Time_Usec => 4,
          Group_Mlx => 1,
          Controls => [others => 9.9]);
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
      use MAVLink.V1.Common.Message.Altitudes;
      I : Altitude;
      O : Altitude :=
         (Time_Usec => 4,
          Altitude_Monotonic => 9.9,
          Altitude_Amsl => 9.9,
          Altitude_Local => 9.9,
          Altitude_Relative => 9.9,
          Altitude_Terrain => 9.9,
          Bottom_Clearance => 9.9);
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
      use MAVLink.V1.Common.Message.Resource_Requests;
      I : Resource_Request;
      O : Resource_Request :=
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
      use MAVLink.V1.Common.Message.Scaled_Pressure3s;
      I : Scaled_Pressure3;
      O : Scaled_Pressure3 :=
         (Time_Boot_Ms => 3,
          Press_Abs => 9.9,
          Press_Diff => 9.9,
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
      use MAVLink.V1.Common.Message.Follow_Targets;
      I : Follow_Target;
      O : Follow_Target :=
         (Timestamp => 4,
          Est_Capabilities => 1,
          Lat => 7,
          Lon => 7,
          Alt => 9.9,
          Vel => <>,
          Acc => <>,
          Attitude_Q => <>,
          Rates => <>,
          Position_Cov => [others => 9.9],
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
      use MAVLink.V1.Common.Message.Control_System_States;
      I : Control_System_State;
      O : Control_System_State :=
         (Time_Usec => 4,
          X_Acc => 9.9,
          Y_Acc => 9.9,
          Z_Acc => 9.9,
          X_Vel => 9.9,
          Y_Vel => 9.9,
          Z_Vel => 9.9,
          X_Pos => 9.9,
          Y_Pos => 9.9,
          Z_Pos => 9.9,
          Airspeed => <>,
          Vel_Variance => [others => 9.9],
          Pos_Variance => [others => 9.9],
          Q => [others => 9.9],
          Roll_Rate => 9.9,
          Pitch_Rate => 9.9,
          Yaw_Rate => 9.9);
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
      use MAVLink.V1.Common.Message.Battery_Statuses;
      I : Battery_Status;
      O : Battery_Status :=
         (Id => 1,
          Battery_Function => MAVLink.V1.Common.Mav_Battery_Function'First,
          Type_Field => MAVLink.V1.Common.Mav_Battery_Type'First,
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
      use MAVLink.V1.Common.Message.Landing_Targets;
      I : Landing_Target;
      O : Landing_Target :=
         (Time_Usec => 4,
          Target_Num => 1,
          Frame => MAVLink.V1.Common.Mav_Frame'First,
          Angle_X => 9.9,
          Angle_Y => 9.9,
          Distance => 9.9,
          Size_X => 9.9,
          Size_Y => 9.9);
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
      use MAVLink.V1.Common.Message.Fence_Statuses;
      I : Fence_Status;
      O : Fence_Status :=
         (Breach_Status => 1,
          Breach_Count => 2,
          Breach_Type => MAVLink.V1.Common.Fence_Breach'First,
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
      use MAVLink.V1.Common.Message.Mag_Cal_Reports;
      I : Mag_Cal_Report;
      O : Mag_Cal_Report :=
         (Compass_Id => 1,
          Cal_Mask => 1,
          Cal_Status => MAVLink.V1.Common.Mag_Cal_Status'First,
          Autosaved => 1,
          Fitness => 9.9,
          Ofs_X => 9.9,
          Ofs_Y => 9.9,
          Ofs_Z => 9.9,
          Diag_X => 9.9,
          Diag_Y => 9.9,
          Diag_Z => 9.9,
          Offdiag_X => 9.9,
          Offdiag_Y => 9.9,
          Offdiag_Z => 9.9);
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
      use MAVLink.V1.Common.Message.Efi_Statuses;
      I : Efi_Status;
      O : Efi_Status :=
         (Health => 1,
          Ecu_Index => 9.9,
          Rpm => 9.9,
          Fuel_Consumed => 9.9,
          Fuel_Flow => 9.9,
          Engine_Load => 9.9,
          Throttle_Position => 9.9,
          Spark_Dwell_Time => 9.9,
          Barometric_Pressure => 9.9,
          Intake_Manifold_Pressure => 9.9,
          Intake_Manifold_Temperature => 9.9,
          Cylinder_Head_Temperature => 9.9,
          Ignition_Timing => 9.9,
          Injection_Time => 9.9,
          Exhaust_Gas_Temperature => 9.9,
          Throttle_Out => 9.9,
          Pt_Compensation => 9.9);
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
      use MAVLink.V1.Common.Message.Estimator_Statuses;
      I : Estimator_Status;
      O : Estimator_Status :=
         (Time_Usec => 4,
          Flags => <>,
          Vel_Ratio => 9.9,
          Pos_Horiz_Ratio => 9.9,
          Pos_Vert_Ratio => 9.9,
          Mag_Ratio => 9.9,
          Hagl_Ratio => 9.9,
          Tas_Ratio => 9.9,
          Pos_Horiz_Accuracy => 9.9,
          Pos_Vert_Accuracy => 9.9);
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
      use MAVLink.V1.Common.Message.Wind_Covs;
      I : Wind_Cov;
      O : Wind_Cov :=
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
      use MAVLink.V1.Common.Message.Gps_Inputs;
      I : Gps_Input;
      O : Gps_Input :=
         (Time_Usec => 4,
          Gps_Id => 1,
          Ignore_Flags => <>,
          Time_Week_Ms => 3,
          Time_Week => 2,
          Fix_Type => 1,
          Lat => 7,
          Lon => 7,
          Alt => 9.9,
          Hdop => <>,
          Vdop => <>,
          Vn => 9.9,
          Ve => 9.9,
          Vd => 9.9,
          Speed_Accuracy => 9.9,
          Horiz_Accuracy => 9.9,
          Vert_Accuracy => 9.9,
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
      use MAVLink.V1.Common.Message.Gps_Rtcm_Datas;
      I : Gps_Rtcm_Data;
      O : Gps_Rtcm_Data :=
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
      use MAVLink.V1.Common.Message.High_Latencys;
      I : High_Latency;
      O : High_Latency :=
         (Base_Mode => <>,
          Custom_Mode => 3,
          Landed_State => MAVLink.V1.Common.Mav_Landed_State'First,
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
          Gps_Fix_Type => MAVLink.V1.Common.Gps_Fix_Type'First,
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
      use MAVLink.V1.Common.Message.High_Latency2s;
      I : High_Latency2;
      O : High_Latency2 :=
         (Timestamp => 3,
          Type_Field => MAVLink.V1.Minimal.Mav_Type'First,
          Autopilot => MAVLink.V1.Minimal.Mav_Autopilot'First,
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
      use MAVLink.V1.Common.Message.Vibrations;
      I : Vibration;
      O : Vibration :=
         (Time_Usec => 4,
          Vibration_X => 9.9,
          Vibration_Y => 9.9,
          Vibration_Z => 9.9,
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
      use MAVLink.V1.Common.Message.Home_Positions;
      I : Home_Position;
      O : Home_Position :=
         (Latitude => 7,
          Longitude => 7,
          Altitude => 7,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Q => <>,
          Approach_X => 9.9,
          Approach_Y => 9.9,
          Approach_Z => 9.9);
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
      use MAVLink.V1.Common.Message.Set_Home_Positions;
      I : Set_Home_Position;
      O : Set_Home_Position :=
         (Target_System => 1,
          Latitude => 7,
          Longitude => 7,
          Altitude => 7,
          X => 9.9,
          Y => 9.9,
          Z => 9.9,
          Q => [others => 9.9],
          Approach_X => 9.9,
          Approach_Y => 9.9,
          Approach_Z => 9.9);
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
      use MAVLink.V1.Common.Message.Message_Intervals;
      I : Message_Interval;
      O : Message_Interval :=
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
      use MAVLink.V1.Common.Message.Extended_Sys_States;
      I : Extended_Sys_State;
      O : Extended_Sys_State :=
         (Vtol_State => MAVLink.V1.Common.Mav_Vtol_State'First,
          Landed_State => MAVLink.V1.Common.Mav_Landed_State'First);
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
      use MAVLink.V1.Common.Message.Adsb_Vehicles;
      I : Adsb_Vehicle;
      O : Adsb_Vehicle :=
         (Icao_Address => 3,
          Lat => 7,
          Lon => 7,
          Altitude_Type => MAVLink.V1.Common.Adsb_Altitude_Type'First,
          Altitude => 7,
          Heading => 2,
          Hor_Velocity => 2,
          Ver_Velocity => 6,
          Callsign => [others => 'A'],
          Emitter_Type => MAVLink.V1.Common.Adsb_Emitter_Type'First,
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
      use MAVLink.V1.Common.Message.Collisions;
      I : Collision;
      O : Collision :=
         (Src => MAVLink.V1.Common.Mav_Collision_Src'First,
          Id => 3,
          Action => MAVLink.V1.Common.Mav_Collision_Action'First,
          Threat_Level => MAVLink.V1.Common.Mav_Collision_Threat_Level'First,
          Time_To_Minimum_Delta => 9.9,
          Altitude_Minimum_Delta => 9.9,
          Horizontal_Minimum_Delta => 9.9);
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
      use MAVLink.V1.Common.Message.V2_Extensions;
      I : V2_Extension;
      O : V2_Extension :=
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
      use MAVLink.V1.Common.Message.Memory_Vects;
      I : Memory_Vect;
      O : Memory_Vect :=
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
      use MAVLink.V1.Common.Message.Debug_Vects;
      I : Debug_Vect;
      O : Debug_Vect :=
         (Name => [others => 'A'],
          Time_Usec => 4,
          X => 9.9,
          Y => 9.9,
          Z => 9.9);
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
      use MAVLink.V1.Common.Message.Named_Value_Floats;
      I : Named_Value_Float;
      O : Named_Value_Float :=
         (Time_Boot_Ms => 3,
          Name => [others => 'A'],
          Value => 9.9);
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
      use MAVLink.V1.Common.Message.Named_Value_Ints;
      I : Named_Value_Int;
      O : Named_Value_Int :=
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
      use MAVLink.V1.Common.Message.Statustexts;
      I : Statustext;
      O : Statustext :=
         (Severity => MAVLink.V1.Common.Mav_Severity'First,
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
      use MAVLink.V1.Common.Message.Debugs;
      I : Debug;
      O : Debug :=
         (Time_Boot_Ms => 3,
          Ind => 1,
          Value => 9.9);
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
      use MAVLink.V1.Standard.Message.Global_Position_Ints;
      I : Global_Position_Int;
      O : Global_Position_Int :=
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
      use MAVLink.V1.Standard.Message.Autopilot_Versions;
      I : Autopilot_Version;
      O : Autopilot_Version :=
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
      use MAVLink.V1.Minimal.Message.Heartbeats;
      I : Heartbeat;
      O : Heartbeat :=
         (Type_Field => MAVLink.V1.Minimal.Mav_Type'First,
          Autopilot => MAVLink.V1.Minimal.Mav_Autopilot'First,
          Base_Mode => <>,
          Custom_Mode => 3,
          System_Status => MAVLink.V1.Minimal.Mav_State'First,
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