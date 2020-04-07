with datos; use datos;

procedure calcular_maximo_y_posicion (
      L       : in     Lista;
      Max,
      Pos_Max :    out Integer ) is
   -- pre:
   -- post: Max contendra el mayor valor de L y Pos_Max su posicion
   --       Si L es vacia entonces Pos_Max vale cero
   Nuevo,ant,act:Lista;
   Cont:Integer;
begin
   Max:=0;
   Pos_Max:=0;
   ant:=null;
   act:=L;
   Cont:=0;
   While act/=null loop
      cont:=cont+1;
      if ant=null then
         Max:=act.Info;
         Pos_Max:=cont;
      elsif act.Info>ant.Info then
         Max:=act.Info;
         Pos_Max:=Cont;
      end if;
      ant:=act;
      act:=act.Sig;
    end loop;

end calcular_maximo_y_posicion;
