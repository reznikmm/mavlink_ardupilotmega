-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set a safety zone (volume), which is defined by two corners of a cube.
--  This message can be used to tell the MAV which setpoints/waypoints to
--  accept and which to reject. Safety areas are often enforced by national or
--  competition regulations.

pragma Ada_2022;

with MAVLink.V2.Common.Safety_Set_Allowed_Areas;

package MAVLink.V2.Uavionix.Safety_Set_Allowed_Areas
renames MAVLink.V2.Common.Safety_Set_Allowed_Areas;
