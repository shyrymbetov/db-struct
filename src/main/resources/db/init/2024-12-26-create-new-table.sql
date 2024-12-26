create table org_building
(
    id                                     serial
        primary key,
    building                               varchar(255),
    square_building                        bigint,
    year_construction                      bigint,
    year_commissioning                     bigint,
    number_of_cameras                      bigint,
    building_type                          varchar(255),
    technical_condition                    varchar(255),
    type_structure                         varchar(255),
    room_used                              varchar(255),
    availability_of_video_surveillance     varchar(255),
    emergency_exits                        varchar(255),
    need_of_repair                         varchar(255),
    legal_name_of_the_security_agency      varchar(255),
    availability_of_object_security        boolean,
    security                               boolean,
    video_surveillance_is_connected_to_occ boolean,
    video_surveillance_is_connected_to_dia boolean,
    presence_turnstile                     boolean,
    presence_button                        boolean,
    warning_system                         boolean,
    metal_detector                         boolean,
    object_vulnerable_terrorism            boolean,
    organization_id                        integer
);
