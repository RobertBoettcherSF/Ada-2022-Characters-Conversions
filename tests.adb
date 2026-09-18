pragma Ada_2022;
with Ada.Assertions; use Ada.Assertions;
with Ada.Text_IO; use Ada.Text_IO;
with Characters_Conversions_Demo;
procedure Tests is
begin
   Assert (Characters_Conversions_Demo.Ascii_Wide_Roundtrip);
   Assert (Characters_Conversions_Demo.Ascii_String_Roundtrip);
   Put_Line ("PASS Characters.Conversions To_Wide/To_Character round-trip");
   Put_Line ("All Characters.Conversions topic tests passed.");
end Tests;
