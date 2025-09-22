-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The filtered local position (e.g. fused computer vision and 
--  accelerometers). Coordinate frame is right-handed, Z-axis down 
--  (aeronautical frame, NED / north-east-down convention) 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Local_Position_Neds is

   pragma Preelaborate;

   Local_Position_Ned_Id : constant Msg_Id := 32;

   type Local_Position_Ned is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      X            : Raw_Float;
      --  Units: [m]
      --  X Position 
      Y            : Raw_Float;
      --  Units: [m]
      --  Y Position 
      Z            : Raw_Float;
      --  Units: [m]
      --  Z Position 
      Vx           : Raw_Float;
      --  Units: [m/s]
      --  X Speed 
      Vy           : Raw_Float;
      --  Units: [m/s]
      --  Y Speed 
      Vz           : Raw_Float;
      --  Units: [m/s]
      --  Z Speed 
   end record;

   for Local_Position_Ned use record
      Time_Boot_Ms at 0  range 0 .. 31;
      X            at 4  range 0 .. 31;
      Y            at 8  range 0 .. 31;
      Z            at 12 range 0 .. 31;
      Vx           at 16 range 0 .. 31;
      Vy           at 20 range 0 .. 31;
      Vz           at 24 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Local_Position_Ned;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Local_Position_Ned;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Local_Position_Ned;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Local_Position_Ned;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Local_Position_Ned;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Local_Position_Ned;
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
     (Message : Local_Position_Ned;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Local_Position_Ned;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Local_Position_Neds;
