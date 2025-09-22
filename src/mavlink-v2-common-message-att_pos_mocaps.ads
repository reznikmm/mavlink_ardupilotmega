-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Motion capture attitude and position 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Att_Pos_Mocaps is

   pragma Preelaborate;

   Att_Pos_Mocap_Id : constant Msg_Id := 138;

   type Att_Pos_Mocap is record
      Time_Usec  : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Q          : Short_Float_Array (1 .. 4);
      --  Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0) 
      X          : Raw_Float;
      --  Units: [m]
      --  X position (NED) 
      Y          : Raw_Float;
      --  Units: [m]
      --  Y position (NED) 
      Z          : Raw_Float;
      --  Units: [m]
      --  Z position (NED) 
      Covariance : Short_Float_Array (1 .. 21) :=
        [others => To_Raw (0.0)];
      --  Row-major representation of a pose 6x6 cross-covariance matrix upper 
      --  right triangle (states: x, y, z, roll, pitch, yaw; first six entries 
      --  are the first ROW, next five entries are the second ROW, etc.). If 
      --  unknown, assign NaN value to first element in the array. 
   end record;

   for Att_Pos_Mocap use record
      Time_Usec  at 0  range 0 .. 63;
      Q          at 8  range 0 .. 127;
      X          at 24 range 0 .. 31;
      Y          at 28 range 0 .. 31;
      Z          at 32 range 0 .. 31;
      Covariance at 36 range 0 .. 671;
   end record;

   procedure Encode
     (Message : Att_Pos_Mocap;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Att_Pos_Mocap;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Att_Pos_Mocap;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Att_Pos_Mocap;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Att_Pos_Mocap;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Att_Pos_Mocap;
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
     (Message : Att_Pos_Mocap;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Att_Pos_Mocap;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Att_Pos_Mocaps;
