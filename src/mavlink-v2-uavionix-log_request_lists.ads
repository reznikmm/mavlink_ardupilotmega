-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request a list of available logs. On some systems calling this may stop
--  on-board logging until LOG_REQUEST_END is called. If there are no log
--  files available this request shall be answered with one LOG_ENTRY message
--  with id = 0 and num_logs = 0. LOG_ENTRY messages can start with id 1 or 0.
--  The ground station needs to be able to process either.

pragma Ada_2022;

with MAVLink.V2.Common.Log_Request_Lists;

package MAVLink.V2.Uavionix.Log_Request_Lists
renames MAVLink.V2.Common.Log_Request_Lists;
