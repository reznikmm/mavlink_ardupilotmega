-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  ESC information for lower rate streaming. Recommended streaming rate 1Hz. 
--  See ESC_STATUS for higher-rate ESC data. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Esc_Infos is

   pragma Preelaborate;

   Esc_Info_Id : constant Msg_Id := 290;

   type Esc_Info is record
      Index           : Interfaces.Unsigned_8;
      --  Index of the first ESC in this message. minValue = 0, maxValue = 60, 
      --  increment = 4. 
      Time_Usec       : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude the number. 
      Counter         : Interfaces.Unsigned_16;
      --  Counter of data packets received. 
      Count           : Interfaces.Unsigned_8;
      --  Total number of ESCs in all messages of this type. Message fields 
      --  with an index higher than this should be ignored because they 
      --  contain invalid data. 
      Connection_Type : Esc_Connection_Type;
      --  Connection type protocol for all ESC. 
      Info            : Interfaces.Unsigned_8;
      --  Information regarding online/offline status of each ESC. 
      Failure_Flags   : Unsigned_16_Array (1 .. 4);
      --  Bitmap of ESC failure flags. 
      Error_Count     : Unsigned_32_Array (1 .. 4);
      --  Number of reported errors by each ESC since boot. 
      Temperature     : Integer_16_Array (1 .. 4) :=
        [others => Interfaces.Integer_16'Last];
      --  Units: [cdegC]
      --  Temperature of each ESC. INT16_MAX: if data not supplied by ESC. 
   end record;

   for Esc_Info use record
      Time_Usec       at 0  range 0 .. 63;
      Error_Count     at 8  range 0 .. 127;
      Counter         at 24 range 0 .. 15;
      Failure_Flags   at 26 range 0 .. 63;
      Temperature     at 34 range 0 .. 63;
      Index           at 42 range 0 .. 7;
      Count           at 43 range 0 .. 7;
      Connection_Type at 44 range 0 .. 7;
      Info            at 45 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Esc_Info;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Esc_Info;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Esc_Info;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Esc_Info;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Esc_Info;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Esc_Info;
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
     (Message : Esc_Info;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Esc_Info;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Esc_Infos;
