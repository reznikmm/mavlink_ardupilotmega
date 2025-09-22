-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2024-02 REPLACED BY: BATTERY_INFO
--  The BATTERY_INFO message is better aligned with UAVCAN messages, and in
--  any case is useful even if a battery is not "smart".
------------

--  Smart Battery information (static/infrequent update). Use for updates
--  from: smart battery to flight stack, flight stack to GCS. Use
--  BATTERY_STATUS for the frequent battery updates.

pragma Ada_2022;

with MAVLink.V2.Common.Smart_Battery_Infos;

package MAVLink.V2.Uavionix.Smart_Battery_Infos
renames MAVLink.V2.Common.Smart_Battery_Infos;
