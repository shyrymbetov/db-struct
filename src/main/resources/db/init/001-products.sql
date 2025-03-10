CREATE TABLE products (
                          id BIGSERIAL PRIMARY KEY,
                          name VARCHAR(255) NOT NULL,
                          category VARCHAR(50) NOT NULL,
                          price BIGINT NOT NULL,
                          description TEXT,
                          user_id BIGINT,
                          CONSTRAINT fk_product_user FOREIGN KEY (user_id) REFERENCES auth_user(id) ON DELETE SET NULL
);
