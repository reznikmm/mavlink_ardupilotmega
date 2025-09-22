-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  GPS sensor input message. This is a raw sensor value sent by the GPS. This 
--  is NOT the global position estimate of the system. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gps_Inputs is

   pragma Preelaborate;

   Gps_Input_Id : constant Msg_Id := 232;

   type Gps_Input is record
      Time_Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Gps_Id             : Interfaces.Unsigned_8;
      --  ID of the GPS for multiple GPS inputs 
      Ignore_Flags       : Gps_Input_Ignore_Flags;
      --  Bitmap indicating which GPS input flags fields to ignore. All other 
      --  fields must be provided. 
      Time_Week_Ms       : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  GPS time (from start of GPS week) 
      Time_Week          : Interfaces.Unsigned_16;
      --  GPS week number 
      Fix_Type           : Interfaces.Unsigned_8;
      --  0-1: no fix, 2: 2D fix, 3: 3D fix. 4: 3D with DGPS. 5: 3D with RTK 
      Lat                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Lon                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Alt                : Raw_Float;
      --  Units: [m]
      --  Altitude (MSL). Positive for up. 
      Hdop               : Raw_Float :=
        To_Raw (Float (Interfaces.Unsigned_16'Last));
      --  GPS HDOP horizontal dilution of position (unitless). If unknown, set 
      --  to: UINT16_MAX 
      Vdop               : Raw_Float :=
        To_Raw (Float (Interfaces.Unsigned_16'Last));
      --  GPS VDOP vertical dilution of position (unitless). If unknown, set 
      --  to: UINT16_MAX 
      Vn                 : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity in north direction in earth-fixed NED frame 
      Ve                 : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity in east direction in earth-fixed NED frame 
      Vd                 : Raw_Float;
      --  Units: [m/s]
      --  GPS velocity in down direction in earth-fixed NED frame 
      Speed_Accuracy     : Raw_Float;
      --  Units: [m/s]
      --  GPS speed accuracy 
      Horiz_Accuracy     : Raw_Float;
      --  Units: [m]
      --  GPS horizontal accuracy 
      Vert_Accuracy      : Raw_Float;
      --  Units: [m]
      --  GPS vertical accuracy 
      Satellites_Visible : Interfaces.Unsigned_8;
      --  Number of satellites visible. 
      Yaw                : Interfaces.Unsigned_16;
      --  Units: [cdeg]
      --  Yaw of vehicle relative to Earth's North, zero means not available, 
      --  use 36000 for north 
   end record;

   for Gps_Input use record
      Time_Usec          at 0  range 0 .. 63;
      Time_Week_Ms       at 8  range 0 .. 31;
      Lat                at 12 range 0 .. 31;
      Lon                at 16 range 0 .. 31;
      Alt                at 20 range 0 .. 31;
      Hdop               at 24 range 0 .. 31;
      Vdop               at 28 range 0 .. 31;
      Vn                 at 32 range 0 .. 31;
      Ve                 at 36 range 0 .. 31;
      Vd                 at 40 range 0 .. 31;
      Speed_Accuracy     at 44 range 0 .. 31;
      Horiz_Accuracy     at 48 range 0 .. 31;
      Vert_Accuracy      at 52 range 0 .. 31;
      Ignore_Flags       at 56 range 0 .. 15;
      Time_Week          at 58 range 0 .. 15;
      Gps_Id             at 60 range 0 .. 7;
      Fix_Type           at 61 range 0 .. 7;
      Satellites_Visible at 62 range 0 .. 7;
      Yaw                at 63 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Gps_Input;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Input;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Input;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Input;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gps_Input;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Input;
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
     (Message : Gps_Input;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gps_Input;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gps_Inputs;
