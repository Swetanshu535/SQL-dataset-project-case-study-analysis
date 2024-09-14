create database student_performance;
use student_performance;

select * from student_data;

-- Identify the students who have studied over 20 hours 
select * from student_data
where Hours_studied > 20;

-- Show of students who have studies from 10 to 20 hours
select count(*) from student_data
where Hours_studied between 10 and 20
Order by hours_studied asc;

-- Display the students who have attendance between 50 to 70  
select * from student_data
where Attendance between 50 and 70;

-- provide roll number to all the students
select row_number() over (Order by Exam_score) as roll_number
from student_data;

-- Does the students having attendance above 80 has low parent involvement 
select Attendance,Parental_involvement
from student_data
where attendance > 80 and Parental_Involvement= "Low";

-- Identify the students who have exam score less than 80 but has attendance more than 70 
select * from student_data
where Exam_score < 80 and Attendance > 70;

-- How many public school students have  postiive peer influence
select count(school_type) as student_of_public_school,peer_influence from student_data
where school_type="Public" and peer_influence= "Positive"
group by peer_influence;

-- Show the students having high access to resources and having sleep hours less than 7
select * from student_data
where Access_to_resources= "High" and Sleep_hours < 7;

-- Show the students having disabilities but postive peer influence 
select * from student_data
where learning_disabilities= "yes" and Peer_Influence= "Positive";

-- Identify the students having physical activity greater than 3 and consecutive sleep hours 
select Sleep_Hours,Physical_Activity from student_data
where Physical_Activity > 3; 

