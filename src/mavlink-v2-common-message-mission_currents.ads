-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Message that announces the sequence number of the current target mission 
--  item (that the system will fly towards/execute when the mission is 
--  running). This message should be streamed all the time (nominally at 1Hz). 
--  This message should be emitted following a call to 
--  MAV_CMD_DO_SET_MISSION_CURRENT or MISSION_SET_CURRENT. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Mission_Currents is

   pragma Preelaborate;

   Mission_Current_Id : constant Msg_Id := 42;

   type Mission_Current is record
      Seq             : Interfaces.Unsigned_16;
      --  Sequence 
      Total           : Interfaces.Unsigned_16 :=
        Interfaces.Unsigned_16'Last;
      --  Total number of mission items on vehicle (on last item, sequence == 
      --  total). If the autopilot stores its home location as part of the 
      --  mission this will be excluded from the total. 0: Not supported, 
      --  UINT16_MAX if no mission is present on the vehicle. 
      Mission_State   : MAVLink.V2.Common.Mission_State :=
        0;
      --  Mission state machine state. MISSION_STATE_UNKNOWN if state 
      --  reporting not supported. 
      Mission_Mode    : Interfaces.Unsigned_8 :=
        0;
      --  Vehicle is in a mode that can execute mission items or suspended. 0: 
      --  Unknown, 1: In mission mode, 2: Suspended (not in mission mode). 
      Mission_Id      : Interfaces.Unsigned_32 :=
        0;
      --  Id of current on-vehicle mission plan, or 0 if IDs are not supported 
      --  or there is no mission loaded. GCS can use this to track changes to 
      --  the mission plan type. The same value is returned on mission upload 
      --  (in the MISSION_ACK). 
      Fence_Id        : Interfaces.Unsigned_32 :=
        0;
      --  Id of current on-vehicle fence plan, or 0 if IDs are not supported 
      --  or there is no fence loaded. GCS can use this to track changes to 
      --  the fence plan type. The same value is returned on fence upload (in 
      --  the MISSION_ACK). 
      Rally_Points_Id : Interfaces.Unsigned_32 :=
        0;
      --  Id of current on-vehicle rally point plan, or 0 if IDs are not 
      --  supported or there are no rally points loaded. GCS can use this to 
      --  track changes to the rally point plan type. The same value is 
      --  returned on rally point upload (in the MISSION_ACK). 
   end record;

   for Mission_Current use record
      Seq             at 0  range 0 .. 15;
      Total           at 2  range 0 .. 15;
      Mission_State   at 4  range 0 .. 7;
      Mission_Mode    at 5  range 0 .. 7;
      Mission_Id      at 6  range 0 .. 31;
      Fence_Id        at 10 range 0 .. 31;
      Rally_Points_Id at 14 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Mission_Current;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Current;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Current;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Current;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Mission_Current;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Current;
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
     (Message : Mission_Current;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Mission_Current;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Mission_Currents;
