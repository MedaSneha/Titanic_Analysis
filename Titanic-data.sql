SHOW DATABASES;
use sneha;
SHOW TABLES;
DESCRIBE `titanic-dataset`;

select * from `titanic-dataset`;

SELECT Ticket, COUNT(*) AS total
FROM `titanic-dataset`
GROUP BY Ticket
HAVING COUNT(*) > 1;

select Survived, count(*) AS total
from `titanic-dataset`
group by Survived;

select Sex, Avg(Survived)*100 as survival_rate
from `titanic-dataset`
group by Sex;

SELECT Pclass,
AVG(Survived)*100 AS survival_rate
FROM `titanic-dataset`
GROUP BY Pclass;

SELECT AVG(Age)
FROM `titanic-dataset`
WHERE Survived = 1;

SELECT Ticket,
       COUNT(*) AS members
FROM `titanic-dataset`
GROUP BY Ticket
HAVING COUNT(*) > 1;

select Embarked,count(*) FROM `titanic-dataset`
GROUP BY Embarked; 

SELECT Embarked,
       AVG(Survived)*100 AS survival_rate
FROM `titanic-dataset`
GROUP BY Embarked;

SELECT Embarked, COUNT(*) AS survived_count
FROM `titanic-dataset`
WHERE Survived = 1
GROUP BY Embarked;

SELECT AVG(Fare)
FROM `titanic-dataset`
WHERE Survived = 1;

