with Ada.Real_Time; use Ada.Real_Time;
with Ada.Execution_Time;
with Ada.Text_IO; use Ada.Text_IO;
with MicroBit.DisplayRT; use MicroBit.DisplayRT;
with MicroBit.DisplayRT.Symbols;
with MicroBit.Buttons; use MicroBit.Buttons;

package body Game is


   task body Move_Player is
      Time_Now : Ada.Real_Time.Time;

      X : Integer := 2;
      --this demo shows howto use the 2 buttons and the touch logo. Note that the logo is a little sensitive/erratic, sometimes touching back side for ground seems to be needed.
   begin
      MicroBit.DisplayRT.Clear;
      MicroBit.DisplayRT.Set(0,X);
      loop
         Time_Now := Ada.Real_Time.Clock;
         if MicroBit.Buttons.State (Button_A) = Pressed then
            if X - 1 >= 0 then
               MicroBit.DisplayRT.Clear(0,X);
               X := X - 1;
            end if;
            --MicroBit.DisplayRT.Set(0,X);
            MicroBit.DisplayRT.UpdatePlayerPosition(0,X);
            Put_Line ("Pressed A");
            delay 0.2;

         elsif MicroBit.Buttons.State (Button_B) = Pressed then
            if X + 1 < 5 then
               MicroBit.DisplayRT.Clear(0,X);
               X := X + 1;
            end if;
            --MicroBit.DisplayRT.Set(0,X);
             MicroBit.DisplayRT.UpdatePlayerPosition(0,X);
            Put_Line ("Pressed B");
            delay 0.2;

         end if;
      end loop;
   end Move_Player;

   task body Scroll is
      Time_Now : Ada.Real_Time.Time;
   begin

      loop
      Time_Now := Ada.Real_Time.Clock;

         Scroll_Text("===");

   end loop;
end Scroll;

end Game;
