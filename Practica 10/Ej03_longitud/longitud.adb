with datos; use datos;

function longitud ( L : Lista ) return Natural is
  -- pre: ??? Escribe la precondicion!!!
  -- post: ??? Escribe la postcondicion!!!
   Nuevo:Lista;
   cuant:Integer:=0;
begin
   Nuevo:=New Nodo;
   Nuevo:=L;
   loop exit when Nuevo=null ;
      cuant:=cuant+1;
      Nuevo:=Nuevo.Sig;
   end loop;
   return (cuant);



end longitud;
