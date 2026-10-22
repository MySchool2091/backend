CREATE TABLE IF NOT EXISTS auth.users (
    id BIGSERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(30) NOT NULL DEFAULT 'VIEWER',
    enabled BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMP NOT NULL DEFAULT NOW()
);

INSERT INTO auth.users (username, email, password, role)
VALUES
  ('admin', 'admin@pharma.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'ADMIN'),
  ('pharmacist1', 'pharmacist@pharma.com', '$2a$10$N9qo8uLOickgx2ZMRZoMyeIjZAgcfl7p92ldGxad68LJZdL17lhWy', 'PHARMACIST'),
  ('kanu', 'kanu.paul@gmail.com', '$2a$10$crGOqCeAVGkgH0KZCDUf9us7MoKffyTqRJo5cy9FslsYfFSpkvXPi', 'ADMIN')
ON CONFLICT DO NOTHING;
