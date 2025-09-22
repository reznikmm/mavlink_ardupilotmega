-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Modify the filter of what CAN messages to forward over the mavlink. This
--  can be used to make CAN forwarding work well on low bandwidth links. The
--  filtering is applied on bits 8 to 24 of the CAN id (2nd and 3rd bytes)
--  which corresponds to the DroneCAN message ID for DroneCAN. Filters with
--  more than 16 IDs can be constructed by sending multiple CAN_FILTER_MODIFY
--  messages.

pragma Ada_2022;

with MAVLink.V2.Common.Can_Filter_Modifys;

package MAVLink.V2.Ardupilotmega.Can_Filter_Modifys
renames MAVLink.V2.Common.Can_Filter_Modifys;
