-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Request a list of available logs. On some systems calling this may stop 
--  on-board logging until LOG_REQUEST_END is called. If there are no log 
--  files available this request shall be answered with one LOG_ENTRY message 
--  with id = 0 and num_logs = 0. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Log_Request_Lists is

   pragma Preelaborate;

   Log_Request_List_Id : constant Msg_Id := 117;

   Log_Request_List_Len : constant Interfaces.Unsigned_8 := 6;

   type Log_Request_List is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Start            : Interfaces.Unsigned_16;
      --  First log id (0 for first available) 
      End_Field        : Interfaces.Unsigned_16;
      --  Last log id (0xffff for last available) 
   end record;

   for Log_Request_List use record
      Start            at 0 range 0 .. 15;
      End_Field        at 2 range 0 .. 15;
      Target_System    at 4 range 0 .. 7;
      Target_Component at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Log_Request_List;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Log_Request_List;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Log_Request_List;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Log_Request_List;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Log_Request_List;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Log_Request_List;
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

end MAVLink.V1.Common.Message.Log_Request_Lists;
