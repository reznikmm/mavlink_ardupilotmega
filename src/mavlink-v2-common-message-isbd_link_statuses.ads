-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Status of the Iridium SBD link. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Isbd_Link_Statuses is

   pragma Preelaborate;

   Isbd_Link_Status_Id : constant Msg_Id := 335;

   type Isbd_Link_Status is record
      Timestamp           : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Last_Heartbeat      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp of the last successful sbd session. The receiving end can 
      --  infer timestamp format (since 1.1.1970 or since system boot) by 
      --  checking for the magnitude of the number. 
      Failed_Sessions     : Interfaces.Unsigned_16;
      --  Number of failed SBD sessions. 
      Successful_Sessions : Interfaces.Unsigned_16;
      --  Number of successful SBD sessions. 
      Signal_Quality      : Interfaces.Unsigned_8;
      --  Signal quality equal to the number of bars displayed on the ISU 
      --  signal strength indicator. Range is 0 to 5, where 0 indicates no 
      --  signal and 5 indicates maximum signal strength. 
      Ring_Pending        : Interfaces.Unsigned_8;
      --  1: Ring call pending, 0: No call pending. 
      Tx_Session_Pending  : Interfaces.Unsigned_8;
      --  1: Transmission session pending, 0: No transmission session pending. 
      Rx_Session_Pending  : Interfaces.Unsigned_8;
      --  1: Receiving session pending, 0: No receiving session pending. 
   end record;

   for Isbd_Link_Status use record
      Timestamp           at 0  range 0 .. 63;
      Last_Heartbeat      at 8  range 0 .. 63;
      Failed_Sessions     at 16 range 0 .. 15;
      Successful_Sessions at 18 range 0 .. 15;
      Signal_Quality      at 20 range 0 .. 7;
      Ring_Pending        at 21 range 0 .. 7;
      Tx_Session_Pending  at 22 range 0 .. 7;
      Rx_Session_Pending  at 23 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Isbd_Link_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Isbd_Link_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Isbd_Link_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Isbd_Link_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Isbd_Link_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Isbd_Link_Status;
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
     (Message : Isbd_Link_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Isbd_Link_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Isbd_Link_Statuses;
