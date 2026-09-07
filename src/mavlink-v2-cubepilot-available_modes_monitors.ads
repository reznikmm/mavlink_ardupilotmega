-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  A change to the sequence number indicates that the set of AVAILABLE_MODES
--  has changed, and that the receiver should re-request all available modes.
--  The message is optional, and is only needed when the set of modes can
--  change dynamically after boot. It should be emitted whenever the set of
--  modes change. It should be streamed at low rate (nominally 0.3 Hz). See
--  https://mavlink.io/en/services/standard_modes.html

pragma Ada_2022;

with MAVLink.V2.Common.Available_Modes_Monitors;

package MAVLink.V2.Cubepilot.Available_Modes_Monitors
renames MAVLink.V2.Common.Available_Modes_Monitors;
