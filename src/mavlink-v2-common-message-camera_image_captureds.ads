-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a captured image. This is emitted every time a message 
--  is captured. MAV_CMD_REQUEST_MESSAGE can be used to (re)request this 
--  message for a specific sequence number or range of sequence numbers: 
--  MAV_CMD_REQUEST_MESSAGE.param2 indicates the sequence number the first 
--  image to send, or set to -1 to send the message for all sequence numbers. 
--  MAV_CMD_REQUEST_MESSAGE.param3 is used to specify a range of messages to 
--  send: set to 0 (default) to send just the the message for the sequence 
--  number in param 2, set to -1 to send the message for the sequence number 
--  in param 2 and all the following sequence numbers, set to the sequence 
--  number of the final message in the range. 
pragma Ada_2022;


with MAVLink.V2.Standard; use MAVLink.V2.Standard;

package MAVLink.V2.Common.Message.Camera_Image_Captureds is

   pragma Preelaborate;

   Camera_Image_Captured_Id : constant Msg_Id := 263;

   type Camera_Image_Captured is record
      Time_Boot_Ms   : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Time_Utc       : Interfaces.Unsigned_64 :=
        0;
      --  Units: [us]
      --  Timestamp (time since UNIX epoch) in UTC. 0 for unknown. 
      Camera_Id      : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
      --  Field name is usually camera_device_id. 
      Lat            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude where image was taken 
      Lon            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude where capture was taken 
      Alt            : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL) where image was taken 
      Relative_Alt   : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude above ground 
      Q              : Short_Float_Array (1 .. 4);
      --  Quaternion of camera orientation (w, x, y, z order, zero-rotation is 
      --  1, 0, 0, 0) 
      Image_Index    : Interfaces.Integer_32;
      --  Zero based index of this image (i.e. a new image will have index 
      --  CAMERA_CAPTURE_STATUS.image count -1) 
      Capture_Result : Mav_Bool;
      --  Image was captured successfully (MAV_BOOL_TRUE). Values not equal to 
      --  0 or 1 are invalid. 
      File_Url       : String (1 .. 205);
      --  URL of image taken. Either local storage or http://foo.jpg if camera 
      --  provides an HTTP interface. 
   end record;

   for Camera_Image_Captured use record
      Time_Utc       at 0  range 0 .. 63;
      Time_Boot_Ms   at 8  range 0 .. 31;
      Lat            at 12 range 0 .. 31;
      Lon            at 16 range 0 .. 31;
      Alt            at 20 range 0 .. 31;
      Relative_Alt   at 24 range 0 .. 31;
      Q              at 28 range 0 .. 127;
      Image_Index    at 44 range 0 .. 31;
      Camera_Id      at 48 range 0 .. 7;
      Capture_Result at 49 range 0 .. 7;
      File_Url       at 50 range 0 .. 1639;
   end record;

   procedure Encode
     (Message : Camera_Image_Captured;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Image_Captured;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Image_Captured;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Image_Captured;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Image_Captured;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Image_Captured;
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
     (Message : Camera_Image_Captured;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Image_Captured;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Camera_Image_Captureds;
