-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Obstacle distances in front of the sensor, starting from the left in 
--  increment degrees to the right 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Obstacle_Distances is

   pragma Preelaborate;

   Obstacle_Distance_Id : constant Msg_Id := 330;

   type Obstacle_Distance is record
      Time_Usec    : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Sensor_Type  : Mav_Distance_Sensor;
      --  Class id of the distance sensor type. 
      Distances    : Unsigned_16_Array (1 .. 72) :=
        [others => Interfaces.Unsigned_16'Last];
      --  Units: [cm]
      --  Distance of obstacles around the vehicle with index 0 corresponding 
      --  to north + angle_offset, unless otherwise specified in the frame. A 
      --  value of 0 is valid and means that the obstacle is practically 
      --  touching the sensor. A value of max_distance +1 means no obstacle is 
      --  present. A value of UINT16_MAX for unknown/not used. In a array 
      --  element, one unit corresponds to 1cm. 
      Increment    : Interfaces.Unsigned_8;
      --  Units: [deg]
      --  Angular width in degrees of each array element. Increment direction 
      --  is clockwise. This field is ignored if increment_f is non-zero. 
      Min_Distance : Interfaces.Unsigned_16;
      --  Units: [cm]
      --  Minimum distance the sensor can measure. 
      Max_Distance : Interfaces.Unsigned_16;
      --  Units: [cm]
      --  Maximum distance the sensor can measure. 
      Increment_F  : Raw_Float;
      --  Units: [deg]
      --  Angular width in degrees of each array element as a float. If 
      --  non-zero then this value is used instead of the uint8_t increment 
      --  field. Positive is clockwise direction, negative is 
      --  counter-clockwise. 
      Angle_Offset : Raw_Float;
      --  Units: [deg]
      --  Relative angle offset of the 0-index element in the distances array. 
      --  Value of 0 corresponds to forward. Positive is clockwise direction, 
      --  negative is counter-clockwise. 
      Frame        : Mav_Frame;
      --  Coordinate frame of reference for the yaw rotation and offset of the 
      --  sensor data. Defaults to MAV_FRAME_GLOBAL, which is north aligned. 
      --  For body-mounted sensors use MAV_FRAME_BODY_FRD, which is vehicle 
      --  front aligned. 
   end record;

   for Obstacle_Distance use record
      Time_Usec    at 0   range 0 .. 63;
      Distances    at 8   range 0 .. 1151;
      Min_Distance at 152 range 0 .. 15;
      Max_Distance at 154 range 0 .. 15;
      Sensor_Type  at 156 range 0 .. 7;
      Increment    at 157 range 0 .. 7;
      Increment_F  at 158 range 0 .. 31;
      Angle_Offset at 162 range 0 .. 31;
      Frame        at 166 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Obstacle_Distance;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Obstacle_Distance;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Obstacle_Distance;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Obstacle_Distance;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Obstacle_Distance;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Obstacle_Distance;
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
     (Message : Obstacle_Distance;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Obstacle_Distance;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Obstacle_Distances;
