-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2015-12 REPLACED BY: MAV_CMD_DO_SET_MODE
--  Use COMMAND_LONG with MAV_CMD_DO_SET_MODE instead
------------

--  Set the system mode, as defined by enum MAV_MODE. There is no target
--  component id as the mode is by definition for the overall aircraft, not
--  only for one component.

pragma Ada_2022;

with MAVLink.V2.Common.Set_Modes;

package MAVLink.V2.Uavionix.Set_Modes
renames MAVLink.V2.Common.Set_Modes;
