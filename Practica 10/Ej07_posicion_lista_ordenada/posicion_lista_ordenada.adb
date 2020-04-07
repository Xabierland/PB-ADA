with datos; use datos;

procedure posicion_lista_ordenada (
      L    :        Lista;
      Num  :        Integer;
      Esta :    out Boolean;
      Pos  :    out Natural  ) is
   -- pre: L esta ordenada, con sus valores de menor a mayor
   -- post: Esta valdra true si Num pertenece a L y false si no
   --       Pos es la posicion de la primera aparicion de Num,
   --       en caso de que Num pertenezca a L, y si no
   --       sera la posicion en que deberia colocarse Num

   ant,act:Lista;
   mayor:Boolean:=False;
begin
   ant:=null;
   act:=L;
   esta:=False;
   Pos:=1;
   loop exit when act=null or esta=True or mayor=True;
      if act.Info=Num then
         esta:=True;
      elsif act.Info>Num then
         mayor:=True;
      else
         act:=act.Sig;
         ant:=act;
         pos:=pos+1;
      end if;

   end loop;


end posicion_lista_ordenada;
