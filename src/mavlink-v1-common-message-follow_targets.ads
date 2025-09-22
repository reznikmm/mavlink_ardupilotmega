-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Current motion information from a designated system 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Follow_Targets is

   pragma Preelaborate;

   Follow_Target_Id : constant Msg_Id := 144;

   Follow_Target_Len : constant Interfaces.Unsigned_8 := 93;

   type Follow_Target is record
      Timestamp        : Interfaces.Unsigned_64;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Est_Capabilities : Interfaces.Unsigned_8;
      --  bit positions for tracker reporting capabilities (POS = 0, VEL = 1, 
      --  ACCEL = 2, ATT + RATES = 3) 
      Lat              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Lon              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Alt              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Altitude (MSL) 
      Vel              : Short_Float_Array (1 .. 3) :=
        [others => 0.0];
      --  Units: [m/s]
      --  target velocity (0,0,0) for unknown 
      Acc              : Short_Float_Array (1 .. 3) :=
        [others => 0.0];
      --  Units: [m/s/s]
      --  linear target acceleration (0,0,0) for unknown 
      Attitude_Q       : Short_Float_Array (1 .. 4) :=
        [others => 0.0];
      --  (0 0 0 0 for unknown) 
      Rates            : Short_Float_Array (1 .. 3) :=
        [others => 0.0];
      --  (0 0 0 for unknown) 
      Position_Cov     : Short_Float_Array (1 .. 3);
      --  eph epv 
      Custom_State     : Interfaces.Unsigned_64;
      --  button states or switches of a tracker device 
   end record;

   for Follow_Target use record
      Timestamp        at 0  range 0 .. 63;
      Custom_State     at 8  range 0 .. 63;
      Lat              at 16 range 0 .. 31;
      Lon              at 20 range 0 .. 31;
      Alt              at 24 range 0 .. 31;
      Vel              at 28 range 0 .. 95;
      Acc              at 40 range 0 .. 95;
      Attitude_Q       at 52 range 0 .. 127;
      Rates            at 68 range 0 .. 95;
      Position_Cov     at 80 range 0 .. 95;
      Est_Capabilities at 92 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Follow_Target;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Follow_Target;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Follow_Target;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Follow_Target;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Follow_Target;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Follow_Target;
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

end MAVLink.V1.Common.Message.Follow_Targets;
