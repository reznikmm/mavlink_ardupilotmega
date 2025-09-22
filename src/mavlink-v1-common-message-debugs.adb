-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

package body Mavlink.V1.Common.Message.Debugs is

   procedure Encode
     (Message : Debug;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Debug'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Debug'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Debug_Id, 46, Buffer, Last);
   end Encode;

   procedure Encode
     (Message : Debug;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Debug'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Debug'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Debug_Id, 46, Buffer, Last);
   end Encode;

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 46);
   end Check_CRC;

   procedure Decode
     (Message   : out Debug;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean)
   is
      Buf : Data_Buffer
        (1 .. Debug'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Debug'Value_Size) / 8));
      Get_Message_Data (Connect, Buf);
      CRC_Valid := Check_CRC (Connect);
   end Decode;

   procedure Decode
     (Message : out Debug;
      Connect : in out Mavlink.V1.Connection)
   is
      Buf : Data_Buffer
        (1 .. Debug'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Debug'Value_Size / 8)));
      Get_Message_Data (Connect, Buf);
   end Decode;

end Mavlink.V1.Common.Message.Debugs;
