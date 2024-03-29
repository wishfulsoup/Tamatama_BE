-- migrate:up
CREATE TABLE AuthProviders (
  ProviderID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL UNIQUE
);

-- migrate:down
DROP TABLE AuthProviders;
