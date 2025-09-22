-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Camera Capture Feedback. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Camera_Feedbacks is

   pragma Preelaborate;

   Camera_Feedback_Id : constant Msg_Id := 180;

   Camera_Feedback_Len : constant Interfaces.Unsigned_8 := 45;

   type Camera_Feedback is record
      Time_Usec     : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Image timestamp (since UNIX epoch), as passed in by CAMERA_STATUS 
      --  message (or autopilot if no CCB). 
      Target_System : Interfaces.Unsigned_8;
      --  System ID. 
      Cam_Idx       : Interfaces.Unsigned_8;
      --  Camera ID. 
      Img_Idx       : Interfaces.Unsigned_16;
      --  Image index. 
      Lat           : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude. 
      Lng           : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude. 
      Alt_Msl       : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Altitude (MSL). 
      Alt_Rel       : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Altitude (Relative to HOME location). 
      Roll          : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Camera Roll angle (earth frame, +-180). 
      Pitch         : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Camera Pitch angle (earth frame, +-180). 
      Yaw           : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Camera Yaw (earth frame, 0-360, true). 
      Foc_Len       : Interfaces.IEEE_Float_32;
      --  Units: [mm]
      --  Focal Length. 
      Flags         : Camera_Feedback_Flags;
      --  Feedback flags. 
   end record;

   for Camera_Feedback use record
      Time_Usec     at 0  range 0 .. 63;
      Lat           at 8  range 0 .. 31;
      Lng           at 12 range 0 .. 31;
      Alt_Msl       at 16 range 0 .. 31;
      Alt_Rel       at 20 range 0 .. 31;
      Roll          at 24 range 0 .. 31;
      Pitch         at 28 range 0 .. 31;
      Yaw           at 32 range 0 .. 31;
      Foc_Len       at 36 range 0 .. 31;
      Img_Idx       at 40 range 0 .. 15;
      Target_System at 42 range 0 .. 7;
      Cam_Idx       at 43 range 0 .. 7;
      Flags         at 44 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Feedback;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Feedback;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Feedback;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Feedback;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Camera_Feedbacks;
