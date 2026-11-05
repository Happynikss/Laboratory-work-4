CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL,
    user_type VARCHAR(20) NOT NULL,
    CONSTRAINT chk_users_email CHECK (
        REGEXP_LIKE(
            email,
            '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'
        )
    )
);
