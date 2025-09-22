-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The offset in X, Y, Z and yaw between the LOCAL_POSITION_NED messages of 
--  MAV X and the global coordinate frame in NED coordinates. Coordinate frame 
--  is right-handed, Z-axis down (aeronautical frame, NED / north-east-down 
--  convention) 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Local_Position_Ned_System_Global_Offsets is

   pragma Preelaborate;

   Local_Position_Ned_System_Global_Offset_Id : constant Msg_Id := 89;

   Local_Position_Ned_System_Global_Offset_Len : constant Interfaces.Unsigned_8 := 28;

   type Local_Position_Ned_System_Global_Offset is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      X            : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  X Position 
      Y            : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Y Position 
      Z            : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Z Position 
      Roll         : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Roll 
      Pitch        : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Pitch 
      Yaw          : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Yaw 
   end record;

   for Local_Position_Ned_System_Global_Offset use record
      Time_Boot_Ms at 0  range 0 .. 31;
      X            at 4  range 0 .. 31;
      Y            at 8  range 0 .. 31;
      Z            at 12 range 0 .. 31;
      Roll         at 16 range 0 .. 31;
      Pitch        at 20 range 0 .. 31;
      Yaw          at 24 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Local_Position_Ned_System_Global_Offset;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Local_Position_Ned_System_Global_Offset;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Local_Position_Ned_System_Global_Offset;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Local_Position_Ned_System_Global_Offset;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Local_Position_Ned_System_Global_Offsets;
