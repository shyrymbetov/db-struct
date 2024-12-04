ALTER TABLE report_tp
    ADD COLUMN form_id BIGINT,
ADD CONSTRAINT fk_form_main_id FOREIGN KEY (form_id) REFERENCES form_main(id);

ALTER TABLE report_puv
    ADD COLUMN form_id BIGINT,
ADD CONSTRAINT fk_form_main_id FOREIGN KEY (form_id) REFERENCES form_main(id);
