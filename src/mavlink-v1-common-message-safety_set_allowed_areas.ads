-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Set a safety zone (volume), which is defined by two corners of a cube. 
--  This message can be used to tell the MAV which setpoints/waypoints to 
--  accept and which to reject. Safety areas are often enforced by national or 
--  competition regulations. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Safety_Set_Allowed_Areas is

   pragma Preelaborate;

   Safety_Set_Allowed_Area_Id : constant Msg_Id := 54;

   Safety_Set_Allowed_Area_Len : constant Interfaces.Unsigned_8 := 27;

   type Safety_Set_Allowed_Area is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Frame            : Mav_Frame;
      --  Coordinate frame. Can be either global, GPS, right-handed with Z 
      --  axis up or local, right handed, Z axis down. 
      P1X              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  x position 1 / Latitude 1 
      P1Y              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  y position 1 / Longitude 1 
      P1Z              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  z position 1 / Altitude 1 
      P2X              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  x position 2 / Latitude 2 
      P2Y              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  y position 2 / Longitude 2 
      P2Z              : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  z position 2 / Altitude 2 
   end record;

   for Safety_Set_Allowed_Area use record
      P1X              at 0  range 0 .. 31;
      P1Y              at 4  range 0 .. 31;
      P1Z              at 8  range 0 .. 31;
      P2X              at 12 range 0 .. 31;
      P2Y              at 16 range 0 .. 31;
      P2Z              at 20 range 0 .. 31;
      Target_System    at 24 range 0 .. 7;
      Target_Component at 25 range 0 .. 7;
      Frame            at 26 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Safety_Set_Allowed_Area;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Safety_Set_Allowed_Area;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Safety_Set_Allowed_Area;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Safety_Set_Allowed_Area;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Safety_Set_Allowed_Areas;
