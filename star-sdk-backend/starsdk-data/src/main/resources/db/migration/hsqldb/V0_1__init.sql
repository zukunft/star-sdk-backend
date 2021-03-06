set database sql syntax PGS true;

CREATE TABLE t_exposed(
 pk_exposed_id Serial NOT NULL,
 key Text NOT NULL,
 action Character varying(20) NOT NULL,
 received_at Timestamp with time zone DEFAULT now() NOT NULL,
 app_source Character varying(50) NOT NULL
);

-- Add keys for table t_exposed

ALTER TABLE t_exposed ADD CONSTRAINT PK_t_exposed PRIMARY KEY (pk_exposed_id);

ALTER TABLE t_exposed ADD CONSTRAINT key_action UNIQUE (key, action);