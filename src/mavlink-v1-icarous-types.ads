-------------------------------------------
--  DO NOT EDIT. This file is generated. --
-------------------------------------------

--  Copyright Fil Andrii root.fi36@gmail.com 2022-2025

pragma Ada_2022;

package MAVLink.V1.Icarous.Types is

   pragma Pure;

   type Icarous_Track_Band_Types is new Interfaces.Unsigned_8;

   function None return Icarous_Track_Band_Types is (0)
     with Static;

   function Near return Icarous_Track_Band_Types is (1)
     with Static;

   function Recovery return Icarous_Track_Band_Types is (2)
     with Static;

   subtype Icarous_Track_Band_Types_Well_Known is Icarous_Track_Band_Types
     with Static_Predicate => Icarous_Track_Band_Types_Well_Known in
       None .. Recovery;

   function Well_Known_Image
     (Value : Icarous_Track_Band_Types_Well_Known) return String is
       (case Value is
        when None => "None",
        when Near => "Near",
        when Recovery => "Recovery");

   function Image (Value : Icarous_Track_Band_Types) return String is
     (if Value in Icarous_Track_Band_Types_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

   type Icarous_Fms_State is new Interfaces.Unsigned_8;

   function Idle return Icarous_Fms_State is (0)
     with Static;

   function Takeoff return Icarous_Fms_State is (1)
     with Static;

   function Climb return Icarous_Fms_State is (2)
     with Static;

   function Cruise return Icarous_Fms_State is (3)
     with Static;

   function Approach return Icarous_Fms_State is (4)
     with Static;

   function Land return Icarous_Fms_State is (5)
     with Static;

   subtype Icarous_Fms_State_Well_Known is Icarous_Fms_State
     with Static_Predicate => Icarous_Fms_State_Well_Known in
       Idle .. Land;

   function Well_Known_Image
     (Value : Icarous_Fms_State_Well_Known) return String is
       (case Value is
        when Idle => "Idle",
        when Takeoff => "Takeoff",
        when Climb => "Climb",
        when Cruise => "Cruise",
        when Approach => "Approach",
        when Land => "Land");

   function Image (Value : Icarous_Fms_State) return String is
     (if Value in Icarous_Fms_State_Well_Known
      then Well_Known_Image (Value) else "Unknown:" & Value'Image);

end MAVLink.V1.Icarous.Types;
