-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The location and information of an ADSB vehicle 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Adsb_Vehicles is

   pragma Preelaborate;

   Adsb_Vehicle_Id : constant Msg_Id := 246;

   Adsb_Vehicle_Len : constant Interfaces.Unsigned_8 := 38;

   type Adsb_Vehicle is record
      Icao_Address  : Interfaces.Unsigned_32;
      --  ICAO address 
      Lat           : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Lon           : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
      Altitude_Type : Adsb_Altitude_Type;
      --  ADSB altitude type. 
      Altitude      : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude(ASL) 
      Heading       : Interfaces.Unsigned_16;
      --  Units: [cdeg]
      --  Course over ground 
      Hor_Velocity  : Interfaces.Unsigned_16;
      --  Units: [cm/s]
      --  The horizontal velocity 
      Ver_Velocity  : Interfaces.Integer_16;
      --  Units: [cm/s]
      --  The vertical velocity. Positive is up 
      Callsign      : String (1 .. 9);
      --  The callsign, 8+null 
      Emitter_Type  : Adsb_Emitter_Type;
      --  ADSB emitter type. 
      Tslc          : Interfaces.Unsigned_8;
      --  Units: [s]
      --  Time since last communication in seconds 
      Flags         : Adsb_Flags;
      --  Bitmap to indicate various statuses including valid data fields 
      Squawk        : Interfaces.Unsigned_16;
      --  Squawk code. Note that the code is in decimal: e.g. 7700 (general 
      --  emergency) is encoded as binary 0b0001_1110_0001_0100, not(!) as 
      --  0b0000_111_111_000_000 
   end record;

   for Adsb_Vehicle use record
      Icao_Address  at 0  range 0 .. 31;
      Lat           at 4  range 0 .. 31;
      Lon           at 8  range 0 .. 31;
      Altitude      at 12 range 0 .. 31;
      Heading       at 16 range 0 .. 15;
      Hor_Velocity  at 18 range 0 .. 15;
      Ver_Velocity  at 20 range 0 .. 15;
      Flags         at 22 range 0 .. 15;
      Squawk        at 24 range 0 .. 15;
      Altitude_Type at 26 range 0 .. 7;
      Callsign      at 27 range 0 .. 71;
      Emitter_Type  at 36 range 0 .. 7;
      Tslc          at 37 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Adsb_Vehicle;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Adsb_Vehicle;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Adsb_Vehicle;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Adsb_Vehicle;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Adsb_Vehicles;
