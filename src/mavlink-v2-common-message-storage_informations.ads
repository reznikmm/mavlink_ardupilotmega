-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a storage medium. This message is sent in response to a 
--  request with MAV_CMD_REQUEST_MESSAGE and whenever the status of the 
--  storage changes (STORAGE_STATUS). Use MAV_CMD_REQUEST_MESSAGE.param2 to 
--  indicate the index/id of requested storage: 0 for all, 1 for first, 2 for 
--  second, etc. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Storage_Informations is

   pragma Preelaborate;

   Storage_Information_Id : constant Msg_Id := 261;

   type Storage_Information is record
      Time_Boot_Ms       : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Storage_Id         : Interfaces.Unsigned_8;
      --  Storage ID (1 for first, 2 for second, etc.) 
      Storage_Count      : Interfaces.Unsigned_8;
      --  Number of storage devices 
      Status             : Storage_Status;
      --  Status of storage 
      Total_Capacity     : Raw_Float;
      --  Units: [MiB]
      --  Total capacity. If storage is not ready (STORAGE_STATUS_READY) value 
      --  will be ignored. 
      Used_Capacity      : Raw_Float;
      --  Units: [MiB]
      --  Used capacity. If storage is not ready (STORAGE_STATUS_READY) value 
      --  will be ignored. 
      Available_Capacity : Raw_Float;
      --  Units: [MiB]
      --  Available storage capacity. If storage is not ready 
      --  (STORAGE_STATUS_READY) value will be ignored. 
      Read_Speed         : Raw_Float;
      --  Units: [MiB/s]
      --  Read speed. 
      Write_Speed        : Raw_Float;
      --  Units: [MiB/s]
      --  Write speed. 
      Type_Field         : Storage_Type;
      --  Type of storage 
      Name               : String (1 .. 32);
      --  Textual storage name to be used in UI (microSD 1, Internal Memory, 
      --  etc.) This is a NULL terminated string. If it is exactly 32 
      --  characters long, add a terminating NULL. If this string is empty, 
      --  the generic type is shown to the user. 
      Storage_Usage      : Storage_Usage_Flag;
      --  Flags indicating whether this instance is preferred storage for 
      --  photos, videos, etc. Note: Implementations should initially set the 
      --  flags on the system-default storage id used for saving media (if 
      --  possible/supported). This setting can then be overridden using 
      --  MAV_CMD_SET_STORAGE_USAGE. If the media usage flags are not set, a 
      --  GCS may assume storage ID 1 is the default storage for all media 
      --  types. 
   end record;

   for Storage_Information use record
      Time_Boot_Ms       at 0  range 0 .. 31;
      Total_Capacity     at 4  range 0 .. 31;
      Used_Capacity      at 8  range 0 .. 31;
      Available_Capacity at 12 range 0 .. 31;
      Read_Speed         at 16 range 0 .. 31;
      Write_Speed        at 20 range 0 .. 31;
      Storage_Id         at 24 range 0 .. 7;
      Storage_Count      at 25 range 0 .. 7;
      Status             at 26 range 0 .. 7;
      Type_Field         at 27 range 0 .. 7;
      Name               at 28 range 0 .. 255;
      Storage_Usage      at 60 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Storage_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Storage_Information;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Storage_Information;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Storage_Information;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Storage_Information;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Storage_Information;
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
     (Message : Storage_Information;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Storage_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Storage_Informations;
