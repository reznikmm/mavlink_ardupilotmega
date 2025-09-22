-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Publishes the GPS coordinates of the vehicle local origin (0,0,0) 
--  position. Emitted whenever a new GPS-Local position mapping is requested 
--  or set - e.g. following SET_GPS_GLOBAL_ORIGIN message. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Gps_Global_Origins is

   pragma Preelaborate;

   Gps_Global_Origin_Id : constant Msg_Id := 49;

   type Gps_Global_Origin is record
      Latitude  : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Latitude (WGS84) 
      Longitude : Interfaces.Integer_32;
      --  Units: [degE7]
      --  Longitude (WGS84) 
      Altitude  : Interfaces.Integer_32;
      --  Units: [mm]
      --  Altitude (MSL). Positive for up. 
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
   end record;

   for Gps_Global_Origin use record
      Latitude  at 0  range 0 .. 31;
      Longitude at 4  range 0 .. 31;
      Altitude  at 8  range 0 .. 31;
      Time_Usec at 12 range 0 .. 63;
   end record;

   procedure Encode
     (Message : Gps_Global_Origin;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gps_Global_Origin;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gps_Global_Origin;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Global_Origin;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Gps_Global_Origin;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Gps_Global_Origin;
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
     (Message : Gps_Global_Origin;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gps_Global_Origin;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Gps_Global_Origins;
