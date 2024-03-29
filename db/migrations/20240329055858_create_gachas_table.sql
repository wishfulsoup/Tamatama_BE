-- migrate:up
CREATE TABLE Gachas (
  GachaID INT AUTO_INCREMENT PRIMARY KEY,
  Rarity VARCHAR(50)
 );

-- migrate:down
DROP TABLE Gachas;
