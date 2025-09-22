-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Read registers for a device.

pragma Ada_2022;

with MAVLink.V2.Ardupilotmega.Types; use MAVLink.V2.Ardupilotmega.Types;

package MAVLink.V2.Ardupilotmega.Device_Op_Reads is

   pragma Pure;

   type Device_Op_Read is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Request_Id       : Interfaces.Unsigned_32;
      --  Request ID - copied to reply.
      Bustype          : Device_Op_Bustype;
      --  The bus type.
      Bus              : Interfaces.Unsigned_8;
      --  Bus number.
      Address          : Interfaces.Unsigned_8;
      --  Bus address.
      Busname          : String (1 .. 40);
      --  Name of device on bus (for SPI).
      Regstart         : Interfaces.Unsigned_8;
      --  First register to read.
      Count            : Interfaces.Unsigned_8;
      --  Count of registers to read.
      Bank             : Interfaces.Unsigned_8;
      --  Bank number.
   end record;

   for Device_Op_Read use record
      Request_Id       at 0  range 0 .. 31;
      Target_System    at 4  range 0 .. 7;
      Target_Component at 5  range 0 .. 7;
      Bustype          at 6  range 0 .. 7;
      Bus              at 7  range 0 .. 7;
      Address          at 8  range 0 .. 7;
      Busname          at 9  range 0 .. 319;
      Regstart         at 49 range 0 .. 7;
      Count            at 50 range 0 .. 7;
      Bank             at 51 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Device_Op_Read;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Device_Op_Read;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Device_Op_Read;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Device_Op_Read;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Device_Op_Read;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Device_Op_Read;
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
     (Message : Device_Op_Read;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Device_Op_Read;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Device_Op_Reads;
