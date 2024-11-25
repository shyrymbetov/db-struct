ALTER TABLE channel
ALTER COLUMN throughput TYPE FLOAT USING throughput::FLOAT;

ALTER TABLE channel
ALTER COLUMN throughput TYPE FLOAT USING throughput::FLOAT;

ALTER TABLE channel
ALTER COLUMN length TYPE FLOAT USING length::FLOAT;

ALTER TABLE channel
ALTER COLUMN from_zemlyan TYPE FLOAT USING from_zemlyan::FLOAT;

ALTER TABLE channel
ALTER COLUMN from_oblicov TYPE FLOAT USING from_oblicov::FLOAT;

ALTER TABLE channel
ALTER COLUMN area_regular TYPE FLOAT USING area_regular::FLOAT;

ALTER TABLE channel
ALTER COLUMN kpd_project TYPE FLOAT USING kpd_project::FLOAT;

ALTER TABLE channel
ALTER COLUMN kpd_fact TYPE FLOAT USING kpd_fact::FLOAT;