create database cricketanalysis;
use cricketanalysis;

CREATE TABLE matches (
    Match_ID INT,
    Date DATE,
    Team VARCHAR(50),
    Opponent VARCHAR(50),
    Venue VARCHAR(50),
    Runs INT,
    Wickets INT,
    Overs DECIMAL(4,1),
    Result VARCHAR(10),
    Top_Scorer VARCHAR(50),
    Top_Score INT,
    Best_Bowler VARCHAR(50),
    Wickets_Taken INT
);

INSERT INTO matches VALUES
(1,'2026-04-28','PBKS','RR','Mohali',185,6,20,'Win','Shikhar Dhawan',72,'Arshdeep Singh',3),
(1,'2026-04-28','RR','PBKS','Mohali',178,8,20,'Loss','Jos Buttler',65,'Yuzvendra Chahal',2),

(2,'2026-04-27','RCB','DC','Bangalore',210,5,20,'Win','Virat Kohli',88,'Mohammed Siraj',4),
(2,'2026-04-27','DC','RCB','Bangalore',198,7,20,'Loss','Rishabh Pant',70,'Kuldeep Yadav',3),

(3,'2026-04-26','CSK','GT','Chennai',195,6,20,'Win','Ruturaj Gaikwad',76,'Deepak Chahar',3),
(3,'2026-04-26','GT','CSK','Chennai',180,9,20,'Loss','Shubman Gill',68,'Rashid Khan',2),

(4,'2026-04-25','MI','SRH','Mumbai',205,4,20,'Win','Rohit Sharma',92,'Jasprit Bumrah',4),
(4,'2026-04-25','SRH','MI','Mumbai',190,8,20,'Loss','Heinrich Klaasen',60,'Bhuvneshwar Kumar',2),

(5,'2026-04-24','KKR','LSG','Kolkata',175,7,20,'Loss','Andre Russell',55,'Sunil Narine',3),
(5,'2026-04-24','LSG','KKR','Kolkata',178,5,19.2,'Win','KL Rahul',73,'Ravi Bishnoi',2),

(6,'2026-04-23','CSK','MI','Chennai',188,6,20,'Win','MS Dhoni',60,'Matheesha Pathirana',3),
(6,'2026-04-23','MI','CSK','Chennai',182,7,20,'Loss','Ishan Kishan',58,'Piyush Chawla',2),

(7,'2026-04-22','RCB','GT','Bangalore',202,5,20,'Win','Faf du Plessis',85,'Karn Sharma',3),
(7,'2026-04-22','GT','RCB','Bangalore',195,8,20,'Loss','David Miller',66,'Mohit Sharma',2),

(8,'2026-04-21','SRH','DC','Hyderabad',176,9,20,'Loss','Aiden Markram',54,'T Natarajan',3),
(8,'2026-04-21','DC','SRH','Hyderabad',180,6,19.4,'Win','David Warner',71,'Axar Patel',2),

(9,'2026-04-20','GT','MI','Ahmedabad',190,7,20,'Loss','Hardik Pandya',62,'Rashid Khan',3),
(9,'2026-04-20','MI','GT','Ahmedabad',195,5,19.3,'Win','Suryakumar Yadav',80,'Jasprit Bumrah',2),

(10,'2026-04-19','KKR','RR','Kolkata',200,6,20,'Win','Venkatesh Iyer',78,'Varun Chakravarthy',3),
(10,'2026-04-19','RR','KKR','Kolkata',192,8,20,'Loss','Sanju Samson',74,'Trent Boult',2);

select * from matches ; 

SELECT Team, Opponent,Venue, SUM(Runs) AS total_runs
FROM matches
GROUP BY Team, Venue, Opponent
ORDER BY total_runs DESC;

SELECT Team, Opponent,Venue, SUM( Wickets) AS total_wickets
FROM matches
GROUP BY Team, Venue, Opponent
ORDER BY total_wickets DESC;

select top_scorer , sum(top_score) as scores
from matches
group by top_scorer
order by scores desc


select best_bowler , sum(wickets_Taken) as wicket
from matches
group by best_bowler
order by wicket desc
