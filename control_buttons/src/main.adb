------------------------------------------------------------------------------
--                                                                          --
--                       Copyright (C) 2021, AdaCore                        --
--                                                                          --
--  Redistribution and use in source and binary forms, with or without      --
--  modification, are permitted provided that the following conditions are  --
--  met:                                                                    --
--     1. Redistributions of source code must retain the above copyright    --
--        notice, this list of conditions and the following disclaimer.     --
--     2. Redistributions in binary form must reproduce the above copyright --
--        notice, this list of conditions and the following disclaimer in   --
--        the documentation and/or other materials provided with the        --
--        distribution.                                                     --
--     3. Neither the name of the copyright holder nor the names of its     --
--        contributors may be used to endorse or promote products derived   --
--        from this software without specific prior written permission.     --
--                                                                          --
--   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS    --
--   "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT      --
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR  --
--   A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT   --
--   HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, --
--   SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT       --
--   LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,  --
--   DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY  --
--   THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT    --
--   (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE  --
--   OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.   --
--                                                                          --
------------------------------------------------------------------------------
--  with Ada.Text_IO; use Ada.Text_IO;
--  with MicroBit.DisplayRT; use MicroBit.DisplayRT;
--  with MicroBit.DisplayRT.Symbols;
--  with MicroBit.Buttons; use MicroBit.Buttons;
with Game;

procedure Main with Priority => 0 is
begin
   loop
      null;
   end loop;
end Main;
--
--     X : Integer := 2;
--  --this demo shows howto use the 2 buttons and the touch logo. Note that the logo is a little sensitive/erratic, sometimes touching back side for ground seems to be needed.
--  begin
--     MicroBit.DisplayRT.Clear;
--     MicroBit.DisplayRT.Set(X,4);
--     loop
--
--       if MicroBit.Buttons.State (Button_A) = Pressed then
--          if X - 1 >= 0 then
--             MicroBit.DisplayRT.Clear(X,4);
--             X := X - 1;
--          end if;
--          MicroBit.DisplayRT.Set(X,4);
--          Put_Line ("Pressed A");
--          delay 0.2;
--
--       elsif MicroBit.Buttons.State (Button_B) = Pressed then
--          if X + 1 < 5 then
--             MicroBit.DisplayRT.Clear(X,4);
--             X := X + 1;
--          end if;
--          MicroBit.DisplayRT.Set(X,4);
--          Put_Line ("Pressed B");
--           delay 0.2;
--
--        end if;
--       -- Scroll_Text("===__=");
--     end loop;
--  end Main;
