-- oidc_clients definition

-- Drop table

-- DROP TABLE oidc_clients;

CREATE TABLE oidc_clients (
	id bigserial NOT NULL,
	"label" varchar NOT NULL,
	discovery_endpoint varchar NULL,
	jwks text NULL,
	authorization_endpoint varchar NULL,
	token_endpoint varchar NULL,
	client_id varchar NULL,
	client_secret varchar NULL,
	signature_allgorithm varchar NULL,
	signature_public_key text NULL,
	CONSTRAINT oidc_clients_pkey1 PRIMARY KEY (id)
);
CREATE UNIQUE INDEX index_oidc_clients_on_label ON oidc_clients USING btree (label);


-- oidc_sessions definition

-- Drop table

-- DROP TABLE oidc_sessions;

CREATE TABLE oidc_sessions (
	id bigserial NOT NULL,
	redirect_uri varchar NULL,
	access_token text NULL,
	id_token text NULL,
	refresh_token text NULL,
	session_cookie_value varchar NULL,
	state varchar NULL,
	nonce varchar NULL,
	client_id int4 NULL,
	created_at timestamp NOT NULL,
	updated_at timestamp NOT NULL,
	CONSTRAINT oidc_sessions_pkey1 PRIMARY KEY (id)
);
CREATE INDEX index_oidc_sessions_on_oidc_client_id ON oidc_sessions USING btree (client_id);

INSERT INTO oidc_clients ("label",discovery_endpoint,jwks,authorization_endpoint,token_endpoint,client_id,client_secret,signature_allgorithm,signature_public_key) VALUES
	 ('Config with env variables',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

