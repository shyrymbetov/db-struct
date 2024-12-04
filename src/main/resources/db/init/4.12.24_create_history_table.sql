create sequence if not exists form_history_seq;

CREATE TABLE form_history
(
    id           BIGINT
        CONSTRAINT form_history_pk
            PRIMARY KEY,
    created_date TIMESTAMP,
    form_id      BIGINT
        CONSTRAINT form_history_form_main_id_fk
            REFERENCES form_main (id),
    status       VARCHAR(255),
    user_id      BIGINT
        CONSTRAINT form_history_auth_user_id_fk
            REFERENCES auth_user (id),
    user_name    VARCHAR(255),
    role         VARCHAR(255),
    comment      VARCHAR(255)
);
