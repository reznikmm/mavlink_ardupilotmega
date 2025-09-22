-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The state of the navigation and position controller. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Nav_Controller_Outputs is

   pragma Preelaborate;

   Nav_Controller_Output_Id : constant Msg_Id := 62;

   Nav_Controller_Output_Len : constant Interfaces.Unsigned_8 := 26;

   type Nav_Controller_Output is record
      Nav_Roll       : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Current desired roll 
      Nav_Pitch      : Interfaces.IEEE_Float_32;
      --  Units: [deg]
      --  Current desired pitch 
      Nav_Bearing    : Interfaces.Integer_16;
      --  Units: [deg]
      --  Current desired heading 
      Target_Bearing : Interfaces.Integer_16;
      --  Units: [deg]
      --  Bearing to current waypoint/target 
      Wp_Dist        : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Distance to active waypoint 
      Alt_Error      : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Current altitude error 
      Aspd_Error     : Interfaces.IEEE_Float_32;
      --  Units: [m/s]
      --  Current airspeed error 
      Xtrack_Error   : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Current crosstrack error on x-y plane 
   end record;

   for Nav_Controller_Output use record
      Nav_Roll       at 0  range 0 .. 31;
      Nav_Pitch      at 4  range 0 .. 31;
      Alt_Error      at 8  range 0 .. 31;
      Aspd_Error     at 12 range 0 .. 31;
      Xtrack_Error   at 16 range 0 .. 31;
      Nav_Bearing    at 20 range 0 .. 15;
      Target_Bearing at 22 range 0 .. 15;
      Wp_Dist        at 24 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Nav_Controller_Output;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Nav_Controller_Output;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Nav_Controller_Output;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Nav_Controller_Output;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Nav_Controller_Outputs;
