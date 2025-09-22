-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

------------
--  DEPRECATED SINCE: 2017-04 REPLACED BY: BATTERY_STATUS
------------

--  2nd Battery status

pragma Ada_2022;

package MAVLink.V1.Ardupilotmega.Battery2s is

   pragma Pure;

   Battery2_Len : constant Interfaces.Unsigned_8 := 4;

   type Battery2 is record
      Voltage         : Interfaces.Unsigned_16;
      --  Units: [mV]
      --  Voltage.
      Current_Battery : Interfaces.Integer_16;
      --  Units: [cA]
      --  Battery current, -1: autopilot does not measure the current.
   end record;

   pragma Obsolescent (Battery2);

   for Battery2 use record
      Voltage         at 0 range 0 .. 15;
      Current_Battery at 2 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Battery2;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Battery2;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Battery2;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Battery2;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Battery2;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Battery2;
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

end MAVLink.V1.Ardupilotmega.Battery2s;
