-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2020-06 REPLACED BY: MISSION_REQUEST_INT
--  A system that gets this request should respond with MISSION_ITEM_INT (as
--  though MISSION_REQUEST_INT was received).
------------

--  Request the information of the mission item with the sequence number seq.
--  The response of the system to this message should be a MISSION_ITEM
--  message. https://mavlink.io/en/services/mission.html

pragma Ada_2022;

with MAVLink.V2.Common.Mission_Requests;

package MAVLink.V2.Ardupilotmega.Mission_Requests
renames MAVLink.V2.Common.Mission_Requests;
