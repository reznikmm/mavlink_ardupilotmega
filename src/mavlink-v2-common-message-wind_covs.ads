-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Wind estimate from vehicle. Note that despite the name, this message does 
--  not actually contain any covariances but instead variability and accuracy 
--  fields in terms of standard deviation (1-STD). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Wind_Covs is

   pragma Preelaborate;

   Wind_Cov_Id : constant Msg_Id := 231;

   type Wind_Cov is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Wind_X         : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Wind in North (NED) direction (NAN if unknown) 
      Wind_Y         : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Wind in East (NED) direction (NAN if unknown) 
      Wind_Z         : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Wind in down (NED) direction (NAN if unknown) 
      Var_Horiz      : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Variability of wind in XY, 1-STD estimated from a 1 Hz lowpassed 
      --  wind estimate (NAN if unknown) 
      Var_Vert       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Variability of wind in Z, 1-STD estimated from a 1 Hz lowpassed wind 
      --  estimate (NAN if unknown) 
      Wind_Alt       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m]
      --  Altitude (MSL) that this measurement was taken at (NAN if unknown) 
      Horiz_Accuracy : Raw_Float :=
        To_Raw (0.0);
      --  Units: [m/s]
      --  Horizontal speed 1-STD accuracy (0 if unknown) 
      Vert_Accuracy  : Raw_Float :=
        To_Raw (0.0);
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
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Wind_Cov;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Wind_Cov;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Wind_Cov;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Wind_Cov;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Wind_Cov;
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
     (Message : Wind_Cov;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Wind_Cov;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Wind_Covs;
