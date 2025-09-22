-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Superseded by ACTUATOR_OUTPUT_STATUS. The RAW values of the servo outputs
--  (for RC input from the remote, use the RC_CHANNELS messages). The standard
--  PPM modulation is as follows: 1000 microseconds: 0%, 2000 microseconds:
--  100%.

pragma Ada_2022;

with MAVLink.V2.Common.Servo_Output_Raws;

package MAVLink.V2.Cubepilot.Servo_Output_Raws
renames MAVLink.V2.Common.Servo_Output_Raws;
