use quanlysinhvien;
select Address, count(StudentName) as soluongsinhvien from student s
group by (Address);


select s.studentID,s.studentName,AVG(Mark) from student s
join mark m on s.StudentID = m.StudentID
group by s.studentID, s.studentName;


select s.studentID,s.studentName,AVG(Mark) as DTB from student s
join mark m on s.StudentID = m.StudentID
group by s.studentID, s.studentName
having DTB > 15 ;


select s.studentID,s.studentName, AVG(Mark)as DTBMAX from student s
join mark m on s.StudentID = m.StudentID
group by s.studentID, s.studentName
having DTBMAX >= all (select avg(Mark) from mark group by s.StudentID);






