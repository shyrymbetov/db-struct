-- Create sequence for reservoir_extra_col primary key
create sequence if not exists reservoir_extra_col_seq;

-- Create table reservoir_extra_col
create table if not exists reservoir_extra_col
(
    id           bigint not null default nextval('reservoir_extra_col_seq')
             constraint reservoir_extra_col_pk primary key,
    reservoir_id bigint not null
              constraint reservoir_extra_col___fk
                  references reservoir,
    name         varchar(255),
    code         varchar(255),
    type         varchar(255)
);

-- Create sequence for water_supply_extra primary key
create sequence if not exists water_supply_extra_seq;

-- Create table water_supply_extra
create table if not exists water_supply_extra
(
    id                     bigint not null default nextval('water_supply_extra_seq')
    constraint water_supply_extra_pk primary key,
    water_supply_form_id   bigint not null
            constraint water_supply_extra___fk
             references water_supply_form (id),
    reservoir_extra_col_id bigint
             constraint water_supply_extra___fk2
              references reservoir_extra_col (id),
    value                  varchar(255)
);
