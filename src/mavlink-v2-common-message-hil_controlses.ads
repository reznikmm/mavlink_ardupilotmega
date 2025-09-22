-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Sent from autopilot to simulation. Hardware in the loop control outputs. 
--  Alternative to HIL_ACTUATOR_CONTROLS. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Hil_Controlses is

   pragma Preelaborate;

   Hil_Controls_Id : constant Msg_Id := 91;

   type Hil_Controls is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Roll_Ailerons  : Raw_Float;
      --  Control output -1 .. 1 
      Pitch_Elevator : Raw_Float;
      --  Control output -1 .. 1 
      Yaw_Rudder     : Raw_Float;
      --  Control output -1 .. 1 
      Throttle       : Raw_Float;
      --  Throttle 0 .. 1 
      Aux1           : Raw_Float;
      --  Aux 1, -1 .. 1 
      Aux2           : Raw_Float;
      --  Aux 2, -1 .. 1 
      Aux3           : Raw_Float;
      --  Aux 3, -1 .. 1 
      Aux4           : Raw_Float;
      --  Aux 4, -1 .. 1 
      Mode           : Mav_Mode;
      --  System mode. 
      Nav_Mode       : Interfaces.Unsigned_8;
      --  Navigation mode (MAV_NAV_MODE) 
   end record;

   for Hil_Controls use record
      Time_Usec      at 0  range 0 .. 63;
      Roll_Ailerons  at 8  range 0 .. 31;
      Pitch_Elevator at 12 range 0 .. 31;
      Yaw_Rudder     at 16 range 0 .. 31;
      Throttle       at 20 range 0 .. 31;
      Aux1           at 24 range 0 .. 31;
      Aux2           at 28 range 0 .. 31;
      Aux3           at 32 range 0 .. 31;
      Aux4           at 36 range 0 .. 31;
      Mode           at 40 range 0 .. 7;
      Nav_Mode       at 41 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Hil_Controls;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_Controls;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_Controls;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Controls;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hil_Controls;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Controls;
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
     (Message : Hil_Controls;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Hil_Controls;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Hil_Controlses;
