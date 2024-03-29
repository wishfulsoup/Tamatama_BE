-- migrate:up
CREATE TABLE GachaItems (
  GachaItemID INT AUTO_INCREMENT PRIMARY KEY,
  GachaID INT NOT NULL,
  ItemID INT NOT NULL,
  FOREIGN KEY (GachaID) REFERENCES Gachas(GachaID),
  FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
 );

-- migrate:down
DROP TABLE GachaItems;
