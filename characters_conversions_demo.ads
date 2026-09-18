--  Ada 2022 topic: Ada.Characters.Conversions.
pragma Ada_2022;
package Characters_Conversions_Demo is
   --  Round-trip Character -> Wide_Character -> Character for ASCII 'A'..'Z'.
   function Ascii_Wide_Roundtrip return Boolean;
   --  To_Wide_String / To_String round-trip for a short ASCII string.
   function Ascii_String_Roundtrip return Boolean;
end Characters_Conversions_Demo;
