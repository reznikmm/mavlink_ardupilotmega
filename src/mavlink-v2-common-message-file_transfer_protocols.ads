-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  File transfer protocol message: https://mavlink.io/en/services/ftp.html. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.File_Transfer_Protocols is

   pragma Preelaborate;

   File_Transfer_Protocol_Id : constant Msg_Id := 110;

   type File_Transfer_Protocol is record
      Target_Network   : Interfaces.Unsigned_8;
      --  Network ID (0 for broadcast) 
      Target_System    : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast) 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast) 
      Payload          : Unsigned_8_Array (1 .. 251);
      --  Variable length payload. The length is defined by the remaining 
      --  message length when subtracting the header and other fields. The 
      --  content/format of this block is defined in 
      --  https://mavlink.io/en/services/ftp.html. 
   end record;

   for File_Transfer_Protocol use record
      Target_Network   at 0 range 0 .. 7;
      Target_System    at 1 range 0 .. 7;
      Target_Component at 2 range 0 .. 7;
      Payload          at 3 range 0 .. 2007;
   end record;

   procedure Encode
     (Message : File_Transfer_Protocol;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : File_Transfer_Protocol;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out File_Transfer_Protocol;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out File_Transfer_Protocol;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out File_Transfer_Protocol;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out File_Transfer_Protocol;
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
     (Message : File_Transfer_Protocol;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : File_Transfer_Protocol;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.File_Transfer_Protocols;
