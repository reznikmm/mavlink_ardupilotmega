-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Battery information. Updates GCS with flight controller battery status.
--  Smart batteries also use this message, but may additionally send
--  BATTERY_INFO.

pragma Ada_2022;

with MAVLink.V2.Common.Battery_Statuses;

package MAVLink.V2.Uavionix.Battery_Statuses
renames MAVLink.V2.Common.Battery_Statuses;
