-- Create sequence for ReportTP
CREATE SEQUENCE report_tp_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

-- Create table for ReportTP
CREATE TABLE report_tp (
                           id BIGINT PRIMARY KEY DEFAULT NEXTVAL('report_tp_seq'),
                           year BIGINT,
                           bin VARCHAR(255),
                           iin VARCHAR(255),
                           main_code_oked VARCHAR(255),
                           second_code_oked VARCHAR(255),
                           code_guiv VARCHAR(255),
                           index VARCHAR(255),
                           activity_name VARCHAR(255),
                           name VARCHAR(255),
                           location VARCHAR(255),
                           phone VARCHAR(255),
                           email VARCHAR(255)
);

-- Adjust ID column to use sequence
ALTER TABLE report_tp ALTER COLUMN id SET DEFAULT NEXTVAL('report_tp_seq');

-- Create sequence for ReportTP1
CREATE SEQUENCE report_tp_1_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

-- Create table for ReportTP1
CREATE TABLE report_tp_1 (
                             id BIGINT PRIMARY KEY DEFAULT NEXTVAL('report_tp_1_seq'),
                             report_tp_id BIGINT,
                             name_obj VARCHAR(255),
                             code_of_origin_2 FLOAT,
                             code_of_org_from FLOAT,
                             code_of_water FLOAT,
                             fill_1 FLOAT,
                             fill_2 FLOAT,
                             fill_3 FLOAT,
                             fill_4 FLOAT,
                             fill_5 FLOAT,
                             code_of_quality_2 FLOAT,
                             distance FLOAT,
                             permitted_volume FLOAT,
                             received FLOAT,
                             january FLOAT,
                             february FLOAT,
                             march FLOAT,
                             april FLOAT,
                             may FLOAT,
                             june FLOAT,
                             july FLOAT,
                             august FLOAT,
                             september FLOAT,
                             october FLOAT,
                             november FLOAT,
                             december FLOAT,
                             used_send_code_2 FLOAT,
                             used_send_quantity FLOAT,
                             reversible_use FLOAT,
                             reuse FLOAT,
                             transferred_after_use FLOAT,
                             transfer_loss FLOAT,
                             irrigation_area FLOAT,
                             FOREIGN KEY (report_tp_id) REFERENCES report_tp(id) ON DELETE CASCADE
);

-- Adjust ID column to use sequence
ALTER TABLE report_tp_1 ALTER COLUMN id SET DEFAULT NEXTVAL('report_tp_1_seq');

-- Create sequence for ReportTP2
CREATE SEQUENCE report_tp_2_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

-- Create table for ReportTP2
CREATE TABLE report_tp_2 (
                             id BIGINT PRIMARY KEY DEFAULT NEXTVAL('report_tp_2_seq'),
                             report_tp_id BIGINT,
                             name_obj VARCHAR(255),
                             code_of_receiver_3 FLOAT,
                             code_of_org_to FLOAT,
                             code_of_water FLOAT,
                             fill_1 FLOAT,
                             fill_2 FLOAT,
                             fill_3 FLOAT,
                             fill_4 FLOAT,
                             fill_5 FLOAT,
                             code_of_quality_2 FLOAT,
                             FOREIGN KEY (report_tp_id) REFERENCES report_tp(id) ON DELETE CASCADE
);

-- Adjust ID column to use sequence
ALTER TABLE report_tp_2 ALTER COLUMN id SET DEFAULT NEXTVAL('report_tp_2_seq');

-- Create sequence for ReportTP3
CREATE SEQUENCE report_tp_3_seq START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

-- Create table for ReportTP3
CREATE TABLE report_tp_3 (
                             id BIGINT PRIMARY KEY DEFAULT NEXTVAL('report_tp_3_seq'),
                             report_tp_id BIGINT,
                             distance VARCHAR(255),
                             allotted VARCHAR(255),
                             not_cleaned VARCHAR(255),
                             insufficiently_cleaned VARCHAR(255),
                             cleaned VARCHAR(255),
                             cleaned_all VARCHAR(255),
                             cleaned_bio VARCHAR(255),
                             cleaned_phy_chem VARCHAR(255),
                             cleaned_mech VARCHAR(255),
                             FOREIGN KEY (report_tp_id) REFERENCES report_tp(id) ON DELETE CASCADE
);

-- Adjust ID column to use sequence
ALTER TABLE report_tp_3 ALTER COLUMN id SET DEFAULT NEXTVAL('report_tp_3_seq');
