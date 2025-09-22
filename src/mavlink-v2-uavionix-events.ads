-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Event message. Each new event from a particular component gets a new
--  sequence number. The same message might be sent multiple times if
--  (re-)requested. Most events are broadcast, some can be specific to a
--  target component (as receivers keep track of the sequence for missed
--  events, all events need to be broadcast. Thus we use destination_component
--  instead of target_component).

pragma Ada_2022;

with MAVLink.V2.Common.Events;

package MAVLink.V2.Uavionix.Events
renames MAVLink.V2.Common.Events;
