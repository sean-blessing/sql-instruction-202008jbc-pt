select * from student 
 where middleinitial is null
 order by lastName;
 
 -- how many students from each state?
 select count(*), state
   from student
  group by state;
  
 -- states having more than 3 students?
 select count(*), state
   from student
  group by state
  having count(*) > 3;
  
-- oldest student? (use subselect)
select * from student
 where birthday = (
	select min(birthday) from student);
    
-- subject with most classes?
select subject, count(*) 
  from course
  group by subject;
  
-- grades by quarter
select grade, quarter
  from enrolled e
  join course c
    on courseId = c.id
 order by quarter;
 
 -- grades by quarter, including student and course name
select lastname, firstname, subject, c.name, grade, quarter
  from enrolled e
  join course c
    on courseId = c.id
  join student s
    on s.id = e.studentID
 order by lastname;
 
 /* Student Enrollment Report
  - list all students: fname, lname
  - course name, if enrolled
 */
 select s.id, lastname, firstname, name
   from student s
   left join enrolled e
     on s.id = e.studentID
   left join course c
     on e.courseID = c.id;

select * from enrolled
 where studentID = 3;





