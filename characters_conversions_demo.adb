pragma Ada_2022;

with Ada.Characters.Conversions;

package body Characters_Conversions_Demo is

   package CC renames Ada.Characters.Conversions;

   function Ascii_Wide_Roundtrip return Boolean is
   begin
      for C in Character range 'A' .. 'Z' loop
         declare
            W : constant Wide_Character := CC.To_Wide_Character (C);
            B : constant Character := CC.To_Character (W);
         begin
            if B /= C then
               return False;
            end if;
            if not CC.Is_Character (W) then
               return False;
            end if;
         end;
      end loop;
      return True;
   end Ascii_Wide_Roundtrip;

   function Ascii_String_Roundtrip return Boolean is
      S  : constant String := "Ada2022";
      W  : constant Wide_String := CC.To_Wide_String (S);
      S2 : constant String := CC.To_String (W);
   begin
      return S2 = S and then CC.Is_String (W);
   end Ascii_String_Roundtrip;

end Characters_Conversions_Demo;
