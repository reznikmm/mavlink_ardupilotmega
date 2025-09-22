-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2025-03 REPLACED BY: Nothing
--  Implemented PX4 v1.11 to v1.14. Not used in current flight stacks. 
------------
--  Describe a trajectory using an array of up-to 5 waypoints in the local 
--  frame (MAV_FRAME_LOCAL_NED). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Trajectory_Representation_Waypointses is

   pragma Preelaborate;

   Trajectory_Representation_Waypoints_Id : constant Msg_Id := 332;

   type Trajectory_Representation_Waypoints is record
      Time_Usec    : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Valid_Points : Interfaces.Unsigned_8;
      --  Number of valid points (up-to 5 waypoints are possible) 
      Pos_X        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m]
      --  X-coordinate of waypoint, set to NaN if not being used 
      Pos_Y        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m]
      --  Y-coordinate of waypoint, set to NaN if not being used 
      Pos_Z        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m]
      --  Z-coordinate of waypoint, set to NaN if not being used 
      Vel_X        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m/s]
      --  X-velocity of waypoint, set to NaN if not being used 
      Vel_Y        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m/s]
      --  Y-velocity of waypoint, set to NaN if not being used 
      Vel_Z        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m/s]
      --  Z-velocity of waypoint, set to NaN if not being used 
      Acc_X        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m/s/s]
      --  X-acceleration of waypoint, set to NaN if not being used 
      Acc_Y        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m/s/s]
      --  Y-acceleration of waypoint, set to NaN if not being used 
      Acc_Z        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m/s/s]
      --  Z-acceleration of waypoint, set to NaN if not being used 
      Pos_Yaw      : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [rad]
      --  Yaw angle, set to NaN if not being used 
      Vel_Yaw      : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [rad/s]
      --  Yaw rate, set to NaN if not being used 
      Command      : Unsigned_16_Array (1 .. 5) :=
        [others => Interfaces.Unsigned_16'Last];
      --  MAV_CMD command id of waypoint, set to UINT16_MAX if not being used. 
   end record;

   pragma Obsolescent (Trajectory_Representation_Waypoints);

   for Trajectory_Representation_Waypoints use record
      Time_Usec    at 0   range 0 .. 63;
      Pos_X        at 8   range 0 .. 159;
      Pos_Y        at 28  range 0 .. 159;
      Pos_Z        at 48  range 0 .. 159;
      Vel_X        at 68  range 0 .. 159;
      Vel_Y        at 88  range 0 .. 159;
      Vel_Z        at 108 range 0 .. 159;
      Acc_X        at 128 range 0 .. 159;
      Acc_Y        at 148 range 0 .. 159;
      Acc_Z        at 168 range 0 .. 159;
      Pos_Yaw      at 188 range 0 .. 159;
      Vel_Yaw      at 208 range 0 .. 159;
      Command      at 228 range 0 .. 79;
      Valid_Points at 238 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Trajectory_Representation_Waypoints;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Trajectory_Representation_Waypoints;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Trajectory_Representation_Waypoints;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Trajectory_Representation_Waypoints;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Trajectory_Representation_Waypoints;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Trajectory_Representation_Waypoints;
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
     (Message : Trajectory_Representation_Waypoints;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Trajectory_Representation_Waypoints;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Trajectory_Representation_Waypointses;
