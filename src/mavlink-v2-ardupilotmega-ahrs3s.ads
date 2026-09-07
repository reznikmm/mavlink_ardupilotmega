-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Status of third AHRS filter if available. This is for ANU research group
--  (Ali and Sean).

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Ahrs3s is

   pragma Pure;

   type Ahrs3 is record
      Roll     : Raw_Float;
      --  Units: [rad]
      --  Roll angle.
      Pitch    : Raw_Float;
      --  Units: [rad]
      --  Pitch angle.
      Yaw      : Raw_Float;
      --  Units: [rad]
      --  Yaw angle.
      Altitude : Raw_Float;
      --  Units: [m]
      --  Altitude (MSL).
      Lat      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude.
      Lng      : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude.
      V1       : Raw_Float;
      --  Test variable1.
      V2       : Raw_Float;
      --  Test variable2.
      V3       : Raw_Float;
      --  Test variable3.
      V4       : Raw_Float;
      --  Test variable4.
   end record;

   for Ahrs3 use record
      Roll     at 0  range 0 .. 31;
      Pitch    at 4  range 0 .. 31;
      Yaw      at 8  range 0 .. 31;
      Altitude at 12 range 0 .. 31;
      Lat      at 16 range 0 .. 31;
      Lng      at 20 range 0 .. 31;
      V1       at 24 range 0 .. 31;
      V2       at 28 range 0 .. 31;
      V3       at 32 range 0 .. 31;
      V4       at 36 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Ahrs3;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ahrs3;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ahrs3;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Ahrs3;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Ahrs3;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Ahrs3;
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
     (Message : Ahrs3;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Ahrs3;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Ahrs3s;
