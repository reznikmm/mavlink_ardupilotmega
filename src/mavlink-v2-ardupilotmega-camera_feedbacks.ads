-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Camera Capture Feedback.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;

package MAVLink.V2.Ardupilotmega.Camera_Feedbacks is

   pragma Pure;

   type Camera_Feedback is record
      Time_Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Image timestamp (since UNIX epoch), as passed in by CAMERA_STATUS
      --  message (or autopilot if no CCB).
      Target_System      : Interfaces.Unsigned_8;
      --  System ID.
      Cam_Idx            : Interfaces.Unsigned_8;
      --  Camera ID.
      Img_Idx            : Interfaces.Unsigned_16;
      --  Image index.
      Lat                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude.
      Lng                : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude.
      Alt_Msl            : Raw_Float;
      --  Units: [m]
      --  Altitude (MSL).
      Alt_Rel            : Raw_Float;
      --  Units: [m]
      --  Altitude (Relative to HOME location).
      Roll               : Raw_Float;
      --  Units: [deg]
      --  Camera Roll angle (earth frame, +-180).
      Pitch              : Raw_Float;
      --  Units: [deg]
      --  Camera Pitch angle (earth frame, +-180).
      Yaw                : Raw_Float;
      --  Units: [deg]
      --  Camera Yaw (earth frame, 0-360, true).
      Foc_Len            : Raw_Float;
      --  Units: [mm]
      --  Focal Length.
      Flags              : Camera_Feedback_Flags;
      --  Feedback flags.
      Completed_Captures : Interfaces.Unsigned_16;
      --  Completed image captures.
   end record;

   for Camera_Feedback use record
      Time_Usec          at 0  range 0 .. 63;
      Lat                at 8  range 0 .. 31;
      Lng                at 12 range 0 .. 31;
      Alt_Msl            at 16 range 0 .. 31;
      Alt_Rel            at 20 range 0 .. 31;
      Roll               at 24 range 0 .. 31;
      Pitch              at 28 range 0 .. 31;
      Yaw                at 32 range 0 .. 31;
      Foc_Len            at 36 range 0 .. 31;
      Img_Idx            at 40 range 0 .. 15;
      Target_System      at 42 range 0 .. 7;
      Cam_Idx            at 43 range 0 .. 7;
      Flags              at 44 range 0 .. 7;
      Completed_Captures at 45 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Camera_Feedback;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Feedback;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Feedback;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Camera_Feedback;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Camera_Feedback;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Camera_Feedback;
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
     (Message : Camera_Feedback;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Feedback;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Camera_Feedbacks;
