-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request to read the onboard parameter with the param_id string id. Onboard
--  parameters are stored as key[const char*] -> value[float]. This allows to
--  send a parameter to any other component (such as the GCS) without the need
--  of previous knowledge of possible parameter names. Thus the same GCS can
--  store different parameters for different autopilots. See also
--  https://mavlink.io/en/services/parameter.html for a full documentation of
--  QGroundControl and IMU code.

pragma Ada_2022;

with MAVLink.V2.Common.Param_Request_Reads;

package MAVLink.V2.Ardupilotmega.Param_Request_Reads
renames MAVLink.V2.Common.Param_Request_Reads;
