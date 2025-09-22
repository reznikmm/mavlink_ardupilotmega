-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  ESC information for higher rate streaming. Recommended streaming rate is 
--  ~10 Hz. Information that changes more slowly is sent in ESC_INFO. It 
--  should typically only be streamed on high-bandwidth links (i.e. to a 
--  companion computer). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Esc_Statuses is

   pragma Preelaborate;

   Esc_Status_Id : constant Msg_Id := 291;

   type Esc_Status is record
      Index     : Interfaces.Unsigned_8;
      --  Index of the first ESC in this message. minValue = 0, maxValue = 60, 
      --  increment = 4. 
      Time_Usec : Interfaces.Unsigned_64;
      --  Units: [us]
      --  Timestamp (UNIX Epoch time or time since system boot). The receiving 
      --  end can infer timestamp format (since 1.1.1970 or since system boot) 
      --  by checking for the magnitude the number. 
      Rpm       : Integer_32_Array (1 .. 4);
      --  Units: [rpm]
      --  Reported motor RPM from each ESC (negative for reverse rotation). 
      Voltage   : Short_Float_Array (1 .. 4);
      --  Units: [V]
      --  Voltage measured from each ESC. 
      Current   : Short_Float_Array (1 .. 4);
      --  Units: [A]
      --  Current measured from each ESC. 
   end record;

   for Esc_Status use record
      Time_Usec at 0  range 0 .. 63;
      Rpm       at 8  range 0 .. 127;
      Voltage   at 24 range 0 .. 127;
      Current   at 40 range 0 .. 127;
      Index     at 56 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Esc_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Esc_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Esc_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Esc_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Esc_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Esc_Status;
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
     (Message : Esc_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Esc_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Esc_Statuses;
