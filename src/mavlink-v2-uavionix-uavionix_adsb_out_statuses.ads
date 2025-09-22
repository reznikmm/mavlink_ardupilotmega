-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Status message with information from UCP Heartbeat and Status messages.

pragma Ada_2022;

with MAVLink.V2.Uavionix.Types; use MAVLink.V2.Uavionix.Types;

package MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Statuses is

   pragma Pure;

   type Uavionix_Adsb_Out_Status is record
      State     : Uavionix_Adsb_Out_Status_State;
      --  ADS-B transponder status state flags
      Squawk    : Interfaces.Unsigned_16;
      --  Mode A code (typically 1200 [0x04B0] for VFR)
      Nic_Nacp  : Uavionix_Adsb_Out_Status_Nic_Nacp;
      --  Integrity and Accuracy of traffic reported as a 4-bit value for each
      --  field (NACp 7:4, NIC 3:0) and encoded by Containment Radius (HPL)
      --  and Estimated Position Uncertainty (HFOM), respectively
      Boardtemp : Interfaces.Unsigned_8;
      --  Board temperature in C
      Fault     : Uavionix_Adsb_Out_Status_Fault;
      --  ADS-B transponder fault flags
      Flight_Id : String (1 .. 8);
      --  Flight Identification: 8 ASCII characters, '0' through '9', 'A'
      --  through 'Z' or space. Spaces (0x20) used as a trailing pad
      --  character, or when call sign is unavailable.
   end record;

   for Uavionix_Adsb_Out_Status use record
      Squawk    at 0 range 0 .. 15;
      State     at 2 range 0 .. 7;
      Nic_Nacp  at 3 range 0 .. 7;
      Boardtemp at 4 range 0 .. 7;
      Fault     at 5 range 0 .. 7;
      Flight_Id at 6 range 0 .. 63;
   end record;

   procedure Encode
     (Message : Uavionix_Adsb_Out_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Uavionix_Adsb_Out_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Status;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Status;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Uavionix_Adsb_Out_Status;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Uavionix_Adsb_Out_Status;
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
     (Message : Uavionix_Adsb_Out_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Uavionix_Adsb_Out_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Uavionix.Uavionix_Adsb_Out_Statuses;
