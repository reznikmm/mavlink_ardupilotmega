-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Fuel status. This message provides "generic" fuel level information for in 
--  a GCS and for triggering failsafes in an autopilot. The fuel type and 
--  associated units for fields in this message are defined in the enum 
--  MAV_FUEL_TYPE. The reported `consumed_fuel` and `remaining_fuel` must only 
--  be supplied if measured: they must not be inferred from the `maximum_fuel` 
--  and the other value. A recipient can assume that if these fields are 
--  supplied they are accurate. If not provided, the recipient can infer 
--  `remaining_fuel` from `maximum_fuel` and `consumed_fuel` on the assumption 
--  that the fuel was initially at its maximum (this is what battery monitors 
--  assume). Note however that this is an assumption, and the UI should prompt 
--  the user appropriately (i.e. notify user that they should fill the tank 
--  before boot). This kind of information may also be sent in fuel-specific 
--  messages such as BATTERY_STATUS_V2. If both messages are sent for the same 
--  fuel system, the ids and corresponding information must match. This should 
--  be streamed (nominally at 0.1 Hz). 
pragma Ada_2022;


package MAVLink.V2.Common.Message.Fuel_Statuses is

   pragma Preelaborate;

   Fuel_Status_Id : constant Msg_Id := 371;

   type Fuel_Status is record
      Id                : Interfaces.Unsigned_8;
      --  Fuel ID. Must match ID of other messages for same fuel system, such 
      --  as BATTERY_STATUS_V2. 
      Maximum_Fuel      : Raw_Float;
      --  Capacity when full. Must be provided. 
      Consumed_Fuel     : Raw_Float :=
        To_Raw (0.0);
      --  Consumed fuel (measured). This value should not be inferred: if not 
      --  measured set to NaN. NaN: field not provided. 
      Remaining_Fuel    : Raw_Float :=
        To_Raw (0.0);
      --  Remaining fuel until empty (measured). The value should not be 
      --  inferred: if not measured set to NaN. NaN: field not provided. 
      Percent_Remaining : Interfaces.Unsigned_8 :=
        Interfaces.Unsigned_8'Last;
      --  Units: [%]
      --  Percentage of remaining fuel, relative to full. Values: [0-100], 
      --  UINT8_MAX: field not provided. 
      Flow_Rate         : Raw_Float :=
        To_Raw (0.0);
      --  Positive value when emptying/using, and negative if 
      --  filling/replacing. NaN: field not provided. 
      Temperature       : Raw_Float :=
        To_Raw (0.0);
      --  Units: [K]
      --  Fuel temperature. NaN: field not provided. 
      Fuel_Type         : Mav_Fuel_Type;
      --  Fuel type. Defines units for fuel capacity and consumption fields 
      --  above. 
   end record;

   for Fuel_Status use record
      Maximum_Fuel      at 0  range 0 .. 31;
      Consumed_Fuel     at 4  range 0 .. 31;
      Remaining_Fuel    at 8  range 0 .. 31;
      Flow_Rate         at 12 range 0 .. 31;
      Temperature       at 16 range 0 .. 31;
      Fuel_Type         at 20 range 0 .. 31;
      Id                at 24 range 0 .. 7;
      Percent_Remaining at 25 range 0 .. 7;
   end record;

   procedure Encode
     (Message : Fuel_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);
   --  Put the message in the buffer ready for send

   procedure Encode
     (Message : Fuel_Status;
      Connect : in out MAVLink.V2.Connection;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Decode
     (Message   : out Fuel_Status;
      Connect   : in out MAVLink.V2.Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Fuel_Status;
      Connect : in out MAVLink.V2.Connection);
   --  Same as Above but does not check CRC

   procedure Decode
     (Message   : out Fuel_Status;
      Connect   : in out MAVLink.V2.In_Connection;
      CRC_Valid : out Boolean);
   --  Get the message from the Connect and delete it
   --  from the Connect's buffer. CRC_Valid is set to
   --  True if x25crc is valid for the message.

   procedure Decode
     (Message : out Fuel_Status;
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
     (Message : Fuel_Status;
      Connect : in out MAVLink.V2.Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

   procedure Encode
     (Message : Fuel_Status;
      Connect : in out MAVLink.V2.Out_Connection;
      Sign    : in out Signature;
      Buffer  : out Data_Buffer;
      Last    : out Positive);

end MAVLink.V2.Common.Message.Fuel_Statuses;
