-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Raw ADC output. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Ap_Adcs is

   pragma Preelaborate;

   Ap_Adc_Id : constant Msg_Id := 153;

   Ap_Adc_Len : constant Interfaces.Unsigned_8 := 12;

   type Ap_Adc is record
      Adc1 : Interfaces.Unsigned_16;
      --  ADC output 1. 
      Adc2 : Interfaces.Unsigned_16;
      --  ADC output 2. 
      Adc3 : Interfaces.Unsigned_16;
      --  ADC output 3. 
      Adc4 : Interfaces.Unsigned_16;
      --  ADC output 4. 
      Adc5 : Interfaces.Unsigned_16;
      --  ADC output 5. 
      Adc6 : Interfaces.Unsigned_16;
      --  ADC output 6. 
   end record;

   for Ap_Adc use record
      Adc1 at 0  range 0 .. 15;
      Adc2 at 2  range 0 .. 15;
      Adc3 at 4  range 0 .. 15;
      Adc4 at 6  range 0 .. 15;
      Adc5 at 8  range 0 .. 15;
      Adc6 at 10 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Ap_Adc;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ap_Adc;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ap_Adc;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ap_Adc;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Ap_Adcs;
