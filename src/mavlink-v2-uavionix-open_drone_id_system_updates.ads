-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Update the data in the OPEN_DRONE_ID_SYSTEM message with new location
--  information. This can be sent to update the location information for the
--  operator when no other information in the SYSTEM message has changed. This
--  message allows for efficient operation on radio links which have limited
--  uplink bandwidth while meeting requirements for update frequency of the
--  operator location.

pragma Ada_2022;

with MAVLink.V2.Common.Open_Drone_Id_System_Updates;

package MAVLink.V2.Uavionix.Open_Drone_Id_System_Updates
renames MAVLink.V2.Common.Open_Drone_Id_System_Updates;
