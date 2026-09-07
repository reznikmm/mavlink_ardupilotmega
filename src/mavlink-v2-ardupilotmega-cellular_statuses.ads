-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Cellular network status as reported by a particular modem. This is
--  primarily intended for logging, but a GCS may choose to display
--  link_tx_rate and link_rx_rate. Note that a value of 0 in the id field
--  indicates that the sender does not support reporting of multiple modems.
--  Message data should be from a single modem, but that is not guaranteed.

pragma Ada_2022;

with MAVLink.V2.Common.Cellular_Statuses;

package MAVLink.V2.Ardupilotmega.Cellular_Statuses
renames MAVLink.V2.Common.Cellular_Statuses;
