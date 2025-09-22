-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  An OpenDroneID message pack is a container for multiple encoded 
--  OpenDroneID messages (i.e. not in the format given for the above message 
--  descriptions but after encoding into the compressed OpenDroneID byte 
--  format). Used e.g. when transmitting on Bluetooth 5.0 Long Range/Extended 
--  Advertising or on WiFi Neighbor Aware Networking or on WiFi Beacon. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Open_Drone_Id_Message_Packs is

   pragma Preelaborate;

   Open_Drone_Id_Message_Pack_Id : constant Msg_Id := 12915;

   type Open_Drone_Id_Message_Pack is record
      Target_System       : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast). 
      Target_Component    : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast). 
      Id_Or_Mac           : Unsigned_8_Array (1 .. 20);
      --  Only used for drone ID data received from other UAs. See detailed 
      --  description at https://mavlink.io/en/services/opendroneid.html. 
      Single_Message_Size : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  This field must currently always be equal to 25 (bytes), since all 
      --  encoded OpenDroneID messages are specified to have this length. 
      Msg_Pack_Size       : Interfaces.Unsigned_8;
      --  Number of encoded messages in the pack (not the number of bytes). 
      --  Allowed range is 1 - 9. 
      Messages            : Unsigned_8_Array (1 .. 225);
      --  Concatenation of encoded OpenDroneID messages. Shall be filled with 
      --  nulls in the unused portion of the field. 
   end record;

   for Open_Drone_Id_Message_Pack use record
      Target_System       at 0  range 0 .. 7;
      Target_Component    at 1  range 0 .. 7;
      Id_Or_Mac           at 2  range 0 .. 159;
      Single_Message_Size at 22 range 0 .. 7;
      Msg_Pack_Size       at 23 range 0 .. 7;
      Messages            at 24 range 0 .. 1799;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_Message_Pack;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_Message_Pack;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_Message_Pack;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Message_Pack;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Open_Drone_Id_Message_Pack;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Message_Pack;
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
     (Message : Open_Drone_Id_Message_Pack;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_Message_Pack;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Open_Drone_Id_Message_Packs;
