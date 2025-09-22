-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Terrain data sent from GCS. The lat/lon and grid_spacing must be the same 
--  as a lat/lon from a TERRAIN_REQUEST. See terrain protocol docs: 
--  https://mavlink.io/en/services/terrain.html 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Terrain_Datas is

   pragma Preelaborate;

   Terrain_Data_Id : constant Msg_Id := 134;

   Terrain_Data_Len : constant Interfaces.Unsigned_8 := 43;

   type Terrain_Data is record
      Lat          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude of SW corner of first grid 
      Lon          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude of SW corner of first grid 
      Grid_Spacing : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Grid spacing 
      Gridbit      : Interfaces.Unsigned_8;
      --  bit within the terrain request mask 
      Data         : Integer_16_Array (1 .. 16);
      --  Units: [m]
      --  Terrain data MSL 
   end record;

   for Terrain_Data use record
      Lat          at 0  range 0 .. 31;
      Lon          at 4  range 0 .. 31;
      Grid_Spacing at 8  range 0 .. 15;
      Data         at 10 range 0 .. 255;
      Gridbit      at 42 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Terrain_Data;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Terrain_Data;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Terrain_Data;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Terrain_Data;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Terrain_Data;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Terrain_Data;
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

end MAVLink.V1.Common.Message.Terrain_Datas;
