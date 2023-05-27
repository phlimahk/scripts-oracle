CREATE OR REPLACE PROCEDURE incluir_segmercado  
    (p_id in segmercado.id%type, --> p_ � o padr�o para parametros.
    p_descricao in segmercado.descricao%type)
IS
BEGIN
    INSERT into segmercado
            values(p_id, UPPER(p_descricao));
    COMMIT;
END;



------Teste e execu��o.

execute incluir_segmercado(4,'Farmaceutico')  ---> executar procedure
begin
      incluir_segmercado(5,'Industrial');     ---> Executar dentro do bloco anonimo
end;

select * from segmercado;