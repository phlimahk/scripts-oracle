CREATE OR REPLACE PROCEDURE INCLUIR_CLIENTE
    (p_id in cliente.id%type,
    p_razao_social IN cliente.razao_social%type,
    p_CNPJ cliente.CNPJ%type ,
    p_segmercado_id IN cliente.segmercado_id%type,
    p_faturamento_previsto IN cliente.faturamento_previsto%type)

IS
    v_categoria cliente.categoria%type;

BEGIN --- Sempre pega a primeira condição verdadeira.
    v_categoria:=categoria_cliente(p_faturamento_previsto); --> Chamando função com a categoria.
        
    INSERT INTO cliente
        VALUES (p_id, UPPER(p_razao_social),p_CNPJ,p_segmercado_id, SYSDATE, p_faturamento_previsto, v_categoria);
    COMMIT;
END;

commit;

