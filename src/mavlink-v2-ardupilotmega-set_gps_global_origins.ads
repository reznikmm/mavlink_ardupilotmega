-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2025-04 REPLACED BY: MAV_CMD_DO_SET_GLOBAL_ORIGIN
------------

--  Sets the GPS coordinates of the vehicle local origin (0,0,0) position.
--  Vehicle should emit GPS_GLOBAL_ORIGIN irrespective of whether the origin
--  is changed. This enables transform between the local coordinate frame and
--  the global (GPS) coordinate frame, which may be necessary when (for
--  example) indoor and outdoor settings are connected and the MAV should move
--  from in- to outdoor.

pragma Ada_2022;

with MAVLink.V2.Common.Set_Gps_Global_Origins;

package MAVLink.V2.Ardupilotmega.Set_Gps_Global_Origins
renames MAVLink.V2.Common.Set_Gps_Global_Origins;
