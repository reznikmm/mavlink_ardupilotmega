-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Configure cellular modems. This message is re-emitted as an 
--  acknowledgement by the modem. The message may also be explicitly requested 
--  using MAV_CMD_REQUEST_MESSAGE. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Cellular_Configs is

   pragma Preelaborate;

   Cellular_Config_Id : constant Msg_Id := 336;

   type Cellular_Config is record
      Enable_Lte : Interfaces.Unsigned_8;
      --  Enable/disable LTE. 0: setting unchanged, 1: disabled, 2: enabled. 
      --  Current setting when sent back as a response. 
      Enable_Pin : Interfaces.Unsigned_8;
      --  Enable/disable PIN on the SIM card. 0: setting unchanged, 1: 
      --  disabled, 2: enabled. Current setting when sent back as a response. 
      Pin        : String (1 .. 16);
      --  PIN sent to the SIM card. Blank when PIN is disabled. Empty when 
      --  message is sent back as a response. 
      New_Pin    : String (1 .. 16);
      --  New PIN when changing the PIN. Blank to leave it unchanged. Empty 
      --  when message is sent back as a response. 
      Apn        : String (1 .. 32);
      --  Name of the cellular APN. Blank to leave it unchanged. Current APN 
      --  when sent back as a response. 
      Puk        : String (1 .. 16);
      --  Required PUK code in case the user failed to authenticate 3 times 
      --  with the PIN. Empty when message is sent back as a response. 
      Roaming    : Interfaces.Unsigned_8;
      --  Enable/disable roaming. 0: setting unchanged, 1: disabled, 2: 
      --  enabled. Current setting when sent back as a response. 
      Response   : Cellular_Config_Response;
      --  Message acceptance response (sent back to GS). 
   end record;

   for Cellular_Config use record
      Enable_Lte at 0  range 0 .. 7;
      Enable_Pin at 1  range 0 .. 7;
      Pin        at 2  range 0 .. 127;
      New_Pin    at 18 range 0 .. 127;
      Apn        at 34 range 0 .. 255;
      Puk        at 66 range 0 .. 127;
      Roaming    at 82 range 0 .. 7;
      Response   at 83 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Cellular_Config;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Cellular_Config;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Cellular_Config;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Cellular_Config;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Cellular_Config;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Cellular_Config;
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
     (Message : Cellular_Config;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Cellular_Config;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Cellular_Configs;
