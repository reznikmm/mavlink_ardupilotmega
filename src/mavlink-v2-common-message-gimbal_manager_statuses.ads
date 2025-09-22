-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Current status about a high level gimbal manager. This message should be 
--  broadcast at a low regular rate (e.g. 5Hz). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gimbal_Manager_Statuses is

   pragma Preelaborate;

   Gimbal_Manager_Status_Id : constant Msg_Id := 281;

   type Gimbal_Manager_Status is record
      Time_Boot_Ms             : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Flags                    : Gimbal_Manager_Flags;
      --  High level gimbal manager flags currently applied. 
      Gimbal_Device_Id         : Interfaces.Unsigned_8;
      --  Gimbal device ID that this gimbal manager is responsible for. 
      --  Component ID of gimbal device (or 1-6 for non-MAVLink gimbal). 
      Primary_Control_Sysid    : Interfaces.Unsigned_8;
      --  System ID of MAVLink component with primary control, 0 for none. 
      Primary_Control_Compid   : Interfaces.Unsigned_8;
      --  Component ID of MAVLink component with primary control, 0 for none. 
      Secondary_Control_Sysid  : Interfaces.Unsigned_8;
      --  System ID of MAVLink component with secondary control, 0 for none. 
      Secondary_Control_Compid : Interfaces.Unsigned_8;
      --  Component ID of MAVLink component with secondary control, 0 for 
      --  none. 
   end record;

   for Gimbal_Manager_Status use record
      Time_Boot_Ms             at 0  range 0 .. 31;
      Flags                    at 4  range 0 .. 31;
      Gimbal_Device_Id         at 8  range 0 .. 7;
      Primary_Control_Sysid    at 9  range 0 .. 7;
      Primary_Control_Compid   at 10 range 0 .. 7;
      Secondary_Control_Sysid  at 11 range 0 .. 7;
      Secondary_Control_Compid at 12 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Manager_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Manager_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Manager_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Manager_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gimbal_Manager_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Manager_Status;
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
     (Message : Gimbal_Manager_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gimbal_Manager_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gimbal_Manager_Statuses;
