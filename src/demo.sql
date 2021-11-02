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

# cac thong tin mon hoc co credit lon nhat
select *, MAX(Credit) as 'Mon hoc credit lon nhat' from subject;
# cac thong tin mon hoc co diem thi lon nhat
select s.SubID,s.SubName,s.Status,s.Credit, MAX(Mark)as 'Diem thi lon nhat' from subject s
join mark m on s.SubID = m.SubID
group by s.SubID
having MAX(Mark)>= all (select Max(Mark) from mark);

select s.StudentID, s.StudentName, s.Address,s.ClassID, s.Phone,m.Mark, AVG(mark) as DTB from student s
join mark m on s.StudentID = m.StudentID
group by s.StudentID
order by DTB desc ;

use quanlysinhvien;
create unique index studentIndex on student (StudentName);
 select StudentName from student where StudentName = 'Hien';





