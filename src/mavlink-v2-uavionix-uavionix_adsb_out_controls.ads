-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Control message with all data sent in UCP control message.

pragma Ada_2022;

with MAVLink.V2.Uavionix.Types; use MAVLink.V2.Uavionix.Types;

package MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Controls is

   pragma Pure;

   type Uavionix_Adsb_Out_Control is record
      State           : Uavionix_Adsb_Out_Control_State;
      --  ADS-B transponder control state flags
      Baroaltmsl      : Interfaces.Integer_32;
      --  Units: [mbar]
      --  Barometric pressure altitude (MSL) relative to a standard atmosphere
      --  of 1013.2 mBar and NOT bar corrected altitude (m * 1E-3). (up +ve).
      --  If unknown set to INT32_MAX
      Squawk          : Interfaces.Unsigned_16;
      --  Mode A code (typically 1200 [0x04B0] for VFR)
      Emergencystatus : Uavionix_Adsb_Emergency_Status;
      --  Emergency status
      Flight_Id       : String (1 .. 8);
      --  Flight Identification: 8 ASCII characters, '0' through '9', 'A'
      --  through 'Z' or space. Spaces (0x20) used as a trailing pad
      --  character, or when call sign is unavailable.
      X_Bit           : Uavionix_Adsb_Xbit;
      --  X-Bit enable (military transponders only)
   end record;

   for Uavionix_Adsb_Out_Control use record
      Baroaltmsl      at 0  range 0 .. 31;
      Squawk          at 4  range 0 .. 15;
      State           at 6  range 0 .. 7;
      Emergencystatus at 7  range 0 .. 7;
      Flight_Id       at 8  range 0 .. 63;
      X_Bit           at 16 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Uavionix_Adsb_Out_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Uavionix_Adsb_Out_Control;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Control;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Control;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Control;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Control;
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
     (Message : Uavionix_Adsb_Out_Control;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Uavionix_Adsb_Out_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Controls;
