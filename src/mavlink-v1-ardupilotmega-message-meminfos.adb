-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

package body Mavlink.V1.Ardupilotmega.Message.Meminfos is

   procedure Encode
     (Message : Meminfo;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Meminfo'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Meminfo'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Meminfo_Id, 208, Buffer, Last);
   end Encode;

   procedure Encode
     (Message : Meminfo;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Meminfo'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Meminfo'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Meminfo_Id, 208, Buffer, Last);
   end Encode;

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 208);
   end Check_CRC;

   procedure Decode
     (Message   : out Meminfo;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean)
   is
      Buf : Data_Buffer
        (1 .. Meminfo'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Meminfo'Value_Size) / 8));
      Get_Message_Data (Connect, Buf);
      CRC_Valid := Check_CRC (Connect);
   end Decode;

   procedure Decode
     (Message : out Meminfo;
      Connect : in out Mavlink.V1.Connection)
   is
      Buf : Data_Buffer
        (1 .. Meminfo'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Meminfo'Value_Size / 8)));
      Get_Message_Data (Connect, Buf);
   end Decode;

end Mavlink.V1.Ardupilotmega.Message.Meminfos;
