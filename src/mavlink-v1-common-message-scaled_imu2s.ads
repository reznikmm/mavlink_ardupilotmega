-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The RAW IMU readings for secondary 9DOF sensor setup. This message should 
--  contain the scaled values to the described units 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Scaled_Imu2s is

   pragma Preelaborate;

   Scaled_Imu2_Id : constant Msg_Id := 116;

   Scaled_Imu2_Len : constant Interfaces.Unsigned_8 := 22;

   type Scaled_Imu2 is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Xacc         : Interfaces.Integer_16;
      --  Units: [mG]
      --  X acceleration 
      Yacc         : Interfaces.Integer_16;
      --  Units: [mG]
      --  Y acceleration 
      Zacc         : Interfaces.Integer_16;
      --  Units: [mG]
      --  Z acceleration 
      Xgyro        : Interfaces.Integer_16;
      --  Units: [mrad/s]
      --  Angular speed around X axis 
      Ygyro        : Interfaces.Integer_16;
      --  Units: [mrad/s]
      --  Angular speed around Y axis 
      Zgyro        : Interfaces.Integer_16;
      --  Units: [mrad/s]
      --  Angular speed around Z axis 
      Xmag         : Interfaces.Integer_16;
      --  Units: [mgauss]
      --  X Magnetic field 
      Ymag         : Interfaces.Integer_16;
      --  Units: [mgauss]
      --  Y Magnetic field 
      Zmag         : Interfaces.Integer_16;
      --  Units: [mgauss]
      --  Z Magnetic field 
   end record;

   for Scaled_Imu2 use record
      Time_Boot_Ms at 0  range 0 .. 31;
      Xacc         at 4  range 0 .. 15;
      Yacc         at 6  range 0 .. 15;
      Zacc         at 8  range 0 .. 15;
      Xgyro        at 10 range 0 .. 15;
      Ygyro        at 12 range 0 .. 15;
      Zgyro        at 14 range 0 .. 15;
      Xmag         at 16 range 0 .. 15;
      Ymag         at 18 range 0 .. 15;
      Zmag         at 20 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Scaled_Imu2;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Scaled_Imu2;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Scaled_Imu2;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Scaled_Imu2;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Scaled_Imu2;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Scaled_Imu2;
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

end MAVLink.V1.Common.Message.Scaled_Imu2s;
