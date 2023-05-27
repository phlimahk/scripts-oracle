
--> Passando valor com parametro nomeado.

DECLARE
    p_id              NUMBER;
    p_segmercado_id   NUMBER;
BEGIN
    v_id := 1;
    v_segmercado_id := 2;
    prc_atualizar_cli_seg_mercado(p_id => v_id,p_segmercado_id => v_segmercado_id);
--rollback; 
END;


select * from cliente;