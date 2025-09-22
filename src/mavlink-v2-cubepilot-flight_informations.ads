-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Flight information. This includes time since boot for arm, takeoff, and
--  land, and a flight number. Takeoff and landing values reset to zero on
--  arm. This can be requested using MAV_CMD_REQUEST_MESSAGE. Note, some
--  fields are misnamed - timestamps are from boot (not UTC) and the
--  flight_uuid is a sequence number.

pragma Ada_2022;

with MAVLink.V2.Common.Flight_Informations;

package MAVLink.V2.Cubepilot.Flight_Informations
renames MAVLink.V2.Common.Flight_Informations;
