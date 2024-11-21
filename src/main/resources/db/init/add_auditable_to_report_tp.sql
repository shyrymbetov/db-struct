ALTER TABLE report_tp
    ADD COLUMN created_by BIGINT,
ADD CONSTRAINT fk_created_by FOREIGN KEY (created_by) REFERENCES auth_user(id),

-- Add the deleted_by column with a foreign key constraint
ADD COLUMN deleted_by BIGINT,
ADD CONSTRAINT fk_deleted_by FOREIGN KEY (deleted_by) REFERENCES auth_user(id),

-- Add the deleted_date column
ADD COLUMN deleted_date TIMESTAMP,

-- Add the created_date column
ADD COLUMN created_date TIMESTAMP;
