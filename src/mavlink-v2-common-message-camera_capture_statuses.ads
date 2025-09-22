-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Information about the status of a capture. Can be requested with a 
--  MAV_CMD_REQUEST_MESSAGE command. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Camera_Capture_Statuses is

   pragma Preelaborate;

   Camera_Capture_Status_Id : constant Msg_Id := 262;

   type Camera_Capture_Status is record
      Time_Boot_Ms       : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Image_Status       : Interfaces.Unsigned_8;
      --  Current status of image capturing (0: idle, 1: capture in progress, 
      --  2: interval set but idle, 3: interval set and capture in progress) 
      Video_Status       : Interfaces.Unsigned_8;
      --  Current status of video capturing (0: idle, 1: capture in progress) 
      Image_Interval     : Raw_Float;
      --  Units: [s]
      --  Image capture interval 
      Recording_Time_Ms  : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Elapsed time since recording started (0: Not supported/available). A 
      --  GCS should compute recording time and use non-zero values of this 
      --  field to correct any discrepancy. 
      Available_Capacity : Raw_Float;
      --  Units: [MiB]
      --  Available storage capacity. 
      Image_Count        : Interfaces.Integer_32;
      --  Total number of images captured ('forever', or until reset using 
      --  MAV_CMD_STORAGE_FORMAT). 
      Camera_Device_Id   : Interfaces.Unsigned_8;
      --  Camera id of a non-MAVLink camera attached to an autopilot (1-6). 0 
      --  if the component is a MAVLink camera (with its own component id). 
   end record;

   for Camera_Capture_Status use record
      Time_Boot_Ms       at 0  range 0 .. 31;
      Image_Interval     at 4  range 0 .. 31;
      Recording_Time_Ms  at 8  range 0 .. 31;
      Available_Capacity at 12 range 0 .. 31;
      Image_Status       at 16 range 0 .. 7;
      Video_Status       at 17 range 0 .. 7;
      Image_Count        at 18 range 0 .. 31;
      Camera_Device_Id   at 22 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Camera_Capture_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Camera_Capture_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Camera_Capture_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Capture_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Camera_Capture_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Camera_Capture_Status;
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
     (Message : Camera_Capture_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Camera_Capture_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Camera_Capture_Statuses;
