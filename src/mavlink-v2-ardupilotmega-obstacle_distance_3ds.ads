-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Obstacle located as a 3D vector.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Ardupilotmega.Obstacle_Distance_3Ds is

   pragma Pure;

   type Obstacle_Distance_3D is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot).
      Sensor_Type  : Mav_Distance_Sensor;
      --  Class id of the distance sensor type.
      Frame        : Mav_Frame;
      --  Coordinate frame of reference.
      Obstacle_Id  : Interfaces.Unsigned_16;
      --  Unique ID given to each obstacle so that its movement can be
      --  tracked. Use UINT16_MAX if object ID is unknown or cannot be
      --  determined.
      X            : Raw_Float;
      --  Units: [m]
      --  X position of the obstacle.
      Y            : Raw_Float;
      --  Units: [m]
      --  Y position of the obstacle.
      Z            : Raw_Float;
      --  Units: [m]
      --  Z position of the obstacle.
      Min_Distance : Raw_Float;
      --  Units: [m]
      --  Minimum distance the sensor can measure.
      Max_Distance : Raw_Float;
      --  Units: [m]
      --  Maximum distance the sensor can measure.
   end record;

   for Obstacle_Distance_3D use record
      Time_Boot_Ms at 0  range 0 .. 31;
      X            at 4  range 0 .. 31;
      Y            at 8  range 0 .. 31;
      Z            at 12 range 0 .. 31;
      Min_Distance at 16 range 0 .. 31;
      Max_Distance at 20 range 0 .. 31;
      Obstacle_Id  at 24 range 0 .. 15;
      Sensor_Type  at 26 range 0 .. 7;
      Frame        at 27 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Obstacle_Distance_3D;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Obstacle_Distance_3D;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Obstacle_Distance_3D;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Obstacle_Distance_3D;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Obstacle_Distance_3D;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Obstacle_Distance_3D;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Obstacle_Distance_3D;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Obstacle_Distance_3D;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Obstacle_Distance_3Ds;
