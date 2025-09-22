-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Simulated optical flow from a flow sensor (e.g. PX4FLOW or optical mouse 
--  sensor) 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Hil_Optical_Flows is

   pragma Preelaborate;

   Hil_Optical_Flow_Id : constant Msg_Id := 114;

   Hil_Optical_Flow_Len : constant Interfaces.Unsigned_8 := 44;

   type Hil_Optical_Flow is record
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
      Integrated_X           : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Flow in radians around X axis (Sensor RH rotation about the X axis 
      --  induces a positive flow. Sensor linear motion along the positive Y 
      --  axis induces a negative flow.) 
      Integrated_Y           : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  Flow in radians around Y axis (Sensor RH rotation about the Y axis 
      --  induces a positive flow. Sensor linear motion along the positive X 
      --  axis induces a positive flow.) 
      Integrated_Xgyro       : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  RH rotation around X axis 
      Integrated_Ygyro       : Interfaces.IEEE_Float_32;
      --  Units: [rad]
      --  RH rotation around Y axis 
      Integrated_Zgyro       : Interfaces.IEEE_Float_32;
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
      Distance               : Interfaces.IEEE_Float_32 :=
        -1.0;
      --  Units: [m]
      --  Distance to the center of the flow field. Positive value (including 
      --  zero): distance known. Negative value: Unknown distance. 
   end record;

   for Hil_Optical_Flow use record
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
     (Message : Hil_Optical_Flow;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Hil_Optical_Flow;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Hil_Optical_Flow;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Optical_Flow;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Hil_Optical_Flow;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Hil_Optical_Flow;
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

end MAVLink.V1.Common.Message.Hil_Optical_Flows;
