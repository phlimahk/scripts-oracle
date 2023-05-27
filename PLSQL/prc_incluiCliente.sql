create or replace PROCEDURE INCLUIR_CLIENTE
    (p_id in cliente.id%type,
    p_razao_social IN cliente.razao_social%type,
    p_cnpj cliente.cnpj%type , ---> alterado o tipo do parametro para o tipo out podendo ser alterada.
    p_segmercado_id IN cliente.segmercado_id%type,
    p_faturamento_previsto IN cliente.faturamento_previsto%type)

IS
    v_categoria cliente.categoria%type;
    v_cnpj cliente.cnpj%type:=p_cnpj;


BEGIN --- Sempre pega a primeira condição verdadeira.
    v_categoria:=categoria_cliente(p_faturamento_previsto); --> Função que retorna categoria do cliente
    formata_cnpj(v_cnpj); 


    INSERT INTO cliente
        VALUES (p_id, UPPER(p_razao_social),v_cnpj,p_segmercado_id, SYSDATE, p_faturamento_previsto, v_categoria);
    COMMIT;
END;