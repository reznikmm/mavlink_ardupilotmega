-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

package body MAVLink.V2.Common.Message.Gps_Rtks is

   ------------
   -- Encode --
   ------------

   procedure Encode
     (Message : Gps_Rtk;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Gps_Rtk'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Gps_Rtk'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Gps_Rtk_Id, 25, Buffer, Last);
   end Encode;

   ------------
   -- Encode --
   ------------

   procedure Encode
     (Message : Gps_Rtk;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out MAVLink.V2.Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Gps_Rtk'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Gps_Rtk'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Gps_Rtk_Id, 25, Sign, Buffer, Last);
   end Encode;

   ------------
   -- Encode --
   ------------

   procedure Encode
     (Message : Gps_Rtk;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Gps_Rtk'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Gps_Rtk'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Gps_Rtk_Id, 25, Buffer, Last);
   end Encode;

   ------------
   -- Encode --
   ------------

   procedure Encode
     (Message : Gps_Rtk;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out MAVLink.V2.Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive)
   is
      Local : Data_Buffer (1 .. Gps_Rtk'Value_Size / 8)
        with Import, Address => Message'Address,
        Convention => Ada;

   begin
      Last := Buffer'First +
        Packet_Payload_First +
        (Gps_Rtk'Value_Size / 8) - 1;
      Buffer (Buffer'First + Packet_Payload_First .. Last) := Local;
      Encode (Connect, Gps_Rtk_Id, 25, Sign, Buffer, Last);
   end Encode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message   : out Gps_Rtk;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean)
   is
      Data : Data_Buffer (1 .. Gps_Rtk'Value_Size / 8);
      Last : Natural;
      Buf  : Data_Buffer
        (1 .. Gps_Rtk'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      Get_Message_Data (Connect, Data, Last);
      Buf (1 .. Last) := Data (1 .. Last);

      CRC_Valid := Check_CRC (Connect);

      Drop_Message (Connect);
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message : out Gps_Rtk;
      Connect : in out MAVLink.V2.Connection)
   is
      Data : Data_Buffer (1 .. Gps_Rtk'Value_Size / 8);
      Last : Natural;
      Buf  : Data_Buffer
        (1 .. Gps_Rtk'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      Get_Message_Data (Connect, Data, Last);
      Buf (1 .. Last) := Data (1 .. Last);
      Drop_Message (Connect);
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message   : out Gps_Rtk;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean)
   is
      Data : Data_Buffer (1 .. Gps_Rtk'Value_Size / 8);
      Last : Natural;
      Buf  : Data_Buffer
        (1 .. Gps_Rtk'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      Get_Message_Data (Connect, Data, Last);
      Buf (1 .. Last) := Data (1 .. Last);

      CRC_Valid := Check_CRC (Connect);

      Drop_Message (Connect);
   end Decode;

   ------------
   -- Decode --
   ------------

   procedure Decode
     (Message : out Gps_Rtk;
      Connect : in out MAVLink.V2.In_Connection)
   is
      Data : Data_Buffer (1 .. Gps_Rtk'Value_Size / 8);
      Last : Natural;
      Buf  : Data_Buffer
        (1 .. Gps_Rtk'Size / 8) := [others => 0]
        with Address => Message'Address,
        Convention   => Ada;
   begin
      Get_Message_Data (Connect, Data, Last);
      Buf (1 .. Last) := Data (1 .. Last);
      Drop_Message (Connect);
   end Decode;

   ---------------
   -- Check_CRC --
   ---------------

   function Check_CRC
     (Connect : MAVLink.V2.Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 25);
   end Check_CRC;

   ---------------
   -- Check_CRC --
   ---------------

   function Check_CRC
     (Connect : MAVLink.V2.In_Connection) return Boolean is
   begin
      return Is_CRC_Valid (Connect, 25);
   end Check_CRC;

end MAVLink.V2.Common.Message.Gps_Rtks;
