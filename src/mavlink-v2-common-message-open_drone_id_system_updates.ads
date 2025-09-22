-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Update the data in the OPEN_DRONE_ID_SYSTEM message with new location 
--  information. This can be sent to update the location information for the 
--  operator when no other information in the SYSTEM message has changed. This 
--  message allows for efficient operation on radio links which have limited 
--  uplink bandwidth while meeting requirements for update frequency of the 
--  operator location. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Open_Drone_Id_System_Updates is

   pragma Preelaborate;

   Open_Drone_Id_System_Update_Id : constant Msg_Id := 12919;

   type Open_Drone_Id_System_Update is record
      Target_System         : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast). 
      Target_Component      : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast). 
      Operator_Latitude     : Interfaces.Integer_32 :=
        0;
      --  Units: [degE7]
      --  Latitude of the operator. If unknown: 0 (both Lat/Lon). 
      Operator_Longitude    : Interfaces.Integer_32 :=
        0;
      --  Units: [degE7]
      --  Longitude of the operator. If unknown: 0 (both Lat/Lon). 
      Operator_Altitude_Geo : Raw_Float :=
        To_Raw (-1000.0);
      --  Units: [m]
      --  Geodetic altitude of the operator relative to WGS84. If unknown: 
      --  -1000 m. 
      Timestamp             : Interfaces.Unsigned_32;
      --  Units: [s]
      --  32 bit Unix Timestamp in seconds since 00:00:00 01/01/2019. 
   end record;

   for Open_Drone_Id_System_Update use record
      Operator_Latitude     at 0  range 0 .. 31;
      Operator_Longitude    at 4  range 0 .. 31;
      Operator_Altitude_Geo at 8  range 0 .. 31;
      Timestamp             at 12 range 0 .. 31;
      Target_System         at 16 range 0 .. 7;
      Target_Component      at 17 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_System_Update;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_System_Update;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_System_Update;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_System_Update;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Open_Drone_Id_System_Update;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_System_Update;
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
     (Message : Open_Drone_Id_System_Update;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_System_Update;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Open_Drone_Id_System_Updates;
