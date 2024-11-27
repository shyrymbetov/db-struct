ALTER TABLE report_tp_3
ALTER COLUMN allotted TYPE FLOAT USING allotted::FLOAT,
ALTER COLUMN not_cleaned TYPE FLOAT USING not_cleaned::FLOAT,
ALTER COLUMN insufficiently_cleaned TYPE FLOAT USING insufficiently_cleaned::FLOAT,
ALTER COLUMN cleaned TYPE FLOAT USING cleaned::FLOAT,
ALTER COLUMN cleaned_all TYPE FLOAT USING cleaned_all::FLOAT,
ALTER COLUMN cleaned_bio TYPE FLOAT USING cleaned_bio::FLOAT,
ALTER COLUMN cleaned_phy_chem TYPE FLOAT USING cleaned_phy_chem::FLOAT,
ALTER COLUMN cleaned_mech TYPE FLOAT USING cleaned_mech::FLOAT;

