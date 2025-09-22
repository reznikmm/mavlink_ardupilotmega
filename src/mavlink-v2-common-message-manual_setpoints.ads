-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Setpoint in roll, pitch, yaw and thrust from the operator 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Manual_Setpoints is

   pragma Preelaborate;

   Manual_Setpoint_Id : constant Msg_Id := 81;

   type Manual_Setpoint is record
      Time_Boot_Ms           : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Roll                   : Raw_Float;
      --  Units: [rad/s]
      --  Desired roll rate 
      Pitch                  : Raw_Float;
      --  Units: [rad/s]
      --  Desired pitch rate 
      Yaw                    : Raw_Float;
      --  Units: [rad/s]
      --  Desired yaw rate 
      Thrust                 : Raw_Float;
      --  Collective thrust, normalized to 0 .. 1 
      Mode_Switch            : Interfaces.Unsigned_8;
      --  Flight mode switch position, 0.. 255 
      Manual_Override_Switch : Interfaces.Unsigned_8;
      --  Override mode switch position, 0.. 255 
   end record;

   for Manual_Setpoint use record
      Time_Boot_Ms           at 0  range 0 .. 31;
      Roll                   at 4  range 0 .. 31;
      Pitch                  at 8  range 0 .. 31;
      Yaw                    at 12 range 0 .. 31;
      Thrust                 at 16 range 0 .. 31;
      Mode_Switch            at 20 range 0 .. 7;
      Manual_Override_Switch at 21 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Manual_Setpoint;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Manual_Setpoint;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Manual_Setpoint;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Manual_Setpoint;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Manual_Setpoint;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Manual_Setpoint;
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
     (Message : Manual_Setpoint;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Manual_Setpoint;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Manual_Setpoints;
