CREATE TABLE IF NOT EXISTS nomnom (
    NAME TEXT,
    NEIGHBOURHOOD TEXT,
    CUISINE TEXT,
    REVIEW REAL,
    PRICE REAL,
    HEALTH TEXT
);

INSERT INTO nomnom ( NAME,NEIGHBOURHOOD,CUISINE,REVIEW,PRICE,HEALTH)
VALUES
('Peter','Brooklyn','Steak',4.4,'230.00','A'),
('Jongro','Midtown','Korean',3.5,'105.00','A'),
('Pocha','Midtown','Pizza',4,'270.24','B'),
('Marea','Chinatown','Chinese',3.9,'190.22','A'),
('Dirty Candy','Uptown','Italian',4.7,'385.12','B');

SELECT * FROM nomnom

SELECT DISTINCT NEIGHBOURHOOD FROM nomnom;

SELECT DISTINCT CUISINE FROM nomnom;

SELECT * FROM nomnom WHERE CUISINE = 'Chinese';

SELECT * FROM nomnom WHERE REVIEW >= 4;

SELECT * FROM nomnom WHERE CUISINE = 'Italian' AND PRICE = '385.12';

SELECT * FROM nomnom WHERE  NAME  LIKE '%A%';

SELECT * FROM nomnom
WHERE NEIGHBOURHOOD IN ('Midtown','Uptown','Chinatown');

SELECT * FROM nomnom ORDER BY REVIEW DESC LIMIT 4;

