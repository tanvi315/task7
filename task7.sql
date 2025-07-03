use sqlinternship;

create table student2(
	s_id int primary key,
    name varchar(55),
    dept varchar(55),
    status varchar(10)
);

insert into student2 values
(1, 'TANVI', 'IT', 'ACTIVE'),
(2, 'AMIT', 'CS', 'INACTIVE'),
(3, 'AYESHA', 'IT', 'ACTIVE'),
(4, 'RAJ', 'CS', 'ACTIVE'),
(5, 'BHAKTI', 'CS', 'ACTIVE');

select * from student2;

create view active_students as 
select s_id, name, dept
from student2
where status = 'ACTIVE';

select * from active_students;

update active_students 
set name = 'TANISHA'
where s_id = 5;

select * from active_students;

drop view active_students;

create view cs_department as
select * from student2
where dept = 'CS'
with check option;

select * from cs_department;

UPDATE cs_department
SET name = 'AMAN'
WHERE s_id = 2;

select * from cs_department;


UPDATE cs_department
SET dept = 'IT'
WHERE s_id = 2;

select * from cs_department;

CREATE TABLE departments (
    dept VARCHAR(55) PRIMARY KEY,
    head VARCHAR(100)
);

INSERT INTO departments VALUES
('IT', 'Dr. Mehta'),
('CS', 'Dr. Sharma');


CREATE VIEW student_info AS
SELECT s.s_id, s.name, s.dept
FROM student2 s
JOIN departments d ON s.dept = d.dept
WHERE s.status = 'Active';

SELECT * FROM student_info;

CREATE VIEW public_students AS
SELECT s_id, name
FROM student2;

select * from public_students;


