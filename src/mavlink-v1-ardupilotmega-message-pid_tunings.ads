-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  PID tuning information. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Pid_Tunings is

   pragma Preelaborate;

   Pid_Tuning_Id : constant Msg_Id := 194;

   Pid_Tuning_Len : constant Interfaces.Unsigned_8 := 25;

   type Pid_Tuning is record
      Axis     : Pid_Tuning_Axis;
      --  Axis. 
      Desired  : Interfaces.IEEE_Float_32;
      --  Desired rate. 
      Achieved : Interfaces.IEEE_Float_32;
      --  Achieved rate. 
      Ff       : Interfaces.IEEE_Float_32;
      --  FF component. 
      P        : Interfaces.IEEE_Float_32;
      --  P component. 
      I        : Interfaces.IEEE_Float_32;
      --  I component. 
      D        : Interfaces.IEEE_Float_32;
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
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Pid_Tuning;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Pid_Tuning;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Pid_Tuning;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Pid_Tunings;
