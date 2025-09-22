-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Camera absolute thermal range. This can be streamed when the associated 
--  VIDEO_STREAM_STATUS `flag` field bit 
--  VIDEO_STREAM_STATUS_FLAGS_THERMAL_RANGE_ENABLED is set, but a GCS may 
--  choose to only request it for the current active stream. Use 
--  MAV_CMD_SET_MESSAGE_INTERVAL to define message interval (param3 indicates 
--  the stream id of the current camera, or 0 for all streams, param4 
--  indicates the target camera_device_id for autopilot-attached cameras or 0 
--  for MAVLink cameras). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Camera_Thermal_Ranges is

   pragma Preelaborate;

   Camera_Thermal_Range_Id : constant Msg_Id := 277;

   type Camera_Thermal_Range is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Stream_Id        : Interfaces.Unsigned_8;
      --  Video Stream ID (1 for first, 2 for second, etc.) 
      Camera_Device_Id : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
      Max              : Raw_Float;
      --  Units: [degC]
      --  Temperature max. 
      Max_Point_X      : Raw_Float :=
        To_Raw (0.0);
      --  Temperature max point x value (normalized 0..1, 0 is left, 1 is 
      --  right), NAN if unknown. 
      Max_Point_Y      : Raw_Float :=
        To_Raw (0.0);
      --  Temperature max point y value (normalized 0..1, 0 is top, 1 is 
      --  bottom), NAN if unknown. 
      Min              : Raw_Float;
      --  Units: [degC]
      --  Temperature min. 
      Min_Point_X      : Raw_Float :=
        To_Raw (0.0);
      --  Temperature min point x value (normalized 0..1, 0 is left, 1 is 
      --  right), NAN if unknown. 
      Min_Point_Y      : Raw_Float :=
        To_Raw (0.0);
      --  Temperature min point y value (normalized 0..1, 0 is top, 1 is 
      --  bottom), NAN if unknown. 
   end record;

   for Camera_Thermal_Range use record
      Time_Boot_Ms     at 0  range 0 .. 31;
      Max              at 4  range 0 .. 31;
      Max_Point_X      at 8  range 0 .. 31;
      Max_Point_Y      at 12 range 0 .. 31;
      Min              at 16 range 0 .. 31;
      Min_Point_X      at 20 range 0 .. 31;
      Min_Point_Y      at 24 range 0 .. 31;
      Stream_Id        at 28 range 0 .. 7;
      Camera_Device_Id at 29 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Thermal_Range;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Thermal_Range;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Thermal_Range;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Thermal_Range;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Thermal_Range;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Thermal_Range;
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
     (Message : Camera_Thermal_Range;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Thermal_Range;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Camera_Thermal_Ranges;
