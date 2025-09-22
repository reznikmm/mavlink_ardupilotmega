-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Camera tracking status, sent while in active tracking. Use 
--  MAV_CMD_SET_MESSAGE_INTERVAL to define message interval. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Camera_Tracking_Geo_Statuses is

   pragma Preelaborate;

   Camera_Tracking_Geo_Status_Id : constant Msg_Id := 276;

   type Camera_Tracking_Geo_Status is record
      Tracking_Status  : Camera_Tracking_Status_Flags;
      --  Current tracking status 
      Lat              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude of tracked object 
      Lon              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude of tracked object 
      Alt              : Raw_Float;
      --  Units: [m]
      --  Altitude of tracked object(AMSL, WGS84) 
      H_Acc            : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Horizontal accuracy. NAN if unknown 
      V_Acc            : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Vertical accuracy. NAN if unknown 
      Vel_N            : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  North velocity of tracked object. NAN if unknown 
      Vel_E            : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  East velocity of tracked object. NAN if unknown 
      Vel_D            : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Down velocity of tracked object. NAN if unknown 
      Vel_Acc          : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Velocity accuracy. NAN if unknown 
      Dist             : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Distance between camera and tracked object. NAN if unknown 
      Hdg              : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Heading in radians, in NED. NAN if unknown 
      Hdg_Acc          : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Accuracy of heading, in NED. NAN if unknown 
      Camera_Device_Id : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
   end record;

   for Camera_Tracking_Geo_Status use record
      Lat              at 0  range 0 .. 31;
      Lon              at 4  range 0 .. 31;
      Alt              at 8  range 0 .. 31;
      H_Acc            at 12 range 0 .. 31;
      V_Acc            at 16 range 0 .. 31;
      Vel_N            at 20 range 0 .. 31;
      Vel_E            at 24 range 0 .. 31;
      Vel_D            at 28 range 0 .. 31;
      Vel_Acc          at 32 range 0 .. 31;
      Dist             at 36 range 0 .. 31;
      Hdg              at 40 range 0 .. 31;
      Hdg_Acc          at 44 range 0 .. 31;
      Tracking_Status  at 48 range 0 .. 7;
      Camera_Device_Id at 49 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Tracking_Geo_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Tracking_Geo_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Tracking_Geo_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Tracking_Geo_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Tracking_Geo_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Tracking_Geo_Status;
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
     (Message : Camera_Tracking_Geo_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Tracking_Geo_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Camera_Tracking_Geo_Statuses;
