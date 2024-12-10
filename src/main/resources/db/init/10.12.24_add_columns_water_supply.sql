ALTER TABLE water_supply_form
    ADD COLUMN mark_mu FLOAT;

ALTER TABLE water_supply_form
    ADD COLUMN mark_fpu FLOAT;

ALTER TABLE water_supply_form
    ADD COLUMN wat_vol_mu FLOAT;

ALTER TABLE water_supply_form
    ADD COLUMN min_vol_season FLOAT;

ALTER TABLE water_supply_form
    ADD COLUMN max_discharge FLOAT;
