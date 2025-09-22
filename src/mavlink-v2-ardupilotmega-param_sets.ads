-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Set a parameter value (write new value to permanent storage). The
--  receiving component should acknowledge the new parameter value by
--  broadcasting a PARAM_VALUE message (broadcasting ensures that multiple GCS
--  all have an up-to-date list of all parameters). If the sending GCS did not
--  receive a PARAM_VALUE within its timeout time, it should re-send the
--  PARAM_SET message. The parameter microservice is documented at
--  https://mavlink.io/en/services/parameter.html.

pragma Ada_2022;

with MAVLink.V2.Common.Param_Sets;

package MAVLink.V2.Ardupilotmega.Param_Sets
renames MAVLink.V2.Common.Param_Sets;
