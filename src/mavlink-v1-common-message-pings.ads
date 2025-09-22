-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2011-08 REPLACED BY: TIMESYNC
--  To be removed / merged with TIMESYNC 
------------
--  A ping message either requesting or responding to a ping. This allows to 
--  measure the system latencies, including serial port, radio modem and UDP 
--  connections. The ping microservice is documented at 
--  https://mavlink.io/en/services/ping.html 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Pings is

   pragma Preelaborate;

   Ping_Id : constant Msg_Id := 4;

   Ping_Len : constant Interfaces.Unsigned_8 := 14;

   type Ping is record
      Time_Usec        : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Seq              : Interfaces.Unsigned_32;
      --  PING sequence 
      Target_System    : Interfaces.Unsigned_8;
      --  0: request ping from all receiving systems. If greater than 0: 
      --  message is a ping response and number is the system id of the 
      --  requesting system 
      Target_Component : Interfaces.Unsigned_8;
      --  0: request ping from all receiving components. If greater than 0: 
      --  message is a ping response and number is the component id of the 
      --  requesting component. 
   end record;

   pragma Obsolescent (Ping);

   for Ping use record
      Time_Usec        at 0  range 0 .. 63;
      Seq              at 8  range 0 .. 31;
      Target_System    at 12 range 0 .. 7;
      Target_Component at 13 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Ping;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ping;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ping;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ping;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Pings;
