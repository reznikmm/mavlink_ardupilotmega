-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Message to configure a camera mount, directional antenna, etc.

pragma Ada_2022;

with MAVLink.V2.Common.Types; use MAVLink.V2.Common.Types;

package MAVLink.V2.Ardupilotmega.Mount_Configures is

   pragma Pure;

   type Mount_Configure is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Mount_Mode       : Mav_Mount_Mode;
      --  Mount operating mode.
      Stab_Roll        : Interfaces.Unsigned_8;
      --  (1 = yes, 0 = no).
      Stab_Pitch       : Interfaces.Unsigned_8;
      --  (1 = yes, 0 = no).
      Stab_Yaw         : Interfaces.Unsigned_8;
      --  (1 = yes, 0 = no).
   end record;

   for Mount_Configure use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
      Mount_Mode       at 2 range 0 .. 7;
      Stab_Roll        at 3 range 0 .. 7;
      Stab_Pitch       at 4 range 0 .. 7;
      Stab_Yaw         at 5 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mount_Configure;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mount_Configure;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mount_Configure;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mount_Configure;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mount_Configure;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mount_Configure;
      Connect : MAVLink.V2.In_Connection);
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
     (Message : Mount_Configure;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mount_Configure;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Mount_Configures;
