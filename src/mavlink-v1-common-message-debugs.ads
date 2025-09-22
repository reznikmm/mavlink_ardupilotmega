-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Send a debug value. The index is used to discriminate between values. 
--  These values show up in the plot of QGroundControl as DEBUG N. 
pragma Ada_2022;


package MAVLink.V1.Common.Message.Debugs is

   pragma Preelaborate;

   Debug_Id : constant Msg_Id := 254;

   Debug_Len : constant Interfaces.Unsigned_8 := 9;

   type Debug is record
      Time_Boot_Ms : Interfaces.Unsigned_32;
      --  Units: [ms]
      --  Timestamp (time since system boot). 
      Ind          : Interfaces.Unsigned_8;
      --  index of debug variable 
      Value        : Interfaces.IEEE_Float_32;
      --  DEBUG value 
   end record;

   for Debug use record
      Time_Boot_Ms at 0 range 0 .. 31;
      Value        at 4 range 0 .. 31;
      Ind          at 8 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Debug;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Debug;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Debug;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Debug;
      Connect : MAVLink.V1.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Debug;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Debug;
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

end MAVLink.V1.Common.Message.Debugs;
