-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  General status information of an UAVCAN node. Please refer to the 
--  definition of the UAVCAN message "uavcan.protocol.NodeStatus" for the 
--  background information. The UAVCAN specification is available at 
--  http://uavcan.org. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Uavcan_Node_Statuses is

   pragma Preelaborate;

   Uavcan_Node_Status_Id : constant Msg_Id := 310;

   type Uavcan_Node_Status is record
      Time_Usec                   : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Uptime_Sec                  : Interfaces.Unsigned_32;
      --  Units: [s]
      --  Time since the start-up of the node. 
      Health                      : Uavcan_Node_Health;
      --  Generalized node health status. 
      Mode                        : Uavcan_Node_Mode;
      --  Generalized operating mode. 
      Sub_Mode                    : Interfaces.Unsigned_8;
      --  Not used currently. 
      Vendor_Specific_Status_Code : Interfaces.Unsigned_16;
      --  Vendor-specific status information. 
   end record;

   for Uavcan_Node_Status use record
      Time_Usec                   at 0  range 0 .. 63;
      Uptime_Sec                  at 8  range 0 .. 31;
      Vendor_Specific_Status_Code at 12 range 0 .. 15;
      Health                      at 14 range 0 .. 7;
      Mode                        at 15 range 0 .. 7;
      Sub_Mode                    at 16 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Uavcan_Node_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Uavcan_Node_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Uavcan_Node_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavcan_Node_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Uavcan_Node_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavcan_Node_Status;
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
     (Message : Uavcan_Node_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Uavcan_Node_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Uavcan_Node_Statuses;
