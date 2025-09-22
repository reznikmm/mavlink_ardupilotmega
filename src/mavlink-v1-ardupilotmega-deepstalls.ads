-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Deepstall path planning.

pragma Ada_2022;

with MAVLink.V1.Ardupilotmega.Types; use MAVLink.V1.Ardupilotmega.Types;

package MAVLink.V1.Ardupilotmega.Deepstalls is

   pragma Pure;

   Deepstall_Len : constant Interfaces.Unsigned_8 := 37;

   type Deepstall is record
      Landing_Lat              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Landing latitude.
      Landing_Lon              : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Landing longitude.
      Path_Lat                 : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Final heading start point, latitude.
      Path_Lon                 : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Final heading start point, longitude.
      Arc_Entry_Lat            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Arc entry point, latitude.
      Arc_Entry_Lon            : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Arc entry point, longitude.
      Altitude                 : Raw_Float;
      --  Units: [m]
      --  Altitude.
      Expected_Travel_Distance : Raw_Float;
      --  Units: [m]
      --  Distance the aircraft expects to travel during the deepstall.
      Cross_Track_Error        : Raw_Float;
      --  Units: [m]
      --  Deepstall cross track error (only valid when in
      --  DEEPSTALL_STAGE_LAND).
      Stage                    : Deepstall_Stage;
      --  Deepstall stage.
   end record;

   for Deepstall use record
      Landing_Lat              at 0  range 0 .. 31;
      Landing_Lon              at 4  range 0 .. 31;
      Path_Lat                 at 8  range 0 .. 31;
      Path_Lon                 at 12 range 0 .. 31;
      Arc_Entry_Lat            at 16 range 0 .. 31;
      Arc_Entry_Lon            at 20 range 0 .. 31;
      Altitude                 at 24 range 0 .. 31;
      Expected_Travel_Distance at 28 range 0 .. 31;
      Cross_Track_Error        at 32 range 0 .. 31;
      Stage                    at 36 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Deepstall;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Deepstall;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Deepstall;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Deepstall;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Deepstall;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Deepstall;
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

end MAVLink.V1.Ardupilotmega.Deepstalls;
