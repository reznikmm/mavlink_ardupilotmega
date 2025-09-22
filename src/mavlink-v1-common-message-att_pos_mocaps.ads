-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Motion capture attitude and position 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Att_Pos_Mocaps is

   pragma Preelaborate;

   Att_Pos_Mocap_Id : constant Msg_Id := 138;

   Att_Pos_Mocap_Len : constant Interfaces.Unsigned_8 := 36;

   type Att_Pos_Mocap is record
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude of the number. 
      Q         : Short_Float_Array (1 .. 4);
      --  Attitude quaternion (w, x, y, z order, zero-rotation is 1, 0, 0, 0) 
      X         : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  X position (NED) 
      Y         : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Y position (NED) 
      Z         : Interfaces.IEEE_Float_32;
      --  Units: [m]
      --  Z position (NED) 
   end record;

   for Att_Pos_Mocap use record
      Time_Usec at 0  range 0 .. 63;
      Q         at 8  range 0 .. 127;
      X         at 24 range 0 .. 31;
      Y         at 28 range 0 .. 31;
      Z         at 32 range 0 .. 31;
   end record;

   procedure Encode
     (Message : Att_Pos_Mocap;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Att_Pos_Mocap;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Att_Pos_Mocap;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Att_Pos_Mocap;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Att_Pos_Mocap;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Att_Pos_Mocap;
      Connect : MAVLink.V1.In_Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection)
      return Boolean with Inline;
   --  Returns True if CRC is valid

end MAVLink.V1.Common.Message.Att_Pos_Mocaps;
