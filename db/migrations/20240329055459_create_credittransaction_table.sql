-- migrate:up
CREATE TABLE CreditTransaction (
  TransactionID INT AUTO_INCREMENT PRIMARY KEY,
  UserID INT NOT NULL,
  PaymentMethodID INT NOT NULL,
  CurrencyID INT NOT NULL,
  Amount DECIMAL(10, 2) NOT NULL,
  TransactionDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethods(PaymentMethodID),
  FOREIGN KEY (CurrencyID) REFERENCES Currencies(CurrencyID)
);

-- migrate:down
DROP TABLE CreditTransaction;
