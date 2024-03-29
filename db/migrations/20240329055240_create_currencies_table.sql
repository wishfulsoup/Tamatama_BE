-- migrate:up
CREATE TABLE Currencies (
  CurrencyID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL UNIQUE,
  Description TEXT
);

-- migrate:down
DROP TABLE Currencies;
