-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Raw ADC output.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Ap_Adcs is

   pragma Pure;

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
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Ap_Adc;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Ap_Adc;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ap_Adc;
      Connect : MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Ap_Adc;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Ap_Adc;
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
     (Message : Ap_Adc;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Ap_Adc;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Ap_Adcs;
