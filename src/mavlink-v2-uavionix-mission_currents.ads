-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Message that announces the sequence number of the current target mission
--  item (that the system will fly towards/execute when the mission is
--  running). This message should be streamed all the time (nominally at 1Hz).
--  This message should be emitted following a call to
--  MAV_CMD_DO_SET_MISSION_CURRENT or MISSION_SET_CURRENT.

pragma Ada_2022;

with MAVLink.V2.Common.Mission_Currents;

package MAVLink.V2.Uavionix.Mission_Currents
renames MAVLink.V2.Common.Mission_Currents;
