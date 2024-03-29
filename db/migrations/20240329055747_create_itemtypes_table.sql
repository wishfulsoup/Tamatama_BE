-- migrate:up
CREATE TABLE ItemTypes (
  TypeID INT AUTO_INCREMENT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Description TEXT
);

-- migrate:down
DROP TABLE ItemTypes;
