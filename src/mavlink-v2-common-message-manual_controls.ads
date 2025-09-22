-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Manual (joystick) control message. This message represents movement axes 
--  and button using standard joystick axes nomenclature. Unused axes can be 
--  disabled and buttons states are transmitted as individual on/off bits of a 
--  bitmask. For more information see 
--  https://mavlink.io/en/manual_control.html 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Manual_Controls is

   pragma Preelaborate;

   Manual_Control_Id : constant Msg_Id := 69;

   type Manual_Control is record
      Target             : Interfaces.Unsigned_8;
      --  The system to be controlled. 
      X                  : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  X-axis, normalized to the range [-1000,1000]. A value of INT16_MAX 
      --  indicates that this axis is invalid. Generally corresponds to 
      --  forward(1000)-backward(-1000) movement on a joystick and the pitch 
      --  of a vehicle. 
      Y                  : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Y-axis, normalized to the range [-1000,1000]. A value of INT16_MAX 
      --  indicates that this axis is invalid. Generally corresponds to 
      --  left(-1000)-right(1000) movement on a joystick and the roll of a 
      --  vehicle. 
      Z                  : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  Z-axis, normalized to the range [-1000,1000]. A value of INT16_MAX 
      --  indicates that this axis is invalid. Generally corresponds to a 
      --  separate slider movement with maximum being 1000 and minimum being 
      --  -1000 on a joystick and the thrust of a vehicle. Positive values are 
      --  positive thrust, negative values are negative thrust. 
      R                  : Interfaces.Integer_16 :=
        Interfaces.Integer_16'Last;
      --  R-axis, normalized to the range [-1000,1000]. A value of INT16_MAX 
      --  indicates that this axis is invalid. Generally corresponds to a 
      --  twisting of the joystick, with counter-clockwise being 1000 and 
      --  clockwise being -1000, and the yaw of a vehicle. 
      Buttons            : Interfaces.Unsigned_16;
      --  A bitfield corresponding to the joystick buttons' 0-15 current 
      --  state, 1 for pressed, 0 for released. The lowest bit corresponds to 
      --  Button 1. 
      Buttons2           : Interfaces.Unsigned_16;
      --  A bitfield corresponding to the joystick buttons' 16-31 current 
      --  state, 1 for pressed, 0 for released. The lowest bit corresponds to 
      --  Button 16. 
      Enabled_Extensions : Interfaces.Unsigned_8;
      --  Set bits to 1 to indicate which of the following extension fields 
      --  contain valid data: bit 0: pitch, bit 1: roll, bit 2: aux1, bit 3: 
      --  aux2, bit 4: aux3, bit 5: aux4, bit 6: aux5, bit 7: aux6 
      S                  : Interfaces.Integer_16;
      --  Pitch-only-axis, normalized to the range [-1000,1000]. Generally 
      --  corresponds to pitch on vehicles with additional degrees of freedom. 
      --  Valid if bit 0 of enabled_extensions field is set. Set to 0 if 
      --  invalid. 
      T                  : Interfaces.Integer_16;
      --  Roll-only-axis, normalized to the range [-1000,1000]. Generally 
      --  corresponds to roll on vehicles with additional degrees of freedom. 
      --  Valid if bit 1 of enabled_extensions field is set. Set to 0 if 
      --  invalid. 
      Aux1               : Interfaces.Integer_16;
      --  Aux continuous input field 1. Normalized in the range [-1000,1000]. 
      --  Purpose defined by recipient. Valid data if bit 2 of 
      --  enabled_extensions field is set. 0 if bit 2 is unset. 
      Aux2               : Interfaces.Integer_16;
      --  Aux continuous input field 2. Normalized in the range [-1000,1000]. 
      --  Purpose defined by recipient. Valid data if bit 3 of 
      --  enabled_extensions field is set. 0 if bit 3 is unset. 
      Aux3               : Interfaces.Integer_16;
      --  Aux continuous input field 3. Normalized in the range [-1000,1000]. 
      --  Purpose defined by recipient. Valid data if bit 4 of 
      --  enabled_extensions field is set. 0 if bit 4 is unset. 
      Aux4               : Interfaces.Integer_16;
      --  Aux continuous input field 4. Normalized in the range [-1000,1000]. 
      --  Purpose defined by recipient. Valid data if bit 5 of 
      --  enabled_extensions field is set. 0 if bit 5 is unset. 
      Aux5               : Interfaces.Integer_16;
      --  Aux continuous input field 5. Normalized in the range [-1000,1000]. 
      --  Purpose defined by recipient. Valid data if bit 6 of 
      --  enabled_extensions field is set. 0 if bit 6 is unset. 
      Aux6               : Interfaces.Integer_16;
      --  Aux continuous input field 6. Normalized in the range [-1000,1000]. 
      --  Purpose defined by recipient. Valid data if bit 7 of 
      --  enabled_extensions field is set. 0 if bit 7 is unset. 
   end record;

   for Manual_Control use record
      X                  at 0  range 0 .. 15;
      Y                  at 2  range 0 .. 15;
      Z                  at 4  range 0 .. 15;
      R                  at 6  range 0 .. 15;
      Buttons            at 8  range 0 .. 15;
      Target             at 10 range 0 .. 7;
      Buttons2           at 11 range 0 .. 15;
      Enabled_Extensions at 13 range 0 .. 7;
      S                  at 14 range 0 .. 15;
      T                  at 16 range 0 .. 15;
      Aux1               at 18 range 0 .. 15;
      Aux2               at 20 range 0 .. 15;
      Aux3               at 22 range 0 .. 15;
      Aux4               at 24 range 0 .. 15;
      Aux5               at 26 range 0 .. 15;
      Aux6               at 28 range 0 .. 15;
   end record;

   procedure Encode
     (Message : Manual_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Manual_Control;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Manual_Control;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Manual_Control;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Manual_Control;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Manual_Control;
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
     (Message : Manual_Control;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Manual_Control;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Manual_Controls;
