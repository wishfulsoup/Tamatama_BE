-- migrate:up
CREATE TABLE PetTransactions (
  TransactionID INT AUTO_INCREMENT PRIMARY KEY,
  SaleID INT NOT NULL,
  BuyerID INT NOT NULL,
  PaymentMethodID INT NOT NULL,
  CurrencyID INT NOT NULL,
  TransactionAmount DECIMAL(10, 2) NOT NULL,
  Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (SaleID) REFERENCES PetsOnSale(SaleID),
  FOREIGN KEY (BuyerID) REFERENCES Users(UserID),
  FOREIGN KEY (PaymentMethodID) REFERENCES PaymentMethods(PaymentMethodID),
  FOREIGN KEY (CurrencyID) REFERENCES Currencies(CurrencyID)
);

-- migrate:down
DROP TABLE PetTransactions;
