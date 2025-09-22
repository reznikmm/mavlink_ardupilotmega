-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Herelink Telemetry

pragma Ada_2022;

package MAVLink.V2.Cubepilot.Herelink_Telems is

   pragma Pure;

   type Herelink_Telem is record
      Rssi       : Interfaces.Unsigned_8;
      Snr        : Interfaces.Integer_16;
      Rf_Freq    : Interfaces.Unsigned_32;
      Link_Bw    : Interfaces.Unsigned_32;
      Link_Rate  : Interfaces.Unsigned_32;
      Cpu_Temp   : Interfaces.Integer_16;
      Board_Temp : Interfaces.Integer_16;
   end record;

   for Herelink_Telem use record
      Rf_Freq    at 0  range 0 .. 31;
      Link_Bw    at 4  range 0 .. 31;
      Link_Rate  at 8  range 0 .. 31;
      Snr        at 12 range 0 .. 15;
      Cpu_Temp   at 14 range 0 .. 15;
      Board_Temp at 16 range 0 .. 15;
      Rssi       at 18 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Herelink_Telem;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Herelink_Telem;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Herelink_Telem;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Herelink_Telem;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Herelink_Telem;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Herelink_Telem;
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
     (Message : Herelink_Telem;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Herelink_Telem;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Cubepilot.Herelink_Telems;
