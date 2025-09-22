-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Control a serial port. This can be used for raw access to an onboard
--  serial peripheral such as a GPS or telemetry radio. It is designed to make
--  it possible to update the devices firmware via MAVLink messages or change
--  the devices settings. A message with zero bytes can be used to change just
--  the baudrate.

pragma Ada_2022;

with MAVLink.V2.Common.Serial_Controls;

package MAVLink.V2.Uavionix.Serial_Controls
renames MAVLink.V2.Common.Serial_Controls;
