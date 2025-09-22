-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Request that the vehicle report terrain height at the given location 
--  (expected response is a TERRAIN_REPORT). Used by GCS to check if vehicle 
--  has all terrain data needed for a mission. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Terrain_Checks is

   pragma Preelaborate;

   Terrain_Check_Id : constant Msg_Id := 135;

   type Terrain_Check is record
      Lat : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Lon : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
   end record;

   for Terrain_Check use record
      Lat at 0 range 0 .. 31;
      Lon at 4 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Terrain_Check;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Terrain_Check;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Terrain_Check;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Terrain_Check;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Terrain_Check;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Terrain_Check;
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
     (Message : Terrain_Check;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Terrain_Check;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Terrain_Checks;
