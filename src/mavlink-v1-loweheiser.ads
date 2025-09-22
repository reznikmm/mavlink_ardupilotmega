-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

package MAVLink.V1.Loweheiser is

   pragma Pure;

   Heartbeat_Id : constant Msg_Id := 0;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       0 .. 0;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 0 => "Heartbeat");

end MAVLink.V1.Loweheiser;
