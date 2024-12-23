
CREATE SEQUENCE IF NOT EXISTS dict_org_type_id_seq;
create table if not exists dict_org_type
(
    id      BIGINT DEFAULT nextval('dict_org_type_id_seq') NOT NULL PRIMARY KEY,
    code    varchar,
    name_ru varchar,
    name_kz varchar
    );
CREATE SEQUENCE IF NOT EXISTS dict_org_legal_id_seq;
create table if not exists dict_org_legal
(
    id      BIGINT DEFAULT nextval('dict_org_legal_id_seq') NOT NULL PRIMARY KEY,
    code    varchar,
    name_ru varchar,
    name_kz varchar
    );
CREATE SEQUENCE IF NOT EXISTS dict_org_affiliation_id_seq;
create table if not exists dict_org_affiliation
(
    id      BIGINT DEFAULT nextval('dict_org_affiliation_id_seq') NOT NULL PRIMARY KEY,
    code    varchar,
    name_ru varchar,
    name_kz varchar
    );


create table if not exists organization_new
(
    id             bigint default nextval('organization_id_seq'::regclass) not null
    primary key,
    name_ru        varchar                                                 not null,
    name_kz        varchar                                                 not null,
    short_name_kz  varchar                                                 not null,
    short_name_ru  varchar                                                 not null,
    bin            varchar                                                 not null,
    kato           varchar                                                 not null,
    address_ru     varchar                                                 not null,
    address_kz     varchar                                                 not null,
    affiliation_id bigint                                                  not null,
    type_id        bigint                                                  not null,
    legal_id       bigint                                                  not null,
    coordinates    varchar                                                 not null,
    start_date     DATE                                                    not null,
    end_date       DATE,
    status         varchar,

    constraint fk_organization_type
    foreign key (type_id)
    references dict_org_type (id)
    on update cascade
    on delete restrict,

    constraint fk_organization_legal
    foreign key (legal_id)
    references dict_org_legal (id)
    on update cascade
    on delete restrict,

    constraint fk_organization_affiliation
    foreign key (affiliation_id)
    references dict_org_affiliation (id)
    on update cascade
    on delete restrict
    );
