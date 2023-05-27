CREATE OR REPLACE FUNCTION OBTER_DESCRICAO_SEGMERCADO(p_id in segmercado.id%type)
return segmercado.descricao%type

is

v_descricao segmercado.descricao%type;

BEGIN

SELECT descricao into v_descricao  --> PEGA O CONTEUDO DA COLUNA DESCRICAO E SALVA NA VARIAVEL V_DESCRICAO.
      from segmercado
      where id = p_id;
      RETURN v_descricao;
      
END;


--- Executando Função
-- referencia a função à variavel passando o parametro.
    VARIABLE g_descricao varchar2(100)
    EXECUTE :g_descricao := obter_descricao_segmercado(1) 
    PRINT g_descricao