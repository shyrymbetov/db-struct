-- Create the sequence for primary key generation
CREATE SEQUENCE cross_border_form_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- Create the table using the sequence for the primary key
CREATE TABLE cross_border_form (
                                   id BIGINT DEFAULT nextval('cross_border_form_seq') PRIMARY KEY,
                                   channel_id BIGINT,
                                   form_id BIGINT NOT NULL,
                                   area_liman FLOAT,
                                   area_watered FLOAT,
                                   consumer_count BIGINT,
                                   consumer_dealt BIGINT,
                                   flow_graphic FLOAT,
                                   flow_fact FLOAT,
                                   date DATE,
                                   CONSTRAINT fk_channel FOREIGN KEY (channel_id) REFERENCES channel (id),
                                   CONSTRAINT fk_form_main FOREIGN KEY (form_id) REFERENCES form_main (id)
);
