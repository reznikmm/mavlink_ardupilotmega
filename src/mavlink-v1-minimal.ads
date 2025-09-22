-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

package Mavlink.V1.Minimal is

   pragma Preelaborate;

   type Mav_Autopilot is new Interfaces.Unsigned_8;
   --  Micro air vehicle / autopilot classes. This identifies the individual 
   --  model. 

   function Generic_Entry return Mav_Autopilot is (0)
     with Static;
   --  Generic autopilot, full support for everything 

   function Reserved return Mav_Autopilot is (1)
     with Static;
   --  Reserved for future use. 

   function Slugs return Mav_Autopilot is (2)
     with Static;
   --  SLUGS autopilot, http://slugsuav.soe.ucsc.edu 

   function Ardupilotmega return Mav_Autopilot is (3)
     with Static;
   --  ArduPilot - Plane/Copter/Rover/Sub/Tracker, https://ardupilot.org 

   function Openpilot return Mav_Autopilot is (4)
     with Static;
   --  OpenPilot, http://openpilot.org 

   function Generic_Waypoints_Only return Mav_Autopilot is (5)
     with Static;
   --  Generic autopilot only supporting simple waypoints 

   function Generic_Waypoints_And_Simple_Navigation_Only return Mav_Autopilot is (6)
     with Static;
   --  Generic autopilot supporting waypoints and other simple navigation 
   --  commands 

   function Generic_Mission_Full return Mav_Autopilot is (7)
     with Static;
   --  Generic autopilot supporting the full mission command set 

   function Invalid return Mav_Autopilot is (8)
     with Static;
   --  No valid autopilot, e.g. a GCS or other MAVLink component 

   function Ppz return Mav_Autopilot is (9)
     with Static;
   --  PPZ UAV - http://nongnu.org/paparazzi 

   function Udb return Mav_Autopilot is (10)
     with Static;
   --  UAV Dev Board 

   function Fp return Mav_Autopilot is (11)
     with Static;
   --  FlexiPilot 

   function Px4 return Mav_Autopilot is (12)
     with Static;
   --  PX4 Autopilot - http://px4.io/ 

   function Smaccmpilot return Mav_Autopilot is (13)
     with Static;
   --  SMACCMPilot - http://smaccmpilot.org 

   function Autoquad return Mav_Autopilot is (14)
     with Static;
   --  AutoQuad -- http://autoquad.org 

   function Armazila return Mav_Autopilot is (15)
     with Static;
   --  Armazila -- http://armazila.com 

   function Aerob return Mav_Autopilot is (16)
     with Static;
   --  Aerob -- http://aerob.ru 

   function Asluav return Mav_Autopilot is (17)
     with Static;
   --  ASLUAV autopilot -- http://www.asl.ethz.ch 

   function Smartap return Mav_Autopilot is (18)
     with Static;
   --  SmartAP Autopilot - http://sky-drones.com 

   function Airrails return Mav_Autopilot is (19)
     with Static;
   --  AirRails - http://uaventure.com 

   function Reflex return Mav_Autopilot is (20)
     with Static;
   --  Fusion Reflex - https://fusion.engineering 

   subtype Mav_Autopilot_Well_Known is Mav_Autopilot
     with Static_Predicate => Mav_Autopilot_Well_Known in
       Generic_Entry .. Reflex;

   function Well_Known_Image
     (Value : Mav_Autopilot_Well_Known) return String is
       (case Value is
        when Generic_Entry => "Generic_Entry",
        when Reserved => "Reserved",
        when Slugs => "Slugs",
        when Ardupilotmega => "Ardupilotmega",
        when Openpilot => "Openpilot",
        when Generic_Waypoints_Only => "Generic_Waypoints_Only",
        when Generic_Waypoints_And_Simple_Navigation_Only => "Generic_Waypoints_And_Simple_Navigation_Only",
        when Generic_Mission_Full => "Generic_Mission_Full",
        when Invalid => "Invalid",
        when Ppz => "Ppz",
        when Udb => "Udb",
        when Fp => "Fp",
        when Px4 => "Px4",
        when Smaccmpilot => "Smaccmpilot",
        when Autoquad => "Autoquad",
        when Armazila => "Armazila",
        when Aerob => "Aerob",
        when Asluav => "Asluav",
        when Smartap => "Smartap",
        when Airrails => "Airrails",
        when Reflex => "Reflex");

   function Image (Value : Mav_Autopilot) return String is
     (if Value in Mav_Autopilot_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Type is new Interfaces.Unsigned_8;
   --  MAVLINK component type reported in HEARTBEAT message. Flight 
   --  controllers must report the type of the vehicle on which they are 
   --  mounted (e.g. MAV_TYPE_OCTOROTOR). All other components must report a 
   --  value appropriate for their type (e.g. a camera must use 
   --  MAV_TYPE_CAMERA). 

   function Generic_Entry return Mav_Type is (0)
     with Static;
   --  Generic micro air vehicle 

   function Fixed_Wing return Mav_Type is (1)
     with Static;
   --  Fixed wing aircraft. 

   function Quadrotor return Mav_Type is (2)
     with Static;
   --  Quadrotor 

   function Coaxial return Mav_Type is (3)
     with Static;
   --  Coaxial helicopter 

   function Helicopter return Mav_Type is (4)
     with Static;
   --  Normal helicopter with tail rotor. 

   function Antenna_Tracker return Mav_Type is (5)
     with Static;
   --  Ground installation 

   function Gcs return Mav_Type is (6)
     with Static;
   --  Operator control unit / ground control station 

   function Airship return Mav_Type is (7)
     with Static;
   --  Airship, controlled 

   function Free_Balloon return Mav_Type is (8)
     with Static;
   --  Free balloon, uncontrolled 

   function Rocket return Mav_Type is (9)
     with Static;
   --  Rocket 

   function Ground_Rover return Mav_Type is (10)
     with Static;
   --  Ground rover 

   function Surface_Boat return Mav_Type is (11)
     with Static;
   --  Surface vessel, boat, ship 

   function Submarine return Mav_Type is (12)
     with Static;
   --  Submarine 

   function Hexarotor return Mav_Type is (13)
     with Static;
   --  Hexarotor 

   function Octorotor return Mav_Type is (14)
     with Static;
   --  Octorotor 

   function Tricopter return Mav_Type is (15)
     with Static;
   --  Tricopter 

   function Flapping_Wing return Mav_Type is (16)
     with Static;
   --  Flapping wing 

   function Kite return Mav_Type is (17)
     with Static;
   --  Kite 

   function Onboard_Controller return Mav_Type is (18)
     with Static;
   --  Onboard companion controller 

   function Vtol_Tailsitter_Duorotor return Mav_Type is (19)
     with Static;
   --  Two-rotor Tailsitter VTOL that additionally uses control surfaces in 
   --  vertical operation. Note, value previously named 
   --  MAV_TYPE_VTOL_DUOROTOR. 

   function Vtol_Tailsitter_Quadrotor return Mav_Type is (20)
     with Static;
   --  Quad-rotor Tailsitter VTOL using a V-shaped quad config in vertical 
   --  operation. Note: value previously named MAV_TYPE_VTOL_QUADROTOR. 

   function Vtol_Tiltrotor return Mav_Type is (21)
     with Static;
   --  Tiltrotor VTOL. Fuselage and wings stay (nominally) horizontal in all 
   --  flight phases. It able to tilt (some) rotors to provide thrust in 
   --  cruise flight. 

   function Vtol_Fixedrotor return Mav_Type is (22)
     with Static;
   --  VTOL with separate fixed rotors for hover and cruise flight. Fuselage 
   --  and wings stay (nominally) horizontal in all flight phases. 

   function Vtol_Tailsitter return Mav_Type is (23)
     with Static;
   --  Tailsitter VTOL. Fuselage and wings orientation changes depending on 
   --  flight phase: vertical for hover, horizontal for cruise. Use more 
   --  specific VTOL MAV_TYPE_VTOL_TAILSITTER_DUOROTOR or 
   --  MAV_TYPE_VTOL_TAILSITTER_QUADROTOR if appropriate. 

   function Vtol_Tiltwing return Mav_Type is (24)
     with Static;
   --  Tiltwing VTOL. Fuselage stays horizontal in all flight phases. The 
   --  whole wing, along with any attached engine, can tilt between vertical 
   --  and horizontal mode. 

   function Vtol_Reserved5 return Mav_Type is (25)
     with Static;
   --  VTOL reserved 5 

   function Gimbal return Mav_Type is (26)
     with Static;
   --  Gimbal 

   function Adsb return Mav_Type is (27)
     with Static;
   --  ADSB system 

   function Parafoil return Mav_Type is (28)
     with Static;
   --  Steerable, nonrigid airfoil 

   function Dodecarotor return Mav_Type is (29)
     with Static;
   --  Dodecarotor 

   function Camera return Mav_Type is (30)
     with Static;
   --  Camera 

   function Charging_Station return Mav_Type is (31)
     with Static;
   --  Charging station 

   function Flarm return Mav_Type is (32)
     with Static;
   --  FLARM collision avoidance system 

   function Servo return Mav_Type is (33)
     with Static;
   --  Servo 

   function Odid return Mav_Type is (34)
     with Static;
   --  Open Drone ID. See https://mavlink.io/en/services/opendroneid.html. 

   function Decarotor return Mav_Type is (35)
     with Static;
   --  Decarotor 

   function Battery return Mav_Type is (36)
     with Static;
   --  Battery 

   function Parachute return Mav_Type is (37)
     with Static;
   --  Parachute 

   function Log return Mav_Type is (38)
     with Static;
   --  Log 

   function Osd return Mav_Type is (39)
     with Static;
   --  OSD 

   function Imu return Mav_Type is (40)
     with Static;
   --  IMU 

   function Gps return Mav_Type is (41)
     with Static;
   --  GPS 

   function Winch return Mav_Type is (42)
     with Static;
   --  Winch 

   function Generic_Multirotor return Mav_Type is (43)
     with Static;
   --  Generic multirotor that does not fit into a specific type or whose type 
   --  is unknown 

   function Illuminator return Mav_Type is (44)
     with Static;
   --  Illuminator. An illuminator is a light source that is used for lighting 
   --  up dark areas external to the system: e.g. a torch or searchlight (as 
   --  opposed to a light source for illuminating the system itself, e.g. an 
   --  indicator light). 

   function Spacecraft_Orbiter return Mav_Type is (45)
     with Static;
   --  Orbiter spacecraft. Includes satellites orbiting terrestrial and 
   --  extra-terrestrial bodies. Follows NASA Spacecraft Classification. 

   function Ground_Quadruped return Mav_Type is (46)
     with Static;
   --  A generic four-legged ground vehicle (e.g., a robot dog). 

   function Vtol_Gyrodyne return Mav_Type is (47)
     with Static;
   --  VTOL hybrid of helicopter and autogyro. It has a main rotor for lift 
   --  and separate propellers for forward flight. The rotor must be powered 
   --  for hover but can autorotate in cruise flight. See: 
   --  https://en.wikipedia.org/wiki/Gyrodyne 

   function Gripper return Mav_Type is (48)
     with Static;
   --  Gripper 

   function Radio return Mav_Type is (49)
     with Static;
   --  Radio 

   subtype Mav_Type_Well_Known is Mav_Type
     with Static_Predicate => Mav_Type_Well_Known in
       Generic_Entry .. Radio;

   function Well_Known_Image
     (Value : Mav_Type_Well_Known) return String is
       (case Value is
        when Generic_Entry => "Generic_Entry",
        when Fixed_Wing => "Fixed_Wing",
        when Quadrotor => "Quadrotor",
        when Coaxial => "Coaxial",
        when Helicopter => "Helicopter",
        when Antenna_Tracker => "Antenna_Tracker",
        when Gcs => "Gcs",
        when Airship => "Airship",
        when Free_Balloon => "Free_Balloon",
        when Rocket => "Rocket",
        when Ground_Rover => "Ground_Rover",
        when Surface_Boat => "Surface_Boat",
        when Submarine => "Submarine",
        when Hexarotor => "Hexarotor",
        when Octorotor => "Octorotor",
        when Tricopter => "Tricopter",
        when Flapping_Wing => "Flapping_Wing",
        when Kite => "Kite",
        when Onboard_Controller => "Onboard_Controller",
        when Vtol_Tailsitter_Duorotor => "Vtol_Tailsitter_Duorotor",
        when Vtol_Tailsitter_Quadrotor => "Vtol_Tailsitter_Quadrotor",
        when Vtol_Tiltrotor => "Vtol_Tiltrotor",
        when Vtol_Fixedrotor => "Vtol_Fixedrotor",
        when Vtol_Tailsitter => "Vtol_Tailsitter",
        when Vtol_Tiltwing => "Vtol_Tiltwing",
        when Vtol_Reserved5 => "Vtol_Reserved5",
        when Gimbal => "Gimbal",
        when Adsb => "Adsb",
        when Parafoil => "Parafoil",
        when Dodecarotor => "Dodecarotor",
        when Camera => "Camera",
        when Charging_Station => "Charging_Station",
        when Flarm => "Flarm",
        when Servo => "Servo",
        when Odid => "Odid",
        when Decarotor => "Decarotor",
        when Battery => "Battery",
        when Parachute => "Parachute",
        when Log => "Log",
        when Osd => "Osd",
        when Imu => "Imu",
        when Gps => "Gps",
        when Winch => "Winch",
        when Generic_Multirotor => "Generic_Multirotor",
        when Illuminator => "Illuminator",
        when Spacecraft_Orbiter => "Spacecraft_Orbiter",
        when Ground_Quadruped => "Ground_Quadruped",
        when Vtol_Gyrodyne => "Vtol_Gyrodyne",
        when Gripper => "Gripper",
        when Radio => "Radio");

   function Image (Value : Mav_Type) return String is
     (if Value in Mav_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Mav_Mode_Flag is record
      Custom_Mode_Enabled  : Boolean := False;
      Test_Enabled         : Boolean := False;
      Auto_Enabled         : Boolean := False;
      Guided_Enabled       : Boolean := False;
      Stabilize_Enabled    : Boolean := False;
      Hil_Enabled          : Boolean := False;
      Manual_Input_Enabled : Boolean := False;
      Safety_Armed         : Boolean := False;
   end record with Size => 8;
   --  These flags encode the MAV mode, see MAV_MODE enum for useful 
   --  combinations. 

   for Mav_Mode_Flag use record
      Custom_Mode_Enabled  at 0 range 0 .. 0;
      Test_Enabled         at 0 range 1 .. 1;
      Auto_Enabled         at 0 range 2 .. 2;
      Guided_Enabled       at 0 range 3 .. 3;
      Stabilize_Enabled    at 0 range 4 .. 4;
      Hil_Enabled          at 0 range 5 .. 5;
      Manual_Input_Enabled at 0 range 6 .. 6;
      Safety_Armed         at 0 range 7 .. 7;
   end record;

   function Image (V : Mav_Mode_Flag) return String is
     ("["
      & (if V.Custom_Mode_Enabled then "CUSTOM_MODE_ENABLED " else "")
      & (if V.Test_Enabled then "TEST_ENABLED " else "")
      & (if V.Auto_Enabled then "AUTO_ENABLED " else "")
      & (if V.Guided_Enabled then "GUIDED_ENABLED " else "")
      & (if V.Stabilize_Enabled then "STABILIZE_ENABLED " else "")
      & (if V.Hil_Enabled then "HIL_ENABLED " else "")
      & (if V.Manual_Input_Enabled then "MANUAL_INPUT_ENABLED " else "")
      & (if V.Safety_Armed then "SAFETY_ARMED " else "")
      & "]");

   type Mav_State is new Interfaces.Unsigned_8;

   function Uninit return Mav_State is (0)
     with Static;
   --  Uninitialized system, state is unknown. 

   function Boot return Mav_State is (1)
     with Static;
   --  System is booting up. 

   function Calibrating return Mav_State is (2)
     with Static;
   --  System is calibrating and not flight-ready. 

   function Standby return Mav_State is (3)
     with Static;
   --  System is grounded and on standby. It can be launched any time. 

   function Active return Mav_State is (4)
     with Static;
   --  System is active and might be already airborne. Motors are engaged. 

   function Critical return Mav_State is (5)
     with Static;
   --  System is in a non-normal flight mode (failsafe). It can however still 
   --  navigate. 

   function Emergency return Mav_State is (6)
     with Static;
   --  System is in a non-normal flight mode (failsafe). It lost control over 
   --  parts or over the whole airframe. It is in mayday and going down. 

   function Poweroff return Mav_State is (7)
     with Static;
   --  System just initialized its power-down sequence, will shut down now. 

   function Flight_Termination return Mav_State is (8)
     with Static;
   --  System is terminating itself (failsafe or commanded). 

   subtype Mav_State_Well_Known is Mav_State
     with Static_Predicate => Mav_State_Well_Known in
       Uninit .. Flight_Termination;

   function Well_Known_Image
     (Value : Mav_State_Well_Known) return String is
       (case Value is
        when Uninit => "Uninit",
        when Boot => "Boot",
        when Calibrating => "Calibrating",
        when Standby => "Standby",
        when Active => "Active",
        when Critical => "Critical",
        when Emergency => "Emergency",
        when Poweroff => "Poweroff",
        when Flight_Termination => "Flight_Termination");

   function Image (Value : Mav_State) return String is
     (if Value in Mav_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

end Mavlink.V1.Minimal;
