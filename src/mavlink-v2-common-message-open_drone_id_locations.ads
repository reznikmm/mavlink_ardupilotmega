-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Data for filling the OpenDroneID Location message. The float data types 
--  are 32-bit IEEE 754. The Location message provides the location, altitude, 
--  direction and speed of the aircraft. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Open_Drone_Id_Locations is

   pragma Preelaborate;

   Open_Drone_Id_Location_Id : constant Msg_Id := 12901;

   type Open_Drone_Id_Location is record
      Target_System       : Interfaces.Unsigned_8;
      --  System ID (0 for broadcast). 
      Target_Component    : Interfaces.Unsigned_8;
      --  Component ID (0 for broadcast). 
      Id_Or_Mac           : Unsigned_8_Array (1 .. 20);
      --  Only used for drone ID data received from other UAs. See detailed 
      --  description at https://mavlink.io/en/services/opendroneid.html. 
      Status              : Mav_Odid_Status;
      --  Indicates whether the unmanned aircraft is on the ground or in the 
      --  air. 
      Direction           : Interfaces.Unsigned_16 :=
        36100;
      --  Units: [cdeg]
      --  Direction over ground (not heading, but direction of movement) 
      --  measured clockwise from true North: 0 - 35999 centi-degrees. If 
      --  unknown: 36100 centi-degrees. 
      Speed_Horizontal    : Interfaces.Unsigned_16;
      --  Units: [cm/s]
      --  Ground speed. Positive only. If unknown: 25500 cm/s. If speed is 
      --  larger than 25425 cm/s, use 25425 cm/s. 
      Speed_Vertical      : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  The vertical speed. Up is positive. If unknown: 6300 cm/s. If speed 
      --  is larger than 6200 cm/s, use 6200 cm/s. If lower than -6200 cm/s, 
      --  use -6200 cm/s. 
      Latitude            : Interfaces.Integer_32 :=
        0;
      --  Units: [degE7]
      --  Current latitude of the unmanned aircraft. If unknown: 0 (both 
      --  Lat/Lon). 
      Longitude           : Interfaces.Integer_32 :=
        0;
      --  Units: [degE7]
      --  Current longitude of the unmanned aircraft. If unknown: 0 (both 
      --  Lat/Lon). 
      Altitude_Barometric : Raw_Float :=
        To_Raw (-1000.0);
      --  Units: [m]
      --  The altitude calculated from the barometric pressure. Reference is 
      --  against 29.92inHg or 1013.2mb. If unknown: -1000 m. 
      Altitude_Geodetic   : Raw_Float :=
        To_Raw (-1000.0);
      --  Units: [m]
      --  The geodetic altitude as defined by WGS84. If unknown: -1000 m. 
      Height_Reference    : Mav_Odid_Height_Ref;
      --  Indicates the reference point for the height field. 
      Height              : Raw_Float :=
        To_Raw (-1000.0);
      --  Units: [m]
      --  The current height of the unmanned aircraft above the take-off 
      --  location or the ground as indicated by height_reference. If unknown: 
      --  -1000 m. 
      Horizontal_Accuracy : Mav_Odid_Hor_Acc;
      --  The accuracy of the horizontal position. 
      Vertical_Accuracy   : Mav_Odid_Ver_Acc;
      --  The accuracy of the vertical position. 
      Barometer_Accuracy  : Mav_Odid_Ver_Acc;
      --  The accuracy of the barometric altitude. 
      Speed_Accuracy      : Mav_Odid_Speed_Acc;
      --  The accuracy of the horizontal and vertical speed. 
      Timestamp           : Raw_Float :=
        To_Raw (Float (16#FFFF#));
      --  Units: [s]
      --  Seconds after the full hour with reference to UTC time. Typically 
      --  the GPS outputs a time-of-week value in milliseconds. First convert 
      --  that to UTC and then convert for this field using ((float) 
      --  (time_week_ms % (60*60*1000))) / 1000. If unknown: 0xFFFF. 
      Timestamp_Accuracy  : Mav_Odid_Time_Acc;
      --  The accuracy of the timestamps. 
   end record;

   for Open_Drone_Id_Location use record
      Latitude            at 0  range 0 .. 31;
      Longitude           at 4  range 0 .. 31;
      Altitude_Barometric at 8  range 0 .. 31;
      Altitude_Geodetic   at 12 range 0 .. 31;
      Height              at 16 range 0 .. 31;
      Timestamp           at 20 range 0 .. 31;
      Direction           at 24 range 0 .. 15;
      Speed_Horizontal    at 26 range 0 .. 15;
      Speed_Vertical      at 28 range 0 .. 15;
      Target_System       at 30 range 0 .. 7;
      Target_Component    at 31 range 0 .. 7;
      Id_Or_Mac           at 32 range 0 .. 159;
      Status              at 52 range 0 .. 7;
      Height_Reference    at 53 range 0 .. 7;
      Horizontal_Accuracy at 54 range 0 .. 7;
      Vertical_Accuracy   at 55 range 0 .. 7;
      Barometer_Accuracy  at 56 range 0 .. 7;
      Speed_Accuracy      at 57 range 0 .. 7;
      Timestamp_Accuracy  at 58 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Open_Drone_Id_Location;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Open_Drone_Id_Location;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Open_Drone_Id_Location;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Location;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Open_Drone_Id_Location;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Open_Drone_Id_Location;
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
     (Message : Open_Drone_Id_Location;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Open_Drone_Id_Location;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Open_Drone_Id_Locations;
