-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

package body Mavlink.V1.Common.Message.Rc_Channelses is

   procedure Encode
     (Message : Rc_Channels;
      Connect : in out Mavlink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Rc_Channels'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Rc_Channels'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Rc_Channels_Id, 118, Buffer, Last);
   end Encode;

   procedure Encode
     (Message : Rc_Channels;
      Connect : in out Mavlink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Rc_Channels'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Rc_Channels'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Rc_Channels_Id, 118, Buffer, Last);
   end Encode;

   function Check_CRC
     (Connect : in out Mavlink.V1.Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 118);
   end Check_CRC;

   procedure Decode
     (Message   : out Rc_Channels;
      Connect   : in out Mavlink.V1.Connection;
      CRC_Valid : out Boolean)
   is
      Buf : Data_Buffer
        (1 .. Rc_Channels'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Rc_Channels'Value_Size) / 8));
      Get_Message_Data (Connect, Buf);
      CRC_Valid := Check_CRC (Connect);
   end Decode;

   procedure Decode
     (Message : out Rc_Channels;
      Connect : in out Mavlink.V1.Connection)
   is
      Buf : Data_Buffer
        (1 .. Rc_Channels'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Rc_Channels'Value_Size / 8)));
      Get_Message_Data (Connect, Buf);
   end Decode;

end Mavlink.V1.Common.Message.Rc_Channelses;
