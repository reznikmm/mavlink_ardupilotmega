-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Data for filling the OpenDroneID Self ID message. The Self ID Message is 
--  an opportunity for the operator to (optionally) declare their identity and 
--  purpose of the flight. This message can provide additional information 
--  that could reduce the threat profile of a UA (Unmanned Aircraft) flying in 
--  a particular area or manner. This message can also be used to provide 
--  optional additional clarification in an emergency/remote ID system failure 
--  situation. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Open_Drone_Id_Self_Ids is

   pragma Preelaborate;

   Open_Drone_Id_Self_Id_Id : constant Msg_Id := 12903;

   type Open_Drone_Id_Self_Id is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast). 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast). 
      Id_Or_Mac        : Unsigned_8_Array (1 .. 20);
      --  Only used for drone ID data received from other UAs. See detailed 
      --  description at https://mavlink.io/en/services/opendroneid.html. 
      Description_Type : Mav_Odid_Desc_Type;
      --  Indicates the type of the description field. 
      Description      : String (1 .. 23);
      --  Text description or numeric value expressed as ASCII characters. 
      --  Shall be filled with nulls in the unused portion of the field. 
   end record;

   for Open_Drone_Id_Self_Id use record
      Target_System    at 0  range 0 .. 7;
      Target_Component at 1  range 0 .. 7;
      Id_Or_Mac        at 2  range 0 .. 159;
      Description_Type at 22 range 0 .. 7;
      Description      at 23 range 0 .. 183;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_Self_Id;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_Self_Id;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_Self_Id;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Self_Id;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Open_Drone_Id_Self_Id;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Self_Id;
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
     (Message : Open_Drone_Id_Self_Id;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_Self_Id;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Open_Drone_Id_Self_Ids;
