-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  This message is emitted as response to MISSION_REQUEST_LIST by the MAV and
--  to initiate a write transaction. The GCS can then request the individual
--  mission item based on the knowledge of the total number of waypoints.

pragma Ada_2022;

with MAVLink.V2.Common.Mission_Counts;

package MAVLink.V2.Cubepilot.Mission_Counts
renames MAVLink.V2.Common.Mission_Counts;
