-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Data for filling the OpenDroneID Authentication message. The 
--  Authentication Message defines a field that can provide a means of 
--  authenticity for the identity of the UAS (Unmanned Aircraft System). The 
--  Authentication message can have two different formats. For data page 0, 
--  the fields PageCount, Length and TimeStamp are present and AuthData is 
--  only 17 bytes. For data page 1 through 15, PageCount, Length and TimeStamp 
--  are not present and the size of AuthData is 23 bytes. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Open_Drone_Id_Authentications is

   pragma Preelaborate;

   Open_Drone_Id_Authentication_Id : constant Msg_Id := 12902;

   type Open_Drone_Id_Authentication is record
      Target_System       : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast). 
      Target_Component    : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast). 
      Id_Or_Mac           : Unsigned_8_Array (1 .. 20);
      --  Only used for drone ID data received from other UAs. See detailed 
      --  description at https://mavlink.io/en/services/opendroneid.html. 
      Authentication_Type : Mav_Odid_Auth_Type;
      --  Indicates the type of authentication. 
      Data_Page           : Interfaces.Unsigned_8;
      --  Allowed range is 0 - 15. 
      Last_Page_Index     : Interfaces.Unsigned_8;
      --  This field is only present for page 0. Allowed range is 0 - 15. See 
      --  the description of struct ODID_Auth_data at 
      --  https://github.com/opendroneid/opendroneid-core-c/blob/master/libopendroneid/opendroneid.h. 
      Length              : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  This field is only present for page 0. Total bytes of 
      --  authentication_data from all data pages. See the description of 
      --  struct ODID_Auth_data at 
      --  https://github.com/opendroneid/opendroneid-core-c/blob/master/libopendroneid/opendroneid.h. 
      Timestamp           : Interfaces.Unsigned_32;
      --  Units: [s]
      --  This field is only present for page 0. 32 bit Unix Timestamp in 
      --  seconds since 00:00:00 01/01/2019. 
      Authentication_Data : Unsigned_8_Array (1 .. 23);
      --  Opaque authentication data. For page 0, the size is only 17 bytes. 
      --  For other pages, the size is 23 bytes. Shall be filled with nulls in 
      --  the unused portion of the field. 
   end record;

   for Open_Drone_Id_Authentication use record
      Timestamp           at 0  range 0 .. 31;
      Target_System       at 4  range 0 .. 7;
      Target_Component    at 5  range 0 .. 7;
      Id_Or_Mac           at 6  range 0 .. 159;
      Authentication_Type at 26 range 0 .. 7;
      Data_Page           at 27 range 0 .. 7;
      Last_Page_Index     at 28 range 0 .. 7;
      Length              at 29 range 0 .. 7;
      Authentication_Data at 30 range 0 .. 183;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_Authentication;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_Authentication;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_Authentication;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Authentication;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Open_Drone_Id_Authentication;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Authentication;
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
     (Message : Open_Drone_Id_Authentication;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_Authentication;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Open_Drone_Id_Authentications;
