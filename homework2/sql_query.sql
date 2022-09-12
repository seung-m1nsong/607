Use moviedatabase;

create table movie (
movieid int not null auto_increment,
movietitle varchar(50),
releaseyear int,
genre varchar(50),
primary key (movieid)
);

create table movierating (
ratingid int not null auto_increment,
movie varchar(50),
rating int,
primary key (ratingid)
);

create table reviewer (
reviewerid int not null auto_increment,
firstname varchar (50),
lastname varchar (50),
age int,
sex varchar (10),
location varchar (50),
primary key (reviewerid)
);

INSERT INTO movie (movietitle, releaseyear, genre) VALUES ('Spider-Man: No Way Home', '2021','Action');
INSERT INTO movie (movietitle, releaseyear, genre) VALUES ('Thor: Love and Thunder', '2022','Action');
INSERT INTO movie (movietitle, releaseyear, genre) VALUES ('Top Gun: Maverick', '2022','Action');
INSERT INTO movie (movietitle, releaseyear, genre) VALUES ('Morbius', '2022','Action');
INSERT INTO movie (movietitle, releaseyear, genre) VALUES ('Toronto', '2022','Comic');
INSERT INTO movie (movietitle, releaseyear, genre) VALUES ('Doctor Strange in the Multiverse of Madness', '2022','Action');

INSERT INTO movierating (movie, rating) VALUES ('Spider-Man: No Way Home', '5');
INSERT INTO movierating (movie, rating) VALUES ('Thor: Love and Thunder', '3');
INSERT INTO movierating (movie, rating) VALUES ('Top Gun: Maverick','3');
INSERT INTO movierating (movie, rating) VALUES ('Morbius','2');
INSERT INTO movierating (movie, rating) VALUES ('Toronto','1');
INSERT INTO movierating (movie, rating) VALUES ('Doctor Strange in the Multiverse of Madness','1');
INSERT INTO movierating (movie, rating) VALUES ('Spider-Man: No Way Home', '4');
INSERT INTO movierating (movie, rating) VALUES('Thor: Love and Thunder','3');
INSERT INTO movierating (movie, rating) VALUES('Top Gun: Maverick','3');
INSERT INTO movierating (movie, rating) VALUES('Morbius','1');
INSERT INTO movierating (movie, rating) VALUES('Toronto','1');
INSERT INTO movierating (movie, rating) VALUES('Doctor Strange in the Multiverse of Madness','1');
INSERT INTO movierating (movie, rating) VALUES('Spider-Man: No Way Home', '4');
INSERT INTO movierating (movie, rating) VALUES( 'Thor: Love and Thunder','2');
INSERT INTO movierating (movie, rating) VALUES('Top Gun: Maverick','5');
INSERT INTO movierating (movie, rating) VALUES('Morbius','2');
INSERT INTO movierating (movie, rating) VALUES('Toronto','0');
INSERT INTO movierating (movie, rating) VALUES('Doctor Strange in the Multiverse of Madness','1');
INSERT INTO movierating (movie, rating) VALUES ('Spider-Man: No Way Home','4') ;
INSERT INTO movierating (movie, rating) VALUES ('Thor: Love and Thunder','3');
INSERT INTO movierating (movie, rating) VALUES ('Top Gun: Maverick','4');
INSERT INTO movierating (movie, rating) VALUES('Morbius','0');
INSERT INTO movierating (movie, rating) VALUES ('Toronto','3');
INSERT INTO movierating (movie, rating) VALUES ('Doctor Strange in the Multiverse of Madness','0');
INSERT INTO movierating (movie, rating) VALUES ('Spider-Man: No Way Home', '4');
INSERT INTO movierating (movie, rating) VALUES ('Thor: Love and Thunder','1');
INSERT INTO movierating (movie, rating) VALUES ('Top Gun: Maverick','5');
INSERT INTO movierating (movie, rating) VALUES ('Morbius','2');
INSERT INTO movierating (movie, rating) VALUES ('Toronto','1');
INSERT INTO movierating (movie, rating) VALUES ('Doctor Strange in the Multiverse of Madness','1');
INSERT INTO movierating (movie, rating) VALUES ('Spider-Man: No Way Home', '5');
INSERT INTO movierating (movie, rating) VALUES ('Thor: Love and Thunder','4');
INSERT INTO movierating (movie, rating) VALUES ('Top Gun: Maverick','4');
INSERT INTO movierating (movie, rating) VALUES ('Morbius','0');
INSERT INTO movierating (movie, rating) VALUES ('Toronto','2');
INSERT INTO movierating (movie, rating) VALUES('Doctor Strange in the Multiverse of Madness','2');
INSERT INTO movierating (movie, rating) VALUES ('Spider-Man: No Way Home', '4');
INSERT INTO movierating (movie, rating) VALUES('Thor: Love and Thunder','3');
INSERT INTO movierating (movie, rating) VALUES('Top Gun: Maverick','5');
INSERT INTO movierating (movie, rating) VALUES('Morbius','1');
INSERT INTO movierating (movie, rating) VALUES('Toronto','0');
INSERT INTO movierating (movie, rating) VALUES('Doctor Strange in the Multiverse of Madness','2');
INSERT INTO movierating (movie, rating) VALUES ('Spider-Man: No Way Home', '5');
INSERT INTO movierating (movie, rating) VALUES('Thor: Love and Thunder','3');
INSERT INTO movierating (movie, rating) VALUES('Top Gun: Maverick','5');
INSERT INTO movierating (movie, rating) VALUES('Morbius','0');
INSERT INTO movierating (movie, rating) VALUES('Toronto','0');
INSERT INTO movierating (movie, rating) VALUES('Doctor Strange in the Multiverse of Madness','1');

INSERT INTO reviewer (firstname, lastname, age, sex, location) VALUES ('Ben', 'Brand', '32','Male','North America');
INSERT INTO reviewer (firstname, lastname, age, sex, location) VALUES ('Samuel', 'Kim', '22','Male','North America');
INSERT INTO reviewer (firstname, lastname, age, sex, location) VALUES ('Ray', 'Watts', '55','Male','North America');
INSERT INTO reviewer (firstname, lastname, age, sex, location) VALUES ('Kelly', 'Kovack', '37','Female','North America');
INSERT INTO reviewer (firstname, lastname, age, sex, location) VALUES ('Reno', 'Jimenez', '40','Male','North America');
INSERT INTO reviewer (firstname, lastname, age, sex, location) VALUES ('Maria', 'Riva', '27','Female','Eastern Europe');
INSERT INTO reviewer (firstname, lastname, age, sex, location) VALUES ('Daniel', 'Hanrt', '38','Male','North America');
INSERT INTO reviewer (firstname, lastname, age, sex, location) VALUES ('Raymund', 'Suh', '40','Male','Asia');

select movie.movietitle, avg(movierating.rating) as avg_rating, min(movierating.rating) as min_rating, max(movierating.rating) as max_rating
from  movie
inner join movierating
ON movierating.movie = movie.movietitle
group by movie.movietitle;


