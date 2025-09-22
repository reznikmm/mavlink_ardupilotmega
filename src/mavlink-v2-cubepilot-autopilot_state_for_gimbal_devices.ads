-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Low level message containing autopilot state relevant for a gimbal device.
--  This message is to be sent from the autopilot to the gimbal device
--  component. The data of this message are for the gimbal device's estimator
--  corrections, in particular horizon compensation, as well as indicates
--  autopilot control intentions, e.g. feed forward angular control in the
--  z-axis.

pragma Ada_2022;

with MAVLink.V2.Common.Autopilot_State_For_Gimbal_Devices;

package MAVLink.V2.Cubepilot.Autopilot_State_For_Gimbal_Devices
renames MAVLink.V2.Common.Autopilot_State_For_Gimbal_Devices;
