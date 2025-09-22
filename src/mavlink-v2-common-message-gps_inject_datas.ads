-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

------------
--  DEPRECATED SINCE: 2022-05 REPLACED BY: GPS_RTCM_DATA
------------
--  Data for injecting into the onboard GPS (used for DGPS) 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gps_Inject_Datas is

   pragma Preelaborate;

   Gps_Inject_Data_Id : constant Msg_Id := 123;

   type Gps_Inject_Data is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
      Len              : Interfaces.Unsigned_8;
      --  Units: [bytes]
      --  Data length 
      Data             : Unsigned_8_Array (1 .. 110);
      --  Raw data (110 is enough for 12 satellites of RTCMv2) 
   end record;

   pragma Obsolescent (Gps_Inject_Data);

   for Gps_Inject_Data use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
      Len              at 2 range 0 .. 7;
      Data             at 3 range 0 .. 879;
   end record;

   procedure Encode
     (Message : Gps_Inject_Data;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Inject_Data;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Inject_Data;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Inject_Data;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gps_Inject_Data;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Inject_Data;
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
     (Message : Gps_Inject_Data;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gps_Inject_Data;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gps_Inject_Datas;
