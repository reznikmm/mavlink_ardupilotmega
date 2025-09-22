-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The location of a landing target. See: 
--  https://mavlink.io/en/services/landing_target.html 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Landing_Targets is

   pragma Preelaborate;

   Landing_Target_Id : constant Msg_Id := 149;

   Landing_Target_Len : constant Interfaces.Unsigned_8 := 30;

   type Landing_Target is record
      Time_Usec  : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Target_Num : Interfaces.Unsigned_8;
      --  The ID of the target if multiple targets are present 
      Frame      : Mav_Frame;
      --  Coordinate frame used for following fields. 
      Angle_X    : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  X-axis angular offset of the target from the center of the image 
      Angle_Y    : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Y-axis angular offset of the target from the center of the image 
      Distance   : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Distance to the target from the vehicle 
      Size_X     : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Size of target along x-axis 
      Size_Y     : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Size of target along y-axis 
   end record;

   for Landing_Target use record
      Time_Usec  at 0  range 0 .. 63;
      Angle_X    at 8  range 0 .. 31;
      Angle_Y    at 12 range 0 .. 31;
      Distance   at 16 range 0 .. 31;
      Size_X     at 20 range 0 .. 31;
      Size_Y     at 24 range 0 .. 31;
      Target_Num at 28 range 0 .. 7;
      Frame      at 29 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Landing_Target;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Landing_Target;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Landing_Target;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Landing_Target;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Landing_Target;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Landing_Target;
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

end MAVLink.V1.Common.Message.Landing_Targets;
