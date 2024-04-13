                                                                                         [Group by] assignment


CREATE TABLE Actor(Actor_ID int,Actor_name varchar(30),Gender varchar(10),debut_year int);

CREATE TABLE Director(Director_ID int,Director_name varchar(30),no_of_movies int);

CREATE TABLE Movie(Movie_name varchar(30),release_year int,genre varchar(15),lead_1 int,lead_2 int,director_id int,box_collection int );

CREATE TABLE DVD(DVD_id int,Movie_name varchar(30),sale int);

insert into actor values(1,'Aamir Khan','male',1988);
insert into actor values(2,'Shahrukh Khan','male',1992);
insert into actor values(3,'Kareena Kapoor','female',2000);
insert into actor values(4,'Kajol','female',1992);
insert into actor values(5,'Anushka Sharma','female',2008);
insert into actor values(6,'Ranbir Kapoor','male',2007);
insert into actor values(7,'Alia Bhatt','female',2012);
insert into actor values(8,'Ranveer Singh','male',2010);
insert into actor values(9,'Deepika Padukone','female',2006);
insert into actor values(10,'Shahid Kapoor','male',2003);
insert into actor values(11,'Katrina Kaif','female',2003);
insert into actor values(12,'Varun Dhawan','male',2012);



insert into director values(1,'Rajkumar Hirani',10);
insert into director values(2,'Sanjay Leela Bhansali',8);
insert into director values(3,'Aditya Chopra',6);
insert into director values(4,'Zoya Akhtar',3);
insert into director values(5,'Imtiaz Ali',5);
insert into director values(6,'Ayan Mukerji',4);
insert into director values(7,'Santosh Sivan',9);
insert into director values(8,'Farah Khan',4);


insert into movie values('3 Idiots',2009,'comedy',1,3,1,989600000);
insert into movie values('PK',2014,'satire',1,5,1,789600000);
insert into movie values('Bajirao Mastani',2015,'historic',8,9,2,68960000);

insert into movie values('Rab ne bana di jodi',2008,'romance',2,5,3,48960000);

insert into movie values('Gully boy',2019,'Musical drama',8,7,4,28950000);
insert into movie values('Jab we met',2007,'romance',10,3,5,18980000);
insert into movie values('Padmavat',2018,'historic',8,9,2,38460000);
insert into movie values('Yeh jawani hai deewani',2013,'romance',6,9,6,581600000);

insert into movie values('Ashoka',2001,'historic',2,3,7,8796000);
insert into movie values('Happy new year',2014,'comedy',2,9,8,68960000);

insert into DVD values(1,'3 Idiots',8890);
insert into DVD values(2,'PK',8790);
insert into DVD values(3,'Bajirao Mastani',6810);
insert into DVD values(4,'Rab ne bana di jodi',7920);
insert into DVD values(5,'Gully boy',870);
insert into DVD values(6,'Jab we met',4792);
insert into DVD values(7,'Padmavat',590);
insert into DVD values(8,'Yeh jawani hai deewani',2890);
insert into DVD values(9,'Ashoka',730);
insert into DVD values(10,'Happy new year',1690);

drop table actor;

select * from actor;
select * from director;
select * from movie;
select * from DVD;

--question number 1
	select gender,count(gender) as number from actor group by gender;

--question number 2
	select genre,count(genre) as count from movie group by genre;

--question number 3	
	select genre,min(release_year) as 'oldest release' from movie group by genre;

--question number 4
	select genre,sum(box_collection) as 'total box office collection' from movie group by genre;

--question number 5
	                      ????????????????????????????????????????????????????????
	select director_name, (select count(director_id) from movie) as 'current count' , no_of_movies as 'total count' from director; --there is small misake try to change it 

	select director_name,count(select director_id from director group by director_name; ),no_of_movies as'total count' from directors;
	
--cloudyML solution
	select director_name,count(movie_name),no_of_movies as 'total count' from director,movie where movie.director_id=director.director_id group by director.director_id,director_name,no_of_movies;		--why we need this many group by functions ????

--question number 6
	
--cloudyML solution
	select lead_1,count(dvd.movie_name) as 'no of movies', sum(sale) as 'total sales' from dvd,movie where dvd.movie_name=movie.movie_name group by lead_1;

--question number 7
	SELECT release_year,count(movie_name) as 'no of movies' from  movie group by release_year HAVING count(movie_name)>1;


--question number 8
	select director_id, sum(box_collection) from movie group by  director_id having sum(box_collection)>500000000 --this is okay but need small change
	


--cloudyML solution 
	select director_name,sum(box_collection) as 'total box collection' from movie,director where movie.director_id=director.director_id group by movie.director_id,director_name having sum(box_collection)>500000000;

--question number 9
	select genre,count(genre) as 'count of movie'  from movie group by genre order by count(genre) desc ;

--question number 10
	select director.director_name, movie.movie_name from director full join movie on director.director_id=movie.director_id order by director.director_name;
	 
--cloudyML solution
	select director_name,movie_name from director,movie where movie.director_id=director.director_id order by director_name;

