create table videos(
Id int primary key,
Title varchar(50) not null,
length int null,
url varchar(100) not null);

insert into videos(Id,Title,length,url)
Values(1,'Champagne Problems - Taylor Swift',238,'https://www.youtube.com/watch?v=4DSVor7fBtI&ab_channel=Cassiopeia');

insert into videos(Id,Title,length,url)
Values(2,'Drivers License',247,'https://www.youtube.com/watch?v=ZmDBbnmKpqQ&ab_channel=OliviaRodrigoVEVO');

insert into videos(Id,Title,length,url)
Values(3,'Im not Pretty - Jessia',118,'https://www.youtube.com/watch?v=Hp7ID-bp8KI&ab_channel=NewMelody');

select * from videos

Create table VideoReviewers (
name varchar(50) not null,
rating int null,
review varchar (100),
vidId INT References videos);

INSERT INTO VideoReviewers ( Name, Rating, Review, vidId) VALUES ('Feyre Acheron',5,'A beautiful piece that touches on the presence and dismissal of mental health.',1);
INSERT INTO VideoReviewers ( Name, Rating, Review, vidId) VALUES ('Ila Moore',5, 'Loved it! Tells a haunting tale of love and life!',2);
INSERT INTO VideoReviewers ( Name, Rating, Review, vidId) VALUES ('Lyra Philips',5,'Truly something every girl can relate to!',3);


select * from VideoReviewers

select * from videos
inner join VideoReviewers
on videos.Id=VideoReviewers.vidId;

