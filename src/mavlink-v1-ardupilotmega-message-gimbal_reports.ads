-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  3 axis gimbal measurements. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Gimbal_Reports is

   pragma Preelaborate;

   Gimbal_Report_Id : constant Msg_Id := 200;

   Gimbal_Report_Len : constant Interfaces.Unsigned_8 := 42;

   type Gimbal_Report is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID. 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID. 
      Delta_Time       : Interfaces.IEEE_Float_32;
      --  Units: [s]
      --  Time since last update. 
      Delta_Angle_X    : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Delta angle X. 
      Delta_Angle_Y    : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Delta angle Y. 
      Delta_Angle_Z    : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Delta angle X. 
      Delta_Velocity_X : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Delta velocity X. 
      Delta_Velocity_Y : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Delta velocity Y. 
      Delta_Velocity_Z : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Delta velocity Z. 
      Joint_Roll       : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Joint ROLL. 
      Joint_El         : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Joint EL. 
      Joint_Az         : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Joint AZ. 
   end record;

   for Gimbal_Report use record
      Delta_Time       at 0  range 0 .. 31;
      Delta_Angle_X    at 4  range 0 .. 31;
      Delta_Angle_Y    at 8  range 0 .. 31;
      Delta_Angle_Z    at 12 range 0 .. 31;
      Delta_Velocity_X at 16 range 0 .. 31;
      Delta_Velocity_Y at 20 range 0 .. 31;
      Delta_Velocity_Z at 24 range 0 .. 31;
      Joint_Roll       at 28 range 0 .. 31;
      Joint_El         at 32 range 0 .. 31;
      Joint_Az         at 36 range 0 .. 31;
      Target_System    at 40 range 0 .. 7;
      Target_Component at 41 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Report;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Report;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Report;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gimbal_Report;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Gimbal_Reports;
