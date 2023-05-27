--> executando atraves de variaveis

variable g_cnpj varchar2(10)
execute :g_cnpj:='12345'  
set SERVEROUTPUT ON
execute formata_cnpj(:g_cnpj)
print g_cnpj


--> Executando função ****

SET SERVEROUTPUT ON
DECLARE
    v_categoria cliente.categoria%type;
BEGIN
    v_categoria := categoria_cliente(5000); --> Chamando função
    dbms_output.put_line('Categoria: ' ||v_categoria);
END;


--> Executando procedure

execute incluir_cliente(3,'Academia Nachos','12378',NULL,9000);

select * from cliente;

