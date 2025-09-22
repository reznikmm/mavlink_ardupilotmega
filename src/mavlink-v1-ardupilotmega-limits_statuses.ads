-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of AP_Limits. Sent in extended status stream when AP_Limits is
--  enabled.

pragma Ada_2022;

with MAVLink.V1.Ardupilotmega.Types; use MAVLink.V1.Ardupilotmega.Types;

package MAVLink.V1.Ardupilotmega.Limits_Statuses is

   pragma Pure;

   Limits_Status_Len : constant Interfaces.Unsigned_8 := 22;

   type Limits_Status is record
      Limits_State   : MAVLink.V1.Ardupilotmega.Types.Limits_State;
      --  State of AP_Limits.
      Last_Trigger   : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time (since boot) of last breach.
      Last_Action    : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time (since boot) of last recovery action.
      Last_Recovery  : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time (since boot) of last successful recovery.
      Last_Clear     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time (since boot) of last all-clear.
      Breach_Count   : Interfaces.Unsigned_16;
      --  Number of fence breaches.
      Mods_Enabled   : Limit_Module;
      --  AP_Limit_Module bitfield of enabled modules.
      Mods_Required  : Limit_Module;
      --  AP_Limit_Module bitfield of required modules.
      Mods_Triggered : Limit_Module;
      --  AP_Limit_Module bitfield of triggered modules.
   end record;

   for Limits_Status use record
      Last_Trigger   at 0  range 0 .. 31;
      Last_Action    at 4  range 0 .. 31;
      Last_Recovery  at 8  range 0 .. 31;
      Last_Clear     at 12 range 0 .. 31;
      Breach_Count   at 16 range 0 .. 15;
      Limits_State   at 18 range 0 .. 7;
      Mods_Enabled   at 19 range 0 .. 7;
      Mods_Required  at 20 range 0 .. 7;
      Mods_Triggered at 21 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Limits_Status;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Limits_Status;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Limits_Status;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Limits_Status;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Limits_Status;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Limits_Status;
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

end MAVLink.V1.Ardupilotmega.Limits_Statuses;
