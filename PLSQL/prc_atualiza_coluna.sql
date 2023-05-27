create or replace procedure prc_atualizar_cli_seg_mercado
(p_id cliente.id%type, 
p_segmercado_id cliente.segmercado_id%type)

is
begin
update cliente
       set segmercado_id = p_segmercado_id
       where id=p_id;
       commit;
    
end;



