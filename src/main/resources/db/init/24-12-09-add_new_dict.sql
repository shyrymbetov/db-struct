create table if not exists dict_QS_academic_degree
(
    code    bigint,
    name_kz varchar,
    name_ru varchar,
    name_en varchar
);

create table if not exists dict_QS_employee
(
    code    bigint,
    name_kz varchar,
    name_ru varchar
);
create table if not exists dict_QS_citizenship
(
    code          bigint,
    name_kz       varchar,
    tree_id       bigint,
    name_en       varchar,
    business_code bigint,
    name_ru       varchar,
    gbdfl_code    bigint
);
create table if not exists dict_QS_rank
(
    code          bigint,
    kk_name       varchar,
    tree_id       bigint,
    business_code bigint,
    ru_name       varchar,
    parent_code   bigint
);

