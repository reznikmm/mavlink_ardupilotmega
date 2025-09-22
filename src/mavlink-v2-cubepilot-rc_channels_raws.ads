-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The RAW values of the RC channels received. The standard PPM modulation is
--  as follows: 1000 microseconds: 0%, 2000 microseconds: 100%. A value of
--  UINT16_MAX implies the channel is unused. Individual
--  receivers/transmitters might violate this specification.

pragma Ada_2022;

with MAVLink.V2.Common.Rc_Channels_Raws;

package MAVLink.V2.Cubepilot.Rc_Channels_Raws
renames MAVLink.V2.Common.Rc_Channels_Raws;
