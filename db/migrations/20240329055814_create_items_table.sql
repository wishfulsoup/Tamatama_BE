-- migrate:up
CREATE TABLE Items (
  ItemID INT AUTO_INCREMENT PRIMARY KEY,
  TypeID INT NOT NULL,
  Name VARCHAR(255) NOT NULL,
  Description TEXT,
  Rarity VARCHAR(50),
  DropProbability DECIMAL(5, 2),
  FOREIGN KEY (TypeID) REFERENCES ItemTypes(TypeID)
);

-- migrate:down
DROP TABLE Items;
