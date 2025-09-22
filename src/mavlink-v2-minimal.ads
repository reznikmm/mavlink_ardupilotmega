-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Minimal is

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

   type Mav_Mode_Flag_Decode_Position is record
      Custom_Mode : Boolean := False;
      Test        : Boolean := False;
      Auto        : Boolean := False;
      Guided      : Boolean := False;
      Stabilize   : Boolean := False;
      Hil         : Boolean := False;
      Manual      : Boolean := False;
      Safety      : Boolean := False;
      Reserved_8  : Boolean := False;
      Reserved_9  : Boolean := False;
      Reserved_10 : Boolean := False;
      Reserved_11 : Boolean := False;
      Reserved_12 : Boolean := False;
      Reserved_13 : Boolean := False;
      Reserved_14 : Boolean := False;
      Reserved_15 : Boolean := False;
   end record with Size => 16;
   --  These values encode the bit positions of the decode position. These 
   --  values can be used to read the value of a flag bit by combining the 
   --  base_mode variable with AND with the flag position value. The result 
   --  will be either 0 or 1, depending on if the flag is set or not. 

   for Mav_Mode_Flag_Decode_Position use record
      Custom_Mode at 0 range 0 .. 0;
      Test        at 0 range 1 .. 1;
      Auto        at 0 range 2 .. 2;
      Guided      at 0 range 3 .. 3;
      Stabilize   at 0 range 4 .. 4;
      Hil         at 0 range 5 .. 5;
      Manual      at 0 range 6 .. 6;
      Safety      at 0 range 7 .. 7;
      Reserved_8  at 0 range 8 .. 8;
      Reserved_9  at 0 range 9 .. 9;
      Reserved_10 at 0 range 10 .. 10;
      Reserved_11 at 0 range 11 .. 11;
      Reserved_12 at 0 range 12 .. 12;
      Reserved_13 at 0 range 13 .. 13;
      Reserved_14 at 0 range 14 .. 14;
      Reserved_15 at 0 range 15 .. 15;
   end record;

   function Image (V : Mav_Mode_Flag_Decode_Position) return String is
     ("["
      & (if V.Custom_Mode then "CUSTOM_MODE " else "")
      & (if V.Test then "TEST " else "")
      & (if V.Auto then "AUTO " else "")
      & (if V.Guided then "GUIDED " else "")
      & (if V.Stabilize then "STABILIZE " else "")
      & (if V.Hil then "HIL " else "")
      & (if V.Manual then "MANUAL " else "")
      & (if V.Safety then "SAFETY " else "")
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

   type Mav_Component is new Interfaces.Unsigned_8;
   --  Legacy component ID values for particular types of hardware/software 
   --  that might make up a MAVLink system (autopilot, cameras, servos, 
   --  avoidance systems etc.). Components are not required or expected to use 
   --  IDs with names that correspond to their type or function, but may 
   --  choose to do so. Using an ID that matches the type may slightly reduce 
   --  the chances of component id clashes, as, for historical reasons, it is 
   --  less likely to be used by some other type of component. System 
   --  integration will still need to ensure that all components have unique 
   --  IDs. Component IDs are used for addressing messages to a particular 
   --  component within a system. A component can use any unique ID between 1 
   --  and 255 (MAV_COMP_ID_ALL value is the broadcast address, used to send 
   --  to all components). Historically component ID were also used for 
   --  identifying the type of component. New code must not use component IDs 
   --  to infer the component type, but instead check the MAV_TYPE in the 
   --  HEARTBEAT message! 

   function All_Entry return Mav_Component is (0)
     with Static;
   --  Target id (target_component) used to broadcast messages to all 
   --  components of the receiving system. Components should attempt to 
   --  process messages with this component ID and forward to components on 
   --  any other interfaces. Note: This is not a valid *source* component id 
   --  for a message. 

   function Autopilot1 return Mav_Component is (1)
     with Static;
   --  System flight controller component ("autopilot"). Only one autopilot is 
   --  expected in a particular system. 

   function User1 return Mav_Component is (25)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User2 return Mav_Component is (26)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User3 return Mav_Component is (27)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User4 return Mav_Component is (28)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User5 return Mav_Component is (29)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User6 return Mav_Component is (30)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User7 return Mav_Component is (31)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User8 return Mav_Component is (32)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User9 return Mav_Component is (33)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User10 return Mav_Component is (34)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User11 return Mav_Component is (35)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User12 return Mav_Component is (36)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User13 return Mav_Component is (37)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User14 return Mav_Component is (38)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User15 return Mav_Component is (39)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User16 return Mav_Component is (40)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User17 return Mav_Component is (41)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User18 return Mav_Component is (42)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User19 return Mav_Component is (43)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User20 return Mav_Component is (44)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User21 return Mav_Component is (45)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User22 return Mav_Component is (46)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User23 return Mav_Component is (47)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User24 return Mav_Component is (48)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User25 return Mav_Component is (49)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User26 return Mav_Component is (50)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User27 return Mav_Component is (51)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User28 return Mav_Component is (52)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User29 return Mav_Component is (53)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User30 return Mav_Component is (54)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User31 return Mav_Component is (55)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User32 return Mav_Component is (56)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User33 return Mav_Component is (57)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User34 return Mav_Component is (58)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User35 return Mav_Component is (59)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User36 return Mav_Component is (60)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User37 return Mav_Component is (61)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User38 return Mav_Component is (62)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User39 return Mav_Component is (63)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User40 return Mav_Component is (64)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User41 return Mav_Component is (65)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User42 return Mav_Component is (66)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User43 return Mav_Component is (67)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function Telemetry_Radio return Mav_Component is (68)
     with Static;
   --  Telemetry radio (e.g. SiK radio, or other component that emits 
   --  RADIO_STATUS messages). 

   function User45 return Mav_Component is (69)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User46 return Mav_Component is (70)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User47 return Mav_Component is (71)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User48 return Mav_Component is (72)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User49 return Mav_Component is (73)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User50 return Mav_Component is (74)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User51 return Mav_Component is (75)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User52 return Mav_Component is (76)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User53 return Mav_Component is (77)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User54 return Mav_Component is (78)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User55 return Mav_Component is (79)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User56 return Mav_Component is (80)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User57 return Mav_Component is (81)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User58 return Mav_Component is (82)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User59 return Mav_Component is (83)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User60 return Mav_Component is (84)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User61 return Mav_Component is (85)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User62 return Mav_Component is (86)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User63 return Mav_Component is (87)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User64 return Mav_Component is (88)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User65 return Mav_Component is (89)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User66 return Mav_Component is (90)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User67 return Mav_Component is (91)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User68 return Mav_Component is (92)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User69 return Mav_Component is (93)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User70 return Mav_Component is (94)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User71 return Mav_Component is (95)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User72 return Mav_Component is (96)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User73 return Mav_Component is (97)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User74 return Mav_Component is (98)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function User75 return Mav_Component is (99)
     with Static;
   --  Id for a component on privately managed MAVLink network. Can be used 
   --  for any purpose but may not be published by components outside of the 
   --  private network. 

   function Camera return Mav_Component is (100)
     with Static;
   --  Camera #1. 

   function Camera2 return Mav_Component is (101)
     with Static;
   --  Camera #2. 

   function Camera3 return Mav_Component is (102)
     with Static;
   --  Camera #3. 

   function Camera4 return Mav_Component is (103)
     with Static;
   --  Camera #4. 

   function Camera5 return Mav_Component is (104)
     with Static;
   --  Camera #5. 

   function Camera6 return Mav_Component is (105)
     with Static;
   --  Camera #6. 

   function Radio return Mav_Component is (110)
     with Static;
   --  Radio #1. 

   function Radio2 return Mav_Component is (111)
     with Static;
   --  Radio #2. 

   function Radio3 return Mav_Component is (112)
     with Static;
   --  Radio #3. 

   function Servo1 return Mav_Component is (140)
     with Static;
   --  Servo #1. 

   function Servo2 return Mav_Component is (141)
     with Static;
   --  Servo #2. 

   function Servo3 return Mav_Component is (142)
     with Static;
   --  Servo #3. 

   function Servo4 return Mav_Component is (143)
     with Static;
   --  Servo #4. 

   function Servo5 return Mav_Component is (144)
     with Static;
   --  Servo #5. 

   function Servo6 return Mav_Component is (145)
     with Static;
   --  Servo #6. 

   function Servo7 return Mav_Component is (146)
     with Static;
   --  Servo #7. 

   function Servo8 return Mav_Component is (147)
     with Static;
   --  Servo #8. 

   function Servo9 return Mav_Component is (148)
     with Static;
   --  Servo #9. 

   function Servo10 return Mav_Component is (149)
     with Static;
   --  Servo #10. 

   function Servo11 return Mav_Component is (150)
     with Static;
   --  Servo #11. 

   function Servo12 return Mav_Component is (151)
     with Static;
   --  Servo #12. 

   function Servo13 return Mav_Component is (152)
     with Static;
   --  Servo #13. 

   function Servo14 return Mav_Component is (153)
     with Static;
   --  Servo #14. 

   function Gimbal return Mav_Component is (154)
     with Static;
   --  Gimbal #1. 

   function Log return Mav_Component is (155)
     with Static;
   --  Logging component. 

   function Adsb return Mav_Component is (156)
     with Static;
   --  Automatic Dependent Surveillance-Broadcast (ADS-B) component. 

   function Osd return Mav_Component is (157)
     with Static;
   --  On Screen Display (OSD) devices for video links. 

   function Peripheral return Mav_Component is (158)
     with Static;
   --  Generic autopilot peripheral component ID. Meant for devices that do 
   --  not implement the parameter microservice. 

   function Qx1_Gimbal return Mav_Component is (159)
     with Static;
   pragma Obsolescent (Qx1_Gimbal);
   ------------
   --  DEPRECATED SINCE: 2018-11 REPLACED BY: MAV_COMP_ID_GIMBAL
   --  All gimbals should use MAV_COMP_ID_GIMBAL. 
   ------------
   --  Gimbal ID for QX1. 

   function Flarm return Mav_Component is (160)
     with Static;
   --  FLARM collision alert component. 

   function Parachute return Mav_Component is (161)
     with Static;
   --  Parachute component. 

   function Winch return Mav_Component is (169)
     with Static;
   --  Winch component. 

   function Gimbal2 return Mav_Component is (171)
     with Static;
   --  Gimbal #2. 

   function Gimbal3 return Mav_Component is (172)
     with Static;
   --  Gimbal #3. 

   function Gimbal4 return Mav_Component is (173)
     with Static;
   --  Gimbal #4 

   function Gimbal5 return Mav_Component is (174)
     with Static;
   --  Gimbal #5. 

   function Gimbal6 return Mav_Component is (175)
     with Static;
   --  Gimbal #6. 

   function Battery return Mav_Component is (180)
     with Static;
   --  Battery #1. 

   function Battery2 return Mav_Component is (181)
     with Static;
   --  Battery #2. 

   function Mavcan return Mav_Component is (189)
     with Static;
   --  CAN over MAVLink client. 

   function Missionplanner return Mav_Component is (190)
     with Static;
   --  Component that can generate/supply a mission flight plan (e.g. GCS or 
   --  developer API). 

   function Onboard_Computer return Mav_Component is (191)
     with Static;
   --  Component that lives on the onboard computer (companion computer) and 
   --  has some generic functionalities, such as settings system parameters 
   --  and monitoring the status of some processes that don't directly speak 
   --  mavlink and so on. 

   function Onboard_Computer2 return Mav_Component is (192)
     with Static;
   --  Component that lives on the onboard computer (companion computer) and 
   --  has some generic functionalities, such as settings system parameters 
   --  and monitoring the status of some processes that don't directly speak 
   --  mavlink and so on. 

   function Onboard_Computer3 return Mav_Component is (193)
     with Static;
   --  Component that lives on the onboard computer (companion computer) and 
   --  has some generic functionalities, such as settings system parameters 
   --  and monitoring the status of some processes that don't directly speak 
   --  mavlink and so on. 

   function Onboard_Computer4 return Mav_Component is (194)
     with Static;
   --  Component that lives on the onboard computer (companion computer) and 
   --  has some generic functionalities, such as settings system parameters 
   --  and monitoring the status of some processes that don't directly speak 
   --  mavlink and so on. 

   function Pathplanner return Mav_Component is (195)
     with Static;
   --  Component that finds an optimal path between points based on a certain 
   --  constraint (e.g. minimum snap, shortest path, cost, etc.). 

   function Obstacle_Avoidance return Mav_Component is (196)
     with Static;
   --  Component that plans a collision free path between two points. 

   function Visual_Inertial_Odometry return Mav_Component is (197)
     with Static;
   --  Component that provides position estimates using VIO techniques. 

   function Pairing_Manager return Mav_Component is (198)
     with Static;
   --  Component that manages pairing of vehicle and GCS. 

   function Imu return Mav_Component is (200)
     with Static;
   --  Inertial Measurement Unit (IMU) #1. 

   function Imu_2 return Mav_Component is (201)
     with Static;
   --  Inertial Measurement Unit (IMU) #2. 

   function Imu_3 return Mav_Component is (202)
     with Static;
   --  Inertial Measurement Unit (IMU) #3. 

   function Gps return Mav_Component is (220)
     with Static;
   --  GPS #1. 

   function Gps2 return Mav_Component is (221)
     with Static;
   --  GPS #2. 

   function Odid_Txrx_1 return Mav_Component is (236)
     with Static;
   --  Open Drone ID transmitter/receiver (Bluetooth/WiFi/Internet). 

   function Odid_Txrx_2 return Mav_Component is (237)
     with Static;
   --  Open Drone ID transmitter/receiver (Bluetooth/WiFi/Internet). 

   function Odid_Txrx_3 return Mav_Component is (238)
     with Static;
   --  Open Drone ID transmitter/receiver (Bluetooth/WiFi/Internet). 

   function Udp_Bridge return Mav_Component is (240)
     with Static;
   --  Component to bridge MAVLink to UDP (i.e. from a UART). 

   function Uart_Bridge return Mav_Component is (241)
     with Static;
   --  Component to bridge to UART (i.e. from UDP). 

   function Tunnel_Node return Mav_Component is (242)
     with Static;
   --  Component handling TUNNEL messages (e.g. vendor specific GUI of a 
   --  component). 

   function Illuminator return Mav_Component is (243)
     with Static;
   --  Illuminator 

   function System_Control return Mav_Component is (250)
     with Static;
   pragma Obsolescent (System_Control);
   ------------
   --  DEPRECATED SINCE: 2018-11 REPLACED BY: MAV_COMP_ID_ALL
   --  System control does not require a separate component ID. Instead, 
   --  system commands should be sent with target_component=MAV_COMP_ID_ALL 
   --  allowing the target component to use any appropriate component id. 
   ------------
   --  Deprecated, don't use. Component for handling system messages (e.g. to 
   --  ARM, takeoff, etc.). 

   subtype Mav_Component_Well_Known is Mav_Component
     with Static_Predicate => Mav_Component_Well_Known in
       All_Entry .. Autopilot1
       | User1 .. Camera6
       | Radio .. Radio3
       | Servo1 .. Parachute
       | Winch
       | Gimbal2 .. Gimbal6
       | Battery .. Battery2
       | Mavcan .. Pairing_Manager
       | Imu .. Imu_3
       | Gps .. Gps2
       | Odid_Txrx_1 .. Odid_Txrx_3
       | Udp_Bridge .. Illuminator
       | System_Control;

   function Well_Known_Image
     (Value : Mav_Component_Well_Known) return String is
       (case Value is
        when All_Entry => "All_Entry",
        when Autopilot1 => "Autopilot1",
        when User1 => "User1",
        when User2 => "User2",
        when User3 => "User3",
        when User4 => "User4",
        when User5 => "User5",
        when User6 => "User6",
        when User7 => "User7",
        when User8 => "User8",
        when User9 => "User9",
        when User10 => "User10",
        when User11 => "User11",
        when User12 => "User12",
        when User13 => "User13",
        when User14 => "User14",
        when User15 => "User15",
        when User16 => "User16",
        when User17 => "User17",
        when User18 => "User18",
        when User19 => "User19",
        when User20 => "User20",
        when User21 => "User21",
        when User22 => "User22",
        when User23 => "User23",
        when User24 => "User24",
        when User25 => "User25",
        when User26 => "User26",
        when User27 => "User27",
        when User28 => "User28",
        when User29 => "User29",
        when User30 => "User30",
        when User31 => "User31",
        when User32 => "User32",
        when User33 => "User33",
        when User34 => "User34",
        when User35 => "User35",
        when User36 => "User36",
        when User37 => "User37",
        when User38 => "User38",
        when User39 => "User39",
        when User40 => "User40",
        when User41 => "User41",
        when User42 => "User42",
        when User43 => "User43",
        when Telemetry_Radio => "Telemetry_Radio",
        when User45 => "User45",
        when User46 => "User46",
        when User47 => "User47",
        when User48 => "User48",
        when User49 => "User49",
        when User50 => "User50",
        when User51 => "User51",
        when User52 => "User52",
        when User53 => "User53",
        when User54 => "User54",
        when User55 => "User55",
        when User56 => "User56",
        when User57 => "User57",
        when User58 => "User58",
        when User59 => "User59",
        when User60 => "User60",
        when User61 => "User61",
        when User62 => "User62",
        when User63 => "User63",
        when User64 => "User64",
        when User65 => "User65",
        when User66 => "User66",
        when User67 => "User67",
        when User68 => "User68",
        when User69 => "User69",
        when User70 => "User70",
        when User71 => "User71",
        when User72 => "User72",
        when User73 => "User73",
        when User74 => "User74",
        when User75 => "User75",
        when Camera => "Camera",
        when Camera2 => "Camera2",
        when Camera3 => "Camera3",
        when Camera4 => "Camera4",
        when Camera5 => "Camera5",
        when Camera6 => "Camera6",
        when Radio => "Radio",
        when Radio2 => "Radio2",
        when Radio3 => "Radio3",
        when Servo1 => "Servo1",
        when Servo2 => "Servo2",
        when Servo3 => "Servo3",
        when Servo4 => "Servo4",
        when Servo5 => "Servo5",
        when Servo6 => "Servo6",
        when Servo7 => "Servo7",
        when Servo8 => "Servo8",
        when Servo9 => "Servo9",
        when Servo10 => "Servo10",
        when Servo11 => "Servo11",
        when Servo12 => "Servo12",
        when Servo13 => "Servo13",
        when Servo14 => "Servo14",
        when Gimbal => "Gimbal",
        when Log => "Log",
        when Adsb => "Adsb",
        when Osd => "Osd",
        when Peripheral => "Peripheral",
        when Qx1_Gimbal => "Qx1_Gimbal",
        when Flarm => "Flarm",
        when Parachute => "Parachute",
        when Winch => "Winch",
        when Gimbal2 => "Gimbal2",
        when Gimbal3 => "Gimbal3",
        when Gimbal4 => "Gimbal4",
        when Gimbal5 => "Gimbal5",
        when Gimbal6 => "Gimbal6",
        when Battery => "Battery",
        when Battery2 => "Battery2",
        when Mavcan => "Mavcan",
        when Missionplanner => "Missionplanner",
        when Onboard_Computer => "Onboard_Computer",
        when Onboard_Computer2 => "Onboard_Computer2",
        when Onboard_Computer3 => "Onboard_Computer3",
        when Onboard_Computer4 => "Onboard_Computer4",
        when Pathplanner => "Pathplanner",
        when Obstacle_Avoidance => "Obstacle_Avoidance",
        when Visual_Inertial_Odometry => "Visual_Inertial_Odometry",
        when Pairing_Manager => "Pairing_Manager",
        when Imu => "Imu",
        when Imu_2 => "Imu_2",
        when Imu_3 => "Imu_3",
        when Gps => "Gps",
        when Gps2 => "Gps2",
        when Odid_Txrx_1 => "Odid_Txrx_1",
        when Odid_Txrx_2 => "Odid_Txrx_2",
        when Odid_Txrx_3 => "Odid_Txrx_3",
        when Udp_Bridge => "Udp_Bridge",
        when Uart_Bridge => "Uart_Bridge",
        when Tunnel_Node => "Tunnel_Node",
        when Illuminator => "Illuminator",
        when System_Control => "System_Control");

   function Image (Value : Mav_Component) return String is
     (if Value in Mav_Component_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

end MAVLink.V2.Minimal;
