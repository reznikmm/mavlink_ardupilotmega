-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Contains the home position. The home position is the default position that 
--  the system will return to and land on. The position must be set 
--  automatically by the system during the takeoff, and may also be explicitly 
--  set using MAV_CMD_DO_SET_HOME. The global and local positions encode the 
--  position in the respective coordinate frames, while the q parameter 
--  encodes the orientation of the surface. Under normal conditions it 
--  describes the heading and terrain slope, which can be used by the aircraft 
--  to adjust the approach. The approach 3D vector describes the point to 
--  which the system should fly in normal flight mode and then perform a 
--  landing sequence along the vector. Note: this message can be requested by 
--  sending the MAV_CMD_REQUEST_MESSAGE with param1=242 (or the deprecated 
--  MAV_CMD_GET_HOME_POSITION command). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Home_Positions is

   pragma Preelaborate;

   Home_Position_Id : constant Msg_Id := 242;

   type Home_Position is record
      Latitude   : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Longitude  : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Altitude   : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Positive for up. 
      X          : Raw_Float;
      --  Units: [m]
      --  Local X position of this position in the local coordinate frame 
      --  (NED) 
      Y          : Raw_Float;
      --  Units: [m]
      --  Local Y position of this position in the local coordinate frame 
      --  (NED) 
      Z          : Raw_Float;
      --  Units: [m]
      --  Local Z position of this position in the local coordinate frame 
      --  (NED: positive "down") 
      Q          : Short_Float_Array (1 .. 4) :=
        [others => To_Raw (0.0)];
      --  Quaternion indicating world-to-surface-normal and heading 
      --  transformation of the takeoff position. Used to indicate the heading 
      --  and slope of the ground. All fields should be set to NaN if an 
      --  accurate quaternion for both heading and surface slope cannot be 
      --  supplied. 
      Approach_X : Raw_Float;
      --  Units: [m]
      --  Local X position of the end of the approach vector. Multicopters 
      --  should set this position based on their takeoff path. Grass-landing 
      --  fixed wing aircraft should set it the same way as multicopters. 
      --  Runway-landing fixed wing aircraft should set it to the opposite 
      --  direction of the takeoff, assuming the takeoff happened from the 
      --  threshold / touchdown zone. 
      Approach_Y : Raw_Float;
      --  Units: [m]
      --  Local Y position of the end of the approach vector. Multicopters 
      --  should set this position based on their takeoff path. Grass-landing 
      --  fixed wing aircraft should set it the same way as multicopters. 
      --  Runway-landing fixed wing aircraft should set it to the opposite 
      --  direction of the takeoff, assuming the takeoff happened from the 
      --  threshold / touchdown zone. 
      Approach_Z : Raw_Float;
      --  Units: [m]
      --  Local Z position of the end of the approach vector. Multicopters 
      --  should set this position based on their takeoff path. Grass-landing 
      --  fixed wing aircraft should set it the same way as multicopters. 
      --  Runway-landing fixed wing aircraft should set it to the opposite 
      --  direction of the takeoff, assuming the takeoff happened from the 
      --  threshold / touchdown zone. 
      Time_Usec  : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
   end record;

   for Home_Position use record
      Latitude   at 0  range 0 .. 31;
      Longitude  at 4  range 0 .. 31;
      Altitude   at 8  range 0 .. 31;
      X          at 12 range 0 .. 31;
      Y          at 16 range 0 .. 31;
      Z          at 20 range 0 .. 31;
      Q          at 24 range 0 .. 127;
      Approach_X at 40 range 0 .. 31;
      Approach_Y at 44 range 0 .. 31;
      Approach_Z at 48 range 0 .. 31;
      Time_Usec  at 52 range 0 .. 63;
   end record;

   procedure Encode
     (Message : Home_Position;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Home_Position;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Home_Position;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Home_Position;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Home_Position;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Home_Position;
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
     (Message : Home_Position;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Home_Position;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Home_Positions;
