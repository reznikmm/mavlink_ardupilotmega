-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

package body Mavlink.V1.Common.Message.Log_Entrys is

   procedure Encode
     (Message : Log_Entry;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Log_Entry'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Log_Entry'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Log_Entry_Id, 56, Buffer, Last);
   end Encode;

   procedure Encode
     (Message : Log_Entry;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Log_Entry'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Log_Entry'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Log_Entry_Id, 56, Buffer, Last);
   end Encode;

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 56);
   end Check_CRC;

   procedure Decode
     (Message   : out Log_Entry;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean)
   is
      Buf : Data_Buffer
        (1 .. Log_Entry'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Log_Entry'Value_Size) / 8));
      Get_Message_Data (Connect, Buf);
      CRC_Valid := Check_CRC (Connect);
   end Decode;

   procedure Decode
     (Message : out Log_Entry;
      Connect : in out Mavlink.V1.Connection)
   is
      Buf : Data_Buffer
        (1 .. Log_Entry'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Log_Entry'Value_Size / 8)));
      Get_Message_Data (Connect, Buf);
   end Decode;

end Mavlink.V1.Common.Message.Log_Entrys;
