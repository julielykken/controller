with MicroBit.IOs;


package body Light is

procedure Set_Color(color : String) is
begin
      -- clears all the LED's

      MicroBit.IOs.Set (0, False);
      MicroBit.IOs.Set (1, False);
      MicroBit.IOs.Set (2, False);
      if color = "red" then
      MicroBit.IOs.Set (1, True);
      MicroBit.IOs.Set (0, False);
      MicroBit.IOs.Set (2, False);
      end if;
      if color = "blue" then
      MicroBit.IOs.Set (0, False);
      MicroBit.IOs.Set (1, True);
      MicroBit.IOs.Set (2, True);
      end if;
   end Set_Color;

   procedure clear_color(ON_OFF : Boolean) is
   begin
      if ON_OFF = True then
      MicroBit.IOs.Set (0, False);
      MicroBit.IOs.Set (1, False);
      MicroBit.IOs.Set (2, False);
      else
      MicroBit.IOs.Set (0, True);
      MicroBit.IOs.Set (1, False);
      MicroBit.IOs.Set (2, False);
      end if;
   end clear_color;

end Light;
