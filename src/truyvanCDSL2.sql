use quanlysinhvien;
select StudentName from student
where StudentName like 'h%';
select * from class
where MONTH(StartDate)=12;
select * from subject
where (Credit between 3 and 5);
update student set ClassID = 2
where StudentName= 'Hung';
select s.StudentName, s2.SubName, Mark from mark m
join student s on s.StudentID = m.StudentID
join subject s2 on s2.SubID = m.SubID
order by Mark desc ;

