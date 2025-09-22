-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Power supply status 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Power_Statuses is

   pragma Preelaborate;

   Power_Status_Id : constant Msg_Id := 125;

   Power_Status_Len : constant Interfaces.Unsigned_8 := 6;

   type Power_Status is record
      Vcc    : Interfaces.Unsigned_16;
      --  Units: [mV]
      --  5V rail voltage. 
      Vservo : Interfaces.Unsigned_16;
      --  Units: [mV]
      --  Servo rail voltage. 
      Flags  : Mav_Power_Status;
      --  Bitmap of power supply status flags. 
   end record;

   for Power_Status use record
      Vcc    at 0 range 0 .. 15;
      Vservo at 2 range 0 .. 15;
      Flags  at 4 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Power_Status;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Power_Status;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Power_Status;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Power_Status;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Power_Status;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Power_Status;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Power_Statuses;
