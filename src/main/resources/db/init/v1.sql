-- Создание последовательностей для автоматического увеличения идентификаторов
CREATE SEQUENCE organization_id_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE dictionary_form_id_seq START WITH 1 INCREMENT BY 1;
CREATE SEQUENCE form_main_id_seq START WITH 1 INCREMENT BY 1;

-- Создание таблицы Organization
CREATE TABLE organization (
                              id BIGINT NOT NULL DEFAULT nextval('organization_id_seq'),
                              name VARCHAR(255) NOT NULL,
                              bin VARCHAR(255) NOT NULL,
                              description TEXT,
                              power VARCHAR(255),
                              PRIMARY KEY (id)
);

-- Создание таблицы DictionaryForm
CREATE TABLE dictionary_form (
                                 id BIGINT NOT NULL DEFAULT nextval('dictionary_form_id_seq'),
                                 name VARCHAR(255) NOT NULL,
                                 code VARCHAR(255) NOT NULL,
                                 type VARCHAR(255) NOT NULL,
                                 PRIMARY KEY (id)
);

-- Создание таблицы FormMain с ограничением для типа (связь один к одному с DictionaryForm)
CREATE TABLE form_main (
                           id BIGINT NOT NULL DEFAULT nextval('form_main_id_seq'),
                           name VARCHAR(255) NOT NULL,
                           created_date TIMESTAMP,
                           created_by BIGINT,
                           deleted_date TIMESTAMP,
                           deleted_by BIGINT,
                           status VARCHAR(50),
                           year BIGINT,
                           month BIGINT,
                           quarter BIGINT,
                           send_by BIGINT,
                           send_to BIGINT,
                           type BIGINT,
                           PRIMARY KEY (id),
                           CONSTRAINT fk_dictionary_form FOREIGN KEY (type) REFERENCES dictionary_form(id) ON DELETE CASCADE
);
