-- migrate:up
CREATE TABLE Inventories (
  InventoryID INT AUTO_INCREMENT PRIMARY KEY,
  UserID INT NOT NULL,
  TotalSlots INT NOT NULL,
  FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- migrate:down
DROP TABLE Inventories;
