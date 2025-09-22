-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Odometry message to communicate odometry information with an external 
--  interface. Fits ROS REP 147 standard for aerial vehicles 
--  (http://www.ros.org/reps/rep-0147.html). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Odometrys is

   pragma Preelaborate;

   Odometry_Id : constant Msg_Id := 331;

   type Odometry is record
      Time_Usec           : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Frame_Id            : Mav_Frame;
      --  Coordinate frame of reference for the pose data. 
      Child_Frame_Id      : Mav_Frame;
      --  Coordinate frame of reference for the velocity in free space (twist) 
      --  data. 
      X                   : Raw_Float;
      --  Units: [m]
      --  X Position 
      Y                   : Raw_Float;
      --  Units: [m]
      --  Y Position 
      Z                   : Raw_Float;
      --  Units: [m]
      --  Z Position 
      Q                   : Short_Float_Array (1 .. 4);
      --  Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation) 
      Vx                  : Raw_Float;
      --  Units: [m/s]
      --  X linear speed 
      Vy                  : Raw_Float;
      --  Units: [m/s]
      --  Y linear speed 
      Vz                  : Raw_Float;
      --  Units: [m/s]
      --  Z linear speed 
      Rollspeed           : Raw_Float;
      --  Units: [rad/s]
      --  Roll angular speed 
      Pitchspeed          : Raw_Float;
      --  Units: [rad/s]
      --  Pitch angular speed 
      Yawspeed            : Raw_Float;
      --  Units: [rad/s]
      --  Yaw angular speed 
      Pose_Covariance     : Short_Float_Array (1 .. 21) :=
        [others => To_Raw (0.0)];
      --  Row-major representation of a 6x6 pose cross-covariance matrix upper 
      --  right triangle (states: x, y, z, roll, pitch, yaw; first six entries 
      --  are the first ROW, next five entries are the second ROW, etc.). If 
      --  unknown, assign NaN value to first element in the array. 
      Velocity_Covariance : Short_Float_Array (1 .. 21) :=
        [others => To_Raw (0.0)];
      --  Row-major representation of a 6x6 velocity cross-covariance matrix 
      --  upper right triangle (states: vx, vy, vz, rollspeed, pitchspeed, 
      --  yawspeed; first six entries are the first ROW, next five entries are 
      --  the second ROW, etc.). If unknown, assign NaN value to first element 
      --  in the array. 
      Reset_Counter       : Interfaces.Unsigned_8;
      --  Estimate reset counter. This should be incremented when the estimate 
      --  resets in any of the dimensions (position, velocity, attitude, 
      --  angular speed). This is designed to be used when e.g an external 
      --  SLAM system detects a loop-closure and the estimate jumps. 
      Estimator_Type      : Mav_Estimator_Type;
      --  Type of estimator that is providing the odometry. 
      Quality             : Interfaces.Integer_8 :=
        0;
      --  Units: [%]
      --  Optional odometry quality metric as a percentage. -1 = odometry has 
      --  failed, 0 = unknown/unset quality, 1 = worst quality, 100 = best 
      --  quality 
   end record;

   for Odometry use record
      Time_Usec           at 0   range 0 .. 63;
      X                   at 8   range 0 .. 31;
      Y                   at 12  range 0 .. 31;
      Z                   at 16  range 0 .. 31;
      Q                   at 20  range 0 .. 127;
      Vx                  at 36  range 0 .. 31;
      Vy                  at 40  range 0 .. 31;
      Vz                  at 44  range 0 .. 31;
      Rollspeed           at 48  range 0 .. 31;
      Pitchspeed          at 52  range 0 .. 31;
      Yawspeed            at 56  range 0 .. 31;
      Pose_Covariance     at 60  range 0 .. 671;
      Velocity_Covariance at 144 range 0 .. 671;
      Frame_Id            at 228 range 0 .. 7;
      Child_Frame_Id      at 229 range 0 .. 7;
      Reset_Counter       at 230 range 0 .. 7;
      Estimator_Type      at 231 range 0 .. 7;
      Quality             at 232 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Odometry;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Odometry;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Odometry;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Odometry;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Odometry;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Odometry;
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
     (Message : Odometry;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Odometry;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Odometrys;
