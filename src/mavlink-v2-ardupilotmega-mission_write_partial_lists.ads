-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  This message is sent to the MAV to write a partial list. If start index ==
--  end index, only one item will be transmitted / updated. If the start index
--  is NOT 0 and above the current list size, this request should be REJECTED!

pragma Ada_2022;

with MAVLink.V2.Common.Mission_Write_Partial_Lists;

package MAVLink.V2.Ardupilotmega.Mission_Write_Partial_Lists
renames MAVLink.V2.Common.Mission_Write_Partial_Lists;
