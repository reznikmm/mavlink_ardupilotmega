-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The global position, as returned by the Global Positioning System (GPS). 
--  This is NOT the global position estimate of the system, but rather a RAW 
--  sensor value. See message GLOBAL_POSITION_INT for the global position 
--  estimate. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gps_Raw_Ints is

   pragma Preelaborate;

   Gps_Raw_Int_Id : constant Msg_Id := 24;

   type Gps_Raw_Int is record
      Time_Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Fix_Type           : Gps_Fix_Type;
      --  GPS fix type. 
      Lat                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84, EGM96 ellipsoid) 
      Lon                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84, EGM96 ellipsoid) 
      Alt                : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Positive for up. Note that virtually all GPS modules 
      --  provide the MSL altitude in addition to the WGS84 altitude. 
      Eph                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  GPS HDOP horizontal dilution of position (unitless * 100). If 
      --  unknown, set to: UINT16_MAX 
      Epv                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  GPS VDOP vertical dilution of position (unitless * 100). If unknown, 
      --  set to: UINT16_MAX 
      Vel                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [cm/s]
      --  GPS ground speed. If unknown, set to: UINT16_MAX 
      Cog                : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [cdeg]
      --  Course over ground (NOT heading, but direction of movement) in 
      --  degrees * 100, 0.0..359.99 degrees. If unknown, set to: UINT16_MAX 
      Satellites_Visible : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Number of satellites visible. If unknown, set to UINT8_MAX 
      Alt_Ellipsoid      : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (above WGS84, EGM96 ellipsoid). Positive for up. 
      H_Acc              : Interfaces.Unsigned_32;
      --  Units: [mm]
      --  Position uncertainty. 
      V_Acc              : Interfaces.Unsigned_32;
      --  Units: [mm]
      --  Altitude uncertainty. 
      Vel_Acc            : Interfaces.Unsigned_32;
      --  Units: [mm/s]
      --  Speed uncertainty. 
      Hdg_Acc            : Interfaces.Unsigned_32;
      --  Units: [degE5]
      --  Heading / track uncertainty 
      Yaw                : Interfaces.Unsigned_16 :=
        0;
      --  Units: [cdeg]
      --  Yaw in earth frame from north. Use 0 if this GPS does not provide 
      --  yaw. Use UINT16_MAX if this GPS is configured to provide yaw and is 
      --  currently unable to provide it. Use 36000 for north. 
   end record;

   for Gps_Raw_Int use record
      Time_Usec          at 0  range 0 .. 63;
      Lat                at 8  range 0 .. 31;
      Lon                at 12 range 0 .. 31;
      Alt                at 16 range 0 .. 31;
      Eph                at 20 range 0 .. 15;
      Epv                at 22 range 0 .. 15;
      Vel                at 24 range 0 .. 15;
      Cog                at 26 range 0 .. 15;
      Fix_Type           at 28 range 0 .. 7;
      Satellites_Visible at 29 range 0 .. 7;
      Alt_Ellipsoid      at 30 range 0 .. 31;
      H_Acc              at 34 range 0 .. 31;
      V_Acc              at 38 range 0 .. 31;
      Vel_Acc            at 42 range 0 .. 31;
      Hdg_Acc            at 46 range 0 .. 31;
      Yaw                at 50 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Gps_Raw_Int;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Raw_Int;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Raw_Int;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Raw_Int;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gps_Raw_Int;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Raw_Int;
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
     (Message : Gps_Raw_Int;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gps_Raw_Int;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gps_Raw_Ints;
