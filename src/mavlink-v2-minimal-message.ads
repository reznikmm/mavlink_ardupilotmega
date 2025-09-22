-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Minimal.Message is

   pragma Preelaborate;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       0   .. 0   |
       300 .. 300;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 0   => "0",
         when 300 => "300");

end MAVLink.V2.Minimal.Message;
