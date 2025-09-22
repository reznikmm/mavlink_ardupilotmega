-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Reports the current commanded attitude of the vehicle as specified by the 
--  autopilot. This should match the commands sent in a SET_ATTITUDE_TARGET 
--  message if the vehicle is being controlled this way. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Attitude_Targets is

   pragma Preelaborate;

   Attitude_Target_Id : constant Msg_Id := 83;

   Attitude_Target_Len : constant Interfaces.Unsigned_8 := 37;

   type Attitude_Target is record
      Time_Boot_Ms    : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Type_Mask       : Attitude_Target_Typemask;
      --  Bitmap to indicate which dimensions should be ignored by the 
      --  vehicle. 
      Q               : Short_Float_Array (1 .. 4);
      --  Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0) 
      Body_Roll_Rate  : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body roll rate 
      Body_Pitch_Rate : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body pitch rate 
      Body_Yaw_Rate   : Interfaces.IEEE_Float_32;
      --  Units: [rad/s]
      --  Body yaw rate 
      Thrust          : Interfaces.IEEE_Float_32;
      --  Collective thrust, normalized to 0 .. 1 (-1 .. 1 for vehicles 
      --  capable of reverse trust) 
   end record;

   for Attitude_Target use record
      Time_Boot_Ms    at 0  range 0 .. 31;
      Q               at 4  range 0 .. 127;
      Body_Roll_Rate  at 20 range 0 .. 31;
      Body_Pitch_Rate at 24 range 0 .. 31;
      Body_Yaw_Rate   at 28 range 0 .. 31;
      Thrust          at 32 range 0 .. 31;
      Type_Mask       at 36 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Attitude_Target;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Attitude_Target;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Attitude_Target;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude_Target;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Attitude_Target;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Attitude_Target;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Attitude_Targets;
