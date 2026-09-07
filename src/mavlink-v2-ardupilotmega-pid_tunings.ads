-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  PID tuning information.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;

package MAVLink.V2.Ardupilotmega.Pid_Tunings is

   pragma Pure;

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
      Srate    : Raw_Float;
      --  Slew rate.
      Pdmod    : Raw_Float;
      --  P/D oscillation modifier.
   end record;

   for Pid_Tuning use record
      Desired  at 0  range 0 .. 31;
      Achieved at 4  range 0 .. 31;
      Ff       at 8  range 0 .. 31;
      P        at 12 range 0 .. 31;
      I        at 16 range 0 .. 31;
      D        at 20 range 0 .. 31;
      Axis     at 24 range 0 .. 7;
      Srate    at 25 range 0 .. 31;
      Pdmod    at 29 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Pid_Tuning;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Pid_Tuning;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Pid_Tuning;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Pid_Tuning;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Pid_Tuning;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Pid_Tuning;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Pid_Tuning;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Pid_Tuning;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Pid_Tunings;
