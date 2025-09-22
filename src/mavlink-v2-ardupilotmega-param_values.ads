-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Emit the value of a onboard parameter. The inclusion of param_count and
--  param_index in the message allows the recipient to keep track of received
--  parameters and allows him to re-request missing parameters after a loss or
--  timeout. The parameter microservice is documented at
--  https://mavlink.io/en/services/parameter.html

pragma Ada_2022;

with MAVLink.V2.Common.Param_Values;

package MAVLink.V2.Ardupilotmega.Param_Values
renames MAVLink.V2.Common.Param_Values;
