DECLARE
    v_id segmercado.id%type := 4;
BEGIN
    delete from segmercado where id=v_id;
    COMMIT;
END;

rollback;
select * from SEGMERCADO;
