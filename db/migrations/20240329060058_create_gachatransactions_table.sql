-- migrate:up
CREATE TABLE GachaTransactions (
  TransactionID INT AUTO_INCREMENT PRIMARY KEY,
  UserID INT NOT NULL,
  GachaID INT NOT NULL,
  TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (GachaID) REFERENCES Gachas(GachaID)
);

-- migrate:down
DROP TABLE GachaTransactions;
