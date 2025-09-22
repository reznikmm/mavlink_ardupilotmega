-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

package body MAVLink.V1.Common.Message.Mission_Clear_Alls is

   ------------
   -- Encode --
   ------------

   procedure Encode
     (Message : Mission_Clear_All;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Mission_Clear_All'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Mission_Clear_All'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Mission_Clear_All_Id, 232, Buffer, Last);
   end Encode;

   ------------
   -- Encode --
   ------------

   procedure Encode
     (Message : Mission_Clear_All;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Mission_Clear_All'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Mission_Clear_All'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Mission_Clear_All_Id, 232, Buffer, Last);
   end Encode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message   : out Mission_Clear_All;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean)
   is
      Buf : Data_Buffer
        (1 .. Mission_Clear_All'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Mission_Clear_All'Value_Size) / 8));
      Get_Message_Data (Connect, Buf);
      CRC_Valid := Check_CRC (Connect);
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message : out Mission_Clear_All;
      Connect : MAVLink.V1.Connection)
   is
      Buf : Data_Buffer
        (1 .. Mission_Clear_All'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Mission_Clear_All'Value_Size / 8)));
      Get_Message_Data (Connect, Buf);
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message   : out Mission_Clear_All;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean)
   is
      Buf : Data_Buffer
        (1 .. Mission_Clear_All'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Mission_Clear_All'Value_Size) / 8));
      Get_Message_Data (Connect, Buf);
      CRC_Valid := Check_CRC (Connect);
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message : out Mission_Clear_All;
      Connect : MAVLink.V1.In_Connection)
   is
      Buf : Data_Buffer
        (1 .. Mission_Clear_All'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Mission_Clear_All'Value_Size / 8)));
      Get_Message_Data (Connect, Buf);
   end Decode;

   ---------------
   -- Check_CRC --
   ---------------

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 232);
   end Check_CRC;

   ---------------
   -- Check_CRC --
   ---------------

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 232);
   end Check_CRC;

end MAVLink.V1.Common.Message.Mission_Clear_Alls;
