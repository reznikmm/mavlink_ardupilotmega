-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Sets the home position. The home position is the default position that the
--  system will return to and land on. The position is set automatically by
--  the system during the takeoff (and may also be set using this message).
--  The global and local positions encode the position in the respective
--  coordinate frames, while the q parameter encodes the orientation of the
--  surface. Under normal conditions it describes the heading and terrain
--  slope, which can be used by the aircraft to adjust the approach. The
--  approach 3D vector describes the point to which the system should fly in
--  normal flight mode and then perform a landing sequence along the vector.
--  Note: the current home position may be emitted in a HOME_POSITION message
--  on request (using MAV_CMD_REQUEST_MESSAGE with param1=242).

pragma Ada_2022;

with MAVLink.V2.Common.Set_Home_Positions;

package MAVLink.V2.Uavionix.Set_Home_Positions
renames MAVLink.V2.Common.Set_Home_Positions;
