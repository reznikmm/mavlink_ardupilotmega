-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request that the vehicle report terrain height at the given location
--  (expected response is a TERRAIN_REPORT). Used by GCS to check if vehicle
--  has all terrain data needed for a mission.

pragma Ada_2022;

with MAVLink.V2.Common.Terrain_Checks;

package MAVLink.V2.Ardupilotmega.Terrain_Checks
renames MAVLink.V2.Common.Terrain_Checks;
