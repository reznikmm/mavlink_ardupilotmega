-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Angle of Attack and Side Slip Angle.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Aoa_Ssas is

   pragma Pure;

   type Aoa_Ssa is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (since boot or Unix epoch).
      Aoa       : Raw_Float;
      --  Units: [deg]
      --  Angle of Attack.
      Ssa       : Raw_Float;
      --  Units: [deg]
      --  Side Slip Angle.
   end record;

   for Aoa_Ssa use record
      Time_Usec at 0  range 0 .. 63;
      Aoa       at 8  range 0 .. 31;
      Ssa       at 12 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Aoa_Ssa;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Aoa_Ssa;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Aoa_Ssa;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Aoa_Ssa;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Aoa_Ssa;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Aoa_Ssa;
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
     (Message : Aoa_Ssa;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Aoa_Ssa;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Aoa_Ssas;
