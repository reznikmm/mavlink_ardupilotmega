-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Read out the safety zone the MAV currently assumes. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Safety_Allowed_Areas is

   pragma Preelaborate;

   Safety_Allowed_Area_Id : constant Msg_Id := 55;

   type Safety_Allowed_Area is record
      Frame : Mav_Frame;
      --  Coordinate frame. Can be either global, GPS, right-handed with Z 
      --  axis up or local, right handed, Z axis down. 
      P1X   : Raw_Float;
      --  Units: [m]
      --  x position 1 / Latitude 1 
      P1Y   : Raw_Float;
      --  Units: [m]
      --  y position 1 / Longitude 1 
      P1Z   : Raw_Float;
      --  Units: [m]
      --  z position 1 / Altitude 1 
      P2X   : Raw_Float;
      --  Units: [m]
      --  x position 2 / Latitude 2 
      P2Y   : Raw_Float;
      --  Units: [m]
      --  y position 2 / Longitude 2 
      P2Z   : Raw_Float;
      --  Units: [m]
      --  z position 2 / Altitude 2 
   end record;

   for Safety_Allowed_Area use record
      P1X   at 0  range 0 .. 31;
      P1Y   at 4  range 0 .. 31;
      P1Z   at 8  range 0 .. 31;
      P2X   at 12 range 0 .. 31;
      P2Y   at 16 range 0 .. 31;
      P2Z   at 20 range 0 .. 31;
      Frame at 24 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Safety_Allowed_Area;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Safety_Allowed_Area;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Safety_Allowed_Area;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Safety_Allowed_Area;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Safety_Allowed_Area;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Safety_Allowed_Area;
      Connect : in out MAVLink.V2.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Safety_Allowed_Area;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Safety_Allowed_Area;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Safety_Allowed_Areas;
