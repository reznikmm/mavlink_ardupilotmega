-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set gimbal manager pitch and yaw angles (high rate message). This message
--  is to be sent to the gimbal manager (e.g. from a ground station) and will
--  be ignored by gimbal devices. Angles and rates can be set to NaN according
--  to use case. Use MAV_CMD_DO_GIMBAL_MANAGER_PITCHYAW for low-rate
--  adjustments that require confirmation.

pragma Ada_2022;

with MAVLink.V2.Common.Gimbal_Manager_Set_Pitchyaws;

package MAVLink.V2.Ardupilotmega.Gimbal_Manager_Set_Pitchyaws
renames MAVLink.V2.Common.Gimbal_Manager_Set_Pitchyaws;
