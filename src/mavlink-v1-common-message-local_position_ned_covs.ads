-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The filtered local position (e.g. fused computer vision and 
--  accelerometers). Coordinate frame is right-handed, Z-axis down 
--  (aeronautical frame, NED / north-east-down convention) 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Local_Position_Ned_Covs is

   pragma Preelaborate;

   Local_Position_Ned_Cov_Id : constant Msg_Id := 64;

   Local_Position_Ned_Cov_Len : constant Interfaces.Unsigned_8 := 225;

   type Local_Position_Ned_Cov is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Estimator_Type : Mav_Estimator_Type;
      --  Class id of the estimator this estimate originated from. 
      X              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  X Position 
      Y              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Y Position 
      Z              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Z Position 
      Vx             : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  X Speed 
      Vy             : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Y Speed 
      Vz             : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Z Speed 
      Ax             : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  X Acceleration 
      Ay             : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Y Acceleration 
      Az             : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Z Acceleration 
      Covariance     : Short_Float_Array (1 .. 45) :=
        [others => 0.0];
      --  Row-major representation of position, velocity and acceleration 9x9 
      --  cross-covariance matrix upper right triangle (states: x, y, z, vx, 
      --  vy, vz, ax, ay, az; first nine entries are the first ROW, next eight 
      --  entries are the second row, etc.). If unknown, assign NaN value to 
      --  first element in the array. 
   end record;

   for Local_Position_Ned_Cov use record
      Time_Usec      at 0   range 0 .. 63;
      X              at 8   range 0 .. 31;
      Y              at 12  range 0 .. 31;
      Z              at 16  range 0 .. 31;
      Vx             at 20  range 0 .. 31;
      Vy             at 24  range 0 .. 31;
      Vz             at 28  range 0 .. 31;
      Ax             at 32  range 0 .. 31;
      Ay             at 36  range 0 .. 31;
      Az             at 40  range 0 .. 31;
      Covariance     at 44  range 0 .. 1439;
      Estimator_Type at 224 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Local_Position_Ned_Cov;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Local_Position_Ned_Cov;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Local_Position_Ned_Cov;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Local_Position_Ned_Cov;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Local_Position_Ned_Covs;
