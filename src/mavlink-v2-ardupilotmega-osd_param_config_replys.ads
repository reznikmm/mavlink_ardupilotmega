-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Configure OSD parameter reply.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;

package MAVLink.V2.Ardupilotmega.Osd_Param_Config_Replys is

   pragma Pure;

   type Osd_Param_Config_Reply is record
      Request_Id : Interfaces.Unsigned_32;
      --  Request ID - copied from request.
      Result     : Osd_Param_Config_Error;
      --  Config error type.
   end record;

   for Osd_Param_Config_Reply use record
      Request_Id at 0 range 0 .. 31;
      Result     at 4 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Osd_Param_Config_Reply;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Osd_Param_Config_Reply;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Osd_Param_Config_Reply;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Osd_Param_Config_Reply;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Osd_Param_Config_Reply;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Osd_Param_Config_Reply;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Osd_Param_Config_Reply;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Osd_Param_Config_Reply;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Osd_Param_Config_Replys;
