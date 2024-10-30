CREATE SEQUENCE report_seq START WITH 1 INCREMENT BY 1;
CREATE TABLE report (
                        id BIGINT PRIMARY KEY DEFAULT nextval('report_seq'),
                        name VARCHAR(255),
                        date_from VARCHAR(50),
                        date_to VARCHAR(50),
                        organization_id BIGINT NOT NULL
);

CREATE SEQUENCE report_organization_seq START WITH 1 INCREMENT BY 1;
CREATE TABLE report_organization (
                                     id BIGINT PRIMARY KEY DEFAULT nextval('report_organization_seq'),
                                     report_id BIGINT NOT NULL,
                                     organization_id BIGINT NOT NULL
);
