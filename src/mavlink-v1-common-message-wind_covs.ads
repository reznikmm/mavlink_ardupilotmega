-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Wind estimate from vehicle. Note that despite the name, this message does 
--  not actually contain any covariances but instead variability and accuracy 
--  fields in terms of standard deviation (1-STD). 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Wind_Covs is

   pragma Preelaborate;

   Wind_Cov_Id : constant Msg_Id := 231;

   Wind_Cov_Len : constant Interfaces.Unsigned_8 := 40;

   type Wind_Cov is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Wind_X         : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Units: [m/s]
      --  Wind in North (NED) direction (NAN if unknown) 
      Wind_Y         : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Units: [m/s]
      --  Wind in East (NED) direction (NAN if unknown) 
      Wind_Z         : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Units: [m/s]
      --  Wind in down (NED) direction (NAN if unknown) 
      Var_Horiz      : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Units: [m/s]
      --  Variability of wind in XY, 1-STD estimated from a 1 Hz lowpassed 
      --  wind estimate (NAN if unknown) 
      Var_Vert       : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Units: [m/s]
      --  Variability of wind in Z, 1-STD estimated from a 1 Hz lowpassed wind 
      --  estimate (NAN if unknown) 
      Wind_Alt       : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Units: [m]
      --  Altitude (MSL) that this measurement was taken at (NAN if unknown) 
      Horiz_Accuracy : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Units: [m/s]
      --  Horizontal speed 1-STD accuracy (0 if unknown) 
      Vert_Accuracy  : Interfaces.IEEE_Float_32 :=
        0.0;
      --  Units: [m/s]
      --  Vertical speed 1-STD accuracy (0 if unknown) 
   end record;

   for Wind_Cov use record
      Time_Usec      at 0  range 0 .. 63;
      Wind_X         at 8  range 0 .. 31;
      Wind_Y         at 12 range 0 .. 31;
      Wind_Z         at 16 range 0 .. 31;
      Var_Horiz      at 20 range 0 .. 31;
      Var_Vert       at 24 range 0 .. 31;
      Wind_Alt       at 28 range 0 .. 31;
      Horiz_Accuracy at 32 range 0 .. 31;
      Vert_Accuracy  at 36 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Wind_Cov;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Wind_Cov;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Wind_Cov;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Wind_Cov;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Wind_Covs;
