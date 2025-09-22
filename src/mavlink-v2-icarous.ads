-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Icarous is

   pragma Pure;

   Icarous_Heartbeat_Id       : constant Msg_Id := 42000;
   Icarous_Kinematic_Bands_Id : constant Msg_Id := 42001;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       42000 .. 42001;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 42000 => "Icarous_Heartbeat",
         when 42001 => "Icarous_Kinematic_Bands");

end MAVLink.V2.Icarous;
