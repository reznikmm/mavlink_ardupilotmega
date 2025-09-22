-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Streamed from drone to report progress of terrain map download (initiated 
--  by TERRAIN_REQUEST), or sent as a response to a TERRAIN_CHECK request. See 
--  terrain protocol docs: https://mavlink.io/en/services/terrain.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Terrain_Reports is

   pragma Preelaborate;

   Terrain_Report_Id : constant Msg_Id := 136;

   type Terrain_Report is record
      Lat            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Lon            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
      Spacing        : Interfaces.Unsigned_16;
      --  grid spacing (zero if terrain at this location unavailable) 
      Terrain_Height : Raw_Float;
      --  Units: [m]
      --  Terrain height MSL 
      Current_Height : Raw_Float;
      --  Units: [m]
      --  Current vehicle height above lat/lon terrain height 
      Pending        : Interfaces.Unsigned_16;
      --  Number of 4x4 terrain blocks waiting to be received or read from 
      --  disk 
      Loaded         : Interfaces.Unsigned_16;
      --  Number of 4x4 terrain blocks in memory 
   end record;

   for Terrain_Report use record
      Lat            at 0  range 0 .. 31;
      Lon            at 4  range 0 .. 31;
      Terrain_Height at 8  range 0 .. 31;
      Current_Height at 12 range 0 .. 31;
      Spacing        at 16 range 0 .. 15;
      Pending        at 18 range 0 .. 15;
      Loaded         at 20 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Terrain_Report;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Terrain_Report;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Terrain_Report;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Terrain_Report;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Terrain_Report;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Terrain_Report;
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
     (Message : Terrain_Report;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Terrain_Report;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Terrain_Reports;
