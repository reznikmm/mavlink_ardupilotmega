-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  100 Hz gimbal torque command telemetry.

pragma Ada_2022;

package MAVLink.V1.Ardupilotmega.Gimbal_Torque_Cmd_Reports is

   pragma Pure;

   Gimbal_Torque_Cmd_Report_Len : constant Interfaces.Unsigned_8 := 8;

   type Gimbal_Torque_Cmd_Report is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Rl_Torque_Cmd    : Interfaces.Integer_16;
      --  Roll Torque Command.
      El_Torque_Cmd    : Interfaces.Integer_16;
      --  Elevation Torque Command.
      Az_Torque_Cmd    : Interfaces.Integer_16;
      --  Azimuth Torque Command.
   end record;

   for Gimbal_Torque_Cmd_Report use record
      Rl_Torque_Cmd    at 0 range 0 .. 15;
      El_Torque_Cmd    at 2 range 0 .. 15;
      Az_Torque_Cmd    at 4 range 0 .. 15;
      Target_System    at 6 range 0 .. 7;
      Target_Component at 7 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Torque_Cmd_Report;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Torque_Cmd_Report;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Torque_Cmd_Report;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gimbal_Torque_Cmd_Report;
      Connect : MAVLink.V1.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Gimbal_Torque_Cmd_Report;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gimbal_Torque_Cmd_Report;
      Connect : MAVLink.V1.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Ardupilotmega.Gimbal_Torque_Cmd_Reports;
