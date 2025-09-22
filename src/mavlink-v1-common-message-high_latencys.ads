-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2020-10 REPLACED BY: HIGH_LATENCY2
------------
--  Message appropriate for high latency connections like Iridium 
pragma Ada_2022;


with MAVLink.V1.Minimal; use MAVLink.V1.Minimal;

package MAVLink.V1.Common.Message.High_Latencys is

   pragma Preelaborate;

   High_Latency_Id : constant Msg_Id := 234;

   High_Latency_Len : constant Interfaces.Unsigned_8 := 40;

   type High_Latency is record
      Base_Mode         : Mav_Mode_Flag;
      --  Bitmap of enabled system modes. 
      Custom_Mode       : Interfaces.Unsigned_32;
      --  A bitfield for use for autopilot-specific flags. 
      Landed_State      : Mav_Landed_State;
      --  The landed state. Is set to MAV_LANDED_STATE_UNDEFINED if landed 
      --  state is unknown. 
      Roll              : Interfaces.Integer_16;
      --  Units: [cdeg]
      --  roll 
      Pitch             : Interfaces.Integer_16;
      --  Units: [cdeg]
      --  pitch 
      Heading           : Interfaces.Unsigned_16;
      --  Units: [cdeg]
      --  heading 
      Throttle          : Interfaces.Integer_8;
      --  Units: [%]
      --  throttle (percentage) 
      Heading_Sp        : Interfaces.Integer_16;
      --  Units: [cdeg]
      --  heading setpoint 
      Latitude          : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude 
      Longitude         : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude 
      Altitude_Amsl     : Interfaces.Integer_16;
      --  Units: [m]
      --  Altitude above mean sea level 
      Altitude_Sp       : Interfaces.Integer_16;
      --  Units: [m]
      --  Altitude setpoint relative to the home position 
      Airspeed          : Interfaces.Unsigned_8;
      --  Units: [m/s]
      --  airspeed 
      Airspeed_Sp       : Interfaces.Unsigned_8;
      --  Units: [m/s]
      --  airspeed setpoint 
      Groundspeed       : Interfaces.Unsigned_8;
      --  Units: [m/s]
      --  groundspeed 
      Climb_Rate        : Interfaces.Integer_8;
      --  Units: [m/s]
      --  climb rate 
      Gps_Nsat          : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Number of satellites visible. If unknown, set to UINT8_MAX 
      Gps_Fix_Type      : MAVLink.V1.Common.Gps_Fix_Type;
      --  GPS Fix type. 
      Battery_Remaining : Interfaces.Unsigned_8;
      --  Units: [%]
      --  Remaining battery (percentage) 
      Temperature       : Interfaces.Integer_8;
      --  Units: [degC]
      --  Autopilot temperature (degrees C) 
      Temperature_Air   : Interfaces.Integer_8;
      --  Units: [degC]
      --  Air temperature (degrees C) from airspeed sensor 
      Failsafe          : Interfaces.Unsigned_8;
      --  failsafe (each bit represents a failsafe where 0=ok, 1=failsafe 
      --  active (bit0:RC, bit1:batt, bit2:GPS, bit3:GCS, bit4:fence) 
      Wp_Num            : Interfaces.Unsigned_8;
      --  current waypoint number 
      Wp_Distance       : Interfaces.Unsigned_16;
      --  Units: [m]
      --  distance to target 
   end record;

   pragma Obsolescent (High_Latency);

   for High_Latency use record
      Custom_Mode       at 0  range 0 .. 31;
      Latitude          at 4  range 0 .. 31;
      Longitude         at 8  range 0 .. 31;
      Roll              at 12 range 0 .. 15;
      Pitch             at 14 range 0 .. 15;
      Heading           at 16 range 0 .. 15;
      Heading_Sp        at 18 range 0 .. 15;
      Altitude_Amsl     at 20 range 0 .. 15;
      Altitude_Sp       at 22 range 0 .. 15;
      Wp_Distance       at 24 range 0 .. 15;
      Base_Mode         at 26 range 0 .. 7;
      Landed_State      at 27 range 0 .. 7;
      Throttle          at 28 range 0 .. 7;
      Airspeed          at 29 range 0 .. 7;
      Airspeed_Sp       at 30 range 0 .. 7;
      Groundspeed       at 31 range 0 .. 7;
      Climb_Rate        at 32 range 0 .. 7;
      Gps_Nsat          at 33 range 0 .. 7;
      Gps_Fix_Type      at 34 range 0 .. 7;
      Battery_Remaining at 35 range 0 .. 7;
      Temperature       at 36 range 0 .. 7;
      Temperature_Air   at 37 range 0 .. 7;
      Failsafe          at 38 range 0 .. 7;
      Wp_Num            at 39 range 0 .. 7;
   end record;

   procedure Encode
     (Message : High_Latency;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : High_Latency;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out High_Latency;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out High_Latency;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out High_Latency;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out High_Latency;
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

end MAVLink.V1.Common.Message.High_Latencys;
