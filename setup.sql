CREATE TABLE pmt_files (
    file_uuid UUID PRIMARY KEY,
    file_name VARCHAR(255),
    file_status VARCHAR(16),
    failed_payments INTEGER,
    upload_ts TIMESTAMP DEFAULT current_timestamp
);

CREATE TABLE src_funds (
	id SERIAL PRIMARY KEY,
	file_uuid UUID,
	src_acct VARCHAR(255),
	amt numeric
);

CREATE TABLE brnch_funds (
	id SERIAL PRIMARY KEY,
	file_uuid UUID,
	src_brnch VARCHAR(255),
	amt numeric
);
