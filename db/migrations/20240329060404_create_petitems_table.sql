-- migrate:up
CREATE TABLE PetItems (
  PetItemID INT AUTO_INCREMENT PRIMARY KEY,
  InventoryItemID INT NOT NULL,
  EquippedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (InventoryItemID) REFERENCES InventoryItems(InventoryItemID)
);

-- migrate:down
DROP TABLE PetItems;
