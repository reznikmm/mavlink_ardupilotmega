-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Flight information. This includes time since boot for arm, takeoff, and 
--  land, and a flight number. Takeoff and landing values reset to zero on 
--  arm. This can be requested using MAV_CMD_REQUEST_MESSAGE. Note, some 
--  fields are misnamed - timestamps are from boot (not UTC) and the 
--  flight_uuid is a sequence number. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Flight_Informations is

   pragma Preelaborate;

   Flight_Information_Id : constant Msg_Id := 264;

   type Flight_Information is record
      Time_Boot_Ms     : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Arming_Time_Utc  : Interfaces.Unsigned_64 :=
        0;
      --  Units: [us]
      --  Timestamp at arming (since system boot). Set to 0 on boot. Set value 
      --  on arming. Note, field is misnamed UTC. 
      Takeoff_Time_Utc : Interfaces.Unsigned_64 :=
        0;
      --  Units: [us]
      --  Timestamp at takeoff (since system boot). Set to 0 at boot and on 
      --  arming. Note, field is misnamed UTC. 
      Flight_Uuid      : Interfaces.Unsigned_64 :=
        0;
      --  Flight number. Note, field is misnamed UUID. 
      Landing_Time     : Interfaces.Unsigned_32 :=
        0;
      --  Units: [ms]
      --  Timestamp at landing (in ms since system boot). Set to 0 at boot and 
      --  on arming. 
   end record;

   for Flight_Information use record
      Arming_Time_Utc  at 0  range 0 .. 63;
      Takeoff_Time_Utc at 8  range 0 .. 63;
      Flight_Uuid      at 16 range 0 .. 63;
      Time_Boot_Ms     at 24 range 0 .. 31;
      Landing_Time     at 28 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Flight_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Flight_Information;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Flight_Information;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Flight_Information;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Flight_Information;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Flight_Information;
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
     (Message : Flight_Information;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Flight_Information;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Flight_Informations;
