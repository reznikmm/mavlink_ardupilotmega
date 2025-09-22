-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Dynamic data used to generate ADS-B out transponder data (send at 5Hz)

pragma Ada_2022;

with MAVLink.V2.Uavionix.Types; use MAVLink.V2.Uavionix.Types;

package MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Dynamics is

   pragma Pure;

   type Uavionix_Adsb_Out_Dynamic is record
      Utctime         : Interfaces.Unsigned_32;
      --  Units: [s]
      --  UTC time in seconds since GPS epoch (Jan 6, 1980). If unknown set to
      --  UINT32_MAX
      Gpslat          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude WGS84 (deg * 1E7). If unknown set to INT32_MAX
      Gpslon          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude WGS84 (deg * 1E7). If unknown set to INT32_MAX
      Gpsalt          : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (WGS84). UP +ve. If unknown set to INT32_MAX
      Gpsfix          : Uavionix_Adsb_Out_Dynamic_Gps_Fix;
      --  0-1: no fix, 2: 2D fix, 3: 3D fix, 4: DGPS, 5: RTK
      Numsats         : Interfaces.Unsigned_8;
      --  Number of satellites visible. If unknown set to UINT8_MAX
      Baroaltmsl      : Interfaces.Integer_32;
      --  Units: [mbar]
      --  Barometric pressure altitude (MSL) relative to a standard atmosphere
      --  of 1013.2 mBar and NOT bar corrected altitude (m * 1E-3). (up +ve).
      --  If unknown set to INT32_MAX
      Accuracyhor     : Interfaces.Unsigned_32;
      --  Units: [mm]
      --  Horizontal accuracy in mm (m * 1E-3). If unknown set to UINT32_MAX
      Accuracyvert    : Interfaces.Unsigned_16;
      --  Units: [cm]
      --  Vertical accuracy in cm. If unknown set to UINT16_MAX
      Accuracyvel     : Interfaces.Unsigned_16;
      --  Units: [mm/s]
      --  Velocity accuracy in mm/s (m * 1E-3). If unknown set to UINT16_MAX
      Velvert         : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  GPS vertical speed in cm/s. If unknown set to INT16_MAX
      Velns           : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  North-South velocity over ground in cm/s North +ve. If unknown set
      --  to INT16_MAX
      Velew           : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  East-West velocity over ground in cm/s East +ve. If unknown set to
      --  INT16_MAX
      Emergencystatus : Uavionix_Adsb_Emergency_Status;
      --  Emergency status
      State           : Uavionix_Adsb_Out_Dynamic_State;
      --  ADS-B transponder dynamic input state flags
      Squawk          : Interfaces.Unsigned_16;
      --  Mode A code (typically 1200 [0x04B0] for VFR)
   end record;

   for Uavionix_Adsb_Out_Dynamic use record
      Utctime         at 0  range 0 .. 31;
      Gpslat          at 4  range 0 .. 31;
      Gpslon          at 8  range 0 .. 31;
      Gpsalt          at 12 range 0 .. 31;
      Baroaltmsl      at 16 range 0 .. 31;
      Accuracyhor     at 20 range 0 .. 31;
      Accuracyvert    at 24 range 0 .. 15;
      Accuracyvel     at 26 range 0 .. 15;
      Velvert         at 28 range 0 .. 15;
      Velns           at 30 range 0 .. 15;
      Velew           at 32 range 0 .. 15;
      State           at 34 range 0 .. 15;
      Squawk          at 36 range 0 .. 15;
      Gpsfix          at 38 range 0 .. 7;
      Numsats         at 39 range 0 .. 7;
      Emergencystatus at 40 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Uavionix_Adsb_Out_Dynamic;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Uavionix_Adsb_Out_Dynamic;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Dynamic;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Dynamic;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Dynamic;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Dynamic;
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
     (Message : Uavionix_Adsb_Out_Dynamic;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Uavionix_Adsb_Out_Dynamic;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Dynamics;
