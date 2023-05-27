create or replace function OBTER_DT_PGTO_PREVISTA(P_DATA date)
return varchar2

/*Função retorna o proximo mes/ano da data pagamento prevista*/

is

v_descricao varchar2(12);

        begin

        select   
        case
            when extract(month from sysdate)<12
            then '05/'||to_char(extract(month from sysdate)+1)||'/'||to_char(extract(year from sysdate))
            when extract(month from sysdate)=12
            then '05/01'||'/'||to_char(extract(year from sysdate)+1)
        end as dt_prevista_pgto into v_descricao 
        from dual;      
        RETURN v_descricao;  

        END;
