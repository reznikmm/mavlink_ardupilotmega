-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The positioning status, as reported by GPS. This message is intended to 
--  display status information about each satellite visible to the receiver. 
--  See message GLOBAL_POSITION_INT for the global position estimate. This 
--  message can contain information for up to 20 satellites. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Gps_Statuses is

   pragma Preelaborate;

   Gps_Status_Id : constant Msg_Id := 25;

   Gps_Status_Len : constant Interfaces.Unsigned_8 := 101;

   type Gps_Status is record
      Satellites_Visible  : Interfaces.Unsigned_8;
      --  Number of satellites visible 
      Satellite_Prn       : Unsigned_8_Array (1 .. 20);
      --  Global satellite ID 
      Satellite_Used      : Unsigned_8_Array (1 .. 20);
      --  0: Satellite not used, 1: used for localization 
      Satellite_Elevation : Unsigned_8_Array (1 .. 20);
      --  Units: [deg]
      --  Elevation (0: right on top of receiver, 90: on the horizon) of 
      --  satellite 
      Satellite_Azimuth   : Unsigned_8_Array (1 .. 20);
      --  Units: [deg]
      --  Direction of satellite, 0: 0 deg, 255: 360 deg. 
      Satellite_Snr       : Unsigned_8_Array (1 .. 20);
      --  Units: [dB]
      --  Signal to noise ratio of satellite 
   end record;

   for Gps_Status use record
      Satellites_Visible  at 0  range 0 .. 7;
      Satellite_Prn       at 1  range 0 .. 159;
      Satellite_Used      at 21 range 0 .. 159;
      Satellite_Elevation at 41 range 0 .. 159;
      Satellite_Azimuth   at 61 range 0 .. 159;
      Satellite_Snr       at 81 range 0 .. 159;
   end record;

   procedure Encode
     (Message : Gps_Status;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Status;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Status;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Status;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gps_Status;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Status;
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

end MAVLink.V1.Common.Message.Gps_Statuses;
