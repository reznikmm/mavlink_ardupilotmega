-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2013-07 REPLACED BY: HIL_STATE_QUATERNION
--  Suffers from missing airspeed fields and singularities due to Euler angles
------------

--  Sent from simulation to autopilot. This packet is useful for high
--  throughput applications such as hardware in the loop simulations.

pragma Ada_2022;

with MAVLink.V2.Common.Hil_States;

package MAVLink.V2.Cubepilot.Hil_States
renames MAVLink.V2.Common.Hil_States;
