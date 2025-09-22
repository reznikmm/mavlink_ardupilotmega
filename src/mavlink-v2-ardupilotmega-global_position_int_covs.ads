-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The filtered global position (e.g. fused GPS and accelerometers). The
--  position is in GPS-frame (right-handed, Z-up). It is designed as scaled
--  integer message since the resolution of float is not sufficient. NOTE:
--  This message is intended for onboard networks / companion computers and
--  higher-bandwidth links and optimized for accuracy and completeness. Please
--  use the GLOBAL_POSITION_INT message for a minimal subset.

pragma Ada_2022;

with MAVLink.V2.Common.Global_Position_Int_Covs;

package MAVLink.V2.Ardupilotmega.Global_Position_Int_Covs
renames MAVLink.V2.Common.Global_Position_Int_Covs;
