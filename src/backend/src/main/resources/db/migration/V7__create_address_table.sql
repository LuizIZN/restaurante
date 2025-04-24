CREATE TABLE IF NOT EXISTS Address (
  id UUID PRIMARY KEY,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(100) NOT NULL,
  country VARCHAR(100) NOT NULL,
  zip_code VARCHAR(20) NOT NULL,
  neighborhood VARCHAR(100),
  number INT NOT NULL,
  complement VARCHAR(255),
  restaurant_id UUID NOT NULL,
  FOREIGN KEY (restaurant_id) REFERENCES Restaurant(id),
  user_id UUID NOT NULL,
  FOREIGN KEY (user_id) REFERENCES Users(id),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
  CONSTRAINT at_least_one_filled CHECK (
        (restaurant_id IS NOT NULL AND user_id IS NULL) OR
        (restaurant_id IS NULL AND user_id IS NOT NULL)
    )
);