-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Static data to configure the ADS-B transponder (send within 10 sec of a
--  POR and every 10 sec thereafter)

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;
with MAVLink.V2.Uavionix.Types; use MAVLink.V2.Uavionix.Types;

package MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfgs is

   pragma Pure;

   type Uavionix_Adsb_Out_Cfg is record
      Icao         : Interfaces.Unsigned_32;
      --  Vehicle address (24 bit)
      Callsign     : String (1 .. 9);
      --  Vehicle identifier (8 characters, null terminated, valid characters
      --  are A-Z, 0-9, " " only)
      Emittertype  : Adsb_Emitter_Type;
      --  Transmitting vehicle type. See ADSB_EMITTER_TYPE enum
      Aircraftsize : Uavionix_Adsb_Out_Cfg_Aircraft_Size;
      --  Aircraft length and width encoding (table 2-35 of DO-282B)
      Gpsoffsetlat : Uavionix_Adsb_Out_Cfg_Gps_Offset_Lat;
      --  GPS antenna lateral offset (table 2-36 of DO-282B)
      Gpsoffsetlon : Uavionix_Adsb_Out_Cfg_Gps_Offset_Lon;
      --  GPS antenna longitudinal offset from nose [if non-zero, take
      --  position (in meters) divide by 2 and add one] (table 2-37 DO-282B)
      Stallspeed   : Interfaces.Unsigned_16;
      --  Units: [cm/s]
      --  Aircraft stall speed in cm/s
      Rfselect     : Uavionix_Adsb_Out_Rf_Select;
      --  ADS-B transponder receiver and transmit enable flags
   end record;

   for Uavionix_Adsb_Out_Cfg use record
      Icao         at 0  range 0 .. 31;
      Stallspeed   at 4  range 0 .. 15;
      Callsign     at 6  range 0 .. 71;
      Emittertype  at 15 range 0 .. 7;
      Aircraftsize at 16 range 0 .. 7;
      Gpsoffsetlat at 17 range 0 .. 7;
      Gpsoffsetlon at 18 range 0 .. 7;
      Rfselect     at 19 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Cfg;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Cfg;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Cfg;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Cfg;
      Connect : MAVLink.V2.In_Connection);
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
     (Message : Uavionix_Adsb_Out_Cfg;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Uavionix_Adsb_Out_Cfg;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Cfgs;
