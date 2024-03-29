-- migrate:up
CREATE TABLE TransactionTypes (
  TransactionTypeID INT AUTO_INCREMENT PRIMARY KEY,
  TypeName VARCHAR(255) NOT NULL UNIQUE
);

-- migrate:down
DROP TABLE TransactionTypes;
