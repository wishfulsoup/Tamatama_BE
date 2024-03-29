-- migrate:up
CREATE TABLE UserAuthTokens (
  TokenID INT AUTO_INCREMENT PRIMARY KEY,
  UserID INT NOT NULL,
  ProviderID INT NOT NULL,
  Token TEXT NOT NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (ProviderID) REFERENCES AuthProviders(ProviderID)
);

-- migrate:down
DROP TABLE UserAuthTokens;
