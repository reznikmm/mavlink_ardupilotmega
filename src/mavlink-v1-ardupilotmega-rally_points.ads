-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  A rally point. Used to set a point when from GCS -> MAV. Also used to
--  return a point from MAV -> GCS.

pragma Ada_2022;

with MAVLink.V1.Ardupilotmega.Types; use MAVLink.V1.Ardupilotmega.Types;

package MAVLink.V1.Ardupilotmega.Rally_Points is

   pragma Pure;

   Rally_Point_Len : constant Interfaces.Unsigned_8 := 19;

   type Rally_Point is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Idx              : Interfaces.Unsigned_8;
      --  Point index (first point is 0).
      Count            : Interfaces.Unsigned_8;
      --  Total number of points (for sanity checking).
      Lat              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude of point.
      Lng              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude of point.
      Alt              : Interfaces.Integer_16;
      --  Units: [m]
      --  Transit / loiter altitude relative to home.
      Break_Alt        : Interfaces.Integer_16;
      --  Units: [m]
      --  Break altitude relative to home.
      Land_Dir         : Interfaces.Unsigned_16;
      --  Units: [cdeg]
      --  Heading to aim for when landing.
      Flags            : Rally_Flags;
      --  Configuration flags.
   end record;

   for Rally_Point use record
      Lat              at 0  range 0 .. 31;
      Lng              at 4  range 0 .. 31;
      Alt              at 8  range 0 .. 15;
      Break_Alt        at 10 range 0 .. 15;
      Land_Dir         at 12 range 0 .. 15;
      Target_System    at 14 range 0 .. 7;
      Target_Component at 15 range 0 .. 7;
      Idx              at 16 range 0 .. 7;
      Count            at 17 range 0 .. 7;
      Flags            at 18 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Rally_Point;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Rally_Point;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Rally_Point;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Rally_Point;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Rally_Point;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Rally_Point;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Ardupilotmega.Rally_Points;
