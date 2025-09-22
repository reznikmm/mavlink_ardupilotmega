-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Time/duration estimates for various events and actions given the current 
--  vehicle state and position. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Time_Estimate_To_Targets is

   pragma Preelaborate;

   Time_Estimate_To_Target_Id : constant Msg_Id := 380;

   type Time_Estimate_To_Target is record
      Safe_Return       : Interfaces.Integer_32;
      --  Units: [s]
      --  Estimated time to complete the vehicle's configured "safe return" 
      --  action from its current position (e.g. RTL, Smart RTL, etc.). -1 
      --  indicates that the vehicle is landed, or that no time estimate 
      --  available. 
      Land              : Interfaces.Integer_32;
      --  Units: [s]
      --  Estimated time for vehicle to complete the LAND action from its 
      --  current position. -1 indicates that the vehicle is landed, or that 
      --  no time estimate available. 
      Mission_Next_Item : Interfaces.Integer_32 :=
        -1;
      --  Units: [s]
      --  Estimated time for reaching/completing the currently active mission 
      --  item. -1 means no time estimate available. 
      Mission_End       : Interfaces.Integer_32 :=
        -1;
      --  Units: [s]
      --  Estimated time for completing the current mission. -1 means no 
      --  mission active and/or no estimate available. 
      Commanded_Action  : Interfaces.Integer_32 :=
        -1;
      --  Units: [s]
      --  Estimated time for completing the current commanded action (i.e. Go 
      --  To, Takeoff, Land, etc.). -1 means no action active and/or no 
      --  estimate available. 
   end record;

   for Time_Estimate_To_Target use record
      Safe_Return       at 0  range 0 .. 31;
      Land              at 4  range 0 .. 31;
      Mission_Next_Item at 8  range 0 .. 31;
      Mission_End       at 12 range 0 .. 31;
      Commanded_Action  at 16 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Time_Estimate_To_Target;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Time_Estimate_To_Target;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Time_Estimate_To_Target;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Time_Estimate_To_Target;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Time_Estimate_To_Target;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Time_Estimate_To_Target;
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
     (Message : Time_Estimate_To_Target;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Time_Estimate_To_Target;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Time_Estimate_To_Targets;
