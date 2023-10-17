CREATE TABLE pmt_files (
    file_uuid UUID PRIMARY KEY,
    file_name VARCHAR(255),
    file_status VARCHAR(16),
    upload_ts TIMESTAMP DEFAULT current_timestamp
);
