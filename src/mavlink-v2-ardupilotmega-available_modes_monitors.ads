-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  A change to the sequence number indicates that the set of AVAILABLE_MODES
--  has changed. A receiver must re-request all available modes whenever the
--  sequence number changes. This is only emitted after the first change and
--  should then be broadcast at low rate (nominally 0.3 Hz) and on change. See
--  https://mavlink.io/en/services/standard_modes.html

pragma Ada_2022;

with MAVLink.V2.Common.Available_Modes_Monitors;

package MAVLink.V2.Ardupilotmega.Available_Modes_Monitors
renames MAVLink.V2.Common.Available_Modes_Monitors;
