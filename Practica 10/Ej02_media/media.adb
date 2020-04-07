with datos; use datos;

function media ( L : Lista ) return Float is
   -- pre:  ??? Escribe la precondicion!!!
   -- post: ??? Escribe la postcondicion!!!
   cont,media,acum:Float;
   Nuevo:Lista;
begin
   Nuevo:=new nodo;
   Nuevo:=L;
   cont:=0.0;
   acum:=0.0;
   media:=0.0;
   while(Nuevo/= null) loop
      cont:=cont+1.0;
      media:=media + float(Nuevo.Info);
      Nuevo:=Nuevo.Sig;
   end loop;
   if media /= 0.0 then
      media:=media/cont;
      end if;
   return (media);


end media;
