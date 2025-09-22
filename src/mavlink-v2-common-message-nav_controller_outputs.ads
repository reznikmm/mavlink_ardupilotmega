-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The state of the navigation and position controller. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Nav_Controller_Outputs is

   pragma Preelaborate;

   Nav_Controller_Output_Id : constant Msg_Id := 62;

   type Nav_Controller_Output is record
      Nav_Roll       : Raw_Float;
      --  Units: [deg]
      --  Current desired roll 
      Nav_Pitch      : Raw_Float;
      --  Units: [deg]
      --  Current desired pitch 
      Nav_Bearing    : Interfaces.Integer_16;
      --  Units: [deg]
      --  Current desired heading 
      Target_Bearing : Interfaces.Integer_16;
      --  Units: [deg]
      --  Bearing to current waypoint/target 
      Wp_Dist        : Interfaces.Unsigned_16;
      --  Units: [m]
      --  Distance to active waypoint 
      Alt_Error      : Raw_Float;
      --  Units: [m]
      --  Current altitude error 
      Aspd_Error     : Raw_Float;
      --  Units: [m/s]
      --  Current airspeed error 
      Xtrack_Error   : Raw_Float;
      --  Units: [m]
      --  Current crosstrack error on x-y plane 
   end record;

   for Nav_Controller_Output use record
      Nav_Roll       at 0  range 0 .. 31;
      Nav_Pitch      at 4  range 0 .. 31;
      Alt_Error      at 8  range 0 .. 31;
      Aspd_Error     at 12 range 0 .. 31;
      Xtrack_Error   at 16 range 0 .. 31;
      Nav_Bearing    at 20 range 0 .. 15;
      Target_Bearing at 22 range 0 .. 15;
      Wp_Dist        at 24 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Nav_Controller_Output;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Nav_Controller_Output;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Nav_Controller_Output;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Nav_Controller_Output;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Nav_Controller_Output;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Nav_Controller_Output;
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
     (Message : Nav_Controller_Output;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Nav_Controller_Output;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Nav_Controller_Outputs;
