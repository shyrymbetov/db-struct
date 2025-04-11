CREATE TABLE photos (
                        id BIGSERIAL PRIMARY KEY,
                        url VARCHAR(255) NOT NULL,
                        product_id BIGINT,
                        CONSTRAINT fk_photos_product FOREIGN KEY (product_id) REFERENCES public.products(id)
);
