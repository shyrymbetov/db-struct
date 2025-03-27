
create function cr_ses(p_user_id bigint, p_user_iin character varying, p_token character varying, p_token_exp timestamp without time zone, p_ip character varying) returns bigint
    language plpgsql
as
$$
declare
x_ses_id bigint;
begin
    --  p_user_id    bigint,
    --  p_user_iin   varchar,
    --  p_user_bin   varchar,
    --  p_token      varchar,
    --  p_ip         varchar


insert into ses (id,user_id,iin,ip,dat, token, exp_date, active)
values (default,p_user_id,p_user_iin,p_ip,now(), p_token, p_token_exp, true)
    returning id into x_ses_id;

return x_ses_id;

end
$$;
