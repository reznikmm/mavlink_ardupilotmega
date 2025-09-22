-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  High level message to control a gimbal manually. The angles or angular
--  rates are unitless; the actual rates will depend on internal gimbal
--  manager settings/configuration (e.g. set by parameters). This message is
--  to be sent to the gimbal manager (e.g. from a ground station). Angles and
--  rates can be set to NaN according to use case.

pragma Ada_2022;

with MAVLink.V2.Common.Gimbal_Manager_Set_Manual_Controls;

package MAVLink.V2.Cubepilot.Gimbal_Manager_Set_Manual_Controls
renames MAVLink.V2.Common.Gimbal_Manager_Set_Manual_Controls;
