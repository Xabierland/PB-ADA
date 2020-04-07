with vectores; use vectores;

function esta_en_vector_ordenado (x: in Integer; vec: in Vector_de_enteros) return boolean is
   -- pre: V contiene al menos un elemento (V'Last >= 1)
   --      V esta ordenado ascendentemente:
   --              V(i) <= V(i+1),      1 <= i < V'last
   -- post: el resultado es True si N esta en V y False si no
   --       El algoritmo es eficiente aprovechando que V esta ordenado
   i,aux:Integer;
   rst,ord:Boolean;
   sec:vector_de_enteros(1..10);

   begin
      i:=1;
      aux:=0;
      rst:=False;
      ord:=True;
      sec:=vec;
   loop exit when i>sec'last or ord=False;
      if aux<sec(i) then
         if x=sec(i) then
            rst:=True;
         end if;
      else
         ord:=False;
      end if;
      aux:=sec(i);
      i:=i+1;
   end loop;
   return(rst);


end esta_en_vector_ordenado;

