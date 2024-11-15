ALTER TABLE water_supply_form
ALTER COLUMN mark_npu TYPE FLOAT USING mark_npu::FLOAT;

ALTER TABLE water_supply_form
ALTER COLUMN min_vol TYPE VARCHAR USING min_vol::TEXT;

CREATE TABLE reservoir (
                           id SERIAL PRIMARY KEY,
                           mark_npu FLOAT,
                           wat_vol_fpu FLOAT,
                           wat_vol_npu FLOAT,
                           max_through FLOAT,
                           min_vol VARCHAR(255),
                           org_id BIGINT,
                           CONSTRAINT fk_org FOREIGN KEY (org_id) REFERENCES organization(id)
);

