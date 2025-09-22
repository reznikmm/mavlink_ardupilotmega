-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Estimator status message including flags, innovation test ratios and 
--  estimated accuracies. The flags message is an integer bitmask containing 
--  information on which EKF outputs are valid. See the ESTIMATOR_STATUS_FLAGS 
--  enum definition for further information. The innovation test ratios show 
--  the magnitude of the sensor innovation divided by the innovation check 
--  threshold. Under normal operation the innovation test ratios should be 
--  below 0.5 with occasional values up to 1.0. Values greater than 1.0 should 
--  be rare under normal operation and indicate that a measurement has been 
--  rejected by the filter. The user should be notified if an innovation test 
--  ratio greater than 1.0 is recorded. Notifications for values in the range 
--  between 0.5 and 1.0 should be optional and controllable by the user. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Estimator_Statuses is

   pragma Preelaborate;

   Estimator_Status_Id : constant Msg_Id := 230;

   type Estimator_Status is record
      Time_Usec          : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Flags              : Estimator_Status_Flags;
      --  Bitmap indicating which EKF outputs are valid. 
      Vel_Ratio          : Raw_Float;
      --  Velocity innovation test ratio 
      Pos_Horiz_Ratio    : Raw_Float;
      --  Horizontal position innovation test ratio 
      Pos_Vert_Ratio     : Raw_Float;
      --  Vertical position innovation test ratio 
      Mag_Ratio          : Raw_Float;
      --  Magnetometer innovation test ratio 
      Hagl_Ratio         : Raw_Float;
      --  Height above terrain innovation test ratio 
      Tas_Ratio          : Raw_Float;
      --  True airspeed innovation test ratio 
      Pos_Horiz_Accuracy : Raw_Float;
      --  Units: [m]
      --  Horizontal position 1-STD accuracy relative to the EKF local origin 
      Pos_Vert_Accuracy  : Raw_Float;
      --  Units: [m]
      --  Vertical position 1-STD accuracy relative to the EKF local origin 
   end record;

   for Estimator_Status use record
      Time_Usec          at 0  range 0 .. 63;
      Vel_Ratio          at 8  range 0 .. 31;
      Pos_Horiz_Ratio    at 12 range 0 .. 31;
      Pos_Vert_Ratio     at 16 range 0 .. 31;
      Mag_Ratio          at 20 range 0 .. 31;
      Hagl_Ratio         at 24 range 0 .. 31;
      Tas_Ratio          at 28 range 0 .. 31;
      Pos_Horiz_Accuracy at 32 range 0 .. 31;
      Pos_Vert_Accuracy  at 36 range 0 .. 31;
      Flags              at 40 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Estimator_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Estimator_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Estimator_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Estimator_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Estimator_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Estimator_Status;
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
     (Message : Estimator_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Estimator_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Estimator_Statuses;
