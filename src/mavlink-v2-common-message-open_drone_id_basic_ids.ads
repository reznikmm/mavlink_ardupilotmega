-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Data for filling the OpenDroneID Basic ID message. This and the below 
--  messages are primarily meant for feeding data to/from an OpenDroneID 
--  implementation. E.g. https://github.com/opendroneid/opendroneid-core-c. 
--  These messages are compatible with the ASTM F3411 Remote ID standard and 
--  the ASD-STAN prEN 4709-002 Direct Remote ID standard. Additional 
--  information and usage of these messages is documented at 
--  https://mavlink.io/en/services/opendroneid.html. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Open_Drone_Id_Basic_Ids is

   pragma Preelaborate;

   Open_Drone_Id_Basic_Id_Id : constant Msg_Id := 12900;

   type Open_Drone_Id_Basic_Id is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast). 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast). 
      Id_Or_Mac        : Unsigned_8_Array (1 .. 20);
      --  Only used for drone ID data received from other UAs. See detailed 
      --  description at https://mavlink.io/en/services/opendroneid.html. 
      Id_Type          : Mav_Odid_Id_Type;
      --  Indicates the format for the uas_id field of this message. 
      Ua_Type          : Mav_Odid_Ua_Type;
      --  Indicates the type of UA (Unmanned Aircraft). 
      Uas_Id           : Unsigned_8_Array (1 .. 20);
      --  UAS (Unmanned Aircraft System) ID following the format specified by 
      --  id_type. Shall be filled with nulls in the unused portion of the 
      --  field. 
   end record;

   for Open_Drone_Id_Basic_Id use record
      Target_System    at 0  range 0 .. 7;
      Target_Component at 1  range 0 .. 7;
      Id_Or_Mac        at 2  range 0 .. 159;
      Id_Type          at 22 range 0 .. 7;
      Ua_Type          at 23 range 0 .. 7;
      Uas_Id           at 24 range 0 .. 159;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_Basic_Id;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_Basic_Id;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_Basic_Id;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Basic_Id;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Open_Drone_Id_Basic_Id;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Basic_Id;
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
     (Message : Open_Drone_Id_Basic_Id;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_Basic_Id;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Open_Drone_Id_Basic_Ids;
