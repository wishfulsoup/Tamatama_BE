-- migrate:up
CREATE TABLE UserGachas (
  UserGachaID INT AUTO_INCREMENT PRIMARY KEY,
  UserID INT NOT NULL,
  GachaID INT NOT NULL,
  FOREIGN KEY (UserID) REFERENCES Users(UserID),
  FOREIGN KEY (GachaID) REFERENCES Gachas(GachaID)
 );

-- migrate:down
DROP TABLE UserGachas;
