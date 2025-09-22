-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The location of a landing target. See: 
--  https://mavlink.io/en/services/landing_target.html 
pragma Ada_2022;


with MAVLink.V2.Standard; use MAVLink.V2.Standard;

package MAVLink.V2.Common.Message.Landing_Targets is

   pragma Preelaborate;

   Landing_Target_Id : constant Msg_Id := 149;

   type Landing_Target is record
      Time_Usec      : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Target_Num     : Interfaces.Unsigned_8;
      --  The ID of the target if multiple targets are present 
      Frame          : Mav_Frame;
      --  Coordinate frame used for following fields. 
      Angle_X        : Raw_Float;
      --  Units: [rad]
      --  X-axis angular offset of the target from the center of the image 
      Angle_Y        : Raw_Float;
      --  Units: [rad]
      --  Y-axis angular offset of the target from the center of the image 
      Distance       : Raw_Float;
      --  Units: [m]
      --  Distance to the target from the vehicle 
      Size_X         : Raw_Float;
      --  Units: [rad]
      --  Size of target along x-axis 
      Size_Y         : Raw_Float;
      --  Units: [rad]
      --  Size of target along y-axis 
      X              : Raw_Float;
      --  Units: [m]
      --  X Position of the landing target in MAV_FRAME 
      Y              : Raw_Float;
      --  Units: [m]
      --  Y Position of the landing target in MAV_FRAME 
      Z              : Raw_Float;
      --  Units: [m]
      --  Z Position of the landing target in MAV_FRAME 
      Q              : Short_Float_Array (1 .. 4);
      --  Quaternion of landing target orientation (w, x, y, z order, 
      --  zero-rotation is 1, 0, 0, 0) 
      Type_Field     : Landing_Target_Type;
      --  Type of landing target 
      Position_Valid : Mav_Bool;
      --  Position fields (x, y, z, q, type) contain valid target position 
      --  information (MAV_BOOL_FALSE: invalid values). Values not equal to 0 
      --  or 1 are invalid. 
   end record;

   for Landing_Target use record
      Time_Usec      at 0  range 0 .. 63;
      Angle_X        at 8  range 0 .. 31;
      Angle_Y        at 12 range 0 .. 31;
      Distance       at 16 range 0 .. 31;
      Size_X         at 20 range 0 .. 31;
      Size_Y         at 24 range 0 .. 31;
      Target_Num     at 28 range 0 .. 7;
      Frame          at 29 range 0 .. 7;
      X              at 30 range 0 .. 31;
      Y              at 34 range 0 .. 31;
      Z              at 38 range 0 .. 31;
      Q              at 42 range 0 .. 127;
      Type_Field     at 58 range 0 .. 7;
      Position_Valid at 59 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Landing_Target;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Landing_Target;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Landing_Target;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Landing_Target;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Landing_Target;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Landing_Target;
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
     (Message : Landing_Target;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Landing_Target;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Landing_Targets;
