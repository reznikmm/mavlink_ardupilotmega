-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a flight mode. The message can be enumerated to get
--  information for all modes, or requested for a particular mode, using
--  MAV_CMD_REQUEST_MESSAGE. Specify 0 in param2 to request that the message
--  is emitted for all available modes or the specific index for just one
--  mode. The modes must be available/settable for the current vehicle/frame
--  type. Each mode should only be emitted once (even if it is both standard
--  and custom). Note that the current mode should be emitted in CURRENT_MODE,
--  and that if the mode list can change then AVAILABLE_MODES_MONITOR must be
--  emitted on first change and subsequently streamed. See
--  https://mavlink.io/en/services/standard_modes.html

pragma Ada_2022;

with MAVLink.V2.Common.Available_Modeses;

package MAVLink.V2.Cubepilot.Available_Modeses
renames MAVLink.V2.Common.Available_Modeses;
