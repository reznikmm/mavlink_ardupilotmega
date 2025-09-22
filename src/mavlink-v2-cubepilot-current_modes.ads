-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Get the current mode. This should be emitted on any mode change, and
--  broadcast at low rate (nominally 0.5 Hz). It may be requested using
--  MAV_CMD_REQUEST_MESSAGE. See
--  https://mavlink.io/en/services/standard_modes.html

pragma Ada_2022;

with MAVLink.V2.Common.Current_Modes;

package MAVLink.V2.Cubepilot.Current_Modes
renames MAVLink.V2.Common.Current_Modes;
