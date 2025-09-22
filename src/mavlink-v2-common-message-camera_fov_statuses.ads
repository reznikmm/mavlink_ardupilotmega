-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about the field of view of a camera. Can be requested with a 
--  MAV_CMD_REQUEST_MESSAGE command. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Camera_Fov_Statuses is

   pragma Preelaborate;

   Camera_Fov_Status_Id : constant Msg_Id := 271;

   type Camera_Fov_Status is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Lat_Camera       : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [degE7]
      --  Latitude of camera (INT32_MAX if unknown). 
      Lon_Camera       : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [degE7]
      --  Longitude of camera (INT32_MAX if unknown). 
      Alt_Camera       : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [mm]
      --  Altitude (MSL) of camera (INT32_MAX if unknown). 
      Lat_Image        : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [degE7]
      --  Latitude of center of image (INT32_MAX if unknown, INT32_MIN if at 
      --  infinity, not intersecting with horizon). 
      Lon_Image        : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [degE7]
      --  Longitude of center of image (INT32_MAX if unknown, INT32_MIN if at 
      --  infinity, not intersecting with horizon). 
      Alt_Image        : Interfaces.Integer_32 :=
        Interfaces.Integer_32'Last;
      --  Units: [mm]
      --  Altitude (MSL) of center of image (INT32_MAX if unknown, INT32_MIN 
      --  if at infinity, not intersecting with horizon). 
      Q                : Short_Float_Array (1 .. 4);
      --  Quaternion of camera orientation (w, x, y, z order, zero-rotation is 
      --  1, 0, 0, 0) 
      Hfov             : Raw_Float :=
        To_Raw (0.0);
      --  Units: [deg]
      --  Horizontal field of view (NaN if unknown). 
      Vfov             : Raw_Float :=
        To_Raw (0.0);
      --  Units: [deg]
      --  Vertical field of view (NaN if unknown). 
      Camera_Device_Id : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
   end record;

   for Camera_Fov_Status use record
      Time_Boot_Ms     at 0  range 0 .. 31;
      Lat_Camera       at 4  range 0 .. 31;
      Lon_Camera       at 8  range 0 .. 31;
      Alt_Camera       at 12 range 0 .. 31;
      Lat_Image        at 16 range 0 .. 31;
      Lon_Image        at 20 range 0 .. 31;
      Alt_Image        at 24 range 0 .. 31;
      Q                at 28 range 0 .. 127;
      Hfov             at 44 range 0 .. 31;
      Vfov             at 48 range 0 .. 31;
      Camera_Device_Id at 52 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Fov_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Fov_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Fov_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Fov_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Fov_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Fov_Status;
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
     (Message : Camera_Fov_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Fov_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Camera_Fov_Statuses;
