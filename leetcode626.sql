-- Remove table if it already exists
DROP TABLE IF EXISTS Seat;

-- Create table
CREATE TABLE Seat (
    id INT PRIMARY KEY,
    student VARCHAR(50)
);

-- Insert data
INSERT INTO Seat (id, student) VALUES
(1, 'Abbot'),
(2, 'Doris'),
(3, 'Emerson'),
(4, 'Green'),
(5, 'Jeames');

-- Verify data
SELECT * FROM Seat;
with student as 
(select id,
	student,
	case 
		 WHEN id = (SELECT MAX(id) FROM Seat)
         AND id % 2 = 1
		THEN id
		when id % 2= 1 then id +1
		else id - 1
	end  as new_id 
from seat
)
select new_id as id ,student from student
order by new_id;