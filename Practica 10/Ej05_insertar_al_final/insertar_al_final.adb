with datos; use datos;

procedure insertar_al_final (
      L   : in out Lista;
      Num : in     Integer ) is
   -- pre:
   -- post: se ha insertado Num al final de L
   act,ant,Nuevo:Lista;
begin
   act:=L;
   ant:=null;
   Nuevo:=L;
   loop exit when act=null;
      ant:=act;
      act:=act.Sig;
      Nuevo:=ant;
   end loop;
   Nuevo.Sig.Info:=Num;
   L:=Nuevo;

end insertar_al_final;

