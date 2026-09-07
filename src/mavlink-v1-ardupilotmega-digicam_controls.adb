-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

package body MAVLink.V1.Ardupilotmega.Digicam_Controls is

   ------------
   -- Encode --
   ------------

   procedure Encode
     (Message : Digicam_Control;
      Connect : in out MAVLink.V1.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Digicam_Control'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Digicam_Control'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Digicam_Control_Id, 22, Buffer, Last);
   end Encode;

   ------------
   -- Encode --
   ------------

   procedure Encode
     (Message : Digicam_Control;
      Connect : in out MAVLink.V1.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Digicam_Control'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Digicam_Control'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Digicam_Control_Id, 22, Buffer, Last);
   end Encode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message   : out Digicam_Control;
      Connect   : in out MAVLink.V1.Connection;
      CRC_Valid : out Boolean)
   is
      Buf : Data_Buffer (1 .. Digicam_Control'Size / 8)
        with Import,
        Address    => Message'Address,
        Convention => Ada;
   begin
      if Get_Msg_Len (Connect) =
        Unsigned_8 (Integer (Digicam_Control'Value_Size) / 8)
      then
         CRC_Valid := Check_CRC (Connect);
         if CRC_Valid then
            Get_Message_Data (Connect, Buf);
         end if;
      else
         CRC_Valid := False;
      end if;
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message : out Digicam_Control;
      Connect : MAVLink.V1.Connection)
   is
      Buf : Data_Buffer
        (1 .. Digicam_Control'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Digicam_Control'Value_Size / 8)));
      Get_Message_Data (Connect, Buf);
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message   : out Digicam_Control;
      Connect   : in out MAVLink.V1.In_Connection;
      CRC_Valid : out Boolean)
   is
      Buf : Data_Buffer (1 .. Digicam_Control'Size / 8)
        with Import,
        Address    => Message'Address,
        Convention => Ada;
   begin
      if Get_Msg_Len (Connect) =
        Unsigned_8 (Integer (Digicam_Control'Value_Size) / 8)
      then
         CRC_Valid := Check_CRC (Connect);
         if CRC_Valid then
            Get_Message_Data (Connect, Buf);
         end if;
      else
         CRC_Valid := False;
      end if;
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message : out Digicam_Control;
      Connect : MAVLink.V1.In_Connection)
   is
      Buf : Data_Buffer
        (1 .. Digicam_Control'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      pragma Assert
        (Get_Msg_Len (Connect) =
             Unsigned_8 (Integer (Digicam_Control'Value_Size / 8)));
      Get_Message_Data (Connect, Buf);
   end Decode;

   ---------------
   -- Check_CRC --
   ---------------

   function Check_CRC
     (Connect : in out MAVLink.V1.Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 22);
   end Check_CRC;

   ---------------
   -- Check_CRC --
   ---------------

   function Check_CRC
     (Connect : in out MAVLink.V1.In_Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 22);
   end Check_CRC;

end MAVLink.V1.Ardupilotmega.Digicam_Controls;
