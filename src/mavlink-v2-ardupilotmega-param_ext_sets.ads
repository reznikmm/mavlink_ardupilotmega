-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set a parameter value. In order to deal with message loss (and
--  retransmission of PARAM_EXT_SET), when setting a parameter value and the
--  new value is the same as the current value, you will immediately get a
--  PARAM_ACK_ACCEPTED response. If the current state is
--  PARAM_ACK_IN_PROGRESS, you will accordingly receive a
--  PARAM_ACK_IN_PROGRESS in response.

pragma Ada_2022;

with MAVLink.V2.Common.Param_Ext_Sets;

package MAVLink.V2.Ardupilotmega.Param_Ext_Sets
renames MAVLink.V2.Common.Param_Ext_Sets;
