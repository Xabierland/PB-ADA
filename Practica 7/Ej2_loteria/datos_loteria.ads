package datos_loteria is
Max_Premios_por_Categoria: constant Integer := 100;
type Tabla_Boletos is array(1.. Max_Premios_por_Categoria) of Integer;

subtype Valor_entre_0_y_Tope is Integer range 0 .. Max_Premios_por_Categoria;
type Lista_Boletos_Premiados is record
    Cuantos: Valor_entre_0_y_Tope;
    Boletos: Tabla_Boletos;
end record;

type T_Datos_Premios is array(3 .. 6) of Lista_Boletos_Premiados;
end datos_loteria;