-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Camera vision based attitude and position deltas.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Vision_Position_Deltas is

   pragma Pure;

   type Vision_Position_Delta is record
      Time_Usec       : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (synced to UNIX time or since system boot).
      Time_Delta_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Time since the last reported camera frame.
      Angle_Delta     : Short_Float_Array (1 .. 3);
      --  Units: [rad]
      --  Defines a rotation vector [roll, pitch, yaw] to the current
      --  MAV_FRAME_BODY_FRD from the previous MAV_FRAME_BODY_FRD.
      Position_Delta  : Short_Float_Array (1 .. 3);
      --  Units: [m]
      --  Change in position to the current MAV_FRAME_BODY_FRD from the
      --  previous FRAME_BODY_FRD rotated to the current MAV_FRAME_BODY_FRD.
      Confidence      : Raw_Float;
      --  Units: [%]
      --  Normalised confidence value from 0 to 100.
   end record;

   for Vision_Position_Delta use record
      Time_Usec       at 0  range 0 .. 63;
      Time_Delta_Usec at 8  range 0 .. 63;
      Angle_Delta     at 16 range 0 .. 95;
      Position_Delta  at 28 range 0 .. 95;
      Confidence      at 40 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Vision_Position_Delta;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Vision_Position_Delta;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Vision_Position_Delta;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Vision_Position_Delta;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Vision_Position_Delta;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Vision_Position_Delta;
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
     (Message : Vision_Position_Delta;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Vision_Position_Delta;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Vision_Position_Deltas;
