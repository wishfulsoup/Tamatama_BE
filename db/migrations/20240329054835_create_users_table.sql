-- migrate:up
CREATE TABLE Users (
  UserID INT AUTO_INCREMENT PRIMARY KEY,
  Username VARCHAR(255) NOT NULL UNIQUE,
  PasswordHash VARCHAR(255) NOT NULL,
  Email VARCHAR(255) NOT NULL UNIQUE,
  UUID CHAR(36) NOT NULL UNIQUE,
  DisplayName VARCHAR(255),
  Wallet VARCHAR(255) NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- migrate:down
DROP TABLE Users;
