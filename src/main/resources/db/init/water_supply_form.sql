-- Create sequence for the primary key
CREATE SEQUENCE water_supply_form_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

-- Create the water_supply_form table
CREATE TABLE water_supply_form (
                                   id BIGINT NOT NULL DEFAULT nextval('water_supply_form_seq') PRIMARY KEY,
                                   name VARCHAR(255),
                                   mark_npu VARCHAR(255),
                                   mark_y1 BIGINT,
                                   mark_y2 BIGINT,
                                   wat_vol_fpu FLOAT,
                                   wat_vol_npu FLOAT,
                                   max_through FLOAT,
                                   min_vol FLOAT,
                                   wat_vol_y1 BIGINT,
                                   wat_vol_y2 BIGINT,
                                   fill FLOAT,
                                   free_capacity FLOAT,
                                   avg_day_in_y1 FLOAT,
                                   avg_day_in_y2 FLOAT,
                                   avg_day_out_y1 FLOAT,
                                   avg_day_out_y2 FLOAT,
                                   form_id BIGINT NOT NULL,  -- Foreign key column for referencing form_main
                                   CONSTRAINT fk_form_main FOREIGN KEY (form_id) REFERENCES form_main(id) ON DELETE CASCADE
);

-- Optional: Add an index on the form_id for faster lookup
CREATE INDEX idx_water_supply_form_form_id ON water_supply_form(form_id);
