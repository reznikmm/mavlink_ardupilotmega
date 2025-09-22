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


package MAVLink.V2.Common.Message.Uavcan_Node_Infos is

   pragma Preelaborate;

   Uavcan_Node_Info_Id : constant Msg_Id := 311;

   type Uavcan_Node_Info is record
      Time_Usec        : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Uptime_Sec       : Interfaces.Unsigned_32;
      --  Units: [s]
      --  Time since the start-up of the node. 
      Name             : String (1 .. 80);
      --  Node name string. For example, "sapog.px4.io". 
      Hw_Version_Major : Interfaces.Unsigned_8;
      --  Hardware major version number. 
      Hw_Version_Minor : Interfaces.Unsigned_8;
      --  Hardware minor version number. 
      Hw_Unique_Id     : Unsigned_8_Array (1 .. 16);
      --  Hardware unique 128-bit ID. 
      Sw_Version_Major : Interfaces.Unsigned_8;
      --  Software major version number. 
      Sw_Version_Minor : Interfaces.Unsigned_8;
      --  Software minor version number. 
      Sw_Vcs_Commit    : Interfaces.Unsigned_32 :=
        0;
      --  Version control system (VCS) revision identifier (e.g. git short 
      --  commit hash). 0 if unknown. 
   end record;

   for Uavcan_Node_Info use record
      Time_Usec        at 0   range 0 .. 63;
      Uptime_Sec       at 8   range 0 .. 31;
      Sw_Vcs_Commit    at 12  range 0 .. 31;
      Name             at 16  range 0 .. 639;
      Hw_Version_Major at 96  range 0 .. 7;
      Hw_Version_Minor at 97  range 0 .. 7;
      Hw_Unique_Id     at 98  range 0 .. 127;
      Sw_Version_Major at 114 range 0 .. 7;
      Sw_Version_Minor at 115 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Uavcan_Node_Info;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Uavcan_Node_Info;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Uavcan_Node_Info;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavcan_Node_Info;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Uavcan_Node_Info;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavcan_Node_Info;
      Connect : in out MAVLink.V2.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Uavcan_Node_Info;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Uavcan_Node_Info;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Uavcan_Node_Infos;
