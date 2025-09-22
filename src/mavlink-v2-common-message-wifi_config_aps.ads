-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Configure WiFi AP SSID, password, and mode. This message is re-emitted as 
--  an acknowledgement by the AP. The message may also be explicitly requested 
--  using MAV_CMD_REQUEST_MESSAGE 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Wifi_Config_Aps is

   pragma Preelaborate;

   Wifi_Config_Ap_Id : constant Msg_Id := 299;

   type Wifi_Config_Ap is record
      Ssid     : String (1 .. 32);
      --  Name of Wi-Fi network (SSID). Blank to leave it unchanged when 
      --  setting. Current SSID when sent back as a response. 
      Password : String (1 .. 64);
      --  Password. Blank for an open AP. MD5 hash when message is sent back 
      --  as a response. 
      Mode     : Wifi_Config_Ap_Mode;
      --  WiFi Mode. 
      Response : Wifi_Config_Ap_Response;
      --  Message acceptance response (sent back to GS). 
   end record;

   for Wifi_Config_Ap use record
      Ssid     at 0  range 0 .. 255;
      Password at 32 range 0 .. 511;
      Mode     at 96 range 0 .. 7;
      Response at 97 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Wifi_Config_Ap;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Wifi_Config_Ap;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Wifi_Config_Ap;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Wifi_Config_Ap;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Wifi_Config_Ap;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Wifi_Config_Ap;
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
     (Message : Wifi_Config_Ap;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Wifi_Config_Ap;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Wifi_Config_Aps;
