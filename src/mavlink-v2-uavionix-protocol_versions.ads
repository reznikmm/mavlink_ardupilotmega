-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2025-11 REPLACED BY: Nothing
--  No longer needed. Support is being removed from flight stacks.
------------

--  Version and capability of protocol version. This message can be requested
--  with MAV_CMD_REQUEST_MESSAGE and is used as part of the handshaking to
--  establish which MAVLink version should be used on the network. Every node
--  should respond to a request for PROTOCOL_VERSION to enable the
--  handshaking. Library implementers should consider adding this into the
--  default decoding state machine to allow the protocol core to respond
--  directly.

pragma Ada_2022;

with MAVLink.V2.Common.Protocol_Versions;

package MAVLink.V2.Uavionix.Protocol_Versions
renames MAVLink.V2.Common.Protocol_Versions;
