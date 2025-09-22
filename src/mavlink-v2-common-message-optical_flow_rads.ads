-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Optical flow from an angular rate flow sensor (e.g. PX4FLOW or mouse 
--  sensor) 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Optical_Flow_Rads is

   pragma Preelaborate;

   Optical_Flow_Rad_Id : constant Msg_Id := 106;

   type Optical_Flow_Rad is record
      Time_Usec              : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Sensor_Id              : Interfaces.Unsigned_8;
      --  Sensor ID 
      Integration_Time_Us    : Interfaces.Unsigned_32;
      --  Units: [us]
      --  Integration time. Divide integrated_x and integrated_y by the 
      --  integration time to obtain average flow. The integration time also 
      --  indicates the. 
      Integrated_X           : Raw_Float;
      --  Units: [rad]
      --  Flow around X axis (Sensor RH rotation about the X axis induces a 
      --  positive flow. Sensor linear motion along the positive Y axis 
      --  induces a negative flow.) 
      Integrated_Y           : Raw_Float;
      --  Units: [rad]
      --  Flow around Y axis (Sensor RH rotation about the Y axis induces a 
      --  positive flow. Sensor linear motion along the positive X axis 
      --  induces a positive flow.) 
      Integrated_Xgyro       : Raw_Float;
      --  Units: [rad]
      --  RH rotation around X axis 
      Integrated_Ygyro       : Raw_Float;
      --  Units: [rad]
      --  RH rotation around Y axis 
      Integrated_Zgyro       : Raw_Float;
      --  Units: [rad]
      --  RH rotation around Z axis 
      Temperature            : Interfaces.Integer_16;
      --  Units: [cdegC]
      --  Temperature 
      Quality                : Interfaces.Unsigned_8;
      --  Optical flow quality / confidence. 0: no valid flow, 255: maximum 
      --  quality 
      Time_Delta_Distance_Us : Interfaces.Unsigned_32;
      --  Units: [us]
      --  Time since the distance was sampled. 
      Distance               : Raw_Float;
      --  Units: [m]
      --  Distance to the center of the flow field. Positive value (including 
      --  zero): distance known. Negative value: Unknown distance. 
   end record;

   for Optical_Flow_Rad use record
      Time_Usec              at 0  range 0 .. 63;
      Integration_Time_Us    at 8  range 0 .. 31;
      Integrated_X           at 12 range 0 .. 31;
      Integrated_Y           at 16 range 0 .. 31;
      Integrated_Xgyro       at 20 range 0 .. 31;
      Integrated_Ygyro       at 24 range 0 .. 31;
      Integrated_Zgyro       at 28 range 0 .. 31;
      Time_Delta_Distance_Us at 32 range 0 .. 31;
      Distance               at 36 range 0 .. 31;
      Temperature            at 40 range 0 .. 15;
      Sensor_Id              at 42 range 0 .. 7;
      Quality                at 43 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Optical_Flow_Rad;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Optical_Flow_Rad;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Optical_Flow_Rad;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Optical_Flow_Rad;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Optical_Flow_Rad;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Optical_Flow_Rad;
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
     (Message : Optical_Flow_Rad;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Optical_Flow_Rad;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Optical_Flow_Rads;
