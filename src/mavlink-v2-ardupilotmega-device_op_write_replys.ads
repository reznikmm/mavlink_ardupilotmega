-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Write registers reply.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Device_Op_Write_Replys is

   pragma Pure;

   type Device_Op_Write_Reply is record
      Request_Id : Interfaces.Unsigned_32;
      --  Request ID - copied from request.
      Result     : Interfaces.Unsigned_8;
      --  0 for success, anything else is failure code.
   end record;

   for Device_Op_Write_Reply use record
      Request_Id at 0 range 0 .. 31;
      Result     at 4 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Device_Op_Write_Reply;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Device_Op_Write_Reply;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Device_Op_Write_Reply;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Device_Op_Write_Reply;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Device_Op_Write_Reply;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Device_Op_Write_Reply;
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
     (Message : Device_Op_Write_Reply;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Device_Op_Write_Reply;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Device_Op_Write_Replys;
