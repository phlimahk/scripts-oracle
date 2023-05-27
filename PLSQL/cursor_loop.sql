
--> For faz um fetch implicito, quando o mesmo falha sai da estrutura de repetição e fecha do cursor.


--> *** Cursor Loop


DECLARE
 v_segmercado_id cliente.segmercado_id%type:=1;
    CURSOR cur_cliente is
           select id
           ,faturamento_previsto
           from cliente;
BEGIN
  
FOR cli_rec in cur_cliente LOOP
          IF cli_rec.faturamento_previsto >100000 -- Condicional altera apenas clientes grandes
          THEN
          PRC_ATUALIZAR_CLI_SEG_MERCADO(cli_rec.id, v_segmercado_id);
          END IF;    
          END LOOP;
   
          COMMIT;
          END;

        SELECT * 
        FROM CLIENTE;
        
        
        
        
 -------> Sem cursor loop     
 
 
 DECLARE
    v_id cliente.id%type;
    v_segmercado_id cliente.segmercado_id%type := 1;
    CURSOR cur_cliente is 
    SELECT id FROM cliente;

BEGIN
    OPEN cur_cliente;

    LOOP
        FETCH cur_cliente into v_id;
        EXIT WHEN cur_cliente%NOTFOUND;
        ATUALIZAR_CLI_SEG_MERCADO(v_id, v_segmercado_id);
    END LOOP;

    CLOSE cur_cliente;

    COMMIT;

END;
        
        
        
        
        
        