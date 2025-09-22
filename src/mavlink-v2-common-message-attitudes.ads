-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The attitude in the aeronautical frame (right-handed, Z-down, Y-right, 
--  X-front, ZYX, intrinsic). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Attitudes is

   pragma Preelaborate;

   Attitude_Id : constant Msg_Id := 30;

   type Attitude is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Roll         : Raw_Float;
      --  Units: [rad]
      --  Roll angle (-pi..+pi) 
      Pitch        : Raw_Float;
      --  Units: [rad]
      --  Pitch angle (-pi..+pi) 
      Yaw          : Raw_Float;
      --  Units: [rad]
      --  Yaw angle (-pi..+pi) 
      Rollspeed    : Raw_Float;
      --  Units: [rad/s]
      --  Roll angular speed 
      Pitchspeed   : Raw_Float;
      --  Units: [rad/s]
      --  Pitch angular speed 
      Yawspeed     : Raw_Float;
      --  Units: [rad/s]
      --  Yaw angular speed 
   end record;

   for Attitude use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Roll         at 4  range 0 .. 31;
      Pitch        at 8  range 0 .. 31;
      Yaw          at 12 range 0 .. 31;
      Rollspeed    at 16 range 0 .. 31;
      Pitchspeed   at 20 range 0 .. 31;
      Yawspeed     at 24 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Attitude;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Attitude;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Attitude;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Attitude;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude;
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
     (Message : Attitude;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Attitude;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Attitudes;
