CREATE TABLE Animals (
    Animal_ID INTEGER PRIMARY KEY,
    Name TEXT,
    Color TEXT,
    Size TEXT
);

INSERT INTO Animals (Animal_ID, Name, Color, Size) VALUES
(1, 'Lion', 'Golden', 'Large'),
(2, 'Elephant', 'Grey', 'Extra Large'),
(3, 'Rabbit', 'White', 'Small'),
(4, 'Panther', 'Black', 'Large');

SELECT * FROM Animals;

SELECT * FROM Animals WHERE Size = 'Large';