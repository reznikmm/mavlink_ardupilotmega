-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  General information describing a particular UAVCAN node. Please refer to
--  the definition of the UAVCAN service "uavcan.protocol.GetNodeInfo" for the
--  background information. This message should be emitted by the system
--  whenever a new node appears online, or an existing node reboots.
--  Additionally, it can be emitted upon request from the other end of the
--  MAVLink channel (see MAV_CMD_UAVCAN_GET_NODE_INFO). It is also not
--  prohibited to emit this message unconditionally at a low frequency. The
--  UAVCAN specification is available at http://uavcan.org.

pragma Ada_2022;

with MAVLink.V2.Common.Uavcan_Node_Infos;

package MAVLink.V2.Cubepilot.Uavcan_Node_Infos
renames MAVLink.V2.Common.Uavcan_Node_Infos;
