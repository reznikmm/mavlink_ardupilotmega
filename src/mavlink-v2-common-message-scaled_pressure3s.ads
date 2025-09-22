-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Barometer readings for 3rd barometer 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Scaled_Pressure3s is

   pragma Preelaborate;

   Scaled_Pressure3_Id : constant Msg_Id := 143;

   type Scaled_Pressure3 is record
      Time_Boot_Ms           : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Press_Abs              : Raw_Float;
      --  Units: [hPa]
      --  Absolute pressure 
      Press_Diff             : Raw_Float;
      --  Units: [hPa]
      --  Differential pressure 
      Temperature            : Interfaces.Integer_16;
      --  Units: [cdegC]
      --  Absolute pressure temperature 
      Temperature_Press_Diff : Interfaces.Integer_16 :=
        0;
      --  Units: [cdegC]
      --  Differential pressure temperature (0, if not available). Report 
      --  values of 0 (or 1) as 1 cdegC. 
   end record;

   for Scaled_Pressure3 use record
      Time_Boot_Ms           at 0  range 0 .. 31;
      Press_Abs              at 4  range 0 .. 31;
      Press_Diff             at 8  range 0 .. 31;
      Temperature            at 12 range 0 .. 15;
      Temperature_Press_Diff at 14 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Scaled_Pressure3;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Scaled_Pressure3;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Scaled_Pressure3;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Scaled_Pressure3;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Scaled_Pressure3;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Scaled_Pressure3;
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
     (Message : Scaled_Pressure3;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Scaled_Pressure3;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Scaled_Pressure3s;
