-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Report current used cellular network status 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Cellular_Statuses is

   pragma Preelaborate;

   Cellular_Status_Id : constant Msg_Id := 334;

   type Cellular_Status is record
      Status         : Cellular_Status_Flag;
      --  Cellular modem status 
      Failure_Reason : Cellular_Network_Failed_Reason;
      --  Failure reason when status in in CELLULAR_STATUS_FLAG_FAILED 
      Type_Field     : Cellular_Network_Radio_Type;
      --  Cellular network radio type: gsm, cdma, lte... 
      Quality        : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Signal quality in percent. If unknown, set to UINT8_MAX 
      Mcc            : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Mobile country code. If unknown, set to UINT16_MAX 
      Mnc            : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Mobile network code. If unknown, set to UINT16_MAX 
      Lac            : Interfaces.Unsigned_16 :=
        0;
      --  Location area code. If unknown, set to 0 
   end record;

   for Cellular_Status use record
      Mcc            at 0 range 0 .. 15;
      Mnc            at 2 range 0 .. 15;
      Lac            at 4 range 0 .. 15;
      Status         at 6 range 0 .. 7;
      Failure_Reason at 7 range 0 .. 7;
      Type_Field     at 8 range 0 .. 7;
      Quality        at 9 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Cellular_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Cellular_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Cellular_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Cellular_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Cellular_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Cellular_Status;
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
     (Message : Cellular_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Cellular_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Cellular_Statuses;
