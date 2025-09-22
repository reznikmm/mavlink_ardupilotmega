-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The location and information of an AIS vessel 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Ais_Vessels is

   pragma Preelaborate;

   Ais_Vessel_Id : constant Msg_Id := 301;

   type Ais_Vessel is record
      Mmsi                : Interfaces.Unsigned_32;
      --  Mobile Marine Service Identifier, 9 decimal digits 
      Lat                 : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Lon                 : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
      Cog                 : Interfaces.Unsigned_16;
      --  Units: [cdeg]
      --  Course over ground 
      Heading             : Interfaces.Unsigned_16;
      --  Units: [cdeg]
      --  True heading 
      Velocity            : Interfaces.Unsigned_16;
      --  Units: [cm/s]
      --  Speed over ground 
      Turn_Rate           : Interfaces.Integer_8;
      --  Units: [ddeg/s]
      --  Turn rate, 0.1 degrees per second 
      Navigational_Status : Ais_Nav_Status;
      --  Navigational status 
      Type_Field          : Ais_Type;
      --  Type of vessels 
      Dimension_Bow       : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Distance from lat/lon location to bow 
      Dimension_Stern     : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Distance from lat/lon location to stern 
      Dimension_Port      : Interfaces.Unsigned_8;
      --  Units: [m]
      --  Distance from lat/lon location to port side 
      Dimension_Starboard : Interfaces.Unsigned_8;
      --  Units: [m]
      --  Distance from lat/lon location to starboard side 
      Callsign            : String (1 .. 7);
      --  The vessel callsign 
      Name                : String (1 .. 20);
      --  The vessel name 
      Tslc                : Interfaces.Unsigned_16;
      --  Units: [s]
      --  Time since last communication in seconds 
      Flags               : Ais_Flags;
      --  Bitmask to indicate various statuses including valid data fields 
   end record;

   for Ais_Vessel use record
      Mmsi                at 0  range 0 .. 31;
      Lat                 at 4  range 0 .. 31;
      Lon                 at 8  range 0 .. 31;
      Cog                 at 12 range 0 .. 15;
      Heading             at 14 range 0 .. 15;
      Velocity            at 16 range 0 .. 15;
      Dimension_Bow       at 18 range 0 .. 15;
      Dimension_Stern     at 20 range 0 .. 15;
      Tslc                at 22 range 0 .. 15;
      Flags               at 24 range 0 .. 15;
      Turn_Rate           at 26 range 0 .. 7;
      Navigational_Status at 27 range 0 .. 7;
      Type_Field          at 28 range 0 .. 7;
      Dimension_Port      at 29 range 0 .. 7;
      Dimension_Starboard at 30 range 0 .. 7;
      Callsign            at 31 range 0 .. 55;
      Name                at 38 range 0 .. 159;
   end record;

   procedure Encode
     (Message : Ais_Vessel;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ais_Vessel;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ais_Vessel;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ais_Vessel;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Ais_Vessel;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ais_Vessel;
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
     (Message : Ais_Vessel;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Ais_Vessel;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Ais_Vessels;
