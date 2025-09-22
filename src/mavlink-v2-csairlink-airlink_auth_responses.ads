-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Response to the authorization request

pragma Ada_2022;

with MAVLink.V2.Csairlink.Types; use MAVLink.V2.Csairlink.Types;

package MAVLink.V2.Csairlink.Airlink_Auth_Responses is

   pragma Pure;

   type Airlink_Auth_Response is record
      Resp_Type : Airlink_Auth_Response_Type;
      --  Response type
   end record;

   for Airlink_Auth_Response use record
      Resp_Type at 0 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Airlink_Auth_Response;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Airlink_Auth_Response;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Airlink_Auth_Response;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Airlink_Auth_Response;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Airlink_Auth_Response;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Airlink_Auth_Response;
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
     (Message : Airlink_Auth_Response;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Airlink_Auth_Response;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Csairlink.Airlink_Auth_Responses;
