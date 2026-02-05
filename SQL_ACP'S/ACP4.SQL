CREATE TABLE IF NOT EXISTS hacker_news (
    title TEXT,
    author TEXT,
    score INTEGER
);

INSERT INTO hacker_news (title, author, score) VALUES
('New AI Model', 'tech_guru', 150),
('SQL Tips', 'data_wiz', 85),
('Web Dev 2026', 'coder1', 200),
('Cyber Security', 'shield_up', 45),
('Cloud Computing', 'sky_high', 120);

SELECT * FROM hacker_news 
WHERE score > 100;

SELECT * FROM hacker_news 
ORDER BY score DESC;

SELECT author, SUM(score) 
FROM hacker_news 
GROUP BY author;