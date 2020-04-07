with datos; use datos;

function posicion (
      L   : Lista;
      Num : Integer ) return Natural is
   -- pre:  la lista L  no tiene elementos repetidos
   -- post: el resultado es la posicion de la primera aparicion de Num,
   --       en el caso de que Num pertenezca a L; y cero en otro caso

   Nuevo:Lista;
   pos:Integer;
   enc:Boolean:=False;
begin
   pos:=0;
   Nuevo:=new nodo;
   Nuevo:=L;
   loop exit when Nuevo=null or enc=True;
      pos:=pos+1;
      if Nuevo.Info=Num then
         enc:=True;
      else
         Nuevo:=Nuevo.Sig;
      end if;
   end loop;
   if enc=false then
      pos:=0;
   end if;
return(pos);

end posicion;


