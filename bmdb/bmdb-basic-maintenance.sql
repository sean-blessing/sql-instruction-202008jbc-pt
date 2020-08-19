/* Let's test the maintenance sql 
We should test CRUD in the order of:
- Select (Read)
- Insert (Create)
- Update (Update)
- Delete (Delete)
*/

select * from movie;

insert into movie values
    (6, 'Dummy Movie', 2020, 'G', 'Test Director');

update movie 
   set title = 'Dummy Movie 2'
   where id = 6;

delete from movie
 where id = 6;