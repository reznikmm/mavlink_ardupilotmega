-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Loweheiser is

   pragma Pure;

   Heartbeat_Id          : constant Msg_Id := 0;
   Loweheiser_Gov_Efi_Id : constant Msg_Id := 10151;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       0     .. 0     |
       10151 .. 10151;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 0     => "Heartbeat",
         when 10151 => "Loweheiser_Gov_Efi");

end MAVLink.V2.Loweheiser;
