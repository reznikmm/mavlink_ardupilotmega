-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Time synchronization message. The message is used for both timesync 
--  requests and responses. The request is sent with `ts1=syncing component 
--  timestamp` and `tc1=0`, and may be broadcast or targeted to a specific 
--  system/component. The response is sent with `ts1=syncing component 
--  timestamp` (mirror back unchanged), and `tc1=responding component 
--  timestamp`, with the `target_system` and `target_component` set to ids of 
--  the original request. Systems can determine if they are receiving a 
--  request or response based on the value of `tc`. If the response has 
--  `target_system==target_component==0` the remote system has not been 
--  updated to use the component IDs and cannot reliably timesync; the 
--  requester may report an error. Timestamps are UNIX Epoch time or time 
--  since system boot in nanoseconds (the timestamp format can be inferred by 
--  checking for the magnitude of the number; generally it doesn't matter as 
--  only the offset is used). The message sequence is repeated numerous times 
--  with results being filtered/averaged to estimate the offset. See also: 
--  https://mavlink.io/en/services/timesync.html. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Timesyncs is

   pragma Preelaborate;

   Timesync_Id : constant Msg_Id := 111;

   type Timesync is record
      Tc1              : Interfaces.Integer_64;
      --  Units: [ns]
      --  Time sync timestamp 1. Syncing: 0. Responding: Timestamp of 
      --  responding component. 
      Ts1              : Interfaces.Integer_64;
      --  Units: [ns]
      --  Time sync timestamp 2. Timestamp of syncing component (mirrored in 
      --  response). 
      Target_System    : Interfaces.Unsigned_8;
      --  Target system id. Request: 0 (broadcast) or id of specific system. 
      --  Response must contain system id of the requesting component. 
      Target_Component : Interfaces.Unsigned_8;
      --  Target component id. Request: 0 (broadcast) or id of specific 
      --  component. Response must contain component id of the requesting 
      --  component. 
   end record;

   for Timesync use record
      Tc1              at 0  range 0 .. 63;
      Ts1              at 8  range 0 .. 63;
      Target_System    at 16 range 0 .. 7;
      Target_Component at 17 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Timesync;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Timesync;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Timesync;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Timesync;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Timesync;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Timesync;
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
     (Message : Timesync;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Timesync;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Timesyncs;
