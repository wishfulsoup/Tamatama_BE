-- migrate:up
CREATE TABLE UserGachaAttempts (
  UserID INT PRIMARY KEY,
  Attempts INT DEFAULT 0,
  TotalAttempts INT DEFAULT 0,
  LastReset TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- migrate:down
DROP TABLE UserGachaAttempts;
