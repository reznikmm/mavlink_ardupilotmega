-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Control message for rate gimbal.

pragma Ada_2022;

package MAVLink.V1.Ardupilotmega.Gimbal_Controls is

   pragma Pure;

   Gimbal_Control_Len : constant Interfaces.Unsigned_8 := 14;

   type Gimbal_Control is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Demanded_Rate_X  : Raw_Float;
      --  Units: [rad/s]
      --  Demanded angular rate X.
      Demanded_Rate_Y  : Raw_Float;
      --  Units: [rad/s]
      --  Demanded angular rate Y.
      Demanded_Rate_Z  : Raw_Float;
      --  Units: [rad/s]
      --  Demanded angular rate Z.
   end record;

   for Gimbal_Control use record
      Demanded_Rate_X  at 0  range 0 .. 31;
      Demanded_Rate_Y  at 4  range 0 .. 31;
      Demanded_Rate_Z  at 8  range 0 .. 31;
      Target_System    at 12 range 0 .. 7;
      Target_Component at 13 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Control;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Control;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Control;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Control;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gimbal_Control;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Control;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Ardupilotmega.Gimbal_Controls;
