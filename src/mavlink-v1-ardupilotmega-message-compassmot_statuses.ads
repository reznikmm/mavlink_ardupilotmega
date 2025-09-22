-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Status of compassmot calibration. 
pragma Ada_2022;


package Mavlink.V1.Ardupilotmega.Message.Compassmot_Statuses is

   pragma Preelaborate;

   Compassmot_Status_Id : constant Msg_Id := 177;

   Compassmot_Status_Len : constant Interfaces.Unsigned_8 := 20;

   type Compassmot_Status is record
      Throttle      : Interfaces.Unsigned_16;
      --  Units: [d%]
      --  Throttle. 
      Current       : Interfaces.IEEE_Float_32;
      --  Units: [A]
      --  Current. 
      Interference  : Interfaces.Unsigned_16;
      --  Units: [%]
      --  Interference. 
      Compensationx : Interfaces.IEEE_Float_32;
      --  Motor Compensation X. 
      Compensationy : Interfaces.IEEE_Float_32;
      --  Motor Compensation Y. 
      Compensationz : Interfaces.IEEE_Float_32;
      --  Motor Compensation Z. 
   end record;

   for Compassmot_Status use record
      Current       at 0  range 0 .. 31;
      Compensationx at 4  range 0 .. 31;
      Compensationy at 8  range 0 .. 31;
      Compensationz at 12 range 0 .. 31;
      Throttle      at 16 range 0 .. 15;
      Interference  at 18 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Compassmot_Status;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Compassmot_Status;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Compassmot_Status;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Compassmot_Status;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Ardupilotmega.Message.Compassmot_Statuses;
