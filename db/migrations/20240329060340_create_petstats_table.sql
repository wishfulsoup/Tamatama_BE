-- migrate:up
CREATE TABLE PetStats (
  StatID INT AUTO_INCREMENT PRIMARY KEY,
  PetID INT NOT NULL,
  Life INT,
  Hunger INT,
  Happiness INT,
  Level INT,
  Timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (PetID) REFERENCES Pets(PetID)
);

-- migrate:down
DROP TABLE PetStats;
