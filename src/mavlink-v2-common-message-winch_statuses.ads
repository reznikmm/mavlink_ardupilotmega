-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Winch status. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Winch_Statuses is

   pragma Preelaborate;

   Winch_Status_Id : constant Msg_Id := 9005;

   type Winch_Status is record
      Time_Usec   : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (synced to UNIX time or since system boot). 
      Line_Length : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Length of line released. NaN if unknown 
      Speed       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Speed line is being released or retracted. Positive values if being 
      --  released, negative values if being retracted, NaN if unknown 
      Tension     : Raw_Float :=
        To_Raw (0.0);
      --  Units: [kg]
      --  Tension on the line. NaN if unknown 
      Voltage     : Raw_Float :=
        To_Raw (0.0);
      --  Units: [V]
      --  Voltage of the battery supplying the winch. NaN if unknown 
      Current     : Raw_Float :=
        To_Raw (0.0);
      --  Units: [A]
      --  Current draw from the winch. NaN if unknown 
      Temperature : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Units: [degC]
      --  Temperature of the motor. INT16_MAX if unknown 
      Status      : Mav_Winch_Status_Flag;
      --  Status flags 
   end record;

   for Winch_Status use record
      Time_Usec   at 0  range 0 .. 63;
      Line_Length at 8  range 0 .. 31;
      Speed       at 12 range 0 .. 31;
      Tension     at 16 range 0 .. 31;
      Voltage     at 20 range 0 .. 31;
      Current     at 24 range 0 .. 31;
      Status      at 28 range 0 .. 31;
      Temperature at 32 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Winch_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Winch_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Winch_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Winch_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Winch_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Winch_Status;
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
     (Message : Winch_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Winch_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Winch_Statuses;
