-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The current system altitude. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Altitudes is

   pragma Preelaborate;

   Altitude_Id : constant Msg_Id := 141;

   type Altitude is record
      Time_Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Altitude_Monotonic : Raw_Float;
      --  Units: [m]
      --  This altitude measure is initialized on system boot and monotonic 
      --  (it is never reset, but represents the local altitude change). The 
      --  only guarantee on this field is that it will never be reset and is 
      --  consistent within a flight. The recommended value for this field is 
      --  the uncorrected barometric altitude at boot time. This altitude will 
      --  also drift and vary between flights. 
      Altitude_Amsl      : Raw_Float;
      --  Units: [m]
      --  This altitude measure is strictly above mean sea level and might be 
      --  non-monotonic (it might reset on events like GPS lock or when a new 
      --  QNH value is set). It should be the altitude to which global 
      --  altitude waypoints are compared to. Note that it is *not* the GPS 
      --  altitude, however, most GPS modules already output MSL by default 
      --  and not the WGS84 altitude. 
      Altitude_Local     : Raw_Float;
      --  Units: [m]
      --  This is the local altitude in the local coordinate frame. It is not 
      --  the altitude above home, but in reference to the coordinate origin 
      --  (0, 0, 0). It is up-positive. 
      Altitude_Relative  : Raw_Float;
      --  Units: [m]
      --  This is the altitude above the home position. It resets on each 
      --  change of the current home position. 
      Altitude_Terrain   : Raw_Float;
      --  Units: [m]
      --  This is the altitude above terrain. It might be fed by a terrain 
      --  database or an altimeter. Values smaller than -1000 should be 
      --  interpreted as unknown. 
      Bottom_Clearance   : Raw_Float;
      --  Units: [m]
      --  This is not the altitude, but the clear space below the system 
      --  according to the fused clearance estimate. It generally should max 
      --  out at the maximum range of e.g. the laser altimeter. It is 
      --  generally a moving target. A negative value indicates no measurement 
      --  available. 
   end record;

   for Altitude use record
      Time_Usec          at 0  range 0 .. 63;
      Altitude_Monotonic at 8  range 0 .. 31;
      Altitude_Amsl      at 12 range 0 .. 31;
      Altitude_Local     at 16 range 0 .. 31;
      Altitude_Relative  at 20 range 0 .. 31;
      Altitude_Terrain   at 24 range 0 .. 31;
      Bottom_Clearance   at 28 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Altitude;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Altitude;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Altitude;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Altitude;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Altitude;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Altitude;
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
     (Message : Altitude;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Altitude;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Altitudes;
