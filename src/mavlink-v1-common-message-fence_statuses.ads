-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of geo-fencing. Sent in extended status stream when fencing 
--  enabled. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Fence_Statuses is

   pragma Preelaborate;

   Fence_Status_Id : constant Msg_Id := 162;

   Fence_Status_Len : constant Interfaces.Unsigned_8 := 8;

   type Fence_Status is record
      Breach_Status : Interfaces.Unsigned_8;
      --  Breach status (0 if currently inside fence, 1 if outside). 
      Breach_Count  : Interfaces.Unsigned_16;
      --  Number of fence breaches. 
      Breach_Type   : Fence_Breach;
      --  Last breach type. 
      Breach_Time   : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time (since boot) of last breach. 
   end record;

   for Fence_Status use record
      Breach_Time   at 0 range 0 .. 31;
      Breach_Count  at 4 range 0 .. 15;
      Breach_Status at 6 range 0 .. 7;
      Breach_Type   at 7 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Fence_Status;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Fence_Status;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Fence_Status;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Fence_Status;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Fence_Status;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Fence_Status;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Fence_Statuses;
