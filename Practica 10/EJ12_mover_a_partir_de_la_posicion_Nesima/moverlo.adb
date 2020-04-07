with datos, Ada.Text_Io;
use datos, Ada.Text_Io;

procedure moverlo ( L   : in out Lista;
                    Num : in     Integer ) is
   ant,act:Lista;
Begin
   act:=L;
   ant:=null;
   loop exit when num=0;
      num:=num-1;
