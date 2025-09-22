-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The system time is the time of the master clock. This can be emitted by 
--  flight controllers, onboard computers, or other components in the MAVLink 
--  network. Components that are using a less reliable time source, such as a 
--  battery-backed real time clock, can choose to match their system clock to 
--  that of a SYSTEM_TYPE that indicates a more recent time. This allows more 
--  broadly accurate date stamping of logs, and so on. If precise time 
--  synchronization is needed then use TIMESYNC instead. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.System_Times is

   pragma Preelaborate;

   System_Time_Id : constant Msg_Id := 2;

   System_Time_Len : constant Interfaces.Unsigned_8 := 12;

   type System_Time is record
      Time_Unix_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX epoch time). 
      Time_Boot_Ms   : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
   end record;

   for System_Time use record
      Time_Unix_Usec at 0 range 0 .. 63;
      Time_Boot_Ms   at 8 range 0 .. 31;
   end record;

   procedure Encode
     (Message : System_Time;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : System_Time;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out System_Time;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out System_Time;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.System_Times;
