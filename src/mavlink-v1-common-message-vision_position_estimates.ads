-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Local position/attitude estimate from a vision source. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Vision_Position_Estimates is

   pragma Preelaborate;

   Vision_Position_Estimate_Id : constant Msg_Id := 102;

   Vision_Position_Estimate_Len : constant Interfaces.Unsigned_8 := 32;

   type Vision_Position_Estimate is record
      Usec  : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX time or time since system boot) 
      X     : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local X position 
      Y     : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local Y position 
      Z     : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Local Z position 
      Roll  : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Roll angle 
      Pitch : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Pitch angle 
      Yaw   : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Yaw angle 
   end record;

   for Vision_Position_Estimate use record
      Usec  at 0  range 0 .. 63;
      X     at 8  range 0 .. 31;
      Y     at 12 range 0 .. 31;
      Z     at 16 range 0 .. 31;
      Roll  at 20 range 0 .. 31;
      Pitch at 24 range 0 .. 31;
      Yaw   at 28 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Vision_Position_Estimate;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Vision_Position_Estimate;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Vision_Position_Estimate;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Vision_Position_Estimate;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Vision_Position_Estimate;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Vision_Position_Estimate;
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

end MAVLink.V1.Common.Message.Vision_Position_Estimates;
