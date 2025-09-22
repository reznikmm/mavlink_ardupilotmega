-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  The RAW IMU readings for a 9DOF sensor, which is identified by the id 
--  (default IMU1). This message should always contain the true raw values 
--  without any scaling to allow data capture and system debugging. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Raw_Imus is

   pragma Preelaborate;

   Raw_Imu_Id : constant Msg_Id := 27;

   Raw_Imu_Len : constant Interfaces.Unsigned_8 := 26;

   type Raw_Imu is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Xacc      : Interfaces.Integer_16;
      --  X acceleration (raw) 
      Yacc      : Interfaces.Integer_16;
      --  Y acceleration (raw) 
      Zacc      : Interfaces.Integer_16;
      --  Z acceleration (raw) 
      Xgyro     : Interfaces.Integer_16;
      --  Angular speed around X axis (raw) 
      Ygyro     : Interfaces.Integer_16;
      --  Angular speed around Y axis (raw) 
      Zgyro     : Interfaces.Integer_16;
      --  Angular speed around Z axis (raw) 
      Xmag      : Interfaces.Integer_16;
      --  X Magnetic field (raw) 
      Ymag      : Interfaces.Integer_16;
      --  Y Magnetic field (raw) 
      Zmag      : Interfaces.Integer_16;
      --  Z Magnetic field (raw) 
   end record;

   for Raw_Imu use record
      Time_Usec at 0  range 0 .. 63;
      Xacc      at 8  range 0 .. 15;
      Yacc      at 10 range 0 .. 15;
      Zacc      at 12 range 0 .. 15;
      Xgyro     at 14 range 0 .. 15;
      Ygyro     at 16 range 0 .. 15;
      Zgyro     at 18 range 0 .. 15;
      Xmag      at 20 range 0 .. 15;
      Ymag      at 22 range 0 .. 15;
      Zmag      at 24 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Raw_Imu;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Raw_Imu;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Raw_Imu;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Raw_Imu;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Raw_Imus;
