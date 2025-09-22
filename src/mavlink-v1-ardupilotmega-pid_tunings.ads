-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  PID tuning information.

pragma Ada_2022;

with MAVLink.V1.Ardupilotmega.Types; use MAVLink.V1.Ardupilotmega.Types;

package MAVLink.V1.Ardupilotmega.Pid_Tunings is

   pragma Pure;

   Pid_Tuning_Len : constant Interfaces.Unsigned_8 := 25;

   type Pid_Tuning is record
      Axis     : Pid_Tuning_Axis;
      --  Axis.
      Desired  : Raw_Float;
      --  Desired rate.
      Achieved : Raw_Float;
      --  Achieved rate.
      Ff       : Raw_Float;
      --  FF component.
      P        : Raw_Float;
      --  P component.
      I        : Raw_Float;
      --  I component.
      D        : Raw_Float;
      --  D component.
   end record;

   for Pid_Tuning use record
      Desired  at 0  range 0 .. 31;
      Achieved at 4  range 0 .. 31;
      Ff       at 8  range 0 .. 31;
      P        at 12 range 0 .. 31;
      I        at 16 range 0 .. 31;
      D        at 20 range 0 .. 31;
      Axis     at 24 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Pid_Tuning;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Pid_Tuning;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Pid_Tuning;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Pid_Tuning;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Pid_Tuning;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Pid_Tuning;
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

end MAVLink.V1.Ardupilotmega.Pid_Tunings;
