-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2022-02 REPLACED BY: MAV_CMD_DO_SET_HOME
--  The command protocol version (MAV_CMD_DO_SET_HOME) allows a GCS to detect 
--  when setting the home position has failed. 
------------
--  Sets the home position. The home position is the default position that the 
--  system will return to and land on. The position is set automatically by 
--  the system during the takeoff (and may also be set using this message). 
--  The global and local positions encode the position in the respective 
--  coordinate frames, while the q parameter encodes the orientation of the 
--  surface. Under normal conditions it describes the heading and terrain 
--  slope, which can be used by the aircraft to adjust the approach. The 
--  approach 3D vector describes the point to which the system should fly in 
--  normal flight mode and then perform a landing sequence along the vector. 
--  Note: the current home position may be emitted in a HOME_POSITION message 
--  on request (using MAV_CMD_REQUEST_MESSAGE with param1=242). 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Set_Home_Positions is

   pragma Preelaborate;

   Set_Home_Position_Id : constant Msg_Id := 243;

   Set_Home_Position_Len : constant Interfaces.Unsigned_8 := 53;

   type Set_Home_Position is record
      Target_System : Interfaces.Unsigned_8;
      --  System ID. 
      Latitude      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Longitude     : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Altitude      : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Positive for up. 
      X             : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local X position of this position in the local coordinate frame 
      --  (NED) 
      Y             : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local Y position of this position in the local coordinate frame 
      --  (NED) 
      Z             : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local Z position of this position in the local coordinate frame 
      --  (NED: positive "down") 
      Q             : Short_Float_Array (1 .. 4);
      --  World to surface normal and heading transformation of the takeoff 
      --  position. Used to indicate the heading and slope of the ground 
      Approach_X    : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local X position of the end of the approach vector. Multicopters 
      --  should set this position based on their takeoff path. Grass-landing 
      --  fixed wing aircraft should set it the same way as multicopters. 
      --  Runway-landing fixed wing aircraft should set it to the opposite 
      --  direction of the takeoff, assuming the takeoff happened from the 
      --  threshold / touchdown zone. 
      Approach_Y    : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local Y position of the end of the approach vector. Multicopters 
      --  should set this position based on their takeoff path. Grass-landing 
      --  fixed wing aircraft should set it the same way as multicopters. 
      --  Runway-landing fixed wing aircraft should set it to the opposite 
      --  direction of the takeoff, assuming the takeoff happened from the 
      --  threshold / touchdown zone. 
      Approach_Z    : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local Z position of the end of the approach vector. Multicopters 
      --  should set this position based on their takeoff path. Grass-landing 
      --  fixed wing aircraft should set it the same way as multicopters. 
      --  Runway-landing fixed wing aircraft should set it to the opposite 
      --  direction of the takeoff, assuming the takeoff happened from the 
      --  threshold / touchdown zone. 
   end record;

   pragma Obsolescent (Set_Home_Position);

   for Set_Home_Position use record
      Latitude      at 0  range 0 .. 31;
      Longitude     at 4  range 0 .. 31;
      Altitude      at 8  range 0 .. 31;
      X             at 12 range 0 .. 31;
      Y             at 16 range 0 .. 31;
      Z             at 20 range 0 .. 31;
      Q             at 24 range 0 .. 127;
      Approach_X    at 40 range 0 .. 31;
      Approach_Y    at 44 range 0 .. 31;
      Approach_Z    at 48 range 0 .. 31;
      Target_System at 52 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Set_Home_Position;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Set_Home_Position;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Set_Home_Position;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Home_Position;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Set_Home_Position;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Set_Home_Position;
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

end MAVLink.V1.Common.Message.Set_Home_Positions;
