-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Camera tracking status, sent while in active tracking. Use 
--  MAV_CMD_SET_MESSAGE_INTERVAL to define message interval. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Camera_Tracking_Image_Statuses is

   pragma Preelaborate;

   Camera_Tracking_Image_Status_Id : constant Msg_Id := 275;

   type Camera_Tracking_Image_Status is record
      Tracking_Status  : Camera_Tracking_Status_Flags;
      --  Current tracking status 
      Tracking_Mode    : Camera_Tracking_Mode;
      --  Current tracking mode 
      Target_Data      : Camera_Tracking_Target_Data;
      --  Defines location of target data 
      Point_X          : Raw_Float :=
        To_Raw (0.0);
      --  Current tracked point x value if CAMERA_TRACKING_MODE_POINT 
      --  (normalized 0..1, 0 is left, 1 is right), NAN if unknown 
      Point_Y          : Raw_Float :=
        To_Raw (0.0);
      --  Current tracked point y value if CAMERA_TRACKING_MODE_POINT 
      --  (normalized 0..1, 0 is top, 1 is bottom), NAN if unknown 
      Radius           : Raw_Float :=
        To_Raw (0.0);
      --  Current tracked radius if CAMERA_TRACKING_MODE_POINT (normalized 
      --  0..1, 0 is image left, 1 is image right), NAN if unknown 
      Rec_Top_X        : Raw_Float :=
        To_Raw (0.0);
      --  Current tracked rectangle top x value if 
      --  CAMERA_TRACKING_MODE_RECTANGLE (normalized 0..1, 0 is left, 1 is 
      --  right), NAN if unknown 
      Rec_Top_Y        : Raw_Float :=
        To_Raw (0.0);
      --  Current tracked rectangle top y value if 
      --  CAMERA_TRACKING_MODE_RECTANGLE (normalized 0..1, 0 is top, 1 is 
      --  bottom), NAN if unknown 
      Rec_Bottom_X     : Raw_Float :=
        To_Raw (0.0);
      --  Current tracked rectangle bottom x value if 
      --  CAMERA_TRACKING_MODE_RECTANGLE (normalized 0..1, 0 is left, 1 is 
      --  right), NAN if unknown 
      Rec_Bottom_Y     : Raw_Float :=
        To_Raw (0.0);
      --  Current tracked rectangle bottom y value if 
      --  CAMERA_TRACKING_MODE_RECTANGLE (normalized 0..1, 0 is top, 1 is 
      --  bottom), NAN if unknown 
      Camera_Device_Id : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
   end record;

   for Camera_Tracking_Image_Status use record
      Point_X          at 0  range 0 .. 31;
      Point_Y          at 4  range 0 .. 31;
      Radius           at 8  range 0 .. 31;
      Rec_Top_X        at 12 range 0 .. 31;
      Rec_Top_Y        at 16 range 0 .. 31;
      Rec_Bottom_X     at 20 range 0 .. 31;
      Rec_Bottom_Y     at 24 range 0 .. 31;
      Tracking_Status  at 28 range 0 .. 7;
      Tracking_Mode    at 29 range 0 .. 7;
      Target_Data      at 30 range 0 .. 7;
      Camera_Device_Id at 31 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Tracking_Image_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Tracking_Image_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Tracking_Image_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Tracking_Image_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Tracking_Image_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Tracking_Image_Status;
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
     (Message : Camera_Tracking_Image_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Tracking_Image_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Camera_Tracking_Image_Statuses;
