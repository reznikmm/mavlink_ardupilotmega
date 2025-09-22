-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Sent from autopilot to simulation. Hardware in the loop control outputs. 
--  Alternative to HIL_CONTROLS. 
pragma Ada_2022;


with MAVLink.V2.Minimal; use MAVLink.V2.Minimal;

package MAVLink.V2.Common.Message.Hil_Actuator_Controlses is

   pragma Preelaborate;

   Hil_Actuator_Controls_Id : constant Msg_Id := 93;

   type Hil_Actuator_Controls is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Controls  : Short_Float_Array (1 .. 16);
      --  Control outputs -1 .. 1. Channel assignment depends on the simulated 
      --  hardware. 
      Mode      : Mav_Mode_Flag;
      --  System mode. Includes arming state. 
      Flags     : Hil_Actuator_Controls_Flags;
      --  Flags bitmask. 
   end record;

   for Hil_Actuator_Controls use record
      Time_Usec at 0  range 0 .. 63;
      Flags     at 8  range 0 .. 63;
      Controls  at 16 range 0 .. 511;
      Mode      at 80 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Hil_Actuator_Controls;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_Actuator_Controls;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_Actuator_Controls;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Actuator_Controls;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hil_Actuator_Controls;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Actuator_Controls;
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
     (Message : Hil_Actuator_Controls;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Hil_Actuator_Controls;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Hil_Actuator_Controlses;
