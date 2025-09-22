-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Reports the current commanded vehicle position, velocity, and acceleration 
--  as specified by the autopilot. This should match the commands sent in 
--  SET_POSITION_TARGET_GLOBAL_INT if the vehicle is being controlled this 
--  way. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Position_Target_Global_Ints is

   pragma Preelaborate;

   Position_Target_Global_Int_Id : constant Msg_Id := 87;

   Position_Target_Global_Int_Len : constant Interfaces.Unsigned_8 := 51;

   type Position_Target_Global_Int is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). The rationale for the timestamp 
      --  in the setpoint is to allow the system to compensate for the 
      --  transport delay of the setpoint. This allows the system to 
      --  compensate processing latency. 
      Coordinate_Frame : Mav_Frame;
      --  Valid options are: MAV_FRAME_GLOBAL = 0, 
      --  MAV_FRAME_GLOBAL_RELATIVE_ALT = 3, MAV_FRAME_GLOBAL_TERRAIN_ALT = 10 
      --  (MAV_FRAME_GLOBAL_INT, MAV_FRAME_GLOBAL_RELATIVE_ALT_INT, 
      --  MAV_FRAME_GLOBAL_TERRAIN_ALT_INT are allowed synonyms, but have been 
      --  deprecated) 
      Type_Mask        : Position_Target_Typemask;
      --  Bitmap to indicate which dimensions should be ignored by the 
      --  vehicle. 
      Lat_Int          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude in WGS84 frame 
      Lon_Int          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude in WGS84 frame 
      Alt              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Altitude (MSL, AGL or relative to home altitude, depending on frame) 
      Vx               : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  X velocity in NED frame 
      Vy               : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Y velocity in NED frame 
      Vz               : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Z velocity in NED frame 
      Afx              : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  X acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Afy              : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Y acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Afz              : Interfaces.IEEE_Float_32;
      --  Units: [m/s/s]
      --  Z acceleration or force (if bit 10 of type_mask is set) in NED frame 
      --  in meter / s^2 or N 
      Yaw              : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  yaw setpoint 
      Yaw_Rate         : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  yaw rate setpoint 
   end record;

   for Position_Target_Global_Int use record
      Time_Boot_Ms     at 0  range 0 .. 31;
      Lat_Int          at 4  range 0 .. 31;
      Lon_Int          at 8  range 0 .. 31;
      Alt              at 12 range 0 .. 31;
      Vx               at 16 range 0 .. 31;
      Vy               at 20 range 0 .. 31;
      Vz               at 24 range 0 .. 31;
      Afx              at 28 range 0 .. 31;
      Afy              at 32 range 0 .. 31;
      Afz              at 36 range 0 .. 31;
      Yaw              at 40 range 0 .. 31;
      Yaw_Rate         at 44 range 0 .. 31;
      Type_Mask        at 48 range 0 .. 15;
      Coordinate_Frame at 50 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Position_Target_Global_Int;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Position_Target_Global_Int;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Position_Target_Global_Int;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Position_Target_Global_Int;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Position_Target_Global_Int;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Position_Target_Global_Int;
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

end MAVLink.V1.Common.Message.Position_Target_Global_Ints;
