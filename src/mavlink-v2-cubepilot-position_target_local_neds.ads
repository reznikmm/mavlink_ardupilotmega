-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Reports the current commanded vehicle position, velocity, and acceleration
--  as specified by the autopilot. This should match the commands sent in
--  SET_POSITION_TARGET_LOCAL_NED if the vehicle is being controlled this way.

pragma Ada_2022;

with MAVLink.V2.Common.Position_Target_Local_Neds;

package MAVLink.V2.Cubepilot.Position_Target_Local_Neds
renames MAVLink.V2.Common.Position_Target_Local_Neds;
