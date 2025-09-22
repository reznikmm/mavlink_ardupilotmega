-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Illuminator status 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Illuminator_Statuses is

   pragma Preelaborate;

   Illuminator_Status_Id : constant Msg_Id := 440;

   type Illuminator_Status is record
      Uptime_Ms         : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Time since the start-up of the illuminator in ms 
      Enable            : Interfaces.Unsigned_8;
      --  0: Illuminators OFF, 1: Illuminators ON 
      Mode_Bitmask      : Illuminator_Mode;
      --  Supported illuminator modes 
      Error_Status      : Illuminator_Error_Flags;
      --  Errors 
      Mode              : Illuminator_Mode;
      --  Illuminator mode 
      Brightness        : Raw_Float;
      --  Units: [%]
      --  Illuminator brightness 
      Strobe_Period     : Raw_Float;
      --  Units: [s]
      --  Illuminator strobing period in seconds 
      Strobe_Duty_Cycle : Raw_Float;
      --  Units: [%]
      --  Illuminator strobing duty cycle 
      Temp_C            : Raw_Float;
      --  Temperature in Celsius 
      Min_Strobe_Period : Raw_Float;
      --  Units: [s]
      --  Minimum strobing period in seconds 
      Max_Strobe_Period : Raw_Float;
      --  Units: [s]
      --  Maximum strobing period in seconds 
   end record;

   for Illuminator_Status use record
      Uptime_Ms         at 0  range 0 .. 31;
      Error_Status      at 4  range 0 .. 31;
      Brightness        at 8  range 0 .. 31;
      Strobe_Period     at 12 range 0 .. 31;
      Strobe_Duty_Cycle at 16 range 0 .. 31;
      Temp_C            at 20 range 0 .. 31;
      Min_Strobe_Period at 24 range 0 .. 31;
      Max_Strobe_Period at 28 range 0 .. 31;
      Enable            at 32 range 0 .. 7;
      Mode_Bitmask      at 33 range 0 .. 7;
      Mode              at 34 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Illuminator_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Illuminator_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Illuminator_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Illuminator_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Illuminator_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Illuminator_Status;
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
     (Message : Illuminator_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Illuminator_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Illuminator_Statuses;
