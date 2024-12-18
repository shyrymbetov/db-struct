-- Create sequence for hydraulic_structures primary key
create sequence if not exists hydraulic_structures_seq;

CREATE TABLE hydraulic_structures
(
    id                 BIGINT PRIMARY KEY DEFAULT NEXTVAL('hydraulic_structures_seq'),
    name               VARCHAR(255) NOT NULL, -- Name of the hydraulic structure
    category           VARCHAR(200)  NOT NULL, -- Category (e.g., водохранилище, плотина)
    region             VARCHAR(255),          -- Region where the structure is located
    ownership_form     VARCHAR(255),           -- Ownership form (e.g., Public, Private)
    commissioning_year BIGINT,                -- Year of commissioning
    design_capacity    VARCHAR(255),                 -- Design capacity in million m³
    condition          VARCHAR(255),          -- Condition (e.g., удовлетворительное, неудовлетворительное)
    potential_threat   VARCHAR(255),               -- Flag for whether there is a potential threat
    threat_description VARCHAR(500),          -- Description of any potential threat
    location           GEOMETRY(Point, 4326)  -- Geometry column for spatial data with SRID 4326
);
