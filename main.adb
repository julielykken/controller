
with LSM303AGR; use LSM303AGR;

with MicroBit.DisplayRT;
with MicroBit.DisplayRT.Symbols;
with MicroBit.Accelerometer;
with MicroBit.Console;
with Ada.Real_Time; use Ada.Real_Time;
with MicroBit.IOs;
with Light; use Light;
use MicroBit;






procedure Main is
   Data: All_Axes_Data;

   Threshold : constant := 150;

begin

   loop

      --  Read the accelerometer data
      Data := Accelerometer.Data;

      --  Print the data on the serial port
      -- Console.Put_Line ("X:" & Data.X'Img & ASCII.HT &
                       -- "Y:" & Data.Y'Img & ASCII.HT &
                         -- "Z:" & Data.Z'Img);



      --  Clear the LED matrix
      MicroBit.DisplayRT.Clear;

      --  Draw a symbol on the LED matrix depending on the orientation of the
      --  micro:bit.
      if Data.X > Threshold then
         MicroBit.DisplayRT.Symbols.Left_Arrow;
         Console.Put_Line("Turning Left");
         light.Set_Color("red");

      elsif Data.X < -Threshold then
         MicroBit.DisplayRT.Symbols.Right_Arrow;
         Console.Put_Line("Turning Right");
         light.Set_Color("blue");


      elsif Data.Y > Threshold then
         DisplayRT.Symbols.Up_Arrow;
         Console.Put_Line("Forward");

      elsif Data.Y < -Threshold then
         MicroBit.DisplayRT.Symbols.Down_Arrow;
         Console.Put_Line("Backward");
         light.clear_color(True);

      else
         MicroBit.DisplayRT.Symbols.Heart; -- make a new procedure named clear that will have all the leds off.
         light.clear_color(False); --skrur av lysene :)
      end if;

      --  Do nothing for 250 milliseconds
       delay until Clock + Milliseconds(250);
   end loop;
end Main;
