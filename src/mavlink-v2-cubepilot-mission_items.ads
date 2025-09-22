-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2020-06 REPLACED BY: MISSION_ITEM_INT
------------

--  Message encoding a mission item. This message is emitted to announce the
--  presence of a mission item and to set a mission item on the system. The
--  mission item can be either in x, y, z meters (type: LOCAL) or x:lat,
--  y:lon, z:altitude. Local frame is Z-down, right handed (NED), global frame
--  is Z-up, right handed (ENU). NaN may be used to indicate an
--  optional/default value (e.g. to use the system's current latitude or yaw
--  rather than a specific value). See also
--  https://mavlink.io/en/services/mission.html.

pragma Ada_2022;

with MAVLink.V2.Common.Mission_Items;

package MAVLink.V2.Cubepilot.Mission_Items
renames MAVLink.V2.Common.Mission_Items;
