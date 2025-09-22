-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Csairlink is

   pragma Pure;

   Airlink_Auth_Id          : constant Msg_Id := 52000;
   Airlink_Auth_Response_Id : constant Msg_Id := 52001;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       52000 .. 52001;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 52000 => "Airlink_Auth",
         when 52001 => "Airlink_Auth_Response");

end MAVLink.V2.Csairlink;
