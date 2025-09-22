-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Temperature and humidity from hygrometer. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Hygrometer_Sensors is

   pragma Preelaborate;

   Hygrometer_Sensor_Id : constant Msg_Id := 12920;

   type Hygrometer_Sensor is record
      Id          : Interfaces.Unsigned_8;
      --  Hygrometer ID 
      Temperature : Interfaces.Integer_16;
      --  Units: [cdegC]
      --  Temperature 
      Humidity    : Interfaces.Unsigned_16;
      --  Units: [c%]
      --  Humidity 
   end record;

   for Hygrometer_Sensor use record
      Temperature at 0 range 0 .. 15;
      Humidity    at 2 range 0 .. 15;
      Id          at 4 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hygrometer_Sensor;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hygrometer_Sensor;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hygrometer_Sensor;
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
     (Message : Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Hygrometer_Sensor;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Hygrometer_Sensors;
