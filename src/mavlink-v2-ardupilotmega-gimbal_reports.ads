-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  3 axis gimbal measurements.

pragma Ada_2022;

package MAVLink.V2.Ardupilotmega.Gimbal_Reports is

   pragma Pure;

   type Gimbal_Report is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID.
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID.
      Delta_Time       : Raw_Float;
      --  Units: [s]
      --  Time since last update.
      Delta_Angle_X    : Raw_Float;
      --  Units: [rad]
      --  Delta angle X.
      Delta_Angle_Y    : Raw_Float;
      --  Units: [rad]
      --  Delta angle Y.
      Delta_Angle_Z    : Raw_Float;
      --  Units: [rad]
      --  Delta angle X.
      Delta_Velocity_X : Raw_Float;
      --  Units: [m/s]
      --  Delta velocity X.
      Delta_Velocity_Y : Raw_Float;
      --  Units: [m/s]
      --  Delta velocity Y.
      Delta_Velocity_Z : Raw_Float;
      --  Units: [m/s]
      --  Delta velocity Z.
      Joint_Roll       : Raw_Float;
      --  Units: [rad]
      --  Joint ROLL.
      Joint_El         : Raw_Float;
      --  Units: [rad]
      --  Joint EL.
      Joint_Az         : Raw_Float;
      --  Units: [rad]
      --  Joint AZ.
   end record;

   for Gimbal_Report use record
      Delta_Time       at 0  range 0 .. 31;
      Delta_Angle_X    at 4  range 0 .. 31;
      Delta_Angle_Y    at 8  range 0 .. 31;
      Delta_Angle_Z    at 12 range 0 .. 31;
      Delta_Velocity_X at 16 range 0 .. 31;
      Delta_Velocity_Y at 20 range 0 .. 31;
      Delta_Velocity_Z at 24 range 0 .. 31;
      Joint_Roll       at 28 range 0 .. 31;
      Joint_El         at 32 range 0 .. 31;
      Joint_Az         at 36 range 0 .. 31;
      Target_System    at 40 range 0 .. 7;
      Target_Component at 41 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Gimbal_Report;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Gimbal_Report;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Gimbal_Report;
      Connect   : MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gimbal_Report;
      Connect : MAVLink.V2.Connection);
   --  Get the message from the Connect.
   --  For v1: May raise exception when message length mismatch
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message   : out Gimbal_Report;
      Connect   : MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect if x25crc is valid and
   --  set CRC_Valid to True.
   --  Won't read data from the Connect if x25crc is False.
   --  For v1: Won't read data from the Connect if message length mismatch
   --    and set CRC_Valid to False in this case.
   --  For v2: Truncate the extension fields.

   procedure Decode
     (Message : out Gimbal_Report;
      Connect : MAVLink.V2.In_Connection);
   --  Get the message from the Connect.
   --  For v1: May raise an exception when message length mismatch
   --  For v2: Truncate the extension fields.

   function Check_CRC
     (Connect : MAVLink.V2.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   procedure Encode
     (Message : Gimbal_Report;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Gimbal_Report;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Ardupilotmega.Gimbal_Reports;
