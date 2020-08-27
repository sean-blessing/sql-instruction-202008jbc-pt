/* As of today, what should you know about SQL? 
   In order of most important, to least important
*/

-- 1) Select statement
-- select all columns from movie
-- without a filter, you'll get all rows
select * 
  from movie;
  
-- select a single row (filter) by primary key
select * 
  from movie
 where id = 4;

-- select multiple rows by ????
-- show all pg movies
select *
  from movie
  where rating = 'PG';
  
-- there lots of other keywords to pair with 
-- select:  =, in, group by, having, functions, etc.

-- 2) rest of the crud functions:  insert, update, delete

-- 3) Joins - join by the foreign key to primary key

-- 4) DDL