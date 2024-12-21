create database ITI

create table students(
id int primary key identity(1,1),
fName varchar(10) not null,
lName varchar(10),
age int ,
address varchar(10),
Dep_id int 
)

create table departments(
id int primary key identity(1,1),
name varchar(10) unique,
Hiring_Date date,
ins_id int
)

create table instructors(
id int primary key identity(1,1),
Name varchar(10),
address varchar(10),
Bouns int,
salary int,
hour_rate int,
Dep_id int references departments(id)
)
alter table students
add foreign key(Dep_id) references departments(id)

alter table departments
add foreign key(ins_id) references instructors(id)

create table courses(
id int primary key identity(1,1),
name varchar(10),
duration int,
description varchar(10),
top_id int
)

create table topics (
id int primary key identity(1,1),
name varchar(10)
)

alter table courses
add foreign key(top_id) references topics(id)

create table stud_course(
stud_id int,
course_id int,
grade varchar(5),
primary key (stud_id,course_id)
)
alter table stud_course
add foreign key(stud_id) references courses(id)

alter table stud_course
add foreign key(course_id) references courses(id)

create table course_instructor(
course_id int,
inst_id int,
evaluation varchar(10)

)
alter table course_instructor
add foreign key(course_id) references courses(id)


alter table course_instructor
add foreign key(inst_id) references instructors(id)