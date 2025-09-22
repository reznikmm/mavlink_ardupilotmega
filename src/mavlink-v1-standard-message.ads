-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

package MAVLink.V1.Standard.Message is

   pragma Preelaborate;

   subtype Valid_Msg_Id is Msg_Id
     with Static_Predicate => Valid_Msg_Id in
       33  .. 33  |
       148 .. 148;

   function Image (Id : Valid_Msg_Id) return String is
     (case Id is
         when 33  => "33",
         when 148 => "148");

end MAVLink.V1.Standard.Message;
