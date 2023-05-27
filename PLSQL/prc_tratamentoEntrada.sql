create or replace procedure formata_cnpj
      (p_cnpj in out cliente.cnpj%type) --> "OUT" Permite a alteração do valor do parametro na linha 6.
is

begin
p_cnpj:=substr(p_cnpj,1,2)||'/'||substr(p_cnpj,3);
end;






