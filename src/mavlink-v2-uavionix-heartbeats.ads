-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The heartbeat message shows that a system or component is present and
--  responding. The type and autopilot fields (along with the message
--  component id), allow the receiving system to treat further messages from
--  this system appropriately (e.g. by laying out the user interface based on
--  the autopilot). This microservice is documented at
--  https://mavlink.io/en/services/heartbeat.html

pragma Ada_2022;

with MAVLink.V2.Minimal.Heartbeats;

package MAVLink.V2.Uavionix.Heartbeats
renames MAVLink.V2.Minimal.Heartbeats;
