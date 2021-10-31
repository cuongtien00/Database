use quanlyhocvien;
select s.fullname, c.ClassName from students s
join classes c on s.class_id = c.id;
select fullname,address from students
join address a on a.id = students.address_id;
select  avg(point1) as diemtb  from point1
join course c on c.id = point1.course_id;
select fullname, ClassName from students
left join point1 p on students.id = p.student_id

