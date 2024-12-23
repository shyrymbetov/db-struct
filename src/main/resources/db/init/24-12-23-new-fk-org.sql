alter table reservoir
drop constraint fk_org;

alter table reservoir
    add constraint fk_org
        foreign key (org_id) references organization_new;

alter table channel
drop constraint fk_organization;

alter table channel
    add constraint fk_organization
        foreign key (organization_id) references organization_new
            on delete set null;
