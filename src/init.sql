CREATE TABLE urls (
    id SERIAL PRIMARY KEY,
    short_code VARCHAR(6) UNIQUE NOT NULL,
    long_url TEXT NOT NULL
);
