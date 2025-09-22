-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a camera. Can be requested with a 
--  MAV_CMD_REQUEST_MESSAGE command. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Camera_Informations is

   pragma Preelaborate;

   Camera_Information_Id : constant Msg_Id := 259;

   type Camera_Information is record
      Time_Boot_Ms           : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Vendor_Name            : Unsigned_8_Array (1 .. 32);
      --  Name of the camera vendor 
      Model_Name             : Unsigned_8_Array (1 .. 32);
      --  Name of the camera model 
      Firmware_Version       : Interfaces.Unsigned_32 :=
        0;
      --  Version of the camera firmware, encoded as: `(Dev & 0xff) << 24 + 
      --  (Patch & 0xff) << 16 + (Minor & 0xff) << 8 + (Major & 0xff)`. Use 0 
      --  if not known. 
      Focal_Length           : Raw_Float :=
        To_Raw (0.0);
      --  Units: [mm]
      --  Focal length. Use NaN if not known. 
      Sensor_Size_H          : Raw_Float :=
        To_Raw (0.0);
      --  Units: [mm]
      --  Image sensor size horizontal. Use NaN if not known. 
      Sensor_Size_V          : Raw_Float :=
        To_Raw (0.0);
      --  Units: [mm]
      --  Image sensor size vertical. Use NaN if not known. 
      Resolution_H           : Interfaces.Unsigned_16 :=
        0;
      --  Units: [pix]
      --  Horizontal image resolution. Use 0 if not known. 
      Resolution_V           : Interfaces.Unsigned_16 :=
        0;
      --  Units: [pix]
      --  Vertical image resolution. Use 0 if not known. 
      Lens_Id                : Interfaces.Unsigned_8 :=
        0;
      --  Reserved for a lens ID. Use 0 if not known. 
      Flags                  : Camera_Cap_Flags;
      --  Bitmap of camera capability flags. 
      Cam_Definition_Version : Interfaces.Unsigned_16;
      --  Camera definition version (iteration). Use 0 if not known. 
      Cam_Definition_Uri     : String (1 .. 140);
      --  Camera definition URI (if any, otherwise only basic functions will 
      --  be available). HTTP- (http://) and MAVLink FTP- (mavlinkftp://) 
      --  formatted URIs are allowed (and both must be supported by any GCS 
      --  that implements the Camera Protocol). The definition file may be xz 
      --  compressed, which will be indicated by the file extension .xml.xz (a 
      --  GCS that implements the protocol must support decompressing the 
      --  file). The string needs to be zero terminated. Use a zero-length 
      --  string if not known. 
      Gimbal_Device_Id       : Interfaces.Unsigned_8 :=
        0;
      --  Gimbal id of a gimbal associated with this camera. This is the 
      --  component id of the gimbal device, or 1-6 for non mavlink gimbals. 
      --  Use 0 if no gimbal is associated with the camera. 
      Camera_Device_Id       : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
   end record;

   for Camera_Information use record
      Time_Boot_Ms           at 0   range 0 .. 31;
      Firmware_Version       at 4   range 0 .. 31;
      Focal_Length           at 8   range 0 .. 31;
      Sensor_Size_H          at 12  range 0 .. 31;
      Sensor_Size_V          at 16  range 0 .. 31;
      Flags                  at 20  range 0 .. 31;
      Resolution_H           at 24  range 0 .. 15;
      Resolution_V           at 26  range 0 .. 15;
      Cam_Definition_Version at 28  range 0 .. 15;
      Vendor_Name            at 30  range 0 .. 255;
      Model_Name             at 62  range 0 .. 255;
      Lens_Id                at 94  range 0 .. 7;
      Cam_Definition_Uri     at 95  range 0 .. 1119;
      Gimbal_Device_Id       at 235 range 0 .. 7;
      Camera_Device_Id       at 236 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Information;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Information;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Information;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Information;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Information;
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
     (Message : Camera_Information;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Camera_Informations;
