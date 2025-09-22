-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Message appropriate for high latency connections like Iridium (version 2) 
pragma Ada_2022;


with Mavlink.V1.Minimal; use Mavlink.V1.Minimal;

package Mavlink.V1.Common.Message.High_Latency2s is

   pragma Preelaborate;

   High_Latency2_Id : constant Msg_Id := 235;

   High_Latency2_Len : constant Interfaces.Unsigned_8 := 42;

   type High_Latency2 is record
      Timestamp       : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (milliseconds since boot or Unix epoch) 
      Type_Field      : Mav_Type;
      --  Type of the MAV (quadrotor, helicopter, etc.) 
      Autopilot       : Mav_Autopilot;
      --  Autopilot type / class. Use MAV_AUTOPILOT_INVALID for components 
      --  that are not flight controllers. 
      Custom_Mode     : Interfaces.Unsigned_16;
      --  A bitfield for use for autopilot-specific flags (2 byte version). 
      Latitude        : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Longitude       : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
      Altitude        : Interfaces.Integer_16;
      --  Units: [m]
      --  Altitude above mean sea level 
      Target_Altitude : Interfaces.Integer_16;
      --  Units: [m]
      --  Altitude setpoint 
      Heading         : Interfaces.Unsigned_8;
      --  Units: [deg/2]
      --  Heading 
      Target_Heading  : Interfaces.Unsigned_8;
      --  Units: [deg/2]
      --  Heading setpoint 
      Target_Distance : Interfaces.Unsigned_16;
      --  Units: [dam]
      --  Distance to target waypoint or position 
      Throttle        : Interfaces.Unsigned_8;
      --  Units: [%]
      --  Throttle 
      Airspeed        : Interfaces.Unsigned_8;
      --  Units: [m/s*5]
      --  Airspeed 
      Airspeed_Sp     : Interfaces.Unsigned_8;
      --  Units: [m/s*5]
      --  Airspeed setpoint 
      Groundspeed     : Interfaces.Unsigned_8;
      --  Units: [m/s*5]
      --  Groundspeed 
      Windspeed       : Interfaces.Unsigned_8;
      --  Units: [m/s*5]
      --  Windspeed 
      Wind_Heading    : Interfaces.Unsigned_8;
      --  Units: [deg/2]
      --  Wind heading 
      Eph             : Interfaces.Unsigned_8;
      --  Units: [dm]
      --  Maximum error horizontal position since last message 
      Epv             : Interfaces.Unsigned_8;
      --  Units: [dm]
      --  Maximum error vertical position since last message 
      Temperature_Air : Interfaces.Integer_8;
      --  Units: [degC]
      --  Air temperature 
      Climb_Rate      : Interfaces.Integer_8;
      --  Units: [dm/s]
      --  Maximum climb rate magnitude since last message 
      Battery         : Interfaces.Integer_8 :=
        -1;
      --  Units: [%]
      --  Battery level (-1 if field not provided). 
      Wp_Num          : Interfaces.Unsigned_16;
      --  Current waypoint number 
      Failure_Flags   : Hl_Failure_Flag;
      --  Bitmap of failure flags. 
      Custom0         : Interfaces.Integer_8;
      --  Field for custom payload. 
      Custom1         : Interfaces.Integer_8;
      --  Field for custom payload. 
      Custom2         : Interfaces.Integer_8;
      --  Field for custom payload. 
   end record;

   for High_Latency2 use record
      Timestamp       at 0  range 0 .. 31;
      Latitude        at 4  range 0 .. 31;
      Longitude       at 8  range 0 .. 31;
      Custom_Mode     at 12 range 0 .. 15;
      Altitude        at 14 range 0 .. 15;
      Target_Altitude at 16 range 0 .. 15;
      Target_Distance at 18 range 0 .. 15;
      Wp_Num          at 20 range 0 .. 15;
      Failure_Flags   at 22 range 0 .. 15;
      Type_Field      at 24 range 0 .. 7;
      Autopilot       at 25 range 0 .. 7;
      Heading         at 26 range 0 .. 7;
      Target_Heading  at 27 range 0 .. 7;
      Throttle        at 28 range 0 .. 7;
      Airspeed        at 29 range 0 .. 7;
      Airspeed_Sp     at 30 range 0 .. 7;
      Groundspeed     at 31 range 0 .. 7;
      Windspeed       at 32 range 0 .. 7;
      Wind_Heading    at 33 range 0 .. 7;
      Eph             at 34 range 0 .. 7;
      Epv             at 35 range 0 .. 7;
      Temperature_Air at 36 range 0 .. 7;
      Climb_Rate      at 37 range 0 .. 7;
      Battery         at 38 range 0 .. 7;
      Custom0         at 39 range 0 .. 7;
      Custom1         at 40 range 0 .. 7;
      Custom2         at 41 range 0 .. 7;
   end record;

   procedure Encode
     (Message : High_Latency2;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : High_Latency2;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out High_Latency2;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out High_Latency2;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.High_Latency2s;
