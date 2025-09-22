-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

--  Delete all mission items at once. 
pragma Ada_2022;


package Mavlink.V1.Common.Message.Mission_Clear_Alls is

   pragma Preelaborate;

   Mission_Clear_All_Id : constant Msg_Id := 45;

   Mission_Clear_All_Len : constant Interfaces.Unsigned_8 := 2;

   type Mission_Clear_All is record
      Target_System    : Interfaces.Unsigned_8;
      --  System ID 
      Target_Component : Interfaces.Unsigned_8;
      --  Component ID 
   end record;

   for Mission_Clear_All use record
      Target_System    at 0 range 0 .. 7;
      Target_Component at 1 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Mission_Clear_All;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Mission_Clear_All;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Mission_Clear_All;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Mission_Clear_All;
      Connect : in out Mavlink.V1.Connection);
   --  Same as Above but does not check CRC

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection)
      return Boolean;
   --  Returns True if CRC is valid

end Mavlink.V1.Common.Message.Mission_Clear_Alls;
