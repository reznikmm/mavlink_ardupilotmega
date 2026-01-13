-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Vehicle status report that is sent out while figure eight execution is in
--  progress (see MAV_CMD_DO_FIGURE_EIGHT). This may typically send at low
--  rates: of the order of 2Hz.

pragma Ada_2022;

with MAVLink.V2.Common.Figure_Eight_Execution_Statuses;

package MAVLink.V2.Uavionix.Figure_Eight_Execution_Statuses
renames MAVLink.V2.Common.Figure_Eight_Execution_Statuses;
