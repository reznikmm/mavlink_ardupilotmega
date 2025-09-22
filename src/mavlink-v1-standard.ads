-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

with Mavlink.V1.Minimal; use Mavlink.V1.Minimal;

package Mavlink.V1.Standard is

   pragma Preelaborate;

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
      Gripper                             : Boolean := False;
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
   --  Bitmask of (optional) autopilot capabilities (64 bit). If a bit is set, 
   --  the autopilot supports this capability. 

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
      Gripper                             at 0 range 20 .. 20;
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
      & (if V.Gripper then "GRIPPER " else "")
      & "]");

end Mavlink.V1.Standard;
