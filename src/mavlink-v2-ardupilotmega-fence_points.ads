-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  A fence point. Used to set a point when from GCS -> MAV. Also used to
--  return a point from MAV -> GCS.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Fence_Points is

   pragma Pure;

   type Fence_Point is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Idx              : Interfaces.Unsigned_8;
      --  Point index (first point is 1, 0 is for return point).
      Count            : Interfaces.Unsigned_8;
      --  Total number of points (for sanity checking).
      Lat              : Raw_Float;
      --  Units: [deg]
      --  Latitude of point.
      Lng              : Raw_Float;
      --  Units: [deg]
      --  Longitude of point.
   end record;

   for Fence_Point use record
      Lat              at 0  range 0 .. 31;
      Lng              at 4  range 0 .. 31;
      Target_System    at 8  range 0 .. 7;
      Target_Component at 9  range 0 .. 7;
      Idx              at 10 range 0 .. 7;
      Count            at 11 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Fence_Point;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Fence_Point;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Fence_Point;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Fence_Point;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Fence_Point;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Fence_Point;
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
     (Message : Fence_Point;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Fence_Point;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Fence_Points;
