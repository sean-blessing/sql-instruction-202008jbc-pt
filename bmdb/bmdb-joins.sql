select * from movie;
select * from credit;

-- inner join:  data in common between 2 tables
select m.id, title, c.id, role 
  from movie as m
  join credit as c
    on m.id = c.MovieID;

-- bad way to do a join
select * from movie, credit
 where movie.id = credit.MovieID;

-- inner join credit - actor
select * from credit c
  join actor a
    on c.ActorID = a.ID;
    
-- outer (left) join, all movies and actors assigned
select * from movie
 left join credit
  on movie.id = credit.MovieID;
 