-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  The general system state. If the system is following the MAVLink standard, 
--  the system state is mainly defined by three orthogonal states/modes: The 
--  system mode, which is either LOCKED (motors shut down and locked), MANUAL 
--  (system under RC control), GUIDED (system with autonomous position 
--  control, position setpoint controlled manually) or AUTO (system guided by 
--  path/waypoint planner). The NAV_MODE defined the current flight state: 
--  LIFTOFF (often an open-loop maneuver), LANDING, WAYPOINTS or VECTOR. This 
--  represents the internal navigation state machine. The system status shows 
--  whether the system is currently active or not and if an emergency 
--  occurred. During the CRITICAL and EMERGENCY states the MAV is still 
--  considered to be active, but should start emergency procedures 
--  autonomously. After a failure occurred it should first move from active to 
--  critical to allow manual intervention and then move to emergency after a 
--  certain timeout. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Sys_Statuses is

   pragma Preelaborate;

   Sys_Status_Id : constant Msg_Id := 1;

   type Sys_Status is record
      Onboard_Control_Sensors_Present          : Mav_Sys_Status_Sensor;
      --  Bitmap showing which onboard controllers and sensors are present. 
      --  Value of 0: not present. Value of 1: present. 
      Onboard_Control_Sensors_Enabled          : Mav_Sys_Status_Sensor;
      --  Bitmap showing which onboard controllers and sensors are enabled: 
      --  Value of 0: not enabled. Value of 1: enabled. 
      Onboard_Control_Sensors_Health           : Mav_Sys_Status_Sensor;
      --  Bitmap showing which onboard controllers and sensors have an error 
      --  (or are operational). Value of 0: error. Value of 1: healthy. 
      Load                                     : Interfaces.Unsigned_16;
      --  Units: [d%]
      --  Maximum usage in percent of the mainloop time. Values: [0-1000] - 
      --  should always be below 1000 
      Voltage_Battery                          : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Units: [mV]
      --  Battery voltage, UINT16_MAX: Voltage not sent by autopilot 
      Current_Battery                          : Interfaces.Integer_16 :=
        -1;
      --  Units: [cA]
      --  Battery current, -1: Current not sent by autopilot 
      Battery_Remaining                        : Interfaces.Integer_8 :=
        -1;
      --  Units: [%]
      --  Battery energy remaining, -1: Battery remaining energy not sent by 
      --  autopilot 
      Drop_Rate_Comm                           : Interfaces.Unsigned_16;
      --  Units: [c%]
      --  Communication drop rate, (UART, I2C, SPI, CAN), dropped packets on 
      --  all links (packets that were corrupted on reception on the MAV) 
      Errors_Comm                              : Interfaces.Unsigned_16;
      --  Communication errors (UART, I2C, SPI, CAN), dropped packets on all 
      --  links (packets that were corrupted on reception on the MAV) 
      Errors_Count1                            : Interfaces.Unsigned_16;
      --  Autopilot-specific errors 
      Errors_Count2                            : Interfaces.Unsigned_16;
      --  Autopilot-specific errors 
      Errors_Count3                            : Interfaces.Unsigned_16;
      --  Autopilot-specific errors 
      Errors_Count4                            : Interfaces.Unsigned_16;
      --  Autopilot-specific errors 
      Onboard_Control_Sensors_Present_Extended : Mav_Sys_Status_Sensor_Extended;
      --  Bitmap showing which onboard controllers and sensors are present. 
      --  Value of 0: not present. Value of 1: present. 
      Onboard_Control_Sensors_Enabled_Extended : Mav_Sys_Status_Sensor_Extended;
      --  Bitmap showing which onboard controllers and sensors are enabled: 
      --  Value of 0: not enabled. Value of 1: enabled. 
      Onboard_Control_Sensors_Health_Extended  : Mav_Sys_Status_Sensor_Extended;
      --  Bitmap showing which onboard controllers and sensors have an error 
      --  (or are operational). Value of 0: error. Value of 1: healthy. 
   end record;

   for Sys_Status use record
      Onboard_Control_Sensors_Present          at 0  range 0 .. 31;
      Onboard_Control_Sensors_Enabled          at 4  range 0 .. 31;
      Onboard_Control_Sensors_Health           at 8  range 0 .. 31;
      Load                                     at 12 range 0 .. 15;
      Voltage_Battery                          at 14 range 0 .. 15;
      Current_Battery                          at 16 range 0 .. 15;
      Drop_Rate_Comm                           at 18 range 0 .. 15;
      Errors_Comm                              at 20 range 0 .. 15;
      Errors_Count1                            at 22 range 0 .. 15;
      Errors_Count2                            at 24 range 0 .. 15;
      Errors_Count3                            at 26 range 0 .. 15;
      Errors_Count4                            at 28 range 0 .. 15;
      Battery_Remaining                        at 30 range 0 .. 7;
      Onboard_Control_Sensors_Present_Extended at 31 range 0 .. 31;
      Onboard_Control_Sensors_Enabled_Extended at 35 range 0 .. 31;
      Onboard_Control_Sensors_Health_Extended  at 39 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Sys_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Sys_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Sys_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Sys_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Sys_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Sys_Status;
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
     (Message : Sys_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Sys_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Sys_Statuses;
