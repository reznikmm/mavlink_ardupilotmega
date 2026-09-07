-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The interval between messages for a particular MAVLink message ID. This
--  message is sent in response to the MAV_CMD_REQUEST_MESSAGE command with
--  param1=244 (this message) and param2=message_id (the id of the message for
--  which the interval is required). This interface replaces DATA_STREAM.

pragma Ada_2022;

with MAVLink.V2.Common.Message_Intervals;

package MAVLink.V2.Ardupilotmega.Message_Intervals
renames MAVLink.V2.Common.Message_Intervals;
