-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Vehicle status report that is sent out while orbit execution is in 
--  progress (see MAV_CMD_DO_ORBIT). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Orbit_Execution_Statuses is

   pragma Preelaborate;

   Orbit_Execution_Status_Id : constant Msg_Id := 360;

   type Orbit_Execution_Status is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Radius    : Raw_Float;
      --  Units: [m]
      --  Radius of the orbit circle. Positive values orbit clockwise, 
      --  negative values orbit counter-clockwise. 
      Frame     : Mav_Frame;
      --  The coordinate system of the fields: x, y, z. 
      X         : Interfaces.Integer_32;
      --  X coordinate of center point. Coordinate system depends on frame 
      --  field: local = x position in meters * 1e4, global = latitude in 
      --  degrees * 1e7. 
      Y         : Interfaces.Integer_32;
      --  Y coordinate of center point. Coordinate system depends on frame 
      --  field: local = x position in meters * 1e4, global = latitude in 
      --  degrees * 1e7. 
      Z         : Raw_Float;
      --  Units: [m]
      --  Altitude of center point. Coordinate system depends on frame field. 
   end record;

   for Orbit_Execution_Status use record
      Time_Usec at 0  range 0 .. 63;
      Radius    at 8  range 0 .. 31;
      X         at 12 range 0 .. 31;
      Y         at 16 range 0 .. 31;
      Z         at 20 range 0 .. 31;
      Frame     at 24 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Orbit_Execution_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Orbit_Execution_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Orbit_Execution_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Orbit_Execution_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Orbit_Execution_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Orbit_Execution_Status;
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
     (Message : Orbit_Execution_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Orbit_Execution_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Orbit_Execution_Statuses;
