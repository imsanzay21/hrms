CREATE TABLE type(
	id IDENTITY,
	name VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_type_id PRIMARY KEY (id)
);

INSERT INTO type (name, is_active) VALUES ('Company', true);
INSERT INTO type (name, is_active) VALUES ('Head Office', true);
INSERT INTO type (name, is_active) VALUES ('Regional Office', true);

CREATE TABLE parent_structure(
	id IDENTITY,
	name VARCHAR(50),
	is_active BOOLEAN,
	
	CONSTRAINT pk_parent_structure_id PRIMARY KEY (id),
);

INSERT INTO parent_structure (name, is_active) VALUES ('your Company', true);
INSERT INTO parent_structure (name, is_active) VALUES ('Head Office', true);
INSERT INTO parent_structure (name, is_active) VALUES ('marketing Department', true);

CREATE TABLE company_structure(
	id IDENTITY,
	name VARCHAR(50),
	details VARCHAR(250),
	address VARCHAR(250),
	type_id INT,
	country VARCHAR(50),
	parent_structure_id INT,
	is_active BOOLEAN,
	
	CONSTRAINT pk_company_structure_id PRIMARY KEY(id),
	CONSTRAINT fk_company_type_id FOREIGN KEY (type_id) REFERENCES type (id),
	CONSTRAINT fk_company_parent_id FOREIGN KEY (parent_structure_id) REFERENCES parent_structure (id),
);

INSERT INTO company_structure (name, details, address, type_id, country, parent_structure_id, is_active) VALUES ('your Company', 'Decode', 'Civil Line Sausar', '1', 'India', '2', true);
INSERT INTO company_structure (name, details, address, type_id, country, parent_structure_id, is_active) VALUES ('saaa', 'Decode1', 'Civil Line Sausar1', '2', 'India', '1', true);
