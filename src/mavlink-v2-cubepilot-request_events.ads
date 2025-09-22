-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request one or more events to be (re-)sent. If
--  first_sequence==last_sequence, only a single event is requested. Note that
--  first_sequence can be larger than last_sequence (because the sequence
--  number can wrap). Each sequence will trigger an EVENT or EVENT_ERROR
--  response.

pragma Ada_2022;

with MAVLink.V2.Common.Request_Events;

package MAVLink.V2.Cubepilot.Request_Events
renames MAVLink.V2.Common.Request_Events;
