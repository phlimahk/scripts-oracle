create or replace function categoria_cliente(p_faturamento_previsto in cliente.faturamento_previsto%type)
return cliente.categoria%type 

is

BEGIN 
    IF  p_faturamento_previsto<10000 then
        return 'PEQUENO';
    
    ELSIF p_faturamento_previsto<50000 then
          return 'MEDIO';
          
    ELSIF p_faturamento_previsto<100000 then
        return 'MEDIO GRANDE';
         
    ELSE
       return 'GRANDE';
       
     END IF;

END;
