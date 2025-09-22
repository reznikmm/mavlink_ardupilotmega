-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The general system state. If the system is following the MAVLink standard,
--  the system state is mainly defined by three orthogonal states/modes: The
--  system mode, which is either LOCKED (motors shut down and locked), MANUAL
--  (system under RC control), GUIDED (system with autonomous position
--  control, position setpoint controlled manually) or AUTO (system guided by
--  path/waypoint planner). The NAV_MODE defined the current flight state:
--  LIFTOFF (often an open-loop maneuver), LANDING, WAYPOINTS or VECTOR. This
--  represents the internal navigation state machine. The system status shows
--  whether the system is currently active or not and if an emergency
--  occurred. During the CRITICAL and EMERGENCY states the MAV is still
--  considered to be active, but should start emergency procedures
--  autonomously. After a failure occurred it should first move from active to
--  critical to allow manual intervention and then move to emergency after a
--  certain timeout.

pragma Ada_2022;

with MAVLink.V2.Common.Sys_Statuses;

package MAVLink.V2.Ardupilotmega.Sys_Statuses
renames MAVLink.V2.Common.Sys_Statuses;
