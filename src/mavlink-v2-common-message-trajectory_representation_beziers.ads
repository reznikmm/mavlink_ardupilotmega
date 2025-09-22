-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2025-03 REPLACED BY: Nothing
--  Implemented PX4 v1.11 to v1.14. Not used in current flight stacks. 
------------
--  Describe a trajectory using an array of up-to 5 bezier control points in 
--  the local frame (MAV_FRAME_LOCAL_NED). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Trajectory_Representation_Beziers is

   pragma Preelaborate;

   Trajectory_Representation_Bezier_Id : constant Msg_Id := 333;

   type Trajectory_Representation_Bezier is record
      Time_Usec    : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Valid_Points : Interfaces.Unsigned_8;
      --  Number of valid control points (up-to 5 points are possible) 
      Pos_X        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m]
      --  X-coordinate of bezier control points. Set to NaN if not being used 
      Pos_Y        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m]
      --  Y-coordinate of bezier control points. Set to NaN if not being used 
      Pos_Z        : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [m]
      --  Z-coordinate of bezier control points. Set to NaN if not being used 
      Delta_Field  : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [s]
      --  Bezier time horizon. Set to NaN if velocity/acceleration should not 
      --  be incorporated 
      Pos_Yaw      : Short_Float_Array (1 .. 5) :=
        [others => To_Raw (0.0)];
      --  Units: [rad]
      --  Yaw. Set to NaN for unchanged 
   end record;

   pragma Obsolescent (Trajectory_Representation_Bezier);

   for Trajectory_Representation_Bezier use record
      Time_Usec    at 0   range 0 .. 63;
      Pos_X        at 8   range 0 .. 159;
      Pos_Y        at 28  range 0 .. 159;
      Pos_Z        at 48  range 0 .. 159;
      Delta_Field  at 68  range 0 .. 159;
      Pos_Yaw      at 88  range 0 .. 159;
      Valid_Points at 108 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Trajectory_Representation_Bezier;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Trajectory_Representation_Bezier;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Trajectory_Representation_Bezier;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Trajectory_Representation_Bezier;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Trajectory_Representation_Bezier;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Trajectory_Representation_Bezier;
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
     (Message : Trajectory_Representation_Bezier;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Trajectory_Representation_Bezier;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Trajectory_Representation_Beziers;
