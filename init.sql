CREATE TABLE IF NOT EXISTS public.users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(15),
    role VARCHAR(20) NOT NULL,
    status VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS public.analysis_history (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    file_name VARCHAR(255) NOT NULL,
    lines_of_code INTEGER,
    methods_count INTEGER,
    classes_count INTEGER,
    analyzed_at TIMESTAMP WITHOUT TIME ZONE DEFAULT CURRENT_TIMESTAMP
);


INSERT INTO public.users
(username, password, role, status)
VALUES
('Sridhar', 'Sri@123', 'ADMIN', 'ACTIVE');