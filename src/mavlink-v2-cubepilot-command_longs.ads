-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Send a command with up to seven parameters to the MAV. COMMAND_INT is
--  generally preferred when sending MAV_CMD commands that include positional
--  information; it offers higher precision and allows the MAV_FRAME to be
--  specified (which may otherwise be ambiguous, particularly for altitude).
--  The command microservice is documented at
--  https://mavlink.io/en/services/command.html

pragma Ada_2022;

with MAVLink.V2.Common.Command_Longs;

package MAVLink.V2.Cubepilot.Command_Longs
renames MAVLink.V2.Common.Command_Longs;
