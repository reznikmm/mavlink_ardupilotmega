-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Data for filling the OpenDroneID System message. The System Message 
--  contains general system information including the operator 
--  location/altitude and possible aircraft group and/or category/class 
--  information. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Open_Drone_Id_Systems is

   pragma Preelaborate;

   Open_Drone_Id_System_Id : constant Msg_Id := 12904;

   type Open_Drone_Id_System is record
      Target_System          : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast). 
      Target_Component       : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast). 
      Id_Or_Mac              : Unsigned_8_Array (1 .. 20);
      --  Only used for drone ID data received from other UAs. See detailed 
      --  description at https://mavlink.io/en/services/opendroneid.html. 
      Operator_Location_Type : Mav_Odid_Operator_Location_Type;
      --  Specifies the operator location type. 
      Classification_Type    : Mav_Odid_Classification_Type;
      --  Specifies the classification type of the UA. 
      Operator_Latitude      : Interfaces.Integer_32 :=
        0;
      --  Units: [degE7]
      --  Latitude of the operator. If unknown: 0 (both Lat/Lon). 
      Operator_Longitude     : Interfaces.Integer_32 :=
        0;
      --  Units: [degE7]
      --  Longitude of the operator. If unknown: 0 (both Lat/Lon). 
      Area_Count             : Interfaces.Unsigned_16;
      --  Number of aircraft in the area, group or formation (default 1). Used 
      --  only for swarms/multiple UA. 
      Area_Radius            : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Radius of the cylindrical area of the group or formation (default 
      --  0). Used only for swarms/multiple UA. 
      Area_Ceiling           : Raw_Float :=
        To_Raw (-1000.0);
      --  Units: [m]
      --  Area Operations Ceiling relative to WGS84. If unknown: -1000 m. Used 
      --  only for swarms/multiple UA. 
      Area_Floor             : Raw_Float :=
        To_Raw (-1000.0);
      --  Units: [m]
      --  Area Operations Floor relative to WGS84. If unknown: -1000 m. Used 
      --  only for swarms/multiple UA. 
      Category_Eu            : Mav_Odid_Category_Eu;
      --  When classification_type is MAV_ODID_CLASSIFICATION_TYPE_EU, 
      --  specifies the category of the UA. 
      Class_Eu               : Mav_Odid_Class_Eu;
      --  When classification_type is MAV_ODID_CLASSIFICATION_TYPE_EU, 
      --  specifies the class of the UA. 
      Operator_Altitude_Geo  : Raw_Float :=
        To_Raw (-1000.0);
      --  Units: [m]
      --  Geodetic altitude of the operator relative to WGS84. If unknown: 
      --  -1000 m. 
      Timestamp              : Interfaces.Unsigned_32;
      --  Units: [s]
      --  32 bit Unix Timestamp in seconds since 00:00:00 01/01/2019. 
   end record;

   for Open_Drone_Id_System use record
      Operator_Latitude      at 0  range 0 .. 31;
      Operator_Longitude     at 4  range 0 .. 31;
      Area_Ceiling           at 8  range 0 .. 31;
      Area_Floor             at 12 range 0 .. 31;
      Operator_Altitude_Geo  at 16 range 0 .. 31;
      Timestamp              at 20 range 0 .. 31;
      Area_Count             at 24 range 0 .. 15;
      Area_Radius            at 26 range 0 .. 15;
      Target_System          at 28 range 0 .. 7;
      Target_Component       at 29 range 0 .. 7;
      Id_Or_Mac              at 30 range 0 .. 159;
      Operator_Location_Type at 50 range 0 .. 7;
      Classification_Type    at 51 range 0 .. 7;
      Category_Eu            at 52 range 0 .. 7;
      Class_Eu               at 53 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_System;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_System;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_System;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_System;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Open_Drone_Id_System;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_System;
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
     (Message : Open_Drone_Id_System;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_System;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Open_Drone_Id_Systems;
