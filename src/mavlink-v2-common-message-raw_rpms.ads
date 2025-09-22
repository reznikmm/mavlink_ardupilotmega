-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  RPM sensor data message. 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Raw_Rpms is

   pragma Preelaborate;

   Raw_Rpm_Id : constant Msg_Id := 339;

   type Raw_Rpm is record
      Index     : Interfaces.Unsigned_8;
      --  Index of this RPM sensor (0-indexed) 
      Frequency : Raw_Float;
      --  Units: [rpm]
      --  Indicated rate 
   end record;

   for Raw_Rpm use record
      Frequency at 0 range 0 .. 31;
      Index     at 4 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Raw_Rpm;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Raw_Rpm;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Raw_Rpm;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Raw_Rpm;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Raw_Rpm;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Raw_Rpm;
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
     (Message : Raw_Rpm;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Raw_Rpm;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Raw_Rpms;
