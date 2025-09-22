-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2011-08 REPLACED BY: TIMESYNC
--  To be removed / merged with TIMESYNC
------------

--  A ping message either requesting or responding to a ping. This allows to
--  measure the system latencies, including serial port, radio modem and UDP
--  connections. The ping microservice is documented at
--  https://mavlink.io/en/services/ping.html

pragma Ada_2022;

with MAVLink.V2.Common.Pings;

package MAVLink.V2.Ardupilotmega.Pings
renames MAVLink.V2.Common.Pings;
