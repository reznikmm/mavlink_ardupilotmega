-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Kinematic multi bands (track) output from Daidalus

pragma Ada_2022;

with MAVLink.V2.Icarous.Types; use MAVLink.V2.Icarous.Types;

package MAVLink.V2.Icarous.Icarous_Kinematic_Bandses is

   pragma Pure;

   type Icarous_Kinematic_Bands is record
      Numbands : Interfaces.Integer_8;
      --  Number of track bands
      Type1    : Icarous_Track_Band_Types;
      --  See the TRACK_BAND_TYPES enum.
      Min1     : Raw_Float;
      --  Units: [deg]
      --  min angle (degrees)
      Max1     : Raw_Float;
      --  Units: [deg]
      --  max angle (degrees)
      Type2    : Icarous_Track_Band_Types;
      --  See the TRACK_BAND_TYPES enum.
      Min2     : Raw_Float;
      --  Units: [deg]
      --  min angle (degrees)
      Max2     : Raw_Float;
      --  Units: [deg]
      --  max angle (degrees)
      Type3    : Icarous_Track_Band_Types;
      --  See the TRACK_BAND_TYPES enum.
      Min3     : Raw_Float;
      --  Units: [deg]
      --  min angle (degrees)
      Max3     : Raw_Float;
      --  Units: [deg]
      --  max angle (degrees)
      Type4    : Icarous_Track_Band_Types;
      --  See the TRACK_BAND_TYPES enum.
      Min4     : Raw_Float;
      --  Units: [deg]
      --  min angle (degrees)
      Max4     : Raw_Float;
      --  Units: [deg]
      --  max angle (degrees)
      Type5    : Icarous_Track_Band_Types;
      --  See the TRACK_BAND_TYPES enum.
      Min5     : Raw_Float;
      --  Units: [deg]
      --  min angle (degrees)
      Max5     : Raw_Float;
      --  Units: [deg]
      --  max angle (degrees)
   end record;

   for Icarous_Kinematic_Bands use record
      Min1     at 0  range 0 .. 31;
      Max1     at 4  range 0 .. 31;
      Min2     at 8  range 0 .. 31;
      Max2     at 12 range 0 .. 31;
      Min3     at 16 range 0 .. 31;
      Max3     at 20 range 0 .. 31;
      Min4     at 24 range 0 .. 31;
      Max4     at 28 range 0 .. 31;
      Min5     at 32 range 0 .. 31;
      Max5     at 36 range 0 .. 31;
      Numbands at 40 range 0 .. 7;
      Type1    at 41 range 0 .. 7;
      Type2    at 42 range 0 .. 7;
      Type3    at 43 range 0 .. 7;
      Type4    at 44 range 0 .. 7;
      Type5    at 45 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Icarous_Kinematic_Bands;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Icarous_Kinematic_Bands;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Icarous_Kinematic_Bands;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Icarous_Kinematic_Bands;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Icarous_Kinematic_Bands;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Icarous_Kinematic_Bands;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Icarous_Kinematic_Bands;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Icarous_Kinematic_Bands;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Icarous.Icarous_Kinematic_Bandses;
