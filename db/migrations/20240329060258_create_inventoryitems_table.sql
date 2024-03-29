-- migrate:up
CREATE TABLE InventoryItems (
  InventoryItemID INT AUTO_INCREMENT PRIMARY KEY,
  InventoryID INT NOT NULL,
  ItemID INT NOT NULL,
  CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UsedAt TIMESTAMP NULL,
  DeletedAt TIMESTAMP NULL,
  FOREIGN KEY (InventoryID) REFERENCES Inventories(InventoryID),
  FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
);

-- migrate:down
DROP TABLE InventoryItems;
