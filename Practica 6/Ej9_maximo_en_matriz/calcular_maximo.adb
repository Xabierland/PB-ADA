with matrices; use matrices;
procedure calcular_maximo (M: in Matriz_De_Enteros; Max: out Integer ;posFila: out Integer; posCol: out Integer) is
   -- pre: La matriz M contiene al menos un elemento
   -- post: Max contiene el valor máximo de la matriz
   --       y Pos_F, Pos_C su posicion (fila, columna).
   --       Si el maximo aparece varias veces contendran la posicion de la primera aparicion
   numFila, numCols: Integer;

begin
   numFila:=1;
   numCols:=1;
   Max:=0;
   loop exit when numFila>M'last(1);
      loop exit when numCols>M'last(2);
         if M(numFila,numCols)>Max then
            Max:=M(numFila,numCols);
            posFila:=numFila;
            posCol:=numCols;
         end if;
         numCols:=numCols +1;

      end loop;
      numCols:=1;
      numFila:=numFila+1;
   end loop;





end calcular_maximo;

