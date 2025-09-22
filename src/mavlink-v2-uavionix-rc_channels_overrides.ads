-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The RAW values of the RC channels sent to the MAV to override info
--  received from the RC radio. The standard PPM modulation is as follows:
--  1000 microseconds: 0%, 2000 microseconds: 100%. Individual
--  receivers/transmitters might violate this specification. Note carefully
--  the semantic differences between the first 8 channels and the subsequent
--  channels

pragma Ada_2022;

with MAVLink.V2.Common.Rc_Channels_Overrides;

package MAVLink.V2.Uavionix.Rc_Channels_Overrides
renames MAVLink.V2.Common.Rc_Channels_Overrides;
