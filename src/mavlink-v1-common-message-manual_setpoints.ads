-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Setpoint in roll, pitch, yaw and thrust from the operator 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Manual_Setpoints is

   pragma Preelaborate;

   Manual_Setpoint_Id : constant Msg_Id := 81;

   Manual_Setpoint_Len : constant Interfaces.Unsigned_8 := 22;

   type Manual_Setpoint is record
      Time_Boot_Ms           : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Roll                   : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Desired roll rate 
      Pitch                  : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Desired pitch rate 
      Yaw                    : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Desired yaw rate 
      Thrust                 : Interfaces.IEEE_Float_32;
      --  Collective thrust, normalized to 0 .. 1 
      Mode_Switch            : Interfaces.Unsigned_8;
      --  Flight mode switch position, 0.. 255 
      Manual_Override_Switch : Interfaces.Unsigned_8;
      --  Override mode switch position, 0.. 255 
   end record;

   for Manual_Setpoint use record
      Time_Boot_Ms           at 0  range 0 .. 31;
      Roll                   at 4  range 0 .. 31;
      Pitch                  at 8  range 0 .. 31;
      Yaw                    at 12 range 0 .. 31;
      Thrust                 at 16 range 0 .. 31;
      Mode_Switch            at 20 range 0 .. 7;
      Manual_Override_Switch at 21 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Manual_Setpoint;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Manual_Setpoint;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Manual_Setpoint;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Manual_Setpoint;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Manual_Setpoints;
