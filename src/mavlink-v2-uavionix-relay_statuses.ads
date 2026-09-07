-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Reports the on/off state of relays, as controlled by MAV_CMD_DO_SET_RELAY.
--  Message streaming should be requested using MAV_CMD_SET_MESSAGE_INTERVAL.
--  Note that it should not be sent on every relay state change to avoid
--  flooding the link.

pragma Ada_2022;

with MAVLink.V2.Common.Relay_Statuses;

package MAVLink.V2.Uavionix.Relay_Statuses
renames MAVLink.V2.Common.Relay_Statuses;
