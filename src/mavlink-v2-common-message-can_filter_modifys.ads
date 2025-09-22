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


package MAVLink.V2.Common.Message.Can_Filter_Modifys is

   pragma Preelaborate;

   Can_Filter_Modify_Id : constant Msg_Id := 388;

   type Can_Filter_Modify is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID. 
      Bus              : Interfaces.Unsigned_8;
      --  bus number 
      Operation        : Can_Filter_Op;
      --  what operation to perform on the filter list. See CAN_FILTER_OP 
      --  enum. 
      Num_Ids          : Interfaces.Unsigned_8;
      --  number of IDs in filter list 
      Ids              : Unsigned_16_Array (1 .. 16);
      --  filter IDs, length num_ids 
   end record;

   for Can_Filter_Modify use record
      Ids              at 0  range 0 .. 255;
      Target_System    at 32 range 0 .. 7;
      Target_Component at 33 range 0 .. 7;
      Bus              at 34 range 0 .. 7;
      Operation        at 35 range 0 .. 7;
      Num_Ids          at 36 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Can_Filter_Modify;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Can_Filter_Modify;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Can_Filter_Modify;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Can_Filter_Modify;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Can_Filter_Modify;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Can_Filter_Modify;
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
     (Message : Can_Filter_Modify;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Can_Filter_Modify;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Can_Filter_Modifys;
