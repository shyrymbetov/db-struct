ALTER TABLE water_supply_form
    ADD COLUMN reservoir_id BIGINT,
ADD CONSTRAINT fk_reservoir_id FOREIGN KEY (reservoir_id) REFERENCES reservoir(id);
