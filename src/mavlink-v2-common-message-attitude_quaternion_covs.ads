-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The attitude in the aeronautical frame (right-handed, Z-down, X-front, 
--  Y-right), expressed as quaternion. Quaternion order is w, x, y, z and a 
--  zero rotation would be expressed as (1 0 0 0). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Attitude_Quaternion_Covs is

   pragma Preelaborate;

   Attitude_Quaternion_Cov_Id : constant Msg_Id := 61;

   type Attitude_Quaternion_Cov is record
      Time_Usec  : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Q          : Short_Float_Array (1 .. 4);
      --  Quaternion components, w, x, y, z (1 0 0 0 is the null-rotation) 
      Rollspeed  : Raw_Float;
      --  Units: [rad/s]
      --  Roll angular speed 
      Pitchspeed : Raw_Float;
      --  Units: [rad/s]
      --  Pitch angular speed 
      Yawspeed   : Raw_Float;
      --  Units: [rad/s]
      --  Yaw angular speed 
      Covariance : Short_Float_Array (1 .. 9) :=
        [others => To_Raw (0.0)];
      --  Row-major representation of a 3x3 attitude covariance matrix 
      --  (states: roll, pitch, yaw; first three entries are the first ROW, 
      --  next three entries are the second row, etc.). If unknown, assign NaN 
      --  value to first element in the array. 
   end record;

   for Attitude_Quaternion_Cov use record
      Time_Usec  at 0  range 0 .. 63;
      Q          at 8  range 0 .. 127;
      Rollspeed  at 24 range 0 .. 31;
      Pitchspeed at 28 range 0 .. 31;
      Yawspeed   at 32 range 0 .. 31;
      Covariance at 36 range 0 .. 287;
   end record;

   procedure Encode
     (Message : Attitude_Quaternion_Cov;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Attitude_Quaternion_Cov;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Attitude_Quaternion_Cov;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude_Quaternion_Cov;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Attitude_Quaternion_Cov;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude_Quaternion_Cov;
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
     (Message : Attitude_Quaternion_Cov;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Attitude_Quaternion_Cov;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Attitude_Quaternion_Covs;
