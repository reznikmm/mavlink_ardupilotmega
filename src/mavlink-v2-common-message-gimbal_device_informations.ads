-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about a low level gimbal. This message should be requested by 
--  the gimbal manager or a ground station using MAV_CMD_REQUEST_MESSAGE. The 
--  maximum angles and rates are the limits by hardware. However, the limits 
--  by software used are likely different/smaller and dependent on 
--  mode/settings/etc.. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gimbal_Device_Informations is

   pragma Preelaborate;

   Gimbal_Device_Information_Id : constant Msg_Id := 283;

   type Gimbal_Device_Information is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Vendor_Name      : String (1 .. 32);
      --  Name of the gimbal vendor. 
      Model_Name       : String (1 .. 32);
      --  Name of the gimbal model. 
      Custom_Name      : String (1 .. 32);
      --  Custom name of the gimbal given to it by the user. 
      Firmware_Version : Interfaces.Unsigned_32;
      --  Version of the gimbal firmware, encoded as: `(Dev & 0xff) << 24 + 
      --  (Patch & 0xff) << 16 + (Minor & 0xff) << 8 + (Major & 0xff)`. 
      Hardware_Version : Interfaces.Unsigned_32;
      --  Version of the gimbal hardware, encoded as: `(Dev & 0xff) << 24 + 
      --  (Patch & 0xff) << 16 + (Minor & 0xff) << 8 + (Major & 0xff)`. 
      Uid              : Interfaces.Unsigned_64 :=
        0;
      --  UID of gimbal hardware (0 if unknown). 
      Cap_Flags        : Gimbal_Device_Cap_Flags;
      --  Bitmap of gimbal capability flags. 
      Custom_Cap_Flags : Interfaces.Unsigned_16;
      --  Bitmap for use for gimbal-specific capability flags. 
      Roll_Min         : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Minimum hardware roll angle (positive: rolling to the right, 
      --  negative: rolling to the left). NAN if unknown. 
      Roll_Max         : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Maximum hardware roll angle (positive: rolling to the right, 
      --  negative: rolling to the left). NAN if unknown. 
      Pitch_Min        : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Minimum hardware pitch angle (positive: up, negative: down). NAN if 
      --  unknown. 
      Pitch_Max        : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Maximum hardware pitch angle (positive: up, negative: down). NAN if 
      --  unknown. 
      Yaw_Min          : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Minimum hardware yaw angle (positive: to the right, negative: to the 
      --  left). NAN if unknown. 
      Yaw_Max          : Raw_Float :=
        To_Raw (0.0);
      --  Units: [rad]
      --  Maximum hardware yaw angle (positive: to the right, negative: to the 
      --  left). NAN if unknown. 
      Gimbal_Device_Id : Interfaces.Unsigned_8 :=
        0;
      --  This field is to be used if the gimbal manager and the gimbal device 
      --  are the same component and hence have the same component ID. This 
      --  field is then set to a number between 1-6. If the component ID is 
      --  separate, this field is not required and must be set to 0. 
   end record;

   for Gimbal_Device_Information use record
      Uid              at 0   range 0 .. 63;
      Time_Boot_Ms     at 8   range 0 .. 31;
      Firmware_Version at 12  range 0 .. 31;
      Hardware_Version at 16  range 0 .. 31;
      Roll_Min         at 20  range 0 .. 31;
      Roll_Max         at 24  range 0 .. 31;
      Pitch_Min        at 28  range 0 .. 31;
      Pitch_Max        at 32  range 0 .. 31;
      Yaw_Min          at 36  range 0 .. 31;
      Yaw_Max          at 40  range 0 .. 31;
      Cap_Flags        at 44  range 0 .. 15;
      Custom_Cap_Flags at 46  range 0 .. 15;
      Vendor_Name      at 48  range 0 .. 255;
      Model_Name       at 80  range 0 .. 255;
      Custom_Name      at 112 range 0 .. 255;
      Gimbal_Device_Id at 144 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Device_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Device_Information;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Device_Information;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Device_Information;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gimbal_Device_Information;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Device_Information;
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
     (Message : Gimbal_Device_Information;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gimbal_Device_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gimbal_Device_Informations;
