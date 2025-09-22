-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Request for terrain data and terrain status. See terrain protocol docs: 
--  https://mavlink.io/en/services/terrain.html 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Terrain_Requests is

   pragma Preelaborate;

   Terrain_Request_Id : constant Msg_Id := 133;

   Terrain_Request_Len : constant Interfaces.Unsigned_8 := 18;

   type Terrain_Request is record
      Lat          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude of SW corner of first grid 
      Lon          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude of SW corner of first grid 
      Grid_Spacing : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Grid spacing 
      Mask         : Interfaces.Unsigned_64;
      --  Bitmask of requested 4x4 grids (row major 8x7 array of grids, 56 
      --  bits) 
   end record;

   for Terrain_Request use record
      Mask         at 0  range 0 .. 63;
      Lat          at 8  range 0 .. 31;
      Lon          at 12 range 0 .. 31;
      Grid_Spacing at 16 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Terrain_Request;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Terrain_Request;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Terrain_Request;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Terrain_Request;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Terrain_Requests;
