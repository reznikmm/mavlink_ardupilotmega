-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The system time is the time of the master clock. This can be emitted by
--  flight controllers, onboard computers, or other components in the MAVLink
--  network. Components that are using a less reliable time source, such as a
--  battery-backed real time clock, can choose to match their system clock to
--  that of a SYSTEM_TYPE that indicates a more recent time. This allows more
--  broadly accurate date stamping of logs, and so on. If precise time
--  synchronization is needed then use TIMESYNC instead.

pragma Ada_2022;

with MAVLink.V2.Common.System_Times;

package MAVLink.V2.Cubepilot.System_Times
renames MAVLink.V2.Common.System_Times;
