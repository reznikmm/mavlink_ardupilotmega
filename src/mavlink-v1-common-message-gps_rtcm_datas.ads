-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  RTCM message for injecting into the onboard GPS (used for DGPS) 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Gps_Rtcm_Datas is

   pragma Preelaborate;

   Gps_Rtcm_Data_Id : constant Msg_Id := 233;

   Gps_Rtcm_Data_Len : constant Interfaces.Unsigned_8 := 182;

   type Gps_Rtcm_Data is record
      Flags : Interfaces.Unsigned_8;
      --  LSB: 1 means message is fragmented, next 2 bits are the fragment ID, 
      --  the remaining 5 bits are used for the sequence ID. Messages are only 
      --  to be flushed to the GPS when the entire message has been 
      --  reconstructed on the autopilot. The fragment ID specifies which 
      --  order the fragments should be assembled into a buffer, while the 
      --  sequence ID is used to detect a mismatch between different buffers. 
      --  The buffer is considered fully reconstructed when either all 4 
      --  fragments are present, or all the fragments before the first 
      --  fragment with a non full payload is received. This management is 
      --  used to ensure that normal GPS operation doesn't corrupt RTCM data, 
      --  and to recover from a unreliable transport delivery order. 
      Len   : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  data length 
      Data  : Unsigned_8_Array (1 .. 180);
      --  RTCM message (may be fragmented) 
   end record;

   for Gps_Rtcm_Data use record
      Flags at 0 range 0 .. 7;
      Len   at 1 range 0 .. 7;
      Data  at 2 range 0 .. 1439;
   end record;

   procedure Encode
     (Message : Gps_Rtcm_Data;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Rtcm_Data;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Rtcm_Data;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Rtcm_Data;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gps_Rtcm_Data;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Rtcm_Data;
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

end MAVLink.V1.Common.Message.Gps_Rtcm_Datas;
