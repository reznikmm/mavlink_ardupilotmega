-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

pragma Ada_2022;

package MAVLink.V2.Csairlink.Types is

   pragma Pure;

   type Airlink_Auth_Response_Type is new Interfaces.Unsigned_8;

   function Error_Login_Or_Pass return Airlink_Auth_Response_Type is (0)
     with Static;
   --  Login or password error

   function Auth_Ok return Airlink_Auth_Response_Type is (1)
     with Static;
   --  Auth successful

   subtype Airlink_Auth_Response_Type_Well_Known is Airlink_Auth_Response_Type
     with Static_Predicate => Airlink_Auth_Response_Type_Well_Known in
       Error_Login_Or_Pass .. Auth_Ok;

   function Well_Known_Image
     (Value : Airlink_Auth_Response_Type_Well_Known) return String is
       (case Value is
        when Error_Login_Or_Pass => "Error_Login_Or_Pass",
        when Auth_Ok => "Auth_Ok");

   function Image (Value : Airlink_Auth_Response_Type) return String is
     (if Value in Airlink_Auth_Response_Type_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

end MAVLink.V2.Csairlink.Types;
