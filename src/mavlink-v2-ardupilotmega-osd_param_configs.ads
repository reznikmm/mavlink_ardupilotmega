-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Configure an OSD parameter slot.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;

package MAVLink.V2.Ardupilotmega.Osd_Param_Configs is

   pragma Pure;

   type Osd_Param_Config is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Request_Id       : Interfaces.Unsigned_32;
      --  Request ID - copied to reply.
      Osd_Screen       : Interfaces.Unsigned_8;
      --  OSD parameter screen index.
      Osd_Index        : Interfaces.Unsigned_8;
      --  OSD parameter display index.
      Param_Id         : String (1 .. 16);
      --  Onboard parameter id, terminated by NULL if the length is less than
      --  16 human-readable chars and WITHOUT null termination (NULL) byte if
      --  the length is exactly 16 chars - applications have to provide 16+1
      --  bytes storage if the ID is stored as string
      Config_Type      : Osd_Param_Config_Type;
      --  Config type.
      Min_Value        : Raw_Float;
      --  OSD parameter minimum value.
      Max_Value        : Raw_Float;
      --  OSD parameter maximum value.
      Increment        : Raw_Float;
      --  OSD parameter increment.
   end record;

   for Osd_Param_Config use record
      Request_Id       at 0  range 0 .. 31;
      Min_Value        at 4  range 0 .. 31;
      Max_Value        at 8  range 0 .. 31;
      Increment        at 12 range 0 .. 31;
      Target_System    at 16 range 0 .. 7;
      Target_Component at 17 range 0 .. 7;
      Osd_Screen       at 18 range 0 .. 7;
      Osd_Index        at 19 range 0 .. 7;
      Param_Id         at 20 range 0 .. 127;
      Config_Type      at 36 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Osd_Param_Config;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Osd_Param_Config;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Osd_Param_Config;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Osd_Param_Config;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Osd_Param_Config;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Osd_Param_Config;
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
     (Message : Osd_Param_Config;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Osd_Param_Config;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Osd_Param_Configs;
