declare
    v_id segmercado.id%type:=1;   ---> esse tipo de declara��o vai sempre deixar a variavel com o tipo da coluna do banco.
    v_descricao segmercado.descricao%type:='varejista'; --> v_ � o padr�o para cria��o de variaveis.

begin
 
    update segmercado 
            set descricao=upper(v_descricao) where id=v_id;
    
    v_id:=2;
    v_descricao:='atacadista';
    
    update segmercado 
            set descricao=upper(v_descricao) where id=v_id;
    
  --  insert into segmercado values(v_id,upper(v_descricao)); --- comando DML  sempre necess�rio commitar
    commit;

end;



select *
from segmercado;