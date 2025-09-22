-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The global position resulting from GPS and sensor fusion. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Utm_Global_Positions is

   pragma Preelaborate;

   Utm_Global_Position_Id : constant Msg_Id := 340;

   type Utm_Global_Position is record
      Time         : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Time of applicability of position (microseconds since UNIX epoch). 
      Uas_Id       : Unsigned_8_Array (1 .. 18);
      --  Unique UAS ID. 
      Lat          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Lon          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Alt          : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (WGS84) 
      Relative_Alt : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude above ground 
      Vx           : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground X speed (latitude, positive north) 
      Vy           : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Y speed (longitude, positive east) 
      Vz           : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  Ground Z speed (altitude, positive down) 
      H_Acc        : Interfaces.Unsigned_16;
      --  Units: [mm]
      --  Horizontal position uncertainty (standard deviation) 
      V_Acc        : Interfaces.Unsigned_16;
      --  Units: [mm]
      --  Altitude uncertainty (standard deviation) 
      Vel_Acc      : Interfaces.Unsigned_16;
      --  Units: [cm/s]
      --  Speed uncertainty (standard deviation) 
      Next_Lat     : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Next waypoint, latitude (WGS84) 
      Next_Lon     : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Next waypoint, longitude (WGS84) 
      Next_Alt     : Interfaces.Integer_32;
      --  Units: [mm]
      --  Next waypoint, altitude (WGS84) 
      Update_Rate  : Interfaces.Unsigned_16 :=
        0;
      --  Units: [cs]
      --  Time until next update. Set to 0 if unknown or in data driven mode. 
      Flight_State : Utm_Flight_State;
      --  Flight state 
      Flags        : Utm_Data_Avail_Flags;
      --  Bitwise OR combination of the data available flags. 
   end record;

   for Utm_Global_Position use record
      Time         at 0  range 0 .. 63;
      Lat          at 8  range 0 .. 31;
      Lon          at 12 range 0 .. 31;
      Alt          at 16 range 0 .. 31;
      Relative_Alt at 20 range 0 .. 31;
      Next_Lat     at 24 range 0 .. 31;
      Next_Lon     at 28 range 0 .. 31;
      Next_Alt     at 32 range 0 .. 31;
      Vx           at 36 range 0 .. 15;
      Vy           at 38 range 0 .. 15;
      Vz           at 40 range 0 .. 15;
      H_Acc        at 42 range 0 .. 15;
      V_Acc        at 44 range 0 .. 15;
      Vel_Acc      at 46 range 0 .. 15;
      Update_Rate  at 48 range 0 .. 15;
      Uas_Id       at 50 range 0 .. 143;
      Flight_State at 68 range 0 .. 7;
      Flags        at 69 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Utm_Global_Position;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Utm_Global_Position;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Utm_Global_Position;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Utm_Global_Position;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Utm_Global_Position;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Utm_Global_Position;
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
     (Message : Utm_Global_Position;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Utm_Global_Position;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Utm_Global_Positions;
